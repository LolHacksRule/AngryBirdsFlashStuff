package §=!F§
{
   public class §0K§ extends §?Y§ implements §#!P§
   {
       
      
      private var § !V§:Vector.<§#!P§>;
      
      private var §`!T§:Boolean = true;
      
      private var §0!l§:int = 0;
      
      public function §0K§(param1:Array, param2:Boolean)
      {
         var _loc3_:§#!P§ = null;
         this.§ !V§ = new Vector.<§#!P§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§ !V§.push(_loc3_);
         }
         this.§`!T§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§#!P§ = null;
         for each(_loc1_ in this.§ !V§)
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
         var _loc1_:§#!P§ = null;
         for each(_loc1_ in this.§ !V§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §+4§() : int
      {
         if(this.§`!T§)
         {
            return this.§ !V§.length;
         }
         if(this.§ !V§.length > this.§0!l§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §-!U§() : int
      {
         if(this.§`!T§)
         {
            return 0;
         }
         return this.§0!l§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§#!P§ = null;
         while(this.§ !V§.length > 0)
         {
            _loc1_ = this.§ !V§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§#!P§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§ !V§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §1Y§() : void
      {
         var _loc1_:§#!P§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§ !V§)
            {
               _loc1_.§1Y§();
            }
         }
      }
      
      public function §%!&§() : void
      {
         var _loc1_:§#!P§ = null;
         for each(_loc1_ in this.§ !V§)
         {
            _loc1_.§%!&§();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§#!P§ = null;
         for each(_loc1_ in this.§ !V§)
         {
            _loc1_.play();
         }
      }
      
      public function §7!U§() : void
      {
         var _loc2_:§#!P§ = null;
         §6g§ = -§!!W§;
         this.§0!l§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§ !V§.length)
         {
            _loc2_ = this.§ !V§[_loc1_];
            _loc2_.§7!U§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§#!P§ = null;
         §6g§ += param1;
         if(§6g§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§+4§;
         var _loc3_:int = this.§-!U§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§ !V§[_loc4_]).update(param1);
            this.§'!g§(_loc5_);
            _loc4_++;
         }
         this.§`,§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §'!g§(param1:§#!P§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§`!T§)
            {
               ++this.§0!l§;
               if(this.§0!l§ < this.§ !V§.length)
               {
                  this.§ !V§[this.§0!l§].play();
               }
            }
         }
      }
      
      private function §`,§() : void
      {
         if(this.isCompleted)
         {
            if(!§4x§)
            {
               this.§7!U§();
               this.play();
            }
            else if(§-!=§ != null)
            {
               try
               {
                  §-!=§();
                  §-!=§ = null;
               }
               catch(e:Error)
               {
                  §-!=§ = null;
                  if(!§7C§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
