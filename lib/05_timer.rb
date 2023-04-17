def time_string(n)
    return "%02d:%02d:%02d" % [n / 3600, n / 60%60, n %60]
end