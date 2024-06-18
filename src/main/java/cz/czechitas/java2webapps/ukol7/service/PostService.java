package cz.czechitas.java2webapps.ukol7.service;

import org.springframework.stereotype.Service;
import cz.czechitas.java2webapps.ukol7.repository.PostRepository;
import cz.czechitas.java2webapps.ukol7.entity.Post;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;


import java.util.List;

@Service
public class PostService {
    private final PostRepository postRepository;

    public PostService(PostRepository postRepository) {
        this.postRepository = postRepository;
    }

    public Page<Post> list() {
        Pageable pageable = PageRequest.of(0,20);
        return postRepository.findOrderByBeforeToday(pageable);
    }

    public Post singlePost(String slug) {
        return postRepository.findBySlug(slug);
    }

}