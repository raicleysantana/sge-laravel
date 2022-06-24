@extends('layouts.main')
@section('title',$event->title)

@section('content')
    <div class="col-md-10 offset-md-1 mt-4">
        <div class="row">
            <div class="col-md-6" id="image-container">
                <img
                    src="/img/{{ $event->image ? "events/".$event->image : "curso-default.jpg"}}"
                    alt="{{ $event->title }}"
                    class="img-fluid"
                >
            </div>

            <div class="col-md-6" id="info-container">
                <h1>{{ $event->title }}</h1>

                <p class="event-date text-muted">
                    {{ $event->date_event ? date('d/m/Y', strtotime($event->date_event)) : 'Pendente' }}
                </p>
                <p class="event-city">
                    <ion-icon name="location-outline"></ion-icon>{{ $event->city }}
                </p>
                <p class="event-people">
                    <ion-icon name="people-outline"></ion-icon>
                    {{ count($event->users) }} Participantes
                </p>
                <p class="event-owner">
                    <ion-icon name="star-outline"></ion-icon>
                    {{ $eventowner ? $eventowner['name'] : 'Não definido' }}
                </p>

                @if(!$hasUserJoined)
                    <form action="/events/join/{{ $event->id }}" method="POST">
                        @csrf
                        <button type="submit" class="btn btn-success" id="event-submit">Confirmar Presença</button>
                    </form>
                @else
                    <h5 class="text-success">Você já está participante deste evento</h5>
                @endif

                <h3 class="mt-3">Evento conta com:</h3>
                <ul class="list-unstyled">
                    @if($event->items)
                        @foreach($event->items as $item)
                            <li>
                                <ion-icon name="play-outline"></ion-icon> {{$item}}
                            </li>
                        @endforeach
                    @endif
                </ul>
            </div>

            <div class="col-md-12 mt-4">
                <h3>Sobre o evento</h3>

                <p class="text-muted">{{ $event->description }}</p>
            </div>
        </div>
    </div>
@endsection
