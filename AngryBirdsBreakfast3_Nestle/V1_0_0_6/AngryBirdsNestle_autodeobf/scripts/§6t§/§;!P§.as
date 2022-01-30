package §6t§
{
   public class §;!P§ extends §=w§ implements §%v§
   {
       
      
      private var §7!0§:Vector.<§%v§>;
      
      private var §]!0§:Boolean = true;
      
      private var §-!5§:int = 0;
      
      public function §;!P§(param1:Array, param2:Boolean)
      {
         var _loc3_:§%v§ = null;
         this.§7!0§ = new Vector.<§%v§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§7!0§.push(_loc3_);
         }
         this.§]!0§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§%v§ = null;
         for each(_loc1_ in this.§7!0§)
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
         var _loc1_:§%v§ = null;
         for each(_loc1_ in this.§7!0§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §7c§() : int
      {
         if(this.§]!0§)
         {
            return this.§7!0§.length;
         }
         if(this.§7!0§.length > this.§-!5§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §,!L§() : int
      {
         if(this.§]!0§)
         {
            return 0;
         }
         return this.§-!5§;
      }
      
      override public function dispose() : void
      {
         var _loc1_:§%v§ = null;
         while(this.§7!0§.length > 0)
         {
            _loc1_ = this.§7!0§.shift();
            _loc1_.dispose();
         }
         super.dispose();
      }
      
      public function stop() : void
      {
         var _loc1_:§%v§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§7!0§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §'!b§() : void
      {
         var _loc1_:§%v§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§7!0§)
            {
               _loc1_.§'!b§();
            }
         }
      }
      
      override public function pause() : void
      {
         var _loc1_:§%v§ = null;
         super.pause();
         for each(_loc1_ in this.§7!0§)
         {
            _loc1_.pause();
         }
      }
      
      override public function play() : void
      {
         var _loc1_:§%v§ = null;
         super.play();
         for each(_loc1_ in this.§7!0§)
         {
            _loc1_.play();
         }
      }
      
      public function §7!z§() : void
      {
         var _loc2_:§%v§ = null;
         §=!c§ = -§`"5§;
         this.§-!5§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§7!0§.length)
         {
            _loc2_ = this.§7!0§[_loc1_];
            _loc2_.§7!z§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§%v§ = null;
         if(!§>"%§(param1))
         {
            return;
         }
         var _loc2_:int = this.§7c§;
         var _loc3_:int = this.§,!L§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§7!0§[_loc4_]).update(param1);
            this.§&!L§(_loc5_);
            _loc4_++;
         }
         this.§2%§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §&!L§(param1:§%v§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§]!0§)
            {
               ++this.§-!5§;
               if(this.§-!5§ < this.§7!0§.length)
               {
                  this.§7!0§[this.§-!5§].play();
               }
            }
         }
      }
      
      private function §2%§() : void
      {
         if(this.isCompleted)
         {
            if(!§5!H§)
            {
               this.§7!z§();
               this.play();
            }
            else if(§@!T§ != null)
            {
               try
               {
                  §@!T§();
                  §@!T§ = null;
               }
               catch(e:Error)
               {
                  §@!T§ = null;
                  if(!§]!R§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
