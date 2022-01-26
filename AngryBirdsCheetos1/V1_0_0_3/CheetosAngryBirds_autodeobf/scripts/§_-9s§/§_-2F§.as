package §_-9s§
{
   public class §_-2F§ extends §_-vP§ implements §_-d7§
   {
       
      
      private var §_-lI§:Vector.<§_-d7§>;
      
      private var §_-RO§:Boolean = true;
      
      private var §_-A5§:int = 0;
      
      public function §_-2F§(param1:Array, param2:Boolean)
      {
         var _loc3_:§_-d7§ = null;
         this.§_-lI§ = new Vector.<§_-d7§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§_-lI§.push(_loc3_);
         }
         this.§_-RO§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§_-d7§ = null;
         for each(_loc1_ in this.§_-lI§)
         {
            if(!_loc1_.isCompleted)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §_-sb§() : int
      {
         if(this.§_-RO§)
         {
            return this.§_-lI§.length;
         }
         if(this.§_-lI§.length > 0)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §_-j8§() : int
      {
         if(this.§_-RO§)
         {
            return 0;
         }
         return this.§_-A5§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§_-d7§ = null;
         while(this.§_-lI§.length > 0)
         {
            _loc1_ = this.§_-lI§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§_-d7§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§_-lI§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §_-NG§() : void
      {
         var _loc1_:§_-d7§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§_-lI§)
            {
               _loc1_.§_-NG§();
            }
         }
      }
      
      public function §_-fc§() : void
      {
         var _loc2_:§_-d7§ = null;
         var _loc1_:int = this.§_-sb§ - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-lI§[_loc1_];
            _loc2_.§_-fc§();
            _loc1_--;
         }
      }
      
      public function play() : void
      {
         var _loc2_:§_-d7§ = null;
         var _loc1_:int = this.§_-sb§ - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-lI§[_loc1_];
            _loc2_.play();
            _loc1_--;
         }
      }
      
      public function §_-1A§() : void
      {
         var _loc2_:§_-d7§ = null;
         §_-zI§ = -§_-yS§;
         this.§_-A5§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§_-lI§.length)
         {
            _loc2_ = this.§_-lI§[_loc1_];
            _loc2_.§_-1A§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§_-d7§ = null;
         §_-zI§ += param1;
         if(§_-zI§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§_-sb§;
         var _loc3_:int = this.§_-j8§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§_-lI§[_loc4_]).update(param1);
            this.§_-pN§(_loc5_);
            _loc4_++;
         }
         this.§_-wW§();
      }
      
      private function §_-pN§(param1:§_-d7§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§_-RO§)
            {
               ++this.§_-A5§;
               if(this.§_-A5§ < this.§_-lI§.length)
               {
                  this.§_-lI§[this.§_-A5§].play();
               }
            }
         }
      }
      
      private function §_-wW§() : void
      {
         if(this.isCompleted)
         {
            if(!§_-9E§)
            {
               this.§_-1A§();
               this.play();
            }
            else if(§_-PU§ != null)
            {
               try
               {
                  §_-PU§();
                  §_-PU§ = null;
               }
               catch(e:Error)
               {
                  §_-PU§ = null;
                  if(!§_-WR§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
