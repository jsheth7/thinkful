<?php
	
	class FibonacciSequence{
		
		public $values;
		
		public function __construct($maxNumber, $includesZero){
			
			if($includesZero){
				$this->values = array(0, 1);
			}
			
			else{
				$this->values = array(1, 1);
			}

            $index = 2;

            while(true){
                $nextNumber = $this->values[$index - 1] + $this->values[$index - 2];
                if($nextNumber < $maxNumber){
                    $this->values[] = $nextNumber;
                    $index++;
                }
                else{
                    break;
                }
            }
			
		}
	}
	
	$fs = new FibonacciSequence(100, true);
	print_r($fs->values);
?>