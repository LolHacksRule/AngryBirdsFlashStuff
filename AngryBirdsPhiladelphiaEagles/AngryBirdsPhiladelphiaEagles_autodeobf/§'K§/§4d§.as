package §'K§
{
   public class §4d§ extends §%!4§ implements §>#§
   {
       
      
      private var §=!!§:Vector.<§>#§>;
      
      private var §@v§:Boolean = true;
      
      private var § !D§:int = 0;
      
      public function §4d§(param1:Array, param2:Boolean)
      {
         var _loc3_:§>#§ = null;
         this.§=!!§ = new Vector.<§>#§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§=!!§.push(_loc3_);
         }
         this.§@v§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§>#§ = null;
         for each(_loc1_ in this.§=!!§)
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
         var _loc1_:§>#§ = null;
         for each(_loc1_ in this.§=!!§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §2!H§() : int
      {
         if(this.§@v§)
         {
            return this.§=!!§.length;
         }
         if(this.§=!!§.length > this.§ !D§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §2!6§() : int
      {
         if(this.§@v§)
         {
            return 0;
         }
         return this.§ !D§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§>#§ = null;
         while(this.§=!!§.length > 0)
         {
            _loc1_ = this.§=!!§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§>#§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§=!!§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function set() : void
      {
         var _loc1_:§>#§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§=!!§)
            {
               _loc1_.set();
            }
         }
      }
      
      public function pause() : void
      {
         var _loc1_:§>#§ = null;
         for each(_loc1_ in this.§=!!§)
         {
            _loc1_.pause();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§>#§ = null;
         for each(_loc1_ in this.§=!!§)
         {
            _loc1_.play();
         }
      }
      
      public function §7!§() : void
      {
         var _loc2_:§>#§ = null;
         §-!9§ = -§'!D§;
         this.§ !D§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§=!!§.length)
         {
            _loc2_ = this.§=!!§[_loc1_];
            _loc2_.§7!§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§>#§ = null;
         §-!9§ += param1;
         if(§-!9§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§2!H§;
         var _loc3_:int = this.§2!6§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§=!!§[_loc4_]).update(param1);
            this.§>!O§(_loc5_);
            _loc4_++;
         }
         this.§"r§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §>!O§(param1:§>#§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§@v§)
            {
               ++this.§ !D§;
               if(this.§ !D§ < this.§=!!§.length)
               {
                  this.§=!!§[this.§ !D§].play();
               }
            }
         }
      }
      
      private function §"r§() : void
      {
         if(this.isCompleted)
         {
            if(!§<!,§)
            {
               this.§7!§();
               this.play();
            }
            else if(§1A§ != null)
            {
               try
               {
                  §1A§();
                  §1A§ = null;
               }
               catch(e:Error)
               {
                  §1A§ = null;
                  if(!§!y§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
