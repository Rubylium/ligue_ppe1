<?php

class Area
{
    private $id;
    private $disabled;
    private $area_name;
    private $area_admin_email;
    private $resolution;
    private $default_duration;
    private $morningstarts;
    private $morningstarts_minutes;
    private $eveningends;
    private $eveningends_minutes;
    private $private_enabled;
    private $private_default;
    private $private_mandatory;
    private $private_override;
    private $min_book_ahead_enabled;
    private $min_book_ahead_secs;
    private $max_book_ahead_enabled;
    private $max_book_ahead_secs;
    private $custom_html;
    private $approval_enabled;
    private $reminders_enabled;
    private $enable_periods;
    private $confirmation_enabled;
    private $confirmed_default;



    public function __construct($id, $disabled, $area_name, $area_admin_email, $resolution, $default_duration, $morningstarts, $morningstarts_minutes, $eveningends, $eveningends_minutes, $private_enabled, $private_default, $private_mandatory, $private_override, $min_book_ahead_enabled, $min_book_ahead_secs, $max_book_ahead_enabled, $max_book_ahead_secs, $custom_html, $approval_enabled, $reminders_enabled, $enable_periods, $confirmation_enabled, $confirmed_default)
    {
        $this->id = $id;
        $this->disabled = $disabled;
        $this->area_name = $area_name;
        $this->area_admin_email = $area_admin_email;
        $this->resolution = $resolution;
        $this->default_duration = $default_duration;
        $this->morningstarts = $morningstarts;
        $this->morningstarts_minutes = $morningstarts_minutes;
        $this->eveningends = $eveningends;
        $this->eveningends_minutes = $eveningends_minutes;
        $this->private_enabled = $private_enabled;
        $this->private_default = $private_default;
        $this->private_mandatory = $private_mandatory;
        $this->private_override = $private_override;
        $this->min_book_ahead_enabled = $min_book_ahead_enabled;
        $this->min_book_ahead_secs = $min_book_ahead_secs;
        $this->max_book_ahead_enabled = $max_book_ahead_enabled;
        $this->max_book_ahead_secs = $max_book_ahead_secs;
        $this->custom_html = $custom_html;
        $this->approval_enabled = $approval_enabled;
        $this->reminders_enabled = $reminders_enabled;
        $this->enable_periods = $enable_periods;
        $this->confirmation_enabled = $confirmation_enabled;
        $this->confirmed_default = $confirmed_default;
    }

    public function getid()
    {
        return $this->id;
    }

    public function getarea_name()
    {
        return $this->area_name;
    }
}
