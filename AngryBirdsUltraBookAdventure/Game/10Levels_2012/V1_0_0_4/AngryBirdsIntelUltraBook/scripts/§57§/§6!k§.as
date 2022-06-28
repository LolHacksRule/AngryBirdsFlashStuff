package §57§
{
   public class §6!k§ extends §`!x§ implements §3!S§
   {
       
      
      private var §8?§:Vector.<§3!S§>;
      
      private var §?k§:Boolean = true;
      
      private var §^3§:int = 0;
      
      public function §6!k§(param1:Array, param2:Boolean)
      {
         var _loc3_:§3!S§ = null;
         this.§8?§ = new Vector.<§3!S§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§8?§.push(_loc3_);
         }
         this.§?k§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§3!S§ = null;
         for each(_loc1_ in this.§8?§)
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
         var _loc1_:§3!S§ = null;
         for each(_loc1_ in this.§8?§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §%D§() : int
      {
         if(this.§?k§)
         {
            return this.§8?§.length;
         }
         if(this.§8?§.length > this.§^3§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §9O§() : int
      {
         if(this.§?k§)
         {
            return 0;
         }
         return this.§^3§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§3!S§ = null;
         while(this.§8?§.length > 0)
         {
            _loc1_ = this.§8?§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§3!S§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§8?§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §-!T§() : void
      {
         var _loc1_:§3!S§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§8?§)
            {
               _loc1_.§-!T§();
            }
         }
      }
      
      public function pause() : void
      {
         var _loc1_:§3!S§ = null;
         for each(_loc1_ in this.§8?§)
         {
            _loc1_.pause();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§3!S§ = null;
         for each(_loc1_ in this.§8?§)
         {
            _loc1_.play();
         }
      }
      
      public function §0!r§() : void
      {
         var _loc2_:§3!S§ = null;
         §=U§ = -§1!o§;
         this.§^3§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§8?§.length)
         {
            _loc2_ = this.§8?§[_loc1_];
            _loc2_.§0!r§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§3!S§ = null;
         §=U§ += param1;
         if(§=U§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§%D§;
         var _loc3_:int = this.§9O§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§8?§[_loc4_]).update(param1);
            this.§3B§(_loc5_);
            _loc4_++;
         }
         this.§-!r§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §3B§(param1:§3!S§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§?k§)
            {
               ++this.§^3§;
               if(this.§^3§ < this.§8?§.length)
               {
                  this.§8?§[this.§^3§].play();
               }
            }
         }
      }
      
      private function §-!r§() : void
      {
         if(this.isCompleted)
         {
            if(!§5u§)
            {
               this.§0!r§();
               this.play();
            }
            else if(§@V§ != null)
            {
               try
               {
                  §@V§();
                  §@V§ = null;
               }
               catch(e:Error)
               {
                  §@V§ = null;
                  if(!§+!p§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
