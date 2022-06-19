package § ;§
{
   public class §%&§ extends §2^§ implements § X§
   {
       
      
      private var §?_§:Vector.<§ X§>;
      
      private var §+j§:Boolean = true;
      
      private var §8!0§:int = 0;
      
      public function §%&§(param1:Array, param2:Boolean)
      {
         var _loc3_:§ X§ = null;
         this.§?_§ = new Vector.<§ X§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§?_§.push(_loc3_);
         }
         this.§+j§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§ X§ = null;
         for each(_loc1_ in this.§?_§)
         {
            if(!_loc1_.isCompleted)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §%!V§() : int
      {
         if(this.§+j§)
         {
            return this.§?_§.length;
         }
         if(this.§?_§.length > 0)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §-!W§() : int
      {
         if(this.§+j§)
         {
            return 0;
         }
         return this.§8!0§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§ X§ = null;
         while(this.§?_§.length > 0)
         {
            _loc1_ = this.§?_§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§ X§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§?_§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §7!T§() : void
      {
         var _loc1_:§ X§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§?_§)
            {
               _loc1_.§7!T§();
            }
         }
      }
      
      public function §[]§() : void
      {
         var _loc2_:§ X§ = null;
         var _loc1_:int = this.§%!V§ - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§?_§[_loc1_];
            _loc2_.§[]§();
            _loc1_--;
         }
      }
      
      public function play() : void
      {
         var _loc2_:§ X§ = null;
         var _loc1_:int = this.§%!V§ - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§?_§[_loc1_];
            _loc2_.play();
            _loc1_--;
         }
      }
      
      public function §=!R§() : void
      {
         var _loc2_:§ X§ = null;
         §"!#§ = -§;W§;
         this.§8!0§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§?_§.length)
         {
            _loc2_ = this.§?_§[_loc1_];
            _loc2_.§=!R§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§ X§ = null;
         §"!#§ += param1;
         if(§"!#§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§%!V§;
         var _loc3_:int = this.§-!W§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§?_§[_loc4_]).update(param1);
            this.§<!S§(_loc5_);
            _loc4_++;
         }
         this.§+!A§();
      }
      
      private function §<!S§(param1:§ X§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§+j§)
            {
               ++this.§8!0§;
               if(this.§8!0§ < this.§?_§.length)
               {
                  this.§?_§[this.§8!0§].play();
               }
            }
         }
      }
      
      private function §+!A§() : void
      {
         if(this.isCompleted)
         {
            if(!§^!>§)
            {
               this.§=!R§();
               this.play();
            }
            else if(§-!1§ != null)
            {
               try
               {
                  §-!1§();
                  §-!1§ = null;
               }
               catch(e:Error)
               {
                  §-!1§ = null;
                  if(!§6,§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
