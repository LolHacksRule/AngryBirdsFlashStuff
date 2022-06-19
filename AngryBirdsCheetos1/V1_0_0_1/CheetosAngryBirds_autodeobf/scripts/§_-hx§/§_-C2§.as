package §_-hx§
{
   public class §_-C2§ extends §_-v1§ implements §_-Cn§
   {
       
      
      private var §_-ls§:Vector.<§_-Cn§>;
      
      private var §_-K3§:Boolean = true;
      
      private var §_-s5§:int = 0;
      
      public function §_-C2§(param1:Array, param2:Boolean)
      {
         var _loc3_:§_-Cn§ = null;
         this.§_-ls§ = new Vector.<§_-Cn§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§_-ls§.push(_loc3_);
         }
         this.§_-K3§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§_-Cn§ = null;
         for each(_loc1_ in this.§_-ls§)
         {
            if(!_loc1_.isCompleted)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §_-vY§() : int
      {
         if(this.§_-K3§)
         {
            return this.§_-ls§.length;
         }
         if(this.§_-ls§.length > 0)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §_-jH§() : int
      {
         if(this.§_-K3§)
         {
            return 0;
         }
         return this.§_-s5§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§_-Cn§ = null;
         while(this.§_-ls§.length > 0)
         {
            _loc1_ = this.§_-ls§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§_-Cn§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§_-ls§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §_-00-§() : void
      {
         var _loc1_:§_-Cn§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§_-ls§)
            {
               _loc1_.§_-00-§();
            }
         }
      }
      
      public function §_-Tr§() : void
      {
         var _loc2_:§_-Cn§ = null;
         var _loc1_:int = this.§_-vY§ - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-ls§[_loc1_];
            _loc2_.§_-Tr§();
            _loc1_--;
         }
      }
      
      public function play() : void
      {
         var _loc2_:§_-Cn§ = null;
         var _loc1_:int = this.§_-vY§ - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-ls§[_loc1_];
            _loc2_.play();
            _loc1_--;
         }
      }
      
      public function §_-tS§() : void
      {
         var _loc2_:§_-Cn§ = null;
         §_-pE§ = -§_-9K§;
         this.§_-s5§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§_-ls§.length)
         {
            _loc2_ = this.§_-ls§[_loc1_];
            _loc2_.§_-tS§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§_-Cn§ = null;
         §_-pE§ += param1;
         if(§_-pE§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§_-vY§;
         var _loc3_:int = this.§_-jH§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§_-ls§[_loc4_]).update(param1);
            this.§_-Ly§(_loc5_);
            _loc4_++;
         }
         this.§_-Dq§();
      }
      
      private function §_-Ly§(param1:§_-Cn§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§_-K3§)
            {
               ++this.§_-s5§;
               if(this.§_-s5§ < this.§_-ls§.length)
               {
                  this.§_-ls§[this.§_-s5§].play();
               }
            }
         }
      }
      
      private function §_-Dq§() : void
      {
         if(this.isCompleted)
         {
            if(!§_-G8§)
            {
               this.§_-tS§();
               this.play();
            }
            else if(§_-8H§ != null)
            {
               try
               {
                  §_-8H§();
                  §_-8H§ = null;
               }
               catch(e:Error)
               {
                  §_-8H§ = null;
                  if(!§_-Y2§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
