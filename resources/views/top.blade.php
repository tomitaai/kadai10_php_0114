<x-guest-layout>
    
    
    
    <!--追記-->
    
    @if (Route::has('login'))
        <div class="hidden fixed top-0 right-0 px-6 py-4 sm:block">
            @auth
                <a href="{{ url('/dashboard') }}" class="text-sm text-gray-700 dark:text-gray-500 underline">Dashboard</a>
            @else
                <a href="{{ route('login') }}" class="text-sm text-gray-700 dark:text-gray-500 underline">Log in</a>
    
                @if (Route::has('register'))
                    <a href="{{ route('register') }}" class="ml-4 text-sm text-gray-700 dark:text-gray-500 underline">Register</a>
                @endif
            @endauth
        </div>
    @endif
    

    <!--ヘッダー[END]-->

    <div class="flex-1 text-left px-4 py-4 m-2">
        <div class="bg-white overflow-hidden shadow-sm">
            <div class="p-6 bg-white border-b border-gray-500 font-bold text-red">
                みんなのおすすめ本 一覧
            </div>
        </div>
<!--<div class="grid grid-cols-1">-->
<!--  <div class="bg-gray-100">1</div></div>-->
         <!-- 現在の本 -->
        <table class="table table-fixed px-4 py-4 m-2">

        <tr>
            <th scope="col w-80 w-1/4">読了日　　　　　　　　　</th>
            <th scope="col w-80 w-1/4">書籍名　　　　　</th>
            <th scope="col w-80 w-1/4">分類　　　　　　</th>
            <th scope="col w-80 w-1/4">投稿者　　　</th>

        </tr>
        @if (count($books) > 0)
            @foreach ($books as $book)
                <x-collection2 url="{{ $book->item_url }}" id="{{ $book->id }}" date="{{ $book->finished }}" kind="{{ $book->item_kind }}" username="{{ $book->user_id }}">{{ $book->item_name }}</x-collection2>
            @endforeach
        @endif
            </table>

        <!--</div>-->
        <div>
                {{ $books->links()}}
        </div>
    </div>

    <!--右側エリア[[END]-->  


</div>
 <!--全エリア[END]-->

</x-guest-layout>
