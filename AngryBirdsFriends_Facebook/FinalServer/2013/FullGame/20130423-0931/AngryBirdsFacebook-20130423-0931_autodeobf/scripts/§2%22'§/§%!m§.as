package §2"'§
{
   public class §%!m§ extends § "%§ implements §'v§
   {
       
      
      private var §,4§:Vector.<§'v§>;
      
      private var §[D§:Boolean = true;
      
      private var §8"5§:int = 0;
      
      public function §%!m§(param1:Array, param2:Boolean)
      {
         var _loc3_:§'v§ = null;
         this.§,4§ = new Vector.<§'v§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§,4§.push(_loc3_);
         }
         this.§[D§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§'v§ = null;
         for each(_loc1_ in this.§,4§)
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
         var _loc1_:§'v§ = null;
         for each(_loc1_ in this.§,4§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §5",§() : int
      {
         if(this.§[D§)
         {
            return this.§,4§.length;
         }
         if(this.§,4§.length > this.§8"5§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §`!T§() : int
      {
         if(this.§[D§)
         {
            return 0;
         }
         return this.§8"5§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§'v§ = null;
         while(this.§,4§.length > 0)
         {
            _loc1_ = this.§,4§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§'v§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§,4§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §7!d§() : void
      {
         var _loc1_:§'v§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§,4§)
            {
               _loc1_.§7!d§();
            }
         }
      }
      
      public function pause() : void
      {
         var _loc1_:§'v§ = null;
         for each(_loc1_ in this.§,4§)
         {
            _loc1_.pause();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§'v§ = null;
         for each(_loc1_ in this.§,4§)
         {
            _loc1_.play();
         }
      }
      
      public function §?!J§() : void
      {
         var _loc2_:§'v§ = null;
         §"!M§ = -§!"U§;
         this.§8"5§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§,4§.length)
         {
            _loc2_ = this.§,4§[_loc1_];
            _loc2_.§?!J§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§'v§ = null;
         §"!M§ += param1;
         if(§"!M§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§5",§;
         var _loc3_:int = this.§`!T§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§,4§[_loc4_]).update(param1);
            this.§!!p§(_loc5_);
            _loc4_++;
         }
         this.§![§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §!!p§(param1:§'v§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§[D§)
            {
               ++this.§8"5§;
               if(this.§8"5§ < this.§,4§.length)
               {
                  this.§,4§[this.§8"5§].play();
               }
            }
         }
      }
      
      private function §![§() : void
      {
         if(this.isCompleted)
         {
            if(!§1!>§)
            {
               this.§?!J§();
               this.play();
            }
            else if(§[!r§ != null)
            {
               try
               {
                  §[!r§();
                  §[!r§ = null;
               }
               catch(e:Error)
               {
                  §[!r§ = null;
                  if(!§-$§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
