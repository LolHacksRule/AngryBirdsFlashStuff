package §<!0§
{
   public class §-z§ extends §`v§ implements §'c§
   {
       
      
      private var §>l§:Vector.<§'c§>;
      
      private var § ![§:Boolean = true;
      
      private var §^!2§:int = 0;
      
      public function §-z§(param1:Array, param2:Boolean)
      {
         var _loc3_:§'c§ = null;
         this.§>l§ = new Vector.<§'c§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§>l§.push(_loc3_);
         }
         this.§ ![§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§'c§ = null;
         for each(_loc1_ in this.§>l§)
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
         var _loc1_:§'c§ = null;
         for each(_loc1_ in this.§>l§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §;!f§() : int
      {
         if(this.§ ![§)
         {
            return this.§>l§.length;
         }
         if(this.§>l§.length > this.§^!2§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §@h§() : int
      {
         if(this.§ ![§)
         {
            return 0;
         }
         return this.§^!2§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§'c§ = null;
         while(this.§>l§.length > 0)
         {
            _loc1_ = this.§>l§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§'c§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§>l§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §!^§() : void
      {
         var _loc1_:§'c§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§>l§)
            {
               _loc1_.§!^§();
            }
         }
      }
      
      public function §@0§() : void
      {
         var _loc1_:§'c§ = null;
         for each(_loc1_ in this.§>l§)
         {
            _loc1_.§@0§();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§'c§ = null;
         for each(_loc1_ in this.§>l§)
         {
            _loc1_.play();
         }
      }
      
      public function §6c§() : void
      {
         var _loc2_:§'c§ = null;
         §#!c§ = -§9T§;
         this.§^!2§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§>l§.length)
         {
            _loc2_ = this.§>l§[_loc1_];
            _loc2_.§6c§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§'c§ = null;
         §#!c§ += param1;
         if(§#!c§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§;!f§;
         var _loc3_:int = this.§@h§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§>l§[_loc4_]).update(param1);
            this.§3!6§(_loc5_);
            _loc4_++;
         }
         this.§'!%§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §3!6§(param1:§'c§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§ ![§)
            {
               ++this.§^!2§;
               if(this.§^!2§ < this.§>l§.length)
               {
                  this.§>l§[this.§^!2§].play();
               }
            }
         }
      }
      
      private function §'!%§() : void
      {
         if(this.isCompleted)
         {
            if(!§=O§)
            {
               this.§6c§();
               this.play();
            }
            else if(§%H§ != null)
            {
               try
               {
                  §%H§();
                  §%H§ = null;
               }
               catch(e:Error)
               {
                  §%H§ = null;
                  if(!§,s§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
