        <tr class="px-4 py-4">
            <td class="x-4 py-4 m-">{{ $date }}</td>
            <td class="x-4 py-4 m-2"><img src = "{{asset('storage/images/' . $image )}}" style="height:35px;"></td>
            <td class="x-4 py-4 m-2">{{ $slot }}</td>
            <td class="x-4 py-4 m-2">{{ $kind }}</td>
            <td class="x-4 py-4 m-2">{{ $username }}</td>
            <td>
            
            <!--<div class="space-x-2 leading-3">-->

                    <span class="inline-flex items-center x-4 py-4 m-2">
                        <a href="{{ $url }}">
                            <button class="btn bg-gray-500 rounded-md py-1 px-2 font-light text-white">
                                詳細
                            </button>
                        </a>
                    </span>
            </td>
        </tr>



