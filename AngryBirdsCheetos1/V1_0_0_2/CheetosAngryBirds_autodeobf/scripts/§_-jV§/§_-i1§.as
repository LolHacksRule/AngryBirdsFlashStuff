package §_-jV§
{
   public class §_-i1§ extends §_-li§ implements §_-vU§
   {
       
      
      private var §_-dZ§:Vector.<§_-vU§>;
      
      private var §_-o2§:Boolean = true;
      
      private var §_-wR§:int = 0;
      
      public function §_-i1§(param1:Array, param2:Boolean)
      {
         var _loc3_:§_-vU§ = null;
         this.§_-dZ§ = new Vector.<§_-vU§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§_-dZ§.push(_loc3_);
         }
         this.§_-o2§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§_-vU§ = null;
         for each(_loc1_ in this.§_-dZ§)
         {
            if(!_loc1_.isCompleted)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §_-ei§() : int
      {
         if(this.§_-o2§)
         {
            return this.§_-dZ§.length;
         }
         if(this.§_-dZ§.length > 0)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §_-1h§() : int
      {
         if(this.§_-o2§)
         {
            return 0;
         }
         return this.§_-wR§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§_-vU§ = null;
         while(this.§_-dZ§.length > 0)
         {
            _loc1_ = this.§_-dZ§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§_-vU§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§_-dZ§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §_-hf§() : void
      {
         var _loc1_:§_-vU§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§_-dZ§)
            {
               _loc1_.§_-hf§();
            }
         }
      }
      
      public function §_-Xb§() : void
      {
         var _loc2_:§_-vU§ = null;
         var _loc1_:int = this.§_-ei§ - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-dZ§[_loc1_];
            _loc2_.§_-Xb§();
            _loc1_--;
         }
      }
      
      public function play() : void
      {
         var _loc2_:§_-vU§ = null;
         var _loc1_:int = this.§_-ei§ - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-dZ§[_loc1_];
            _loc2_.play();
            _loc1_--;
         }
      }
      
      public function §_-CQ§() : void
      {
         var _loc2_:§_-vU§ = null;
         §_-RE§ = -§_-FM§;
         this.§_-wR§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§_-dZ§.length)
         {
            _loc2_ = this.§_-dZ§[_loc1_];
            _loc2_.§_-CQ§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§_-vU§ = null;
         §_-RE§ += param1;
         if(§_-RE§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§_-ei§;
         var _loc3_:int = this.§_-1h§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§_-dZ§[_loc4_]).update(param1);
            this.§_-aL§(_loc5_);
            _loc4_++;
         }
         this.§_-f4§();
      }
      
      private function §_-aL§(param1:§_-vU§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§_-o2§)
            {
               ++this.§_-wR§;
               if(this.§_-wR§ < this.§_-dZ§.length)
               {
                  this.§_-dZ§[this.§_-wR§].play();
               }
            }
         }
      }
      
      private function §_-f4§() : void
      {
         if(this.isCompleted)
         {
            if(!§_-NU§)
            {
               this.§_-CQ§();
               this.play();
            }
            else if(§_-lq§ != null)
            {
               try
               {
                  §_-lq§();
                  §_-lq§ = null;
               }
               catch(e:Error)
               {
                  §_-lq§ = null;
                  if(!§_-SE§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
