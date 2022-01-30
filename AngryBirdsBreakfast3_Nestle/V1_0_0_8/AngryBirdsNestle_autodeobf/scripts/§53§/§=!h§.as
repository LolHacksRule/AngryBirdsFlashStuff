package §53§
{
   public class §=!h§ extends §'!L§ implements §0!%§
   {
       
      
      private var §,!_§:Vector.<§0!%§>;
      
      private var §6h§:Boolean = true;
      
      private var §7"1§:int = 0;
      
      public function §=!h§(param1:Array, param2:Boolean)
      {
         var _loc3_:§0!%§ = null;
         this.§,!_§ = new Vector.<§0!%§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§,!_§.push(_loc3_);
         }
         this.§6h§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§0!%§ = null;
         for each(_loc1_ in this.§,!_§)
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
         var _loc1_:§0!%§ = null;
         for each(_loc1_ in this.§,!_§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §0!E§() : int
      {
         if(this.§6h§)
         {
            return this.§,!_§.length;
         }
         if(this.§,!_§.length > this.§7"1§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §!" §() : int
      {
         if(this.§6h§)
         {
            return 0;
         }
         return this.§7"1§;
      }
      
      override public function dispose() : void
      {
         var _loc1_:§0!%§ = null;
         while(this.§,!_§.length > 0)
         {
            _loc1_ = this.§,!_§.shift();
            _loc1_.dispose();
         }
         super.dispose();
      }
      
      public function stop() : void
      {
         var _loc1_:§0!%§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§,!_§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §6!;§() : void
      {
         var _loc1_:§0!%§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§,!_§)
            {
               _loc1_.§6!;§();
            }
         }
      }
      
      override public function pause() : void
      {
         var _loc1_:§0!%§ = null;
         super.pause();
         for each(_loc1_ in this.§,!_§)
         {
            _loc1_.pause();
         }
      }
      
      override public function play() : void
      {
         var _loc1_:§0!%§ = null;
         super.play();
         for each(_loc1_ in this.§,!_§)
         {
            _loc1_.play();
         }
      }
      
      public function §#"7§() : void
      {
         var _loc2_:§0!%§ = null;
         §>§ = -§3!t§;
         this.§7"1§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§,!_§.length)
         {
            _loc2_ = this.§,!_§[_loc1_];
            _loc2_.§#"7§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§0!%§ = null;
         if(!§%!I§(param1))
         {
            return;
         }
         var _loc2_:int = this.§0!E§;
         var _loc3_:int = this.§!" §;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§,!_§[_loc4_]).update(param1);
            this.§3"-§(_loc5_);
            _loc4_++;
         }
         this.§6![§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §3"-§(param1:§0!%§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§6h§)
            {
               ++this.§7"1§;
               if(this.§7"1§ < this.§,!_§.length)
               {
                  this.§,!_§[this.§7"1§].play();
               }
            }
         }
      }
      
      private function §6![§() : void
      {
         if(this.isCompleted)
         {
            if(!§=!$§)
            {
               this.§#"7§();
               this.play();
            }
            else if(§4r§ != null)
            {
               try
               {
                  §4r§();
                  §4r§ = null;
               }
               catch(e:Error)
               {
                  §4r§ = null;
                  if(!§&!,§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
