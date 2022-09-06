<header>
    <div class="top">
        <div class="container">
            <div class="row">
                <div class="span6">
                    <p class="topcontact"><i class="icon-google-plus"></i> randobawagirangdesa@gmail.com</p>
                </div>
                <div class="span6">

                    <ul class="social-network">
                        <li><a href="https://www.instagram.com/kkm20_desarandobawagirang/" data-placement="bottom" title="Instagram"><i class="icon-instagram icon-white"></i></a>
                        </li>
                        <li><a href="https://www.youtube.com/channel/UCpaYVFQ0EMaqRk26p_iH4aA" data-placement="bottom" title="Youtube"><i class="icon-youtube icon-white"></i></a></li>
                    </ul>

                </div>
            </div>
        </div>
    </div>

    <div class="container">


        <div class="row nomargin">
            <div class="span4">
                <div class="logo">
                    <a href="<?= base_url(); ?>"><img src="<?php echo base_url('public/'); ?>img/bagirang.png" alt="" /></a>
                </div>
            </div>
            <div class="span8">
                <div class="navbar navbar-static-top">
                    <div class="navigation">
                        <nav>
                            <ul class="nav topnav">
                                <li class="active">
                                    <a href="<?= base_url(); ?>"><i class="icon-home"></i> Home </a>
                                </li>
                                <li class="dropdown">
                                    <a href="#">Profil <i class="icon-angle-down"></i></a>
                                    <ul class="dropdown-menu">
                                        <li class="dropdown"><a href="#">Profil Desa<i class="icon-angle-right"></i></a>
                                            <ul class="dropdown-menu sub-menu-level1">
                                                <li><a href="<?php echo base_url('profil/desa'); ?>">Gambaran Umum Desa</a></li>
                                                <li><a href="<?php echo base_url('profil/sejarah'); ?>">Sejarah Desa</a></li>
                                                <li><a href="#">Visi dan Misi</a></li>
                                                <!-- <li><a href="#">Potensi Desa</a></li>
                                                <li><a href="#">Peta Wilayah Desa</a></li> -->
                                            </ul>
                                        </li>
                                        <li><a href="<?php echo base_url('profil/pemdes'); ?>">Pemerintah Desa</a></li>
                                        <li><a href="<?= base_url('profil/bpd'); ?>">BPD</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <a href="#">Lembaga Desa <i class="icon-angle-down"></i></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Karang Taruna</a></li>
                                        <li><a href="#">PKK</a></li>
                                        <li><a href="#">Majelis Taklim</a></li>
                                        <li><a href="#">LPMD</a></li>
                                    </ul>
                                </li>
                                <li><a href="<?= base_url('artikel'); ?>">Potensi Desa</a></li>
                                <!-- <li><a href="<?= base_url('penduduk'); ?>">Penduduk </a></li> -->

                                <!-- <li class="dropdown">
                                    <a href="#">Galeri <i class="icon-angle-down"></i></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="<?= base_url('galeri/foto'); ?>">Foto</a></li>
                                        <li><a href="<?= base_url('galeri/video'); ?>">Video</a></li>
                                    </ul>
                                </li> -->

                                <li><a href="<?= base_url('download'); ?>">Download </a></li>
                                <li><a href="<?= base_url('kontak'); ?>">Kontak </a></li>
                            </ul>
                        </nav>
                    </div>
                    <!-- end navigation -->
                </div>
            </div>
        </div>
    </div>
</header>