package §^m§
{
   public class §1!Y§ extends §"!_§ implements §-!O§
   {
       
      
      private var §,?§:Vector.<§-!O§>;
      
      private var §"B§:Boolean = true;
      
      private var §!!X§:int = 0;
      
      public function §1!Y§(param1:Array, param2:Boolean)
      {
         var _loc3_:§-!O§ = null;
         this.§,?§ = new Vector.<§-!O§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§,?§.push(_loc3_);
         }
         this.§"B§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§-!O§ = null;
         for each(_loc1_ in this.§,?§)
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
         var _loc1_:§-!O§ = null;
         for each(_loc1_ in this.§,?§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §#e§() : int
      {
         if(this.§"B§)
         {
            return this.§,?§.length;
         }
         if(this.§,?§.length > this.§!!X§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §#>§() : int
      {
         if(this.§"B§)
         {
            return 0;
         }
         return this.§!!X§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§-!O§ = null;
         while(this.§,?§.length > 0)
         {
            _loc1_ = this.§,?§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§-!O§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§,?§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §7!S§() : void
      {
         var _loc1_:§-!O§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§,?§)
            {
               _loc1_.§7!S§();
            }
         }
      }
      
      public function §-!3§() : void
      {
         var _loc1_:§-!O§ = null;
         for each(_loc1_ in this.§,?§)
         {
            _loc1_.§-!3§();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§-!O§ = null;
         for each(_loc1_ in this.§,?§)
         {
            _loc1_.play();
         }
      }
      
      public function §[I§() : void
      {
         var _loc2_:§-!O§ = null;
         §&! § = -§+L§;
         this.§!!X§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§,?§.length)
         {
            _loc2_ = this.§,?§[_loc1_];
            _loc2_.§[I§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§-!O§ = null;
         §&! § += param1;
         if(§&! § < 0)
         {
            return;
         }
         var _loc2_:int = this.§#e§;
         var _loc3_:int = this.§#>§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§,?§[_loc4_]).update(param1);
            this.§-!e§(_loc5_);
            _loc4_++;
         }
         this.§2!L§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §-!e§(param1:§-!O§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§"B§)
            {
               ++this.§!!X§;
               if(this.§!!X§ < this.§,?§.length)
               {
                  this.§,?§[this.§!!X§].play();
               }
            }
         }
      }
      
      private function §2!L§() : void
      {
         if(this.isCompleted)
         {
            if(!§%!m§)
            {
               this.§[I§();
               this.play();
            }
            else if(§%S§ != null)
            {
               try
               {
                  §%S§();
                  §%S§ = null;
               }
               catch(e:Error)
               {
                  §%S§ = null;
                  if(!§8!<§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
