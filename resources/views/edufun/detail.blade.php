<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detail Page</title>
    @include('custom.bootstrap')
    <style>
        body{
            background-color: #FCFAEE;
        }
        .nav-link.active, .dropdown-item.active{
            color: deepskyblue !important;
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
                <a class="nav-link active dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">Category</a>
                    <ul class="dropdown-menu">
                        <li><a href="{{route('edufun.datascience')}}" class="dropdown-item">Data Science</a></li>
                        <li><a href="{{route('edufun.networksecurity')}}" class="dropdown-item">Network Security</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link"  href="{{route('edufun.writers')}}">Writers</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link"  href="{{route('edufun.aboutus')}}">AboutUs</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{route('edufun.popular')}}">Popular</a>
                </li>
            </ul>
            </div>
        </div>
    </nav>


        <div class="container py-5">
            <div class="col-12 d-flex justify-content-center ">
                <h1>{{$article->title}}</h1>
            </div>
            <div class="col-12 d-flex justify-content-center py-5">
                <img src="{{ $article->article_image }}" alt="Article Image" class="img-fluid w-100" style="object-fit:cover; height: 400px;border-radius:20px" >
            </div>
            <div class="col-12">
                <p class="text-muted">{{ \Carbon\Carbon::parse($article->post_date)->format('d F Y') }} | by {{ $article->writer->name }}</p>
                <p>{{$article->content}}</p>
            </div>
        </div>

    <footer class="bg-dark text-center py-4" >
        <p class="text-white" style="margin:0;display:flex; align-items: center; justify-content: center;">© EduFun 2024 | Web Programming | Verena Vynne Sentosa | 2602063831</p>
    </footer>
</body>
</html>