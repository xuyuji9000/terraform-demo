provider "alicloud" {
    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
    region     = "${var.region}"
}

resource "alicloud_instance" "web" {
    availability_zone          = "${var.region}-a"
    image_id                   = "ubuntu_16_0402_64_20G_alibase_20170818.vhd"
                                  
    internet_charge_type       = "PayByTraffic"
    internet_max_bandwidth_out = "100"
    
    instance_type              = "ecs.xn4.small"
    system_disk_category       = "cloud_efficiency"
    io_optimized               = "optimized"
    security_groups            = ["${alicloud_security_group.default.id}"]
    instance_name              = "web"
}

resource "alicloud_security_group" "default" {
    name        = "default"
    description = "default"
}

resource "alicloud_security_group_rule" "ping" {
    type              = "ingress"
    ip_protocol       = "icmp"
    port_range        = "-1/-1"
    security_group_id = "${alicloud_security_group.default.id}"
    cidr_ip           = "0.0.0.0/0"
}
