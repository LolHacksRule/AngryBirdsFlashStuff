package §;"5§
{
   public class §2"E§ extends §`"h§ implements §@"§
   {
       
      
      private var § #t§:Vector.<§@"§>;
      
      private var §'#Y§:Boolean = true;
      
      private var §1"M§:int = 0;
      
      public function §2"E§(param1:Array, param2:Boolean)
      {
         var _loc3_:§@"§ = null;
         this.§ #t§ = new Vector.<§@"§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§ #t§.push(_loc3_);
         }
         this.§'#Y§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§@"§ = null;
         for each(_loc1_ in this.§ #t§)
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
         var _loc1_:§@"§ = null;
         for each(_loc1_ in this.§ #t§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §,"a§() : int
      {
         if(this.§'#Y§)
         {
            return this.§ #t§.length;
         }
         if(this.§ #t§.length > this.§1"M§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §3!"§() : int
      {
         if(this.§'#Y§)
         {
            return 0;
         }
         return this.§1"M§;
      }
      
      override public function dispose() : void
      {
         var _loc1_:§@"§ = null;
         while(this.§ #t§.length > 0)
         {
            _loc1_ = this.§ #t§.shift();
            _loc1_.dispose();
         }
         super.dispose();
      }
      
      public function stop() : void
      {
         var _loc1_:§@"§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§ #t§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §0"D§() : void
      {
         var _loc1_:§@"§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§ #t§)
            {
               _loc1_.§0"D§();
            }
         }
      }
      
      override public function pause() : void
      {
         var _loc1_:§@"§ = null;
         super.pause();
         for each(_loc1_ in this.§ #t§)
         {
            _loc1_.pause();
         }
      }
      
      override public function play() : void
      {
         var _loc1_:§@"§ = null;
         super.play();
         for each(_loc1_ in this.§ #t§)
         {
            _loc1_.play();
         }
      }
      
      public function §'C§() : void
      {
         var _loc2_:§@"§ = null;
         §;C§ = -§'!8§;
         this.§1"M§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§ #t§.length)
         {
            _loc2_ = this.§ #t§[_loc1_];
            _loc2_.§'C§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§@"§ = null;
         if(!§2#5§(param1))
         {
            return;
         }
         var _loc2_:int = this.§,"a§;
         var _loc3_:int = this.§3!"§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§ #t§[_loc4_]).update(param1);
            this.§ #!§(_loc5_);
            _loc4_++;
         }
         this.§%7§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function § #!§(param1:§@"§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§'#Y§)
            {
               ++this.§1"M§;
               if(this.§1"M§ < this.§ #t§.length)
               {
                  this.§ #t§[this.§1"M§].play();
               }
            }
         }
      }
      
      private function §%7§() : void
      {
         if(this.isCompleted)
         {
            if(!§-#I§)
            {
               this.§'C§();
               this.play();
            }
            else if(§-!^§ != null)
            {
               try
               {
                  §-!^§();
                  §-!^§ = null;
               }
               catch(e:Error)
               {
                  §-!^§ = null;
                  if(!§7#M§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
