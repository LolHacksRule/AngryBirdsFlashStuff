package §2!D§
{
   public class §6i§ extends §&!B§ implements §-!T§
   {
       
      
      private var §"!;§:Vector.<§-!T§>;
      
      private var §3J§:Boolean = true;
      
      private var §5T§:int = 0;
      
      public function §6i§(param1:Array, param2:Boolean)
      {
         var _loc3_:§-!T§ = null;
         this.§"!;§ = new Vector.<§-!T§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§"!;§.push(_loc3_);
         }
         this.§3J§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§-!T§ = null;
         for each(_loc1_ in this.§"!;§)
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
         var _loc1_:§-!T§ = null;
         for each(_loc1_ in this.§"!;§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §@g§() : int
      {
         if(this.§3J§)
         {
            return this.§"!;§.length;
         }
         if(this.§"!;§.length > this.§5T§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §!n§() : int
      {
         if(this.§3J§)
         {
            return 0;
         }
         return this.§5T§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§-!T§ = null;
         while(this.§"!;§.length > 0)
         {
            _loc1_ = this.§"!;§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§-!T§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§"!;§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §+!c§() : void
      {
         var _loc1_:§-!T§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§"!;§)
            {
               _loc1_.§+!c§();
            }
         }
      }
      
      public function §"!J§() : void
      {
         var _loc1_:§-!T§ = null;
         for each(_loc1_ in this.§"!;§)
         {
            _loc1_.§"!J§();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§-!T§ = null;
         for each(_loc1_ in this.§"!;§)
         {
            _loc1_.play();
         }
      }
      
      public function §@!-§() : void
      {
         var _loc2_:§-!T§ = null;
         §[E§ = -§5L§;
         this.§5T§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§"!;§.length)
         {
            _loc2_ = this.§"!;§[_loc1_];
            _loc2_.§@!-§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§-!T§ = null;
         §[E§ += param1;
         if(§[E§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§@g§;
         var _loc3_:int = this.§!n§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§"!;§[_loc4_]).update(param1);
            this.§#r§(_loc5_);
            _loc4_++;
         }
         this.§?!M§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §#r§(param1:§-!T§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§3J§)
            {
               ++this.§5T§;
               if(this.§5T§ < this.§"!;§.length)
               {
                  this.§"!;§[this.§5T§].play();
               }
            }
         }
      }
      
      private function §?!M§() : void
      {
         if(this.isCompleted)
         {
            if(!§&C§)
            {
               this.§@!-§();
               this.play();
            }
            else if(§=L§ != null)
            {
               try
               {
                  §=L§();
                  §=L§ = null;
               }
               catch(e:Error)
               {
                  §=L§ = null;
                  if(!§!!K§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
