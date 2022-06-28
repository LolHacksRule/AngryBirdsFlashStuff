package §#P§
{
   public class §+!!§ extends §1!?§ implements §]!N§
   {
       
      
      private var §0!K§:Vector.<§]!N§>;
      
      private var §6$§:Boolean = true;
      
      private var §"H§:int = 0;
      
      public function §+!!§(param1:Array, param2:Boolean)
      {
         var _loc3_:§]!N§ = null;
         this.§0!K§ = new Vector.<§]!N§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§0!K§.push(_loc3_);
         }
         this.§6$§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§]!N§ = null;
         for each(_loc1_ in this.§0!K§)
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
         var _loc1_:§]!N§ = null;
         for each(_loc1_ in this.§0!K§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §#k§() : int
      {
         if(this.§6$§)
         {
            return this.§0!K§.length;
         }
         if(this.§0!K§.length > this.§"H§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §@1§() : int
      {
         if(this.§6$§)
         {
            return 0;
         }
         return this.§"H§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§]!N§ = null;
         while(this.§0!K§.length > 0)
         {
            _loc1_ = this.§0!K§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§]!N§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§0!K§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §;!-§() : void
      {
         var _loc1_:§]!N§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§0!K§)
            {
               _loc1_.§;!-§();
            }
         }
      }
      
      public function pause() : void
      {
         var _loc1_:§]!N§ = null;
         for each(_loc1_ in this.§0!K§)
         {
            _loc1_.pause();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§]!N§ = null;
         for each(_loc1_ in this.§0!K§)
         {
            _loc1_.play();
         }
      }
      
      public function §4R§() : void
      {
         var _loc2_:§]!N§ = null;
         §^f§ = -§40§;
         this.§"H§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§0!K§.length)
         {
            _loc2_ = this.§0!K§[_loc1_];
            _loc2_.§4R§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§]!N§ = null;
         §^f§ += param1;
         if(§^f§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§#k§;
         var _loc3_:int = this.§@1§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§0!K§[_loc4_]).update(param1);
            this.§;!?§(_loc5_);
            _loc4_++;
         }
         this.§^v§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §;!?§(param1:§]!N§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§6$§)
            {
               ++this.§"H§;
               if(this.§"H§ < this.§0!K§.length)
               {
                  this.§0!K§[this.§"H§].play();
               }
            }
         }
      }
      
      private function §^v§() : void
      {
         if(this.isCompleted)
         {
            if(!§<!D§)
            {
               this.§4R§();
               this.play();
            }
            else if(§7!%§ != null)
            {
               try
               {
                  §7!%§();
                  §7!%§ = null;
               }
               catch(e:Error)
               {
                  §7!%§ = null;
                  if(!§=!?§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
