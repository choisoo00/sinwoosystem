package com.example.shinwoosystem.repository;

import com.example.shinwoosystem.entity.Board;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.ArrayList;
import java.util.List;

public interface BoardRepository extends JpaRepository<Board, Integer> {
    @Query("SELECT b FROM Board b ORDER BY b.Id DESC")
    List<Board> findAllOrderByIdDesc();
}
