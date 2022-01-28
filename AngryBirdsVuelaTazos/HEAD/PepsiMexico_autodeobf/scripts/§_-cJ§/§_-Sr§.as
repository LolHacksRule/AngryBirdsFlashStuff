package §_-cJ§
{
   public class §_-Sr§ extends §_-xa§ implements §_-Vn§
   {
       
      
      private var §_-GT§:Vector.<§_-Vn§>;
      
      private var §_-cQ§:Boolean = true;
      
      private var §_-P5§:int = 0;
      
      public function §_-Sr§(param1:Array, param2:Boolean)
      {
         var _loc3_:§_-Vn§ = null;
         this.§_-GT§ = new Vector.<§_-Vn§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§_-GT§.push(_loc3_);
         }
         this.§_-cQ§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§_-Vn§ = null;
         for each(_loc1_ in this.§_-GT§)
         {
            if(!_loc1_.isCompleted)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §_-93§() : int
      {
         if(this.§_-cQ§)
         {
            return this.§_-GT§.length;
         }
         if(this.§_-GT§.length > 0)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §_-RU§() : int
      {
         if(this.§_-cQ§)
         {
            return 0;
         }
         return this.§_-P5§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§_-Vn§ = null;
         while(this.§_-GT§.length > 0)
         {
            _loc1_ = this.§_-GT§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§_-Vn§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§_-GT§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §_-d1§() : void
      {
         var _loc1_:§_-Vn§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§_-GT§)
            {
               _loc1_.§_-d1§();
            }
         }
      }
      
      public function §_-sR§() : void
      {
         var _loc2_:§_-Vn§ = null;
         var _loc1_:int = this.§_-93§ - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-GT§[_loc1_];
            _loc2_.§_-sR§();
            _loc1_--;
         }
      }
      
      public function play() : void
      {
         var _loc2_:§_-Vn§ = null;
         var _loc1_:int = this.§_-93§ - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-GT§[_loc1_];
            _loc2_.play();
            _loc1_--;
         }
      }
      
      public function §_-g4§() : void
      {
         var _loc2_:§_-Vn§ = null;
         §_-OY§ = -§_-SM§;
         this.§_-P5§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§_-GT§.length)
         {
            _loc2_ = this.§_-GT§[_loc1_];
            _loc2_.§_-g4§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§_-Vn§ = null;
         §_-OY§ += param1;
         if(§_-OY§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§_-93§;
         var _loc3_:int = this.§_-RU§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§_-GT§[_loc4_]).update(param1);
            this.§_-Ly§(_loc5_);
            _loc4_++;
         }
         this.§_-Ji§();
      }
      
      private function §_-Ly§(param1:§_-Vn§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§_-cQ§)
            {
               ++this.§_-P5§;
               if(this.§_-P5§ < this.§_-GT§.length)
               {
                  this.§_-GT§[this.§_-P5§].play();
               }
            }
         }
      }
      
      private function §_-Ji§() : void
      {
         if(this.isCompleted)
         {
            if(!§_-0n§)
            {
               this.§_-g4§();
               this.play();
            }
            else if(§_-oZ§ != null)
            {
               try
               {
                  §_-oZ§();
                  §_-oZ§ = null;
               }
               catch(e:Error)
               {
                  §_-oZ§ = null;
                  if(!§_-zh§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
