package §7H§
{
   public class §'!?§ extends §6F§ implements §%!?§
   {
       
      
      private var §6!<§:Vector.<§%!?§>;
      
      private var §<N§:Boolean = true;
      
      private var §-'§:int = 0;
      
      public function §'!?§(param1:Array, param2:Boolean)
      {
         var _loc3_:§%!?§ = null;
         this.§6!<§ = new Vector.<§%!?§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§6!<§.push(_loc3_);
         }
         this.§<N§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§%!?§ = null;
         for each(_loc1_ in this.§6!<§)
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
         var _loc1_:§%!?§ = null;
         for each(_loc1_ in this.§6!<§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §<!0§() : int
      {
         if(this.§<N§)
         {
            return this.§6!<§.length;
         }
         if(this.§6!<§.length > this.§-'§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §@! §() : int
      {
         if(this.§<N§)
         {
            return 0;
         }
         return this.§-'§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§%!?§ = null;
         while(this.§6!<§.length > 0)
         {
            _loc1_ = this.§6!<§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§%!?§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§6!<§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §='§() : void
      {
         var _loc1_:§%!?§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§6!<§)
            {
               _loc1_.§='§();
            }
         }
      }
      
      public function §8!§() : void
      {
         var _loc1_:§%!?§ = null;
         for each(_loc1_ in this.§6!<§)
         {
            _loc1_.§8!§();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§%!?§ = null;
         for each(_loc1_ in this.§6!<§)
         {
            _loc1_.play();
         }
      }
      
      public function §!s§() : void
      {
         var _loc2_:§%!?§ = null;
         §]L§ = -§@H§;
         this.§-'§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§6!<§.length)
         {
            _loc2_ = this.§6!<§[_loc1_];
            _loc2_.§!s§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§%!?§ = null;
         §]L§ += param1;
         if(§]L§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§<!0§;
         var _loc3_:int = this.§@! §;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§6!<§[_loc4_]).update(param1);
            this.§%K§(_loc5_);
            _loc4_++;
         }
         this.§9!e§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §%K§(param1:§%!?§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§<N§)
            {
               ++this.§-'§;
               if(this.§-'§ < this.§6!<§.length)
               {
                  this.§6!<§[this.§-'§].play();
               }
            }
         }
      }
      
      private function §9!e§() : void
      {
         if(this.isCompleted)
         {
            if(!§1?§)
            {
               this.§!s§();
               this.play();
            }
            else if(§0V§ != null)
            {
               try
               {
                  §0V§();
                  §0V§ = null;
               }
               catch(e:Error)
               {
                  §0V§ = null;
                  if(!§?D§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
