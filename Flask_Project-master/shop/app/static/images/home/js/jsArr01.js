function sumArray(arr) {
  var sum = 0;
  for (var i = 0; i < arr.length; i++) {
    sum += arr[i];
  }
  return sum;
}

// 定义一个名为averageArray的函数，用于计算数组中所有元素的平均值
function averageArray(arr) {
  var sum = sumArray(arr);
  return sum / arr.length;
}

// 导出函数或变量，使其可以在其他文件中使用
export { sumArray, averageArray };