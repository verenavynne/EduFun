<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <title>Home</title>
    @include('custom.bootstrap')
    <style>
        body{
            background-color: #FCFAEE;
        }
        .nav-link.active{
            color: deepskyblue !important;
        }
        .article-card{
            border: none;
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
                    <a class="nav-link active" aria-current="page" href="{{route('edufun.home')}}">Home</a>
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
                    <a class="nav-link" href="{{route('edufun.aboutus')}}">AboutUs</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{route('edufun.popular')}}">Popular</a>
                </li>
            </ul>
            </div>
        </div>
    </nav>

    <img src="/assets/banner.jpeg" alt="Banner" class="object-fit-cover" style="width: 100%; height: 600px">

    <div class="container my-4">
        <div class="row">
            @foreach ($articles as $article)
                <div class="col-md-12 px-0">
                    <div class="card article-card d-flex flex-row gap-3" style="background-color: #FCFAEE">
                        <div class="col d-flex justify-content-center p-3">
                            <img src="{{ $article->article_image }}" alt="Article Image" style="width: 400px ; height: 180px; border-radius: 20px">
                        </div>
                        <div class="col-8 d-flex flex-column justify-content-center pe-5">
                            <h5 class="card-title">{{ $article->title }}</h5>
                            <p class="text-muted">{{ \Carbon\Carbon::parse($article->post_date)->format('d F Y') }} | by {{ $article->writer->name }}</p>
                            <p class="card-text">{{ \Illuminate\Support\Str::limit($article->content, 150) }}</p>
                            <div class="d-flex justify-content-end">
                                <a href="{{ route('edufun.detail', ['category' => $article->category->slug, 'title' => $article->title]) }}" class="btn btn-primary" role="button" style="background-color: #000B58; width:150px; height:auto">read more...</a>
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </div>

    <footer class="bg-dark text-center py-4" >
        <p class="text-white" style="margin:0;display:flex; align-items: center; justify-content: center;">© EduFun 2024 | Web Programming | Verena Vynne Sentosa | 2602063831</p>
    </footer>
</body>
</html>