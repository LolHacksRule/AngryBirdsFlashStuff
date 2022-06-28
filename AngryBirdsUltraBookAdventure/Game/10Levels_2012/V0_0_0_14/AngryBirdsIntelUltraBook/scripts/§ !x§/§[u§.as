package § !x§
{
   public class §[u§ extends §2k§ implements §#!K§
   {
       
      
      private var §'!D§:Vector.<§#!K§>;
      
      private var §>!<§:Boolean = true;
      
      private var §2!m§:int = 0;
      
      public function §[u§(param1:Array, param2:Boolean)
      {
         var _loc3_:§#!K§ = null;
         this.§'!D§ = new Vector.<§#!K§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§'!D§.push(_loc3_);
         }
         this.§>!<§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§#!K§ = null;
         for each(_loc1_ in this.§'!D§)
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
         var _loc1_:§#!K§ = null;
         for each(_loc1_ in this.§'!D§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §'X§() : int
      {
         if(this.§>!<§)
         {
            return this.§'!D§.length;
         }
         if(this.§'!D§.length > this.§2!m§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §7L§() : int
      {
         if(this.§>!<§)
         {
            return 0;
         }
         return this.§2!m§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§#!K§ = null;
         while(this.§'!D§.length > 0)
         {
            _loc1_ = this.§'!D§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§#!K§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§'!D§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §;h§() : void
      {
         var _loc1_:§#!K§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§'!D§)
            {
               _loc1_.§;h§();
            }
         }
      }
      
      public function pause() : void
      {
         var _loc1_:§#!K§ = null;
         for each(_loc1_ in this.§'!D§)
         {
            _loc1_.pause();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§#!K§ = null;
         for each(_loc1_ in this.§'!D§)
         {
            _loc1_.play();
         }
      }
      
      public function §2W§() : void
      {
         var _loc2_:§#!K§ = null;
         §?Q§ = -§%U§;
         this.§2!m§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§'!D§.length)
         {
            _loc2_ = this.§'!D§[_loc1_];
            _loc2_.§2W§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§#!K§ = null;
         §?Q§ += param1;
         if(§?Q§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§'X§;
         var _loc3_:int = this.§7L§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§'!D§[_loc4_]).update(param1);
            this.§`B§(_loc5_);
            _loc4_++;
         }
         this.§0u§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §`B§(param1:§#!K§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§>!<§)
            {
               ++this.§2!m§;
               if(this.§2!m§ < this.§'!D§.length)
               {
                  this.§'!D§[this.§2!m§].play();
               }
            }
         }
      }
      
      private function §0u§() : void
      {
         if(this.isCompleted)
         {
            if(!§;!6§)
            {
               this.§2W§();
               this.play();
            }
            else if(§9!0§ != null)
            {
               try
               {
                  §9!0§();
                  §9!0§ = null;
               }
               catch(e:Error)
               {
                  §9!0§ = null;
                  if(!§0b§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
