package §_-0AB§
{
   public class §_-06r§ extends §_-Ok§ implements §_-IP§
   {
       
      
      private var §_-08b§:Vector.<§_-IP§>;
      
      private var §_-01-§:Boolean = true;
      
      private var §_-o8§:int = 0;
      
      public function §_-06r§(param1:Array, param2:Boolean)
      {
         var _loc3_:§_-IP§ = null;
         this.§_-08b§ = new Vector.<§_-IP§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§_-08b§.push(_loc3_);
         }
         this.§_-01-§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§_-IP§ = null;
         for each(_loc1_ in this.§_-08b§)
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
         var _loc1_:§_-IP§ = null;
         for each(_loc1_ in this.§_-08b§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §_-cu§() : int
      {
         if(this.§_-01-§)
         {
            return this.§_-08b§.length;
         }
         if(this.§_-08b§.length > this.§_-o8§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §_-0r§() : int
      {
         if(this.§_-01-§)
         {
            return 0;
         }
         return this.§_-o8§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§_-IP§ = null;
         while(this.§_-08b§.length > 0)
         {
            _loc1_ = this.§_-08b§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§_-IP§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§_-08b§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §_-02V§() : void
      {
         var _loc1_:§_-IP§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§_-08b§)
            {
               _loc1_.§_-02V§();
            }
         }
      }
      
      public function pause() : void
      {
         var _loc1_:§_-IP§ = null;
         for each(_loc1_ in this.§_-08b§)
         {
            _loc1_.pause();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§_-IP§ = null;
         for each(_loc1_ in this.§_-08b§)
         {
            _loc1_.play();
         }
      }
      
      public function §_-qj§() : void
      {
         var _loc2_:§_-IP§ = null;
         §_-063§ = -§_-kv§;
         this.§_-o8§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§_-08b§.length)
         {
            _loc2_ = this.§_-08b§[_loc1_];
            _loc2_.§_-qj§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§_-IP§ = null;
         §_-063§ += param1;
         if(§_-063§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§_-cu§;
         var _loc3_:int = this.§_-0r§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§_-08b§[_loc4_]).update(param1);
            this.§_-Yj§(_loc5_);
            _loc4_++;
         }
         this.§_-A9§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §_-Yj§(param1:§_-IP§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§_-01-§)
            {
               ++this.§_-o8§;
               if(this.§_-o8§ < this.§_-08b§.length)
               {
                  this.§_-08b§[this.§_-o8§].play();
               }
            }
         }
      }
      
      private function §_-A9§() : void
      {
         if(this.isCompleted)
         {
            if(!§_-W2§)
            {
               this.§_-qj§();
               this.play();
            }
            else if(§_-9L§ != null)
            {
               try
               {
                  §_-9L§();
                  §_-9L§ = null;
               }
               catch(e:Error)
               {
                  §_-9L§ = null;
                  if(!§_-i-§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
