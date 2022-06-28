package §"!&§
{
   public class §"!%§ extends §+!3§ implements §-!;§
   {
       
      
      private var §+T§:Vector.<§-!;§>;
      
      private var §7E§:Boolean = true;
      
      private var § !C§:int = 0;
      
      public function §"!%§(param1:Array, param2:Boolean)
      {
         var _loc3_:§-!;§ = null;
         this.§+T§ = new Vector.<§-!;§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§+T§.push(_loc3_);
         }
         this.§7E§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§-!;§ = null;
         for each(_loc1_ in this.§+T§)
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
         var _loc1_:§-!;§ = null;
         for each(_loc1_ in this.§+T§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §67§() : int
      {
         if(this.§7E§)
         {
            return this.§+T§.length;
         }
         if(this.§+T§.length > this.§ !C§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §1!>§() : int
      {
         if(this.§7E§)
         {
            return 0;
         }
         return this.§ !C§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§-!;§ = null;
         while(this.§+T§.length > 0)
         {
            _loc1_ = this.§+T§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§-!;§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§+T§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §+!=§() : void
      {
         var _loc1_:§-!;§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§+T§)
            {
               _loc1_.§+!=§();
            }
         }
      }
      
      public function pause() : void
      {
         var _loc1_:§-!;§ = null;
         for each(_loc1_ in this.§+T§)
         {
            _loc1_.pause();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§-!;§ = null;
         for each(_loc1_ in this.§+T§)
         {
            _loc1_.play();
         }
      }
      
      public function §'! §() : void
      {
         var _loc2_:§-!;§ = null;
         §=,§ = -§1!-§;
         this.§ !C§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§+T§.length)
         {
            _loc2_ = this.§+T§[_loc1_];
            _loc2_.§'! §();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§-!;§ = null;
         §=,§ += param1;
         if(§=,§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§67§;
         var _loc3_:int = this.§1!>§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§+T§[_loc4_]).update(param1);
            this.§-8§(_loc5_);
            _loc4_++;
         }
         this.§!e§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §-8§(param1:§-!;§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§7E§)
            {
               ++this.§ !C§;
               if(this.§ !C§ < this.§+T§.length)
               {
                  this.§+T§[this.§ !C§].play();
               }
            }
         }
      }
      
      private function §!e§() : void
      {
         if(this.isCompleted)
         {
            if(!§+L§)
            {
               this.§'! §();
               this.play();
            }
            else if(§8q§ != null)
            {
               try
               {
                  §8q§();
                  §8q§ = null;
               }
               catch(e:Error)
               {
                  §8q§ = null;
                  if(!§4L§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
