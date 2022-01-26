package §6!P§
{
   public class §<+§ extends §9!D§ implements §+$§
   {
       
      
      private var §9!"§:Vector.<§+$§>;
      
      private var §>!W§:Boolean = true;
      
      private var §@G§:int = 0;
      
      public function §<+§(param1:Array, param2:Boolean)
      {
         var _loc3_:§+$§ = null;
         this.§9!"§ = new Vector.<§+$§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§9!"§.push(_loc3_);
         }
         this.§>!W§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§+$§ = null;
         for each(_loc1_ in this.§9!"§)
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
         var _loc1_:§+$§ = null;
         for each(_loc1_ in this.§9!"§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §"!+§() : int
      {
         if(this.§>!W§)
         {
            return this.§9!"§.length;
         }
         if(this.§9!"§.length > this.§@G§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §]r§() : int
      {
         if(this.§>!W§)
         {
            return 0;
         }
         return this.§@G§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§+$§ = null;
         while(this.§9!"§.length > 0)
         {
            _loc1_ = this.§9!"§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§+$§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§9!"§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §-!B§() : void
      {
         var _loc1_:§+$§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§9!"§)
            {
               _loc1_.§-!B§();
            }
         }
      }
      
      public function §,-§() : void
      {
         var _loc1_:§+$§ = null;
         for each(_loc1_ in this.§9!"§)
         {
            _loc1_.§,-§();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§+$§ = null;
         for each(_loc1_ in this.§9!"§)
         {
            _loc1_.play();
         }
      }
      
      public function §'!I§() : void
      {
         var _loc2_:§+$§ = null;
         §`Q§ = -§"9§;
         this.§@G§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§9!"§.length)
         {
            _loc2_ = this.§9!"§[_loc1_];
            _loc2_.§'!I§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§+$§ = null;
         §`Q§ += param1;
         if(§`Q§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§"!+§;
         var _loc3_:int = this.§]r§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§9!"§[_loc4_]).update(param1);
            this.§0!N§(_loc5_);
            _loc4_++;
         }
         this.§1!S§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §0!N§(param1:§+$§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§>!W§)
            {
               ++this.§@G§;
               if(this.§@G§ < this.§9!"§.length)
               {
                  this.§9!"§[this.§@G§].play();
               }
            }
         }
      }
      
      private function §1!S§() : void
      {
         if(this.isCompleted)
         {
            if(!§7!S§)
            {
               this.§'!I§();
               this.play();
            }
            else if(§^Z§ != null)
            {
               try
               {
                  §^Z§();
                  §^Z§ = null;
               }
               catch(e:Error)
               {
                  §^Z§ = null;
                  if(!§3!H§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
