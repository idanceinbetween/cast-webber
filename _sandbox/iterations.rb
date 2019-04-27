def flatten_curated_list(array)
  all_podcasts = []

  array.map do |obj| #array is results[:"curated_lists"]
    all_podcasts << obj[:"podcasts"]
  end

  all_podcasts.flatten!
end
