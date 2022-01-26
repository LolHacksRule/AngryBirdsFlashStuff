package §+k§
{
   public class §#`§ extends §2N§ implements §%9§
   {
       
      
      private var §'!^§:Vector.<§%9§>;
      
      private var §>+§:Boolean = true;
      
      private var §2!X§:int = 0;
      
      public function §#`§(param1:Array, param2:Boolean)
      {
         var _loc3_:§%9§ = null;
         this.§'!^§ = new Vector.<§%9§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§'!^§.push(_loc3_);
         }
         this.§>+§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§%9§ = null;
         for each(_loc1_ in this.§'!^§)
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
         var _loc1_:§%9§ = null;
         for each(_loc1_ in this.§'!^§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §``§() : int
      {
         if(this.§>+§)
         {
            return this.§'!^§.length;
         }
         if(this.§'!^§.length > this.§2!X§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §>O§() : int
      {
         if(this.§>+§)
         {
            return 0;
         }
         return this.§2!X§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§%9§ = null;
         while(this.§'!^§.length > 0)
         {
            _loc1_ = this.§'!^§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§%9§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§'!^§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §-e§() : void
      {
         var _loc1_:§%9§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§'!^§)
            {
               _loc1_.§-e§();
            }
         }
      }
      
      public function §-!>§() : void
      {
         var _loc1_:§%9§ = null;
         for each(_loc1_ in this.§'!^§)
         {
            _loc1_.§-!>§();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§%9§ = null;
         for each(_loc1_ in this.§'!^§)
         {
            _loc1_.play();
         }
      }
      
      public function §9n§() : void
      {
         var _loc2_:§%9§ = null;
         § H§ = -§!!+§;
         this.§2!X§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§'!^§.length)
         {
            _loc2_ = this.§'!^§[_loc1_];
            _loc2_.§9n§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§%9§ = null;
         § H§ += param1;
         if(§ H§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§``§;
         var _loc3_:int = this.§>O§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§'!^§[_loc4_]).update(param1);
            this.§4N§(_loc5_);
            _loc4_++;
         }
         this.§"5§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §4N§(param1:§%9§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§>+§)
            {
               ++this.§2!X§;
               if(this.§2!X§ < this.§'!^§.length)
               {
                  this.§'!^§[this.§2!X§].play();
               }
            }
         }
      }
      
      private function §"5§() : void
      {
         if(this.isCompleted)
         {
            if(!§3!<§)
            {
               this.§9n§();
               this.play();
            }
            else if(§9D§ != null)
            {
               try
               {
                  §9D§();
                  §9D§ = null;
               }
               catch(e:Error)
               {
                  §9D§ = null;
                  if(!§^!Y§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
