package §"Z§
{
   public class §=S§ extends §2!'§ implements §-c§
   {
       
      
      private var §!§:Vector.<§-c§>;
      
      private var §,x§:Boolean = true;
      
      private var §-l§:int = 0;
      
      public function §=S§(param1:Array, param2:Boolean)
      {
         var _loc3_:§-c§ = null;
         this.§!§ = new Vector.<§-c§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§!§.push(_loc3_);
         }
         this.§,x§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§-c§ = null;
         for each(_loc1_ in this.§!§)
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
         var _loc1_:§-c§ = null;
         for each(_loc1_ in this.§!§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §8!P§() : int
      {
         if(this.§,x§)
         {
            return this.§!§.length;
         }
         if(this.§!§.length > this.§-l§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §>!2§() : int
      {
         if(this.§,x§)
         {
            return 0;
         }
         return this.§-l§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§-c§ = null;
         while(this.§!§.length > 0)
         {
            _loc1_ = this.§!§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§-c§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§!§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §7§() : void
      {
         var _loc1_:§-c§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§!§)
            {
               _loc1_.§7§();
            }
         }
      }
      
      public function § D§() : void
      {
         var _loc1_:§-c§ = null;
         for each(_loc1_ in this.§!§)
         {
            _loc1_.§ D§();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§-c§ = null;
         for each(_loc1_ in this.§!§)
         {
            _loc1_.play();
         }
      }
      
      public function §4!T§() : void
      {
         var _loc2_:§-c§ = null;
         §;c§ = -§4!%§;
         this.§-l§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§!§.length)
         {
            _loc2_ = this.§!§[_loc1_];
            _loc2_.§4!T§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§-c§ = null;
         §;c§ += param1;
         if(§;c§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§8!P§;
         var _loc3_:int = this.§>!2§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§!§[_loc4_]).update(param1);
            this.§-!H§(_loc5_);
            _loc4_++;
         }
         this.§?!=§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §-!H§(param1:§-c§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§,x§)
            {
               ++this.§-l§;
               if(this.§-l§ < this.§!§.length)
               {
                  this.§!§[this.§-l§].play();
               }
            }
         }
      }
      
      private function §?!=§() : void
      {
         if(this.isCompleted)
         {
            if(!§3m§)
            {
               this.§4!T§();
               this.play();
            }
            else if(§=6§ != null)
            {
               try
               {
                  §=6§();
                  §=6§ = null;
               }
               catch(e:Error)
               {
                  §=6§ = null;
                  if(!§?q§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
