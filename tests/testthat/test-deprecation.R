furrr_test_that("`.progress` updates are deprecated", {
  expect_deprecated(future_map(1, ~.x, .progress = TRUE), "future_map")
  expect_deprecated(future_map_chr("1", ~.x, .progress = TRUE), "future_map_chr")
  expect_deprecated(future_map_dbl(1, ~.x, .progress = TRUE), "future_map_dbl")
  expect_deprecated(future_map_int(1L, ~.x, .progress = TRUE), "future_map_int")
  expect_deprecated(future_map_lgl(TRUE, ~.x, .progress = TRUE), "future_map_lgl")
  expect_deprecated(future_map_dfr(1, ~data.frame(x=1), .progress = TRUE), "future_map_dfr")
  expect_deprecated(future_map_dfc(1, ~data.frame(x=1), .progress = TRUE), "future_map_dfc")

  expect_deprecated(future_map2(1, 1, ~.x, .progress = TRUE), "future_map2")
  expect_deprecated(future_map2_chr("1", 1, ~.x, .progress = TRUE), "future_map2_chr")
  expect_deprecated(future_map2_dbl(1, 1, ~.x, .progress = TRUE), "future_map2_dbl")
  expect_deprecated(future_map2_int(1L, 1, ~.x, .progress = TRUE), "future_map2_int")
  expect_deprecated(future_map2_lgl(TRUE, 1, ~.x, .progress = TRUE), "future_map2_lgl")
  expect_deprecated(future_map2_dfr(1, 1, ~data.frame(x=1), .progress = TRUE), "future_map2_dfr")
  expect_deprecated(future_map2_dfc(1, 1, ~data.frame(x=1), .progress = TRUE), "future_map2_dfc")

  expect_deprecated(future_pmap(list(1, 1), ~.x, .progress = TRUE), "future_pmap")
  expect_deprecated(future_pmap_chr(list("1", 1), ~.x, .progress = TRUE), "future_pmap_chr")
  expect_deprecated(future_pmap_dbl(list(1, 1), ~.x, .progress = TRUE), "future_pmap_dbl")
  expect_deprecated(future_pmap_int(list(1L, 1), ~.x, .progress = TRUE), "future_pmap_int")
  expect_deprecated(future_pmap_lgl(list(TRUE, 1), ~.x, .progress = TRUE), "future_pmap_lgl")
  expect_deprecated(future_pmap_dfr(list(1, 1), ~data.frame(x=1), .progress = TRUE), "future_pmap_dfr")
  expect_deprecated(future_pmap_dfc(list(1, 1), ~data.frame(x=1), .progress = TRUE), "future_pmap_dfc")

  expect_deprecated(future_imap(1, ~.x, .progress = TRUE), "future_imap")
  expect_deprecated(future_imap_chr("1", ~.x, .progress = TRUE), "future_imap_chr")
  expect_deprecated(future_imap_dbl(1, ~.x, .progress = TRUE), "future_imap_dbl")
  expect_deprecated(future_imap_int(1L, ~.x, .progress = TRUE), "future_imap_int")
  expect_deprecated(future_imap_lgl(TRUE, ~.x, .progress = TRUE), "future_imap_lgl")
  expect_deprecated(future_imap_dfr(1, ~data.frame(x=1), .progress = TRUE), "future_imap_dfr")
  expect_deprecated(future_imap_dfc(1, ~data.frame(x=1), .progress = TRUE), "future_imap_dfc")

  expect_deprecated(future_invoke_map(function() {}, .progress = TRUE), "future_invoke_map")
  expect_deprecated(future_invoke_map_chr(function() {"x"}, .progress = TRUE), "future_invoke_map_chr")
  expect_deprecated(future_invoke_map_dbl(function() {1}, .progress = TRUE), "future_invoke_map_dbl")
  expect_deprecated(future_invoke_map_int(function() {1L}, .progress = TRUE), "future_invoke_map_int")
  expect_deprecated(future_invoke_map_lgl(function() {TRUE}, .progress = TRUE), "future_invoke_map_lgl")
  expect_deprecated(future_invoke_map_dfr(function() {data.frame(x=1)}, .progress = TRUE), "future_invoke_map_dfr")
  expect_deprecated(future_invoke_map_dfc(function() {data.frame(x=1)}, .progress = TRUE), "future_invoke_map_dfc")

  expect_deprecated(future_modify(1, ~.x, .progress = TRUE), "future_modify")
  expect_deprecated(future_modify_at("1", 1, ~.x, .progress = TRUE), "future_modify_at")
  expect_deprecated(future_modify_if(1, TRUE, ~.x, .progress = TRUE), "future_modify_if")
})

test_that("can use deprecated `future_options()`", {
  expect_identical(
    expect_deprecated(
      future_options(),
      "`future_options[(][)]` is deprecated as of furrr 0.2.0"
    ),
    furrr_options()
  )

  expect_identical(
    expect_deprecated(
      future_options(globals = "x", packages = "dplyr", seed = 1, lazy = TRUE, scheduling = 2)
    ),
    furrr_options(globals = "x", packages = "dplyr", seed = 1, lazy = TRUE, scheduling = 2)
  )
})
