<?php echo message_box('success'); ?>
<?php echo message_box('error'); ?>

<style>
    .note-editor .note-editable {
        height: 150px;
    }
</style>
<?php
$project_settings = json_decode($project_details->project_settings);

$comment_details = $this->db->where('project_id', $project_details->project_id)->get('tbl_task_comment')->result();

$where = array('project_id' => $project_details->project_id, 'client_visible' => 'Yes');

if (!empty($project_settings[1]) && $project_settings[1] == 'show_milestones') {
    $all_milestones_info = $this->db->where($where)->get('tbl_milestones')->result();
}

if (!empty($project_settings[2]) && $project_settings[2] == 'show_project_tasks') {
    $all_task_info = $this->db->where($where)->order_by('task_id', 'DESC')->get('tbl_task')->result();
}
if (!empty($project_settings[5]) && $project_settings[5] == 'show_project_bugs') {
    $all_bugs_info = $this->db->where($where)->order_by('bug_id', 'DESC')->get('tbl_bug')->result();
}

$total_timer = $this->db->where(array('project_id' => $project_details->project_id))->get('tbl_tasks_timer')->result();

if (!empty($project_settings[6]) && $project_settings[6] == 'show_project_history') {
    $activities_info = $this->db->where(array('module' => 'project', 'module_field_id' => $project_details->project_id))->order_by('activity_date', 'desc')->get('tbl_activities')->result();
}

$all_invoice_info = $this->db->where(array('project_id' => $project_details->project_id))->get('tbl_invoices')->result();
$all_estimates_info = $this->db->where(array('project_id' => $project_details->project_id))->get('tbl_estimates')->result();

$all_tickets_info = $this->db->where(array('project_id' => $project_details->project_id))->get('tbl_tickets')->result();

$project_hours = $this->items_model->calculate_project('project_hours', $project_details->project_id);

if ($project_details->billing_type == 'tasks_hours' || $project_details->billing_type == 'tasks_and_project_hours') {
    $tasks_hours = $this->items_model->total_project_hours($project_details->project_id, '', true);
}
$project_cost = $this->items_model->calculate_project('project_cost', $project_details->project_id);
$where = array('user_id' => $this->session->userdata('user_id'), 'module_id' => $project_details->project_id, 'module_name' => 'project');
$check_existing = $this->items_model->check_by($where, 'tbl_pinaction');
if (!empty($check_existing)) {
    $url = 'remove_todo/' . $check_existing->pinaction_id;
    $btn = 'danger';
    $title = lang('remove_todo');
} else {
    $url = 'add_todo_list/project/' . $project_details->project_id;
    $btn = 'warning';
    $title = lang('add_todo_list');
}
$this->load->helper('date');
$totalDays = round((human_to_unix($project_details->end_date . ' 00:00') - human_to_unix($project_details->start_date . ' 00:00')) / 3600 / 24);
$TotalGone = $totalDays;
$tprogress = 100;
if (human_to_unix($project_details->start_date . ' 00:00') < time() && human_to_unix($project_details->end_date . ' 00:00') > time()) {
    $TotalGone = round((human_to_unix($project_details->end_date . ' 00:00') - time()) / 3600 / 24);
    $tprogress = $TotalGone / $totalDays * 100;

}
if (human_to_unix($project_details->end_date . ' 00:00') < time()) {
    $TotalGone = 0;
    $tprogress = 0;
}
if (strtotime(date('Y-m-d')) > strtotime($project_details->end_date . '00:00')) {
    $lang = lang('days_gone');
} else {
    $lang = lang('days_left');
}
?>
<div class="row">
    <div class="col-sm-3">

        <ul class="nav nav-pills nav-stacked navbar-custom-nav">
            <li class="btn-success" style="margin-right: 0px; "></li>
            <li class="<?= $active == 1 ? 'active' : '' ?>" style="margin-right: 0px; "><a href="#task_details"
                                                                                           data-toggle="tab"><?= lang('project_details') ?></a>
            </li>
            <?php if (!empty($project_settings[7]) && $project_settings[7] == 'show_project_calendar') { ?>
                <li class="<?= $active == 15 ? 'active' : '' ?>"><a
                        href="<?= base_url() ?>client/projects/project_details/<?= $project_details->project_id ?>/15"><?= lang('calendar') ?></a>
                </li>
            <?php } ?>
            <?php if (!empty($project_settings[8]) && $project_settings[8] == 'show_project_comments') { ?>
                <li class="<?= $active == 3 ? 'active' : '' ?>"><a href="#task_comments"
                                                                   data-toggle="tab"><?= lang('comments') ?><strong
                            class="pull-right"><?= (!empty($comment_details) ? count($comment_details) : null) ?></strong></a>
                </li>
            <?php } ?>
            <?php if (!empty($project_settings[3]) && $project_settings[3] == 'show_project_attachments') { ?>
                <li class="<?= $active == 4 ? 'active' : '' ?>"><a href="#task_attachments"
                                                                   data-toggle="tab"><?= lang('attachment') ?><strong
                            class="pull-right"><?= (!empty($project_files_info) ? count($project_files_info) : null) ?></strong></a>
                </li>
            <?php } ?>

            <?php if (!empty($all_milestones_info)) { ?>
                <li class="<?= $active == 5 ? 'active' : '' ?>"><a href="#milestones"
                                                                   data-toggle="tab"><?= lang('milestones') ?>
                        <strong
                            class="pull-right"><?= count($all_milestones_info) ?></strong></a>
                </li>
            <?php } ?>

            <?php if (!empty($all_task_info)) { ?>
                <li class="<?= $active == 6 ? 'active' : '' ?>"><a href="#task" data-toggle="tab"><?= lang('tasks') ?>
                        <strong
                            class="pull-right"><?= (!empty($all_task_info) ? count($all_task_info) : null) ?></strong></a>
                </li>
            <?php } ?>
            <?php if (!empty($all_bugs_info)) { ?>
                <li class="<?= $active == 9 ? 'active' : '' ?>"><a href="#bugs" data-toggle="tab"><?= lang('bugs') ?>
                        <strong
                            class="pull-right"><?= (!empty($all_bugs_info) ? count($all_bugs_info) : null) ?></strong></a>
                </li>
            <?php } ?>
            <?php if (!empty($project_settings[9]) && $project_settings[9] == 'show_gantt_chart') { ?>
                <li class="<?= $active == 13 ? 'active' : '' ?>"><a
                        href="<?= base_url() ?>client/projects/project_details/<?= $project_details->project_id ?>/13"><?= lang('gantt') ?></a>
                </li>
            <?php } ?>

            <?php if (!empty($project_settings[4]) && $project_settings[4] == 'show_timesheets') { ?>
                <li class="<?= $active == 7 ? 'active' : '' ?>"><a href="#timesheet"
                                                                   data-toggle="tab"><?= lang('timesheet') ?><strong
                            class="pull-right"><?= (!empty($total_timer) ? count($total_timer) : null) ?></strong></a>
                </li>
            <?php } ?>
            <li class="<?= $active == 14 ? 'active' : '' ?>"><a href="#project_tickets"
                                                                data-toggle="tab"><?= lang('tickets') ?><strong
                        class="pull-right"><?= (!empty($all_tickets_info) ? count($all_tickets_info) : null) ?></strong></a>
            </li>
            <?php if (!empty($all_invoice_info)){ ?>
            <li class="<?= $active == 11 ? 'active' : '' ?>"><a href="#invoice"
                                                                data-toggle="tab"><?= lang('invoice') ?><strong
                        class="pull-right"><?= (!empty($all_invoice_info) ? count($all_invoice_info) : null) ?></strong></a>
            </li>
            <?php } ?>
            <?php if (!empty($all_estimates_info)){ ?>
            <li class="<?= $active == 12 ? 'active' : '' ?>"><a href="#estimates"
                                                                data-toggle="tab"><?= lang('estimates') ?><strong
                        class="pull-right"><?= (!empty($all_estimates_info) ? count($all_estimates_info) : null) ?></strong></a>
            </li>
            <?php } ?>

            <?php if (!empty($activities_info)) { ?>
                <li class="<?= $active == 2 ? 'active' : '' ?>" style="margin-right: 0px; "><a href="#activities"
                                                                                               data-toggle="tab"><?= lang('activities') ?>
                        <strong
                            class="pull-right"><?= (!empty($activities_info) ? count($activities_info) : null) ?></strong></a>
                </li>
            <?php } ?>
        </ul>
    </div>
    <div class="col-sm-9">
        <!-- Tabs within a box -->
        <div class="tab-content" style="border: 0;padding:0;">
            <!-- Task Details tab Starts -->
            <div class="tab-pane <?= $active == 1 ? 'active' : '' ?>" id="task_details" style="position: relative;">
                <div class="panel panel-custom">
                    <div class="panel-heading">
                        <h3 class="panel-title"><?php if (!empty($project_details->project_name)) echo $project_details->project_name; ?>
                        </h3>
                    </div>
                    <div class="panel-body row form-horizontal task_details">

                        <div class="form-group col-sm-12">
                            <label class="control-label col-sm-2"><strong><?= lang('project_name') ?> :</strong>
                            </label>
                            <div class="col-sm-10">
                                <p class="form-control-static">
                                    <?php
                                    if (!empty($project_details->project_name)) {
                                        echo $project_details->project_name;
                                    }
                                    ?>
                                </p>
                            </div>
                        </div>
                        <?php
                        $client_info = $this->db->where('client_id', $project_details->client_id)->get('tbl_client')->row();
                        if (!empty($client_info)) {
                            if ($client_info->client_status == 1) {
                                $status = lang('person');
                            } else {
                                $status = lang('company');
                            }
                            $name = $client_info->name . ' ' . $status;
                        } else {
                            $name = '-';
                        }
                        ?>
                        <div class="form-group">
                            <div class="col-sm-6">
                                <label class="control-label col-sm-4"><strong><?= lang('client') ?> :</strong></label>
                                <p class="form-control-static">
                                    <?php echo $name; ?>
                                </p>
                            </div>

                            <div class="col-sm-6">
                                <label class="control-label col-sm-4"><strong><?= lang('timer_status') ?>
                                        :</strong></label>
                                <div class="col-sm-8 mt">
                                    <?php if ($project_details->timer_status == 'on') { ?>
                                        <span class="label label-success"><?= lang('on') ?></span>
                                    <?php } else {
                                        ?>
                                        <span class="label label-danger"><?= lang('off') ?></span>
                                    <?php }
                                    ?>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-6">
                                <label class="control-label col-sm-4"><strong><?= lang('start_date') ?> :</strong>
                                </label>
                                <p class="form-control-static">
                                    <?= strftime(config_item('date_format'), strtotime($project_details->start_date)) ?>
                                </p>
                            </div>
                            <div class="col-sm-6">
                                <label class="control-label col-sm-4"><strong><?= lang('end_date') ?> :</strong></label>
                                <?php
                                $text = '';
                                if ($project_details->project_status != 'completed') {
                                    if ($totalDays < 0) {
                                        $overdueDays = $totalDays . ' ' . lang('days_gone');
                                        $text = 'text-danger';
                                    }
                                }

                                ?>
                                <p class="form-control-static <?= $text ?>">
                                    <?= strftime(config_item('date_format'), strtotime($project_details->end_date)) ?>
                                    <?php if (!empty($overdueDays)) {
                                        echo lang('overdue') . ' ' . $overdueDays;
                                    } ?>
                                </p>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-6">
                                <label class="control-label col-sm-4"><strong><?= lang('billing_type') ?> :</strong>
                                </label>
                                <p class="form-control-static">
                                    <strong><?= lang($project_details->billing_type); ?></strong>
                                </p>
                            </div>
                            <div class="col-sm-6">
                                <label class="control-label col-sm-4">
                                    <small><?= lang('estimate_hours') ?> :</small>
                                </label>
                                <p class="form-control-static">
                                    <strong><?= ($project_details->estimate_hours); ?> m
                                    </strong>
                                    <?php if (!empty($project_details) && $project_details->billing_type == 'project_hours' || !empty($project_details) && $project_details->billing_type == 'tasks_and_project_hours') { ?>
                                    <small class="small text-muted">
                                        <?= $project_details->hourly_rate . "/" . lang('hour') ?>
                                        <?php } ?>
                                    </small>
                                </p>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-6">
                                <label class="control-label col-sm-4"><strong><?= lang('demo_url') ?> :</strong>
                                </label>
                                <p class="form-control-static" style="overflow: hidden;">
                                    <?php
                                    if (!empty($project_details->demo_url)) {
                                        ?>
                                        <a href="//<?php echo $project_details->demo_url; ?>"
                                           target="_blank"><?php echo $project_details->demo_url ?></a>
                                        <?php
                                    } else {
                                        echo '-';
                                    }
                                    ?>
                                </p>
                            </div>
                            <?php if (!empty($project_settings[14]) && $project_settings[14] == 'show_finance_overview') { ?>

                                <div class="col-sm-6">
                                    <label class="control-label col-sm-4"><strong><?= lang('project_cost') ?> :</strong>
                                    </label>
                                    <p class="form-control-static">
                                        <?php
                                        if (!empty($project_details->client_id)) {
                                            $currency = $this->items_model->client_currency_sambol($project_details->client_id);
                                        } else {
                                            $currency = $this->db->where('code', config_item('default_currency'))->get('tbl_currencies')->row();
                                        }
                                        ?>
                                        <strong><?= display_money($project_cost, $currency->symbol); ?></strong>
                                        <?php if (!empty($project_details) && $project_details->billing_type == 'project_hours' || !empty($project_details) && $project_details->billing_type == 'tasks_and_project_hours') { ?>
                                        <small class="small text-muted">
                                            <?= $project_details->hourly_rate . "/" . lang('hour') ?>
                                            <?php } ?>
                                        </small>
                                    </p>
                                </div>
                            <?php } ?>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-6">
                                <label class="control-label col-sm-4"><strong><?= lang('status') ?>
                                        :</strong></label>
                                <div class="pull-left">
                                    <?php
                                    if (!empty($project_details->project_status)) {
                                        if ($project_details->project_status == 'completed') {
                                            $status = "<span class='label label-success'>" . lang($project_details->project_status) . "</span>";
                                        } elseif ($project_details->project_status == 'in_progress') {
                                            $status = "<span class='label label-primary'>" . lang($project_details->project_status) . "</span>";
                                        } elseif ($project_details->project_status == 'cancel') {
                                            $status = "<span class='label label-danger'>" . lang($project_details->project_status) . "</span>";
                                        } else {
                                            $status = "<span class='label label-warning'>" . lang($project_details->project_status) . "</span>";
                                        } ?>
                                        <p class="form-control-static"><?= $status; ?></p>
                                    <?php }
                                    ?>
                                </div>
                            </div>
                            <?php if (!empty($project_settings[0]) && $project_settings[0] == 'show_team_members') { ?>
                                <div class="col-sm-6">
                                    <label class="control-label col-sm-4"><strong><?= lang('participants') ?>
                                            :</strong></label>
                                    <div class="col-sm-8 ">
                                        <?php
                                        if ($project_details->permission != 'all') {
                                            $get_permission = json_decode($project_details->permission);
                                            if (!empty($get_permission)) :
                                                foreach ($get_permission as $permission => $v_permission) :
                                                    $user_info = $this->db->where(array('user_id' => $permission))->get('tbl_users')->row();
                                                    if ($user_info->role_id == 1) {
                                                        $label = 'circle-danger';
                                                    } else {
                                                        $label = 'circle-success';
                                                    }
                                                    $profile_info = $this->db->where(array('user_id' => $permission))->get('tbl_account_details')->row();
                                                    ?>


                                                    <a href="#" data-toggle="tooltip" data-placement="top"
                                                       title="<?= $profile_info->fullname ?>"><img
                                                            src="<?= base_url() . $profile_info->avatar ?>"
                                                            class="img-circle img-xs" alt="">
                                                <span style="margin: 0px 0 8px -10px;"
                                                      class="circle <?= $label ?>  circle-lg"></span>
                                                    </a>
                                                    <?php
                                                endforeach;
                                            endif;
                                        } else { ?>
                                        <p class="form-control-static"><strong><?= lang('everyone') ?></strong>
                                            <i
                                                title="<?= lang('permission_for_all') ?>"
                                                class="fa fa-question-circle" data-toggle="tooltip"
                                                data-placement="top"></i>

                                            <?php
                                            }
                                            ?>

                                        </p>
                                    </div>
                                </div>
                            <?php } ?>
                        </div>
                        <?php $show_custom_fields = custom_form_label(4, $project_details->project_id);

                        if (!empty($show_custom_fields)) {
                            foreach ($show_custom_fields as $c_label => $v_fields) {
                                if (!empty($v_fields)) {
                                    if (count($v_fields) == 1) {
                                        $col = 'col-sm-12';
                                        $sub_col = 'col-sm-2';
                                        $style = null;
                                    } else {
                                        $col = 'col-sm-6';
                                        $sub_col = 'col-sm-5';
                                        $style = null;
                                    }

                                    ?>
                                    <div class="form-group  <?= $col ?>" style="<?= $style ?>">
                                        <label class="control-label <?= $sub_col ?>"><strong><?= $c_label ?>
                                                :</strong></label>
                                        <div class="col-sm-7 ">
                                            <p class="form-control-static">
                                                <strong><?= $v_fields ?></strong>
                                            </p>
                                        </div>
                                    </div>
                                <?php }
                            }
                        }
                        ?>
                        <div class="form-group  col-sm-12 mt">
                            <label class="control-label col-sm-2 "><strong class="mr-sm"><?= lang('completed') ?>
                                    :</strong></label>
                            <div class="col-sm-8 " style="margin-left: -5px;">
                                <?php
                               // $progress = $this->items_model->get_progress($project_details->project_id);

                                if ($project_details->progress < 49) {
                                    $progress_b = 'progress-bar-danger';
                                } elseif ($project_details->progress > 50 && $project_details->progress < 99) {
                                    $progress_b = 'progress-bar-primary';
                                } else {
                                    $progress_b = 'progress-bar-success';
                                }
                                ?>
                                <span class="">
                                <div class="mt progress progress-striped ">
                                    <div class="progress-bar <?= $project_details->progress?>% ?> " data-toggle="tooltip"
                                         data-original-title="<?= $project_details->progress?>%"
                                         style="width:<?=$project_details->progress?>%"></div>
                                </div><?=$project_details->progress?>%
                                </span>
                            </div>
                        </div>
                        <?php if (!empty($project_settings[10]) && $project_settings[10] == 'show_project_hours') { ?>
                            <div class="form-group col-sm-12">
                                <?php

                                $estimate_hours = $project_details->estimate_hours;
                                $percentage = $this->items_model->get_estime_time($estimate_hours);
                                $logged_hour = $this->items_model->calculate_project('project_hours', $project_details->project_id);
                                if (!empty($tasks_hours)) {
                                    $logged_tasks_hours = $tasks_hours;
                                } else {
                                    $logged_tasks_hours = 0;
                                }
                                $total_logged_hours = $logged_hour + $logged_tasks_hours;

                                if ($total_logged_hours < $percentage) {
                                    $total_time = $percentage - $total_logged_hours;
                                    $worked = '<storng style="font-size: 15px"  class="required">' . lang('left_works') . '</storng>';
                                } else {
                                    $total_time = $total_logged_hours - $percentage;
                                    $worked = '<storng style="font-size: 15px" class="required">' . lang('extra_works') . '</storng>';
                                }

                                $completed = count($this->db->where(array('project_id' => $project_details->project_id, 'task_status' => 'completed'))->get('tbl_task')->result());

                                $total_task = count(!empty($all_task_info));
                                if ($total_task != 0) {
                                    $task_progress = $completed / $total_task * 100;
                                } else {
                                    $task_progress = null;
                                }

                                if ($task_progress > 100) {
                                    $task_progress = 100;
                                }
                                if ($tprogress > 50) {
                                    $p_bar = 'bar-success';
                                } else {
                                    $p_bar = 'bar-danger';
                                }
                                if ($task_progress < 49) {
                                    $t_bar = 'bar-danger';
                                } elseif ($task_progress < 79) {
                                    $t_bar = 'bar-warning';
                                } else {
                                    $t_bar = 'bar-success';
                                }
                                if (!empty($tasks_hours)) {
                                    $col_ = 'col-sm-6';
                                } else {
                                    $col_ = '';
                                }
                                ?>
                                <div class="<?= $col_ ?>">
                                    <?php if (!empty($col_)) { ?>
                                    <div class="panel panel-custom">
                                        <div class="panel-heading">
                                            <div class="panel-title"><?= lang('project_hours') ?></div>
                                        </div>
                                        <?php } ?>
                                        <?= $this->items_model->get_time_spent_result($project_hours); ?>
                                        <?php if ($project_details->billing_type == 'tasks_and_project_hours') {
                                            $total_hours = $project_hours + $tasks_hours;
                                            ?>
                                            <h2 style="font-size: 22px"><?= lang('total') ?>
                                                <span
                                                    style="font-size: 20px">: <?= $this->items_model->get_spent_time($total_hours); ?></span>
                                            </h2>

                                        <?php } ?>
                                        <?php if (!empty($col_)) { ?>
                                    </div>
                                <?php } ?>
                                </div>
                                <div class="<?= $col_ ?>">
                                    <?php if (!empty($col_)) { ?>
                                    <div class="panel panel-custom">
                                        <div class="panel-heading">
                                            <div class="panel-title"><?= lang('task_hours') ?></div>
                                        </div>
                                        <?= $this->items_model->get_time_spent_result($tasks_hours); ?>
                                        <?php } ?>
                                        <?php if (!empty($project_settings[14]) && $project_settings[14] == 'show_finance_overview') { ?>
                                            <h2 class="text-center"><?= lang('total_bill') ?>
                                                : <?= display_money($project_cost, $currency->symbol) ?></h2>
                                        <?php } ?>
                                        <?php if (!empty($col_)) { ?>
                                    </div>
                                <?php } ?>
                                </div>
                                <div class="col-sm-4">
                                    <strong><?= $TotalGone . ' / ' . $totalDays . ' ' . $lang . ' (' . round($tprogress, 2) . '% )'; ?></strong>
                                    <div class="mt progress progress-striped progress-xs">
                                        <div class="progress-bar progress-<?= $p_bar ?> " data-toggle="tooltip"
                                             data-original-title="<?= round($tprogress, 2) ?>%"
                                             style="width: <?= round($tprogress, 2) ?>%"></div>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="text-center">
                                        <div class="">
                                            <?= $worked ?>
                                        </div>
                                        <div class="">
                                            <?= $this->items_model->get_spent_time($total_time) ?>
                                        </div>
                                    </div>

                                </div>

                                <div class="col-sm-4">
                                    <strong><?= $completed . ' / ' . $total_task . ' ' . lang('open') . ' ' . lang('tasks') . ' (' . round($task_progress, 2) . '% )'; ?> </strong>
                                    <div class="mt progress progress-striped progress-xs">
                                        <div class="progress-bar progress-<?= $t_bar ?> " data-toggle="tooltip"
                                             data-original-title="<?= $task_progress ?>%"
                                             style="width: <?= $task_progress ?>%"></div>
                                    </div>
                                </div>


                            </div>
                        <?php } ?>

                        <div class="form-group col-sm-12">
                            <div class="col-sm-12">
                                <blockquote style="font-size: 12px; height: 100px;"><?php
                                    if (!empty($project_details->description)) {
                                        echo $project_details->description;
                                    }
                                    ?></blockquote>
                            </div>
                        </div>

                    </div>

                </div>
            </div>
            <!-- Task Details tab Ends -->

            <!-- Task Comments Panel Starts --->
            <?php if (!empty($activities_info)) { ?>
                <div class="tab-pane <?= $active == 2 ? 'active' : '' ?>" id="activities" style="position: relative;">
                    <div class="panel panel-custom">
                        <div class="panel-heading">
                            <h3 class="panel-title"><?= lang('activities') ?>

                            </h3>
                        </div>
                        <div class="panel-body " id="chat-box">
                            <div id="activity">
                                <ul class="list-group no-radius   m-t-n-xxs list-group-lg no-border">
                                    <?php

                                    if (!empty($activities_info)) {
                                        foreach ($activities_info as $v_activities) {
                                            $profile_info = $this->db->where(array('user_id' => $v_activities->user))->get('tbl_account_details')->row();

                                            $user_info = $this->db->where(array('user_id' => $v_activities->user))->get('tbl_users')->row();
                                            ?>
                                            <li class="list-group-item">
                                                <a class="recect_task pull-left mr-sm">

                                                    <?php if (!empty($profile_info)) {
                                                        ?>
                                                        <img style="width: 30px;margin-left: 18px;
                                                             height: 29px;
                                                             border: 1px solid #aaa;"
                                                             src="<?= base_url() . $profile_info->avatar ?>"
                                                             class="img-circle">
                                                    <?php } ?>
                                                </a>


                                                <a class="clear">
                                                    <small
                                                        class="pull-right"><?= strftime(config_item('date_format') . " %H:%M:%S", strtotime($v_activities->activity_date)) ?></small>
                                                    <strong class="block"><?= ucfirst($user_info->username) ?></strong>
                                                    <small>
                                                        <?php
                                                        echo sprintf(lang($v_activities->activity) . ' <strong style="color:#000"><em>' . $v_activities->value1 . '</em>' . '<em>' . $v_activities->value2 . '</em></strong>');
                                                        ?>
                                                    </small>
                                                </a>
                                            </li>
                                            <?php
                                        }
                                    }
                                    ?>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            <?php } ?>
            <?php if (!empty($project_settings[7]) && $project_settings[7] == 'show_project_calendar') { ?>
                <div class="tab-pane <?= $active == 15 ? 'active' : '' ?>" id="project_calendar"
                     style="position: relative;">
                    <div class="panel panel-custom">
                        <div class="panel-heading">
                            <h3 class="panel-title"><?= lang('calendar') ?></h3>
                        </div>
                        <div class="panel-body">
                            <div class="">
                                <div class="panel-heading mb0" style="border-bottom: 1px solid #D8D8D8"></div>
                                <div id="calendar"></div>
                            </div>
                            <link href="<?php echo base_url() ?>asset/css/fullcalendar.css" rel="stylesheet"
                                  type="text/css">
                            <style type="text/css">
                                .datepicker {
                                    z-index: 1151 !important;
                                }

                                .mt-sm {
                                    font-size: 14px;
                                }
                            </style>
                            <?php
                            $curency = $this->admin_model->check_by(array('code' => config_item('default_currency')), 'tbl_currencies');
                            $gcal_api_key = config_item('gcal_api_key');
                            $gcal_id = config_item('gcal_id');
                            ?>
                            <script type="text/javascript">
                                $(document).ready(function () {
                                    if ($('#calendar').length) {
                                        var date = new Date();
                                        var d = date.getDate();
                                        var m = date.getMonth();
                                        var y = date.getFullYear();
                                        var calendar = $('#calendar').fullCalendar({
                                            googleCalendarApiKey: '<?=$gcal_api_key?>',
                                            eventAfterRender: function (event, element, view) {
                                                if (event.type == 'fo') {
                                                    $(element).attr('data-toggle', 'ajaxModal').addClass('ajaxModal');
                                                }
                                            },
                                            header: {
                                                center: 'prev title next',
                                                left: 'month agendaWeek agendaDay today',
                                                right: ''
                                            },
                                            buttonText: {
                                                prev: '<i class="fa fa-angle-left" />',
                                                next: '<i class="fa fa-angle-right" />'
                                            },
                                            selectable: true,
                                            selectHelper: true,
                                            select: function (start, end, allDay) {
                                                var endtime = $.fullCalendar.formatDate(end, 'h:mm tt');
                                                var starttime = $.fullCalendar.formatDate(start, 'yyyy/MM/dd');
                                                var mywhen = starttime + ' - ' + endtime;
                                                $('#event_modal #apptStartTime').val(starttime);
                                                $('#event_modal #apptEndTime').val(starttime);
                                                $('#event_modal #apptAllDay').val(allDay);
                                                $('#event_modal #when').text(mywhen);
                                                $('#event_modal').modal('show');
                                            },
                                            events: [
                                                <?php
                                                $invoice_info = $this->db->where('project_id', $project_details->project_id)->get('tbl_invoices')->result();
                                                if (!empty($invoice_info)) {
                                                foreach ($invoice_info as $v_invoice) :
                                                $start_day = date('d', strtotime($v_invoice->due_date));
                                                $smonth = date('n', strtotime($v_invoice->due_date));
                                                $start_month = $smonth - 1;
                                                $start_year = date('Y', strtotime($v_invoice->due_date));
                                                $end_year = date('Y', strtotime($v_invoice->due_date));
                                                $end_day = date('d', strtotime($v_invoice->due_date));
                                                $emonth = date('n', strtotime($v_invoice->due_date));
                                                $end_month = $emonth - 1;
                                                ?>
                                                {
                                                    title: "<?php echo $v_invoice->reference_no ?>",
                                                    start: new Date(<?php echo $start_year . ',' . $start_month . ',' . $start_day; ?>),
                                                    end: new Date(<?php echo $end_year . ',' . $end_month . ',' . $end_day; ?>),
                                                    color: '<?= config_item('invoice_color') ?>',
                                                    url: '<?= base_url() ?>client/invoice/manage_invoice/invoice_details/<?= $v_invoice->invoices_id ?>'
                                                },
                                                <?php
                                                endforeach;
                                                }
                                                $estimates_info = $this->db->where('project_id', $project_details->project_id)->get('tbl_estimates')->result();;
                                                if (!empty($estimates_info)) {
                                                foreach ($estimates_info as $v_estimates) :
                                                $start_day = date('d', strtotime($v_estimates->due_date));
                                                $smonth = date('n', strtotime($v_estimates->due_date));
                                                $start_month = $smonth - 1;
                                                $start_year = date('Y', strtotime($v_estimates->due_date));
                                                $end_year = date('Y', strtotime($v_estimates->due_date));
                                                $end_day = date('d', strtotime($v_estimates->due_date));
                                                $emonth = date('n', strtotime($v_estimates->due_date));
                                                $end_month = $emonth - 1;
                                                ?>
                                                {
                                                    title: "<?php echo $v_estimates->reference_no ?>",
                                                    start: new Date(<?php echo $start_year . ',' . $start_month . ',' . $start_day; ?>),
                                                    end: new Date(<?php echo $end_year . ',' . $end_month . ',' . $end_day; ?>),
                                                    color: '<?= config_item('estimate_color') ?>',
                                                    url: '<?= base_url() ?>client/estimates/index/estimates_details/<?= $v_estimates->estimates_id ?>'
                                                },
                                                <?php
                                                endforeach;
                                                }
                                                $start_day = date('d', strtotime($project_details->end_date));
                                                $smonth = date('n', strtotime($project_details->end_date));
                                                $start_month = $smonth - 1;
                                                $start_year = date('Y', strtotime($project_details->end_date));
                                                $end_year = date('Y', strtotime($project_details->end_date));
                                                $end_day = date('d', strtotime($project_details->end_date));
                                                $emonth = date('n', strtotime($project_details->end_date));
                                                $end_month = $emonth - 1;
                                                ?>
                                                {
                                                    title: "<?php echo $project_details->project_name ?>",
                                                    start: new Date(<?php echo $start_year . ',' . $start_month . ',' . $start_day; ?>),
                                                    end: new Date(<?php echo $end_year . ',' . $end_month . ',' . $end_day; ?>),
                                                    color: '<?= config_item('project_color') ?>',
                                                    url: '<?= base_url() ?>client/projects/project_details/<?= $project_details->project_id ?>'
                                                },
                                                <?php

                                                $milestone_info = $this->db->where(array('project_id' => $project_details->project_id))->get('tbl_milestones')->result();
                                                if (!empty($milestone_info)) {
                                                foreach ($milestone_info as $v_milestone) :
                                                $start_day = date('d', strtotime($v_milestone->end_date));
                                                $smonth = date('n', strtotime($v_milestone->end_date));
                                                $start_month = $smonth - 1;
                                                $start_year = date('Y', strtotime($v_milestone->end_date));
                                                $end_year = date('Y', strtotime($v_milestone->end_date));
                                                $end_day = date('d', strtotime($v_milestone->end_date));
                                                $emonth = date('n', strtotime($v_milestone->end_date));
                                                $end_month = $emonth - 1;
                                                ?>
                                                {
                                                    title: '<?php echo $v_milestone->milestone_name ?>',
                                                    start: new Date(<?php echo $start_year . ',' . $start_month . ',' . $start_day; ?>),
                                                    end: new Date(<?php echo $end_year . ',' . $end_month . ',' . $end_day; ?>),
                                                    color: '<?= config_item('milestone_color') ?>',
                                                    url: '<?= base_url() ?>client/projects/project_details/<?= $project_details->project_id ?>/5'
                                                },
                                                <?php
                                                endforeach;
                                                }
                                                $task_info = $this->db->where(array('project_id' => $project_details->project_id))->get('tbl_task')->result();
                                                if (!empty($task_info)) {
                                                foreach ($task_info as $v_task) :
                                                $start_day = date('d', strtotime($v_task->due_date));
                                                $smonth = date('n', strtotime($v_task->due_date));
                                                $start_month = $smonth - 1;
                                                $start_year = date('Y', strtotime($v_task->due_date));
                                                $end_year = date('Y', strtotime($v_task->due_date));
                                                $end_day = date('d', strtotime($v_task->due_date));
                                                $emonth = date('n', strtotime($v_task->due_date));
                                                $end_month = $emonth - 1;
                                                ?>
                                                {
                                                    title: "<?php echo $v_task->task_name ?>",
                                                    start: new Date(<?php echo $start_year . ',' . $start_month . ',' . $start_day; ?>),
                                                    end: new Date(<?php echo $end_year . ',' . $end_month . ',' . $end_day; ?>),
                                                    color: '<?= config_item('tasks_color') ?>',
                                                    url: '<?= base_url() ?>client/tasks/view_task_details/<?= $v_task->task_id ?>'
                                                },
                                                <?php
                                                endforeach;
                                                }
                                                $bug_info = $this->db->where(array('project_id' => $project_details->project_id))->get('tbl_bug')->result();
                                                if (!empty($bug_info)) {
                                                foreach ($bug_info as $v_bug) :
                                                $start_day = date('d', strtotime($v_bug->created_time));
                                                $smonth = date('n', strtotime($v_bug->created_time));
                                                $start_month = $smonth - 1;
                                                $start_year = date('Y', strtotime($v_bug->created_time));
                                                $end_year = date('Y', strtotime($v_bug->created_time));
                                                $end_day = date('d', strtotime($v_bug->created_time));
                                                $emonth = date('n', strtotime($v_bug->created_time));
                                                $end_month = $emonth - 1;
                                                ?>
                                                {
                                                    title: "<?php echo $v_bug->bug_title ?>",
                                                    start: new Date(<?php echo $start_year . ',' . $start_month . ',' . $start_day; ?>),
                                                    end: new Date(<?php echo $end_year . ',' . $end_month . ',' . $end_day; ?>),
                                                    color: '<?= config_item('bugs_color') ?>',
                                                    url: '<?= base_url() ?>client/bugs/view_bug_details/<?= $v_bug->bug_id ?>'
                                                },
                                                <?php
                                                endforeach;
                                                }
                                                ?>
                                                {
                                                    googleCalendarId: '<?=$gcal_id?>'

                                                }

                                            ],
                                            eventColor: '#3A87AD',
                                        });
                                    }

                                });</script>
                            <?php include_once 'asset/js/fullcalendar.php'; ?>
                            <script src="<?php echo base_url(); ?>asset/js/jquery-ui.min.js"></script>
                            <script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/2.3.1/gcal.js"></script>
                        </div>
                    </div>
                </div>
            <?php } ?>
            <?php if (!empty($project_settings[8]) && $project_settings[8] == 'show_project_comments') { ?>
                <!-- Task Comments Panel Start--->
                <div class="tab-pane <?= $active == 3 ? 'active' : '' ?>" id="task_comments"
                     style="position: relative;">
                    <div class="panel panel-custom">
                        <div class="panel-heading">
                            <h3 class="panel-title"><?= lang('comments') ?></h3>
                        </div>
                        <div class="panel-body chat" id="chat-box">

                            <form id="form_validation" action="<?php echo base_url() ?>client/projects/save_comments"
                                  method="post" class="form-horizontal">
                                <input type="hidden" name="project_id" value="<?php
                                if (!empty($project_details->project_id)) {
                                    echo $project_details->project_id;
                                }
                                ?>" class="form-control">
                                <div class="form-group">
                                    <div class="col-sm-12">
                                    <textarea class="form-control textarea"
                                              placeholder="<?= $project_details->project_name . ' ' . lang('comments') ?>"
                                              name="comment" style="height: 70px;"></textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-12">
                                        <div class="pull-right">
                                            <button type="submit" id="sbtn"
                                                    class="btn btn-primary"><?= lang('post_comment') ?></button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                            <hr/>

                            <?php
                            if (!empty($comment_details)):foreach ($comment_details as $key => $v_comment):
                                $user_info = $this->db->where(array('user_id' => $v_comment->user_id))->get('tbl_users')->row();
                                $profile_info = $this->db->where(array('user_id' => $v_comment->user_id))->get('tbl_account_details')->row();
                                if ($user_info->role_id == 1) {
                                    $label = '<small style="font-size:10px;padding:2px;" class="label label-danger ">Admin</small>';
                                } else {
                                    $label = '<small style="font-size:10px;padding:2px;" class="label label-primary">Staff</small>';
                                }
                                ?>

                                <div class="col-sm-12 item ">

                                    <img src="<?php echo base_url() . $profile_info->avatar ?>" alt="user image"
                                         class="img-circle"/>


                                    <p class="message">
                                        <?php
                                        $today = time();
                                        $comment_time = strtotime($v_comment->comment_datetime);
                                        ?>
                                        <small class="text-muted pull-right"><i
                                                class="fa fa-clock-o"></i> <?= $this->items_model->get_time_different($today, $comment_time) ?> <?= lang('ago') ?>
                                            <?php if ($v_comment->user_id == $this->session->userdata('user_id')) { ?>
                                                <?= btn_delete('client/projects/delete_comments/' . $v_comment->project_id . '/' . $v_comment->task_comment_id) ?>
                                            <?php } ?></small>
                                        <a href="#" class="name">
                                            <?= ($profile_info->fullname) . ' ' . $label ?>
                                        </a>

                                        <?php if (!empty($v_comment->comment)) echo $v_comment->comment; ?>
                                    </p>

                                </div><!-- /.item -->
                            <?php endforeach; ?>
                            <?php endif; ?>
                        </div>
                    </div>
                </div>
                <!-- Task Comments Panel Ends--->
            <?php } ?>

            <!-- Task Attachment Panel Starts --->
            <?php if (!empty($project_settings[3]) && $project_settings[3] == 'show_project_attachments') { ?>
                <div class="tab-pane <?= $active == 4 ? 'active' : '' ?>" id="task_attachments"
                     style="position: relative;">
                    <div class="panel panel-custom">
                        <div class="panel-heading">
                            <h3 class="panel-title"><?= lang('attachment') ?></h3>
                        </div>
                        <div class="panel-body">

                            <form action="<?= base_url() ?>client/projects/save_attachment/<?php
                            if (!empty($add_files_info)) {
                                echo $add_files_info->task_attachment_id;
                            }
                            ?>" enctype="multipart/form-data" method="post" id="form" class="form-horizontal">
                                <div class="form-group">
                                    <label class="col-lg-3 control-label"><?= lang('file_title') ?> <span
                                            class="text-danger">*</span></label>
                                    <div class="col-lg-6">
                                        <input name="title" class="form-control" value="<?php
                                        if (!empty($add_files_info)) {
                                            echo $add_files_info->title;
                                        }
                                        ?>" required placeholder="<?= lang('file_title') ?>"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-lg-3 control-label"><?= lang('description') ?></label>
                                    <div class="col-lg-6">
                                        <textarea name="description" class="form-control"
                                                  placeholder="<?= lang('description') ?>"><?php
                                            if (!empty($add_files_info)) {
                                                echo $add_files_info->description;
                                            }
                                            ?></textarea>
                                    </div>
                                </div>
                                <?php if (empty($add_files_info)) { ?>
                                    <div id="add_new">
                                        <div class="form-group" style="margin-bottom: 0px">
                                            <label for="field-1"
                                                   class="col-sm-3 control-label"><?= lang('upload_file') ?></label>
                                            <div class="col-sm-6">
                                                <div class="fileinput fileinput-new" data-provides="fileinput">
                                                    <?php if (!empty($project_files)):foreach ($project_files as $v_files_image): ?>
                                                        <span class=" btn btn-default btn-file"><span
                                                                class="fileinput-new"
                                                                style="display: none">Select file</span>
                                                                <span class="fileinput-exists"
                                                                      style="display: block"><?= lang('change') ?></span>
                                                                <input type="hidden" name="task_files[]"
                                                                       value="<?php echo $v_files_image->files ?>">
                                                                <input type="file" name="task_files[]">
                                                            </span>
                                                        <span
                                                            class="fileinput-filename"> <?php echo $v_files_image->file_name ?></span>
                                                    <?php endforeach; ?>
                                                    <?php else: ?>
                                                        <span class="btn btn-default btn-file"><span
                                                                class="fileinput-new"><?= lang('select_file') ?></span>
                                                            <span class="fileinput-exists"><?= lang('change') ?></span>
                                                            <input type="file" name="task_files[]">
                                                        </span>
                                                        <span class="fileinput-filename"></span>
                                                        <a href="#" class="close fileinput-exists"
                                                           data-dismiss="fileinput"
                                                           style="float: none;">&times;</a>
                                                    <?php endif; ?>
                                                </div>
                                                <div id="msg_pdf" style="color: #e11221"></div>
                                            </div>
                                            <div class="col-sm-2">
                                                <strong><a href="javascript:void(0);" id="add_more" class="addCF "><i
                                                            class="fa fa-plus"></i>&nbsp;<?= lang('add_more') ?>
                                                    </a></strong>
                                            </div>
                                        </div>
                                    </div>
                                <?php } ?>
                                <br/>
                                <input type="hidden" name="project_id" value="<?php
                                if (!empty($project_details->project_id)) {
                                    echo $project_details->project_id;
                                }
                                ?>" class="form-control">
                                <div class="form-group">
                                    <div class="col-sm-3">
                                    </div>
                                    <div class="col-sm-3">
                                        <button type="submit"
                                                class="btn btn-primary"><?= lang('upload_file') ?></button>
                                    </div>
                                </div>
                            </form>

                        </div>
                    </div>
                    <?php
                    if (!empty($project_files_info)) {
                        ?>
                        <div class="panel">
                            <div class="panel-heading" style="border-bottom: 2px solid #00BCD4">
                                <strong><?= lang('attach_file_list') ?></strong></div>
                            <div class="panel-body">
                                <?php
                                $this->load->helper('file');
                                foreach ($project_files_info as $key => $v_files_info) {
                                    ?>
                                    <div class="panel-group" id="accordion" style="margin:8px 5px" role="tablist"
                                         aria-multiselectable="true">
                                        <div class="box box-info" style="border-radius: 0px ">
                                            <div class="panel-heading" role="tab" id="headingOne">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordion"
                                                       href="#<?php echo $key ?>" aria-expanded="true"
                                                       aria-controls="collapseOne">
                                                        <strong><?php echo $files_info[$key]->title; ?> </strong>
                                                        <small class="pull-right">
                                                            <?php if ($files_info[$key]->user_id == $this->session->userdata('user_id')) { ?>
                                                                <?= btn_delete('client/projects/delete_files/' . $files_info[$key]->project_id . '/' . $files_info[$key]->task_attachment_id) ?>
                                                            <?php } ?></small>
                                                    </a>
                                                </h4>
                                            </div>
                                            <div id="<?php echo $key ?>" class="panel-collapse collapse <?php
                                            if (!empty($in) && $files_info[$key]->files_id == $in) {
                                                echo 'in';
                                            }
                                            ?>" role="tabpanel" aria-labelledby="headingOne">
                                                <div class="content">
                                                    <div class="table-responsive">
                                                        <table id="table-files" class="table table-striped ">
                                                            <thead>
                                                            <tr>
                                                                <th width="45%"><?= lang('files') ?></th>
                                                                <th class=""><?= lang('size') ?></th>
                                                                <th><?= lang('date') ?></th>
                                                                <th><?= lang('uploaded_by') ?></th>
                                                                <th><?= lang('action') ?></th>
                                                            </tr>
                                                            </thead>
                                                            <tbody>
                                                            <?php
                                                            $this->load->helper('file');

                                                            if (!empty($v_files_info)) {
                                                                foreach ($v_files_info as $v_files) {
                                                                    $user_info = $this->db->where(array('user_id' => $files_info[$key]->user_id))->get('tbl_users')->row();
                                                                    ?>
                                                                    <tr class="file-item">
                                                                        <td>
                                                                            <?php if ($v_files->is_image == 1) : ?>
                                                                                <div class="file-icon"><a
                                                                                        href="<?= base_url() ?>client/projects/download_files/<?= $files_info[$key]->project_id ?>/<?= $v_files->uploaded_files_id ?>">
                                                                                        <img
                                                                                            style="width: 50px;border-radius: 5px;"
                                                                                            src="<?= base_url() . $v_files->files ?>"/></a>
                                                                                </div>
                                                                            <?php else : ?>
                                                                                <div class="file-icon"><i
                                                                                        class="fa fa-file-o"></i>
                                                                                    <a href="<?= base_url() ?>client/projects/download_files/<?= $files_info[$key]->project_id ?>/<?= $v_files->uploaded_files_id ?>"><?= $v_files->file_name ?></a>
                                                                                </div>
                                                                            <?php endif; ?>

                                                                            <a data-toggle="tooltip"
                                                                               data-placement="top"
                                                                               data-original-title="<?= $files_info[$key]->description ?>"
                                                                               class="text-info"
                                                                               href="<?= base_url() ?>client/projects/download_files/<?= $files_info[$key]->project_id ?>/<?= $v_files->uploaded_files_id ?>">
                                                                                <?= $files_info[$key]->title ?>
                                                                                <?php if ($v_files->is_image == 1) : ?>
                                                                                    <em><?= $v_files->image_width . "x" . $v_files->image_height ?></em>
                                                                                <?php endif; ?>
                                                                            </a>
                                                                            <p class="file-text"><?= $files_info[$key]->description ?></p>
                                                                        </td>
                                                                        <td class=""><?= $v_files->size ?> Kb</td>
                                                                        <td class="col-date"><?= date('Y-m-d' . "<br/> h:m A", strtotime($files_info[$key]->upload_time)); ?></td>
                                                                        <td>
                                                                            <?= $user_info->username ?>
                                                                        </td>
                                                                        <td>
                                                                            <a class="btn btn-xs btn-dark"
                                                                               data-toggle="tooltip"
                                                                               data-placement="top"
                                                                               title="Download"
                                                                               href="<?= base_url() ?>client/projects/download_files/<?= $files_info[$key]->project_id ?>/<?= $v_files->uploaded_files_id ?>"><i
                                                                                    class="fa fa-download"></i></a>
                                                                        </td>

                                                                    </tr>
                                                                    <?php
                                                                }
                                                            } else {
                                                                ?>
                                                                <tr>
                                                                    <td colspan="5">
                                                                        <?= lang('nothing_to_display') ?>
                                                                    </td>
                                                                </tr>
                                                            <?php } ?>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <?php
                                }
                                ?>
                            </div>
                        </div>
                    <?php } ?>
                </div>
            <?php } ?>
            <!-- Task Attachment Panel Ends --->

            <!-- timesheet Panel Starts --->
            <?php if (!empty($project_settings[4]) && $project_settings[4] == 'show_timesheets') { ?>
                <div class="tab-pane <?= $active == 7 ? 'active' : '' ?>" id="timesheet"
                     style="position: relative;">
                    <style>
                        .tooltip-inner {
                            white-space: pre-wrap;
                        }
                    </style>
                    <div class="panel panel-custom">
                        <div class="panel-heading">
                            <h3 class="panel-title">
                                <?= lang('timesheet') ?>
                            </h3>
                        </div>

                        <div class="table-responsive">
                            <table id="table-tasks-timelog" class="table table-striped     DataTables">
                                <thead>
                                <tr>
                                    <th><?= lang('user') ?></th>
                                    <th><?= lang('start_time') ?></th>
                                    <th><?= lang('stop_time') ?></th>
                                    <th><?= lang('project_name') ?></th>
                                    <th class="col-time"><?= lang('time_spend') ?></th>
                                </tr>
                                </thead>
                                <tbody>
                                <?php
                                if (!empty($total_timer)) {
                                    foreach ($total_timer as $v_timer) {
                                        $task_info = $this->db->where(array('project_id' => $v_timer->project_id))->get('tbl_project')->row();
                                        if (!empty($task_info)) {
                                            ?>
                                            <tr>
                                                <td class="small">

                                                    <a class="pull-left recect_task  ">
                                                        <?php
                                                        $profile_info = $this->db->where(array('user_id' => $v_timer->user_id))->get('tbl_account_details')->row();

                                                        $user_info = $this->db->where(array('user_id' => $v_timer->user_id))->get('tbl_users')->row();
                                                        if (!empty($profile_info)) {
                                                            ?>
                                                            <img style="width: 30px;margin-left: 18px;
                                                                             height: 29px;
                                                                             border: 1px solid #aaa;"
                                                                 src="<?= base_url() . $profile_info->avatar ?>"
                                                                 class="img-circle">
                                                        <?php } ?>
                                                        <?= ucfirst($user_info->username) ?>
                                                    </a>


                                                </td>

                                                <td><span
                                                        class="label label-success"><?= strftime(config_item('date_format') . ' %H:%M', $v_timer->start_time) ?></span>
                                                </td>
                                                <td><span
                                                        class="label label-danger"><?= strftime(config_item('date_format') . ' %H:%M', $v_timer->end_time) ?></span>
                                                </td>

                                                <td>
                                                    <a href="<?= base_url() ?>client/projects/project_details/<?= $v_timer->project_id ?>"
                                                       class="text-info small"><?= $project_details->project_name ?>
                                                        <?php
                                                        if (!empty($v_timer->reason)) {
                                                            $edit_user_info = $this->db->where(array('user_id' => $v_timer->edited_by))->get('tbl_users')->row();
                                                            echo '<i class="text-danger" data-html="true" data-toggle="tooltip" data-placement="top" title="Reason : ' . $v_timer->reason . '<br>' . ' Edited By : ' . $edit_user_info->username . '">Edited</i>';
                                                        }
                                                        ?>
                                                    </a></td>
                                                <td>
                                                    <small
                                                        class="small text-muted"><?= $this->items_model->get_time_spent_result($v_timer->end_time - $v_timer->start_time) ?></small>
                                                </td>

                                            </tr>
                                            <?php
                                        }
                                    }
                                }
                                ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            <?php } ?>
            <!--timesheet Panel Ends --->
            <!-- // milestones-->
            <?php
            if (!empty($all_milestones_info)) {
                ?>
                <div class="tab-pane <?= $active == 5 ? 'active' : '' ?>" id="milestones" style="position: relative;">
                    <div class="panel panel-custom">
                        <div class="panel-heading">
                            <div class="panel-title">
                                <?= lang('milestones') ?>
                            </div>
                        </div>
                        <div class="box-body">
                            <div class="table-responsive">
                                <table id="table-milestones" class="table table-striped">
                                    <thead>
                                    <tr>
                                        <th><?= lang('milestone_name') ?></th>
                                        <th class="col-date"><?= lang('start_date') ?></th>
                                        <th class="col-date"><?= lang('due_date') ?></th>
                                        <th><?= lang('progress') ?></th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <?php

                                    foreach ($all_milestones_info as $key => $v_milestones) {
                                        $progress = $this->items_model->calculate_milestone_progress($v_milestones->milestones_id);
                                        $all_milestones_task = $this->db->where('milestones_id', $v_milestones->milestones_id)->get('tbl_task')->result();
                                        ?>
                                        <tr>
                                            <td><a class="text-info" href="#"
                                                   data-original-title="<?= $v_milestones->description ?>"
                                                   data-toggle="tooltip" data-placement="top"
                                                   title=""><?= $v_milestones->milestone_name ?></a></td>
                                            <td><?= strftime(config_item('date_format'), strtotime($v_milestones->start_date)) ?></td>
                                            <td><?php
                                                $due_date = $v_milestones->end_date;
                                                $due_time = strtotime($due_date);
                                                $current_time = time();
                                                ?>
                                                <?= strftime(config_item('date_format'), strtotime($due_date)) ?>
                                                <?php if ($current_time > $due_time && $progress < 100) { ?>
                                                    <span
                                                        class="label label-danger"><?= lang('overdue') ?></span>
                                                <?php } ?>
                                            </td>
                                            <td>
                                                <div class="inline ">
                                                    <div class="easypiechart text-success"
                                                         style="margin: 0px;"
                                                         data-percent="<?= $progress ?>" data-line-width="5"
                                                         data-track-Color="#f0f0f0" data-bar-color="#<?php
                                                    if ($progress >= 100) {
                                                        echo '8ec165';
                                                    } else {
                                                        echo 'fb6b5b';
                                                    }
                                                    ?>" data-rotate="270" data-scale-Color="false"
                                                         data-size="50" data-animate="2000">
                                                                    <span class="small text-muted"><?= $progress ?>
                                                                        %</span>
                                                    </div>
                                                </div>

                                            </td>
                                        </tr>
                                        <?php
                                    }
                                    ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            <?php } ?>
            <!-- End milestones-->

            <!-- Start Tasks Management-->
            <?php if (!empty($all_task_info)): ?>
                <div class="tab-pane <?= $active == 6 ? 'active' : '' ?>" id="task" style="position: relative;">
                    <!-- Start Tasks Management-->
                    <div class="panel panel-custom">
                        <div class="panel-heading">
                            <div class="panel-title">
                                <?= lang('task') ?>
                            </div>
                        </div>
                        <div class="box-body">
                            <div class="table-responsive">
                                <table id="table-milestones" class="table table-striped     DataTables">
                                    <thead>
                                    <tr>
                                        <th><?= lang('task_name') ?></th>
                                        <th><?= lang('due_date') ?></th>
                                        <th class="col-sm-1"><?= lang('progress') ?></th>
                                        <th class="col-sm-1"><?= lang('status') ?></th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <?php
                                    foreach ($all_task_info as $key => $v_task):
                                        ?>
                                        <tr>

                                            <td><a class="text-info" style="<?php
                                                if ($v_task->task_progress >= 100) {
                                                    echo 'text-decoration: line-through;';
                                                }
                                                ?>"
                                                   href="<?= base_url() ?>client/tasks/view_task_details/<?= $v_task->task_id ?>"><?php echo $v_task->task_name; ?></a>
                                            </td>

                                            <td><?php
                                                $due_date = $v_task->due_date;
                                                $due_time = strtotime($due_date);
                                                $current_time = time();
                                                ?>
                                                <?= strftime(config_item('date_format'), strtotime($due_date)) ?>
                                                <?php if ($current_time > $due_time && $v_task->task_progress < 100) { ?>
                                                    <span
                                                        class="label label-danger"><?= lang('overdue') ?></span>
                                                <?php } ?></td>
                                            <td>
                                                <div class="inline ">
                                                    <div class="easypiechart text-success" style="margin: 0px;"
                                                         data-percent="<?= $v_task->task_progress ?>"
                                                         data-line-width="5" data-track-Color="#f0f0f0"
                                                         data-bar-color="#<?php
                                                         if ($v_task->task_progress == 100) {
                                                             echo '8ec165';
                                                         } else {
                                                             echo 'fb6b5b';
                                                         }
                                                         ?>" data-rotate="270" data-scale-Color="false"
                                                         data-size="50" data-animate="2000">
                                                            <span class="small text-muted"><?= $v_task->task_progress ?>
                                                                %</span>
                                                    </div>
                                                </div>

                                            </td>
                                            <td>
                                                <?php
                                                if ($v_task->task_status == 'completed') {
                                                    $label = 'success';
                                                } elseif ($v_task->task_status == 'not_started') {
                                                    $label = 'info';
                                                } elseif ($v_task->task_status == 'deferred') {
                                                    $label = 'danger';
                                                } else {
                                                    $label = 'warning';
                                                }
                                                ?>
                                                <span
                                                    class="label label-<?= $label ?>"><?= lang($v_task->task_status) ?> </span>
                                            </td>

                                        </tr>
                                    <?php endforeach; ?>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div><!-- End Tasks Management-->
            <?php endif; ?>
            <!-- Start Bugs Management-->
            <?php if (!empty($all_bugs_info)): ?>
                <div class="tab-pane <?= $active == 9 ? 'active' : '' ?>" id="bugs" style="position: relative;">

                    <div class="panel panel-custom">
                        <div class="panel-heading">
                            <div class="panel-title">
                                <?= lang('bugs') ?>
                            </div>
                        </div>
                        <div class="box-body">
                            <div class="table-responsive">
                                <table id="table-milestones" class="table table-striped     DataTables">
                                    <thead>
                                    <tr>
                                        <th><?= lang('bug_title') ?></th>
                                        <th><?= lang('status') ?></th>
                                        <th><?= lang('priority') ?></th>
                                        <th><?= lang('reporter') ?></th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <?php
                                    foreach ($all_bugs_info as $key => $v_bugs):
                                        $reporter = $this->db->where('user_id', $v_bugs->reporter)->get('tbl_users')->row();
                                        if ($reporter->role_id == '1') {
                                            $badge = 'danger';
                                        } elseif ($reporter->role_id == '2') {
                                            $badge = 'info';
                                        } else {
                                            $badge = 'primary';
                                        }
                                        ?>
                                        <tr>
                                            <td><a class="text-info" style="<?php
                                                if ($v_bugs->bug_status == 'resolve') {
                                                    echo 'text-decoration: line-through;';
                                                }
                                                ?>"
                                                   href="<?= base_url() ?>client/bugs/view_bug_details/<?= $v_bugs->bug_id ?>"><?php echo $v_bugs->bug_title; ?></a>
                                            </td>
                                            </td>
                                            <td><?php
                                                if ($v_bugs->bug_status == 'unconfirmed') {
                                                    $label = 'warning';
                                                } elseif ($v_bugs->bug_status == 'confirmed') {
                                                    $label = 'info';
                                                } elseif ($v_bugs->bug_status == 'in_progress') {
                                                    $label = 'primary';
                                                } else {
                                                    $label = 'success';
                                                }
                                                ?>
                                                <span
                                                    class="label label-<?= $label ?>"><?= lang("$v_bugs->bug_status") ?></span>
                                            </td>
                                            <td><?= ucfirst($v_bugs->priority) ?></td>
                                            <td>

                                                    <span
                                                        class="badge btn-<?= $badge ?> "><?= $reporter->username ?></span>
                                            </td>
                                        </tr>
                                    <?php endforeach; ?>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div><!-- End Bugs Management-->
            <?php endif; ?>
            <?php if (!empty($project_settings[9]) && $project_settings[9] == 'show_gantt_chart') {
                $all_task_info = $this->db->where(array('project_id' => $project_details->project_id, 'client_visible' => 'Yes'))->order_by('task_id', 'DESC')->get('tbl_task')->result();
                ?>
                <link href="<?php echo base_url() ?>assets/plugins/ganttView/jquery.ganttView.css?ver=3.0.0"
                      rel="stylesheet">
                <script src="<?php echo base_url() ?>assets/plugins/ganttView/jquery.ganttView.js"></script>
                <div class="tab-pane <?= $active == 13 ? 'active' : '' ?>" id="gantt" style="position: relative;">
                    <div class="panel panel-custom">
                        <div class="panel-heading">
                            <h3 class="panel-title"><?= lang('gantt') ?></h3>
                        </div>
                        <div class="">
                            <?php
                            //get gantt data for Milestones
                            $gantt_data = '{name: "' . $project_details->project_name . '", desc: "", values: [{
                                label: "", from: "' . $project_details->start_date . '", to: "' . $project_details->end_date . '", customClass: "gantt-headerline"
                                }]},  ';
                            $gantt_data = '{name: "' . $project_details->project_name . '", desc: "", values: [{
                                label: "", from: "' . $project_details->start_date . '", to: "' . $project_details->end_date . '", customClass: "gantt-headerline"
                                }]},  ';
                            if (!empty($all_task_info)) {
                                foreach ($all_task_info as $g_task) {
                                    if (!empty($g_task)) {
                                        if ($g_task->milestones_id == 0) {
                                            $tasks_result['uncategorized'][] = $g_task->task_id;
                                        } else {
                                            $milestones_info = $this->db->where('milestones_id', $g_task->milestones_id)->get('tbl_milestones')->row();
                                            $tasks_result[$milestones_info->milestone_name][] = $g_task->task_id;
                                        }
                                    }
                                }
                            }
                            if (!empty($tasks_result)) {
                                foreach ($tasks_result as $cate => $tasks_info):
                                    $counter = 0;
                                    if (!empty($tasks_info)) {
                                        foreach ($tasks_info as $tasks_id):
                                            $task = $this->db->where('task_id', $tasks_id)->get('tbl_task')->row();
                                            if ($cate != 'uncategorized') {
                                                $milestone = $this->db->where('milestones_id', $task->milestones_id)->get('tbl_milestones')->row();
                                                if (!empty($milestone)) {
                                                    $m_start_date = $milestone->start_date;
                                                    $m_end_date = $milestone->end_date;
                                                }
                                                $classs = 'gantt-timeline';
                                            } else {
                                                $cate = lang($cate);
                                                $m_start_date = null;
                                                $m_end_date = null;
                                                $classs = '';
                                            }
                                            $milestone_Name = "";
                                            if ($counter == 0) {
                                                $milestone_Name = $cate;
                                                $gantt_data .= '
                                {
                                  name: "' . $milestone_Name . '", desc: "", values: [';

                                                $gantt_data .= '{
                                label: "", from: "' . $m_start_date . '", to: "' . $m_end_date . '", customClass: "' . $classs . '"
                                }';
                                                $gantt_data .= ']
                                },  ';
                                            }

                                            $counter++;
                                            $start = ($task->task_start_date) ? $task->task_start_date : $m_end_date;
                                            $end = ($task->due_date) ? $task->due_date : $m_end_date;
                                            if ($task->task_status == "completed") {
                                                $class = "ganttGrey";
                                            } elseif ($task->task_status == "in_progress") {
                                                $class = "ganttin_progress";
                                            } elseif ($task->task_status == "not_started") {
                                                $class = "gantt_not_started";
                                            } elseif ($task->task_status == "deferred") {
                                                $class = "gantt_deferred";
                                            } else {
                                                $class = "ganttin_progress";
                                            }
                                            $gantt_data .= '
                          {
                            name: "", desc: "' . $task->task_name . '", values: [';

                                            $gantt_data .= '{
                          label: "' . $task->task_name . '", from: "' . $start . '", to: "' . $end . '", customClass: "' . $class . '"
                          }';
                                            $gantt_data .= ']
                          },  ';
                                        endforeach;
                                    }
                                endforeach;
                            }
                            ?>

                            <div class="gantt"></div>
                            <div id="gantData">

                                <script type="text/javascript">
                                    function ganttChart(ganttData) {
                                        $(function () {
                                            "use strict";
                                            $(".gantt").gantt({
                                                source: ganttData,
                                                minScale: "years",
                                                maxScale: "years",
                                                navigate: "scroll",
                                                itemsPerPage: 30,
                                                onItemClick: function (data) {
                                                    console.log(data.id);
                                                },
                                                onAddClick: function (dt, rowId) {
                                                },
                                                onRender: function () {
                                                    console.log("chart rendered");
                                                }
                                            });

                                        });
                                    }
                                    ganttData = [<?=$gantt_data;?>];
                                    ganttChart(ganttData);

                                    $(document).on("click", '.resize-gantt', function (e) {
                                        ganttData = [<?=$gantt_data;?>];
                                        ganttChart(ganttData);
                                    });
                                </script>
                            </div>
                        </div>
                    </div>
                </div>
            <?php } ?>
            <div class="tab-pane <?= $active == 14 ? 'active' : '' ?>" id="project_tickets" style="position: relative;">
                <div class="box" style="border: none; padding-top: 15px;" data-collapsed="0">
                    <div class="nav-tabs-custom">
                        <!-- Tabs within a box -->
                        <ul class="nav nav-tabs">
                            <li class="<?= $task_active == 1 ? 'active' : ''; ?>"><a href="#manage_tickets"
                                                                                     data-toggle="tab"><?= lang('tickets') ?></a>
                            </li>
                            <li class=""><a
                                    href="<?= base_url() ?>client/tickets/index/project_tickets/0/<?= $project_details->project_id ?>"><?= lang('new_ticket') ?></a>
                            </li>
                        </ul>
                        <div class="tab-content bg-white">
                            <!-- ************** general *************-->
                            <div class="tab-pane <?= $task_active == 1 ? 'active' : ''; ?>" id="manage_tickets">
                                <div class="table-responsive">
                                    <table id="table-milestones" class="table table-striped ">
                                        <thead>
                                        <tr>
                                            <th><?= lang('ticket_code') ?></th>
                                            <th><?= lang('subject') ?></th>
                                            <th class="col-date"><?= lang('date') ?></th>
                                            <?php if ($this->session->userdata('user_type') == '1') { ?>
                                                <th><?= lang('reporter') ?></th>
                                            <?php } ?>
                                            <th><?= lang('department') ?></th>
                                            <th><?= lang('status') ?></th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <?php
                                        if (!empty($all_tickets_info)) {
                                            foreach ($all_tickets_info as $v_tickets_info) {
                                                $can_edit = $this->items_model->can_action('tbl_tickets', 'edit', array('tickets_id' => $v_tickets_info->tickets_id));
                                                $can_delete = $this->items_model->can_action('tbl_tickets', 'delete', array('tickets_id' => $v_tickets_info->tickets_id));
                                                if ($v_tickets_info->status == 'open') {
                                                    $s_label = 'danger';
                                                } elseif ($v_tickets_info->status == 'closed') {
                                                    $s_label = 'success';
                                                } else {
                                                    $s_label = 'default';
                                                }
                                                $profile_info = $this->db->where(array('user_id' => $v_tickets_info->reporter))->get('tbl_account_details')->row();
                                                $dept_info = $this->db->where(array('departments_id' => $v_tickets_info->departments_id))->get('tbl_departments')->row();
                                                if (!empty($dept_info)) {
                                                    $dept_name = $dept_info->deptname;
                                                } else {
                                                    $dept_name = '-';
                                                } ?>

                                                <tr>

                                                    <td><span
                                                            class="label label-success"><?= $v_tickets_info->ticket_code ?></span>
                                                    </td>
                                                    <td><a class="text-info"
                                                           href="<?= base_url() ?>client/tickets/index/tickets_details/<?= $v_tickets_info->tickets_id ?>"><?= $v_tickets_info->subject ?></a>
                                                    </td>
                                                    <td><?= strftime(config_item('date_format'), strtotime($v_tickets_info->created)); ?></td>
                                                    <?php if ($this->session->userdata('user_type') == '1') { ?>

                                                        <td>
                                                            <a class="pull-left recect_task  ">
                                                                <?php if (!empty($profile_info)) {
                                                                    ?>
                                                                    <img style="width: 30px;margin-left: 18px;
                                                         height: 29px;
                                                         border: 1px solid #aaa;"
                                                                         src="<?= base_url() . $profile_info->avatar ?>"
                                                                         class="img-circle">


                                                                    <?=
                                                                    ($profile_info->fullname)
                                                                    ?>
                                                                <?php } else {
                                                                    echo '-';
                                                                } ?>
                                                            </a>
                                                        </td>

                                                    <?php } ?>
                                                    <td><?= $dept_name ?></td>
                                                    <?php
                                                    if ($v_tickets_info->status == 'in_progress') {
                                                        $status = 'In Progress';
                                                    } else {
                                                        $status = $v_tickets_info->status;
                                                    }
                                                    ?>
                                                    <td><span
                                                            class="label label-<?= $s_label ?>"><?= ucfirst($status) ?></span>
                                                    </td>

                                                </tr>
                                                <?php
                                            }
                                        }
                                        ?>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <!-- End Tasks Management-->

                        </div>
                    </div>
                </div>
            </div>
            <?php if (!empty($all_invoice_info)) { ?>
                <div class="tab-pane <?= $active == 11 ? 'active' : '' ?>" id="invoice" style="position: relative;">
                    <div class="panel panel-custom">
                        <div class="panel-heading">
                            <h3 class="panel-title"><?= lang('invoice') ?></h3>
                        </div>
                        <div class="panel-body">

                            <div class="table-responsive">
                                <table id="table-milestones" class="table table-striped ">
                                    <thead>
                                    <tr>
                                        <th><?= lang('invoice') ?></th>
                                        <th class="col-date"><?= lang('due_date') ?></th>
                                        <th class="col-currency"><?= lang('amount') ?></th>
                                        <th class="col-currency"><?= lang('due_amount') ?></th>
                                        <th><?= lang('status') ?></th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <?php
                                    foreach ($all_invoice_info as $v_invoices) {
                                        if ($this->invoice_model->get_payment_status($v_invoices->invoices_id) == lang('fully_paid')) {
                                            $invoice_status = lang('fully_paid');
                                            $label = "success";
                                        } elseif ($v_invoices->emailed == 'Yes') {
                                            $invoice_status = lang('sent');
                                            $label = "info";
                                        } else {
                                            $invoice_status = lang('draft');
                                            $label = "default";
                                        }
                                        ?>
                                        <tr>
                                            <td><a class="text-info"
                                                   href="<?= base_url() ?>client/invoice/manage_invoice/invoice_details/<?= $v_invoices->invoices_id ?>"><?= $v_invoices->reference_no ?></a>
                                            </td>
                                            <td><?= strftime(config_item('date_format'), strtotime($v_invoices->due_date)) ?>
                                                <?php
                                                $payment_status = $this->invoice_model->get_payment_status($v_invoices->invoices_id);
                                                if (strtotime($v_invoices->due_date) < time() AND $payment_status != lang('fully_paid')) { ?>
                                                    <span
                                                        class="label label-danger "><?= lang('overdue') ?></span>
                                                    <?php
                                                }
                                                ?>
                                            </td>

                                            <?php $currency = $this->items_model->client_currency_sambol($v_invoices->client_id); ?>
                                            <td><?= display_money($this->invoice_model->calculate_to('invoice_cost', $v_invoices->invoices_id), $currency->symbol) ?></td>
                                            <td><?= display_money($this->invoice_model->calculate_to('invoice_due', $v_invoices->invoices_id), $currency->symbol) ?></td>
                                            <td><span
                                                    class="label label-<?= $label ?>"><?= $invoice_status ?></span>
                                                <?php if ($v_invoices->recurring == 'Yes') { ?>
                                                    <span data-toggle="tooltip" data-placement="top"
                                                          title="<?= lang('recurring') ?>"
                                                          class="label label-primary"><i
                                                            class="fa fa-retweet"></i></span>
                                                <?php } ?>

                                            </td>

                                        </tr>
                                        <?php
                                    }
                                    ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            <?php } ?>
            <?php if (!empty($all_estimates_info)) { ?>
                <div class="tab-pane <?= $active == 12 ? 'active' : '' ?>" id="estimates" style="position: relative;">
                    <div class="panel panel-custom">
                        <div class="panel-heading">
                            <h3 class="panel-title"><?= lang('estimates') ?></h3>
                        </div>
                        <div class="panel-body">

                            <div class="table-responsive">
                                <table id="table-milestones" class="table table-striped ">
                                    <thead>
                                    <tr>
                                        <th><?= lang('estimate') ?></th>
                                        <th><?= lang('due_date') ?></th>
                                        <th><?= lang('amount') ?></th>
                                        <th><?= lang('status') ?></th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <?php
                                    foreach ($all_estimates_info as $v_estimates) {
                                        if ($v_estimates->status == 'Pending') {
                                            $label = "info";
                                        } elseif ($v_estimates->status == 'Accepted') {
                                            $label = "success";
                                        } else {
                                            $label = "danger";
                                        }
                                        ?>
                                        <tr>
                                            <td>
                                                <a class="text-info"
                                                   href="<?= base_url() ?>client/estimates/index/estimates_details/<?= $v_estimates->estimates_id ?>"><?= $v_estimates->reference_no ?></a>
                                            </td>
                                            <td><?= strftime(config_item('date_format'), strtotime($v_estimates->due_date)) ?>
                                                <?php
                                                if (strtotime($v_estimates->due_date) < time() AND $v_estimates->status == 'Pending') { ?>
                                                    <span class="label label-danger "><?= lang('expired') ?></span>
                                                <?php }
                                                ?>
                                            </td>

                                            <?php $currency = $this->estimates_model->client_currency_sambol($v_estimates->client_id); ?>
                                            <td>
                                                <?= display_money($this->estimates_model->estimate_calculation('estimate_amount', $v_estimates->estimates_id), $currency->symbol); ?>
                                            </td>
                                            <td><span
                                                    class="label label-<?= $label ?>"><?= lang(strtolower($v_estimates->status)) ?></span>
                                            </td>
                                        </tr>
                                        <?php
                                    }
                                    ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            <?php } ?>
        </div>

    </div>
</div>

<script type="text/javascript">
    $(document).ready(function () {
        var maxAppend = 0;
        $("#add_more").click(function () {
            if (maxAppend >= 4) {
                alert("Maximum 5 File is allowed");
            } else {
                var add_new = $('<div class="form-group" style="margin-bottom: 0px">\n\
                    <label for="field-1" class="col-sm-3 control-label"><?= lang('upload_file') ?></label>\n\
        <div class="col-sm-5">\n\
        <div class="fileinput fileinput-new" data-provides="fileinput">\n\
<span class="btn btn-default btn-file"><span class="fileinput-new" >Select file</span><span class="fileinput-exists" >Change</span><input type="file" name="task_files[]" ></span> <span class="fileinput-filename"></span><a href="#" class="close fileinput-exists" data-dismiss="fileinput" style="float: none;">&times;</a></div></div>\n\<div class="col-sm-2">\n\<strong>\n\
<a href="javascript:void(0);" class="remCF"><i class="fa fa-times"></i>&nbsp;Remove</a></strong></div>');
                maxAppend++;
                $("#add_new").append(add_new);
            }
        });

        $("#add_new").on('click', '.remCF', function () {
            $(this).parent().parent().parent().remove();
        });
    });
</script>