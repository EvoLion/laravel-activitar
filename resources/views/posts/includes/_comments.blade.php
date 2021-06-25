<div class="blog-more-title">
    @forelse ($comments as $comment)
        <p>{{ $comment->comment }}</p>

        <p class="text-muted">added {{ $comment->created_at->diffForHumans() }} by {{ $comment->name }}</p>
    @empty
        <p>{{ __('No comments yet!') }}</p>
    @endforelse
</div>
