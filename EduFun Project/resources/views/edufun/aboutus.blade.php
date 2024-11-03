<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us</title>
    @include('custom.bootstrap')
    <style>
        html, body {
            height: 100%;
            margin: 0;
        }
        body{
            background-color: #FCFAEE;
            display: flex;
            flex-direction: column;
        }
        .nav-link.active{
            color: deepskyblue !important;
        }
        .flex-grow{
            flex: 1;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-sm bg-light border-bottom">
        <div class="px-4 container-fluid d-flex justify-content-between">
            <a href="#" class="navbar-brand">
                <img src="/assets/logo.png" alt="logo" class="object-fit-cover" style="height: 70px ; width:auto">
            </a>

            <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
            <ul class="navbar-nav d-flex gap-3">
                <li class="nav-item">
                    <a class="nav-link" href="{{route('edufun.home')}}">Home</a>
                </li>
                <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">Category</a>
                    <ul class="dropdown-menu">
                        <li><a href="{{route('edufun.datascience')}}" class="dropdown-item">Data Science</a></li>
                        <li><a href="{{route('edufun.networksecurity')}}" class="dropdown-item">Network Security</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link"  href="{{route('edufun.writers')}}">Writers</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="{{route('edufun.aboutus')}}">AboutUs</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{route('edufun.popular')}}">Popular</a>
                </li>
            </ul>
            </div>
        </div>
    </nav>

    <div class="flex-grow">
        <div class="col-12 d-flex justify-content-center pt-5 pb-3">
            <h1 class="fw-bold">About Us</h1>
        </div>

        <div class="col-12 text-center" style="padding: 2rem 6rem;">
            <p style="font-size: 25px">
                EduFun adalah perusahaan pendidikan berbasis teknologi asal Indonesia. EduFun menyediakan layanan akses pendidikan dalam format tulisan berbahasa Indonesia yang disajikan secara online melalui website.
            </p>
            <p style="font-size: 25px">
                Hingga Juni 2024, EduFun memiliki lebih dari 10 ribu pengguna. EduFun hadir sebagai bentuk revolusi dari pendidikan di Indonesia dengan mengedepankan cara berpikir kritis, logis, rasional, dan sumber pengetahuan sains yang terintegrasi terhadap semua mahasiswa IT di Indonesia. EduFun bercita-cita mencetak generasi Indonesia yang memahami ilmu pengetahuan dan cinta belajar
            </p>
        </div>
    </div>
    

    <footer class="bg-dark text-center py-4" >
        <p class="text-white" style="margin:0;display:flex; align-items: center; justify-content: center;">© EduFun 2024 | Web Programming | Verena Vynne Sentosa | 2602063831</p>
    </footer>
</body>
</html>