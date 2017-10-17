provider "alicloud" {
    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
    region     = "${var.region}"
}

resource "alicloud_instance" "web" {
    availability_zone     = "${var.region}-b"
    image_id              = "ubuntu_16_0402_64_20G_alibase_20170818.vhd"
                             
    internet_charge_type  = "PayByBandwidth"
    
    instance_type         = "ecs.xn4.small"
    system_disk_category  = "cloud_efficiency"
    io_optimized          = "optimized"
    security_groups       = ["${alicloud_security_group.default.id}"]
    instance_name         = "web"
}

resource "alicloud_security_group" "default" {
    name        = "default"
    provider    = "alicloud"
    description = "default"
}
