package §#!?§
{
   public class §8!7§ extends §'o§ implements §&N§
   {
       
      
      private var §7!-§:Vector.<§&N§>;
      
      private var §[!9§:Boolean = true;
      
      private var §8!%§:int = 0;
      
      public function §8!7§(param1:Array, param2:Boolean)
      {
         var _loc3_:§&N§ = null;
         this.§7!-§ = new Vector.<§&N§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§7!-§.push(_loc3_);
         }
         this.§[!9§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§&N§ = null;
         for each(_loc1_ in this.§7!-§)
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
         var _loc1_:§&N§ = null;
         for each(_loc1_ in this.§7!-§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §<A§() : int
      {
         if(this.§[!9§)
         {
            return this.§7!-§.length;
         }
         if(this.§7!-§.length > this.§8!%§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §for§() : int
      {
         if(this.§[!9§)
         {
            return 0;
         }
         return this.§8!%§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§&N§ = null;
         while(this.§7!-§.length > 0)
         {
            _loc1_ = this.§7!-§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§&N§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§7!-§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §=;§() : void
      {
         var _loc1_:§&N§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§7!-§)
            {
               _loc1_.§=;§();
            }
         }
      }
      
      public function pause() : void
      {
         var _loc1_:§&N§ = null;
         for each(_loc1_ in this.§7!-§)
         {
            _loc1_.pause();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§&N§ = null;
         for each(_loc1_ in this.§7!-§)
         {
            _loc1_.play();
         }
      }
      
      public function §-!B§() : void
      {
         var _loc2_:§&N§ = null;
         §'z§ = -§+D§;
         this.§8!%§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§7!-§.length)
         {
            _loc2_ = this.§7!-§[_loc1_];
            _loc2_.§-!B§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§&N§ = null;
         §'z§ += param1;
         if(§'z§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§<A§;
         var _loc3_:int = this.§for§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§7!-§[_loc4_]).update(param1);
            this.§!R§(_loc5_);
            _loc4_++;
         }
         this.§!9§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §!R§(param1:§&N§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§[!9§)
            {
               ++this.§8!%§;
               if(this.§8!%§ < this.§7!-§.length)
               {
                  this.§7!-§[this.§8!%§].play();
               }
            }
         }
      }
      
      private function §!9§() : void
      {
         if(this.isCompleted)
         {
            if(!§7!7§)
            {
               this.§-!B§();
               this.play();
            }
            else if(§;"§ != null)
            {
               try
               {
                  §;"§();
                  §;"§ = null;
               }
               catch(e:Error)
               {
                  §;"§ = null;
                  if(!§-+§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
