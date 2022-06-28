package §`F§
{
   public class §<!%§ extends §^F§ implements §4!A§
   {
       
      
      private var §]!7§:Vector.<§4!A§>;
      
      private var §3!F§:Boolean = true;
      
      private var §[]§:int = 0;
      
      public function §<!%§(param1:Array, param2:Boolean)
      {
         var _loc3_:§4!A§ = null;
         this.§]!7§ = new Vector.<§4!A§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§]!7§.push(_loc3_);
         }
         this.§3!F§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§4!A§ = null;
         for each(_loc1_ in this.§]!7§)
         {
            if(!_loc1_.isCompleted)
            {
               return false;
            }
         }
         return true;
      }
      
      override public function get isPaused() : Boolean
      {
         var _loc1_:§4!A§ = null;
         for each(_loc1_ in this.§]!7§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §1g§() : int
      {
         if(this.§3!F§)
         {
            return this.§]!7§.length;
         }
         if(this.§]!7§.length > this.§[]§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §?R§() : int
      {
         if(this.§3!F§)
         {
            return 0;
         }
         return this.§[]§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§4!A§ = null;
         while(this.§]!7§.length > 0)
         {
            _loc1_ = this.§]!7§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§4!A§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§]!7§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §0C§() : void
      {
         var _loc1_:§4!A§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§]!7§)
            {
               _loc1_.§0C§();
            }
         }
      }
      
      public function pause() : void
      {
         var _loc1_:§4!A§ = null;
         for each(_loc1_ in this.§]!7§)
         {
            _loc1_.pause();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§4!A§ = null;
         for each(_loc1_ in this.§]!7§)
         {
            _loc1_.play();
         }
      }
      
      public function §-g§() : void
      {
         var _loc2_:§4!A§ = null;
         §3j§ = -§?-§;
         this.§[]§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§]!7§.length)
         {
            _loc2_ = this.§]!7§[_loc1_];
            _loc2_.§-g§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§4!A§ = null;
         §3j§ += param1;
         if(§3j§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§1g§;
         var _loc3_:int = this.§?R§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§]!7§[_loc4_]).update(param1);
            this.§6Q§(_loc5_);
            _loc4_++;
         }
         this.§]!#§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §6Q§(param1:§4!A§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§3!F§)
            {
               ++this.§[]§;
               if(this.§[]§ < this.§]!7§.length)
               {
                  this.§]!7§[this.§[]§].play();
               }
            }
         }
      }
      
      private function §]!#§() : void
      {
         if(this.isCompleted)
         {
            if(!§,!D§)
            {
               this.§-g§();
               this.play();
            }
            else if(§]!8§ != null)
            {
               try
               {
                  §]!8§();
                  §]!8§ = null;
               }
               catch(e:Error)
               {
                  §]!8§ = null;
                  if(!§4v§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
