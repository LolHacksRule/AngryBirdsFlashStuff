package §@!0§
{
   public class §8!+§ extends § "'§ implements §'!t§
   {
       
      
      private var §!"0§:Vector.<§'!t§>;
      
      private var § "$§:Boolean = true;
      
      private var §-"$§:int = 0;
      
      public function §8!+§(param1:Array, param2:Boolean)
      {
         var _loc3_:§'!t§ = null;
         this.§!"0§ = new Vector.<§'!t§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§!"0§.push(_loc3_);
         }
         this.§ "$§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§'!t§ = null;
         for each(_loc1_ in this.§!"0§)
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
         var _loc1_:§'!t§ = null;
         for each(_loc1_ in this.§!"0§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §;t§() : int
      {
         if(this.§ "$§)
         {
            return this.§!"0§.length;
         }
         if(this.§!"0§.length > this.§-"$§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §9!l§() : int
      {
         if(this.§ "$§)
         {
            return 0;
         }
         return this.§-"$§;
      }
      
      override public function dispose() : void
      {
         var _loc1_:§'!t§ = null;
         while(this.§!"0§.length > 0)
         {
            _loc1_ = this.§!"0§.shift();
            _loc1_.dispose();
         }
         super.dispose();
      }
      
      public function stop() : void
      {
         var _loc1_:§'!t§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§!"0§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §-!m§() : void
      {
         var _loc1_:§'!t§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§!"0§)
            {
               _loc1_.§-!m§();
            }
         }
      }
      
      override public function pause() : void
      {
         var _loc1_:§'!t§ = null;
         super.pause();
         for each(_loc1_ in this.§!"0§)
         {
            _loc1_.pause();
         }
      }
      
      override public function play() : void
      {
         var _loc1_:§'!t§ = null;
         super.play();
         for each(_loc1_ in this.§!"0§)
         {
            _loc1_.play();
         }
      }
      
      public function §;@§() : void
      {
         var _loc2_:§'!t§ = null;
         §;!$§ = -§%"8§;
         this.§-"$§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§!"0§.length)
         {
            _loc2_ = this.§!"0§[_loc1_];
            _loc2_.§;@§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§'!t§ = null;
         if(!§,!O§(param1))
         {
            return;
         }
         var _loc2_:int = this.§;t§;
         var _loc3_:int = this.§9!l§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§!"0§[_loc4_]).update(param1);
            this.§3!U§(_loc5_);
            _loc4_++;
         }
         this.§=!m§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §3!U§(param1:§'!t§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§ "$§)
            {
               ++this.§-"$§;
               if(this.§-"$§ < this.§!"0§.length)
               {
                  this.§!"0§[this.§-"$§].play();
               }
            }
         }
      }
      
      private function §=!m§() : void
      {
         if(this.isCompleted)
         {
            if(!§@!S§)
            {
               this.§;@§();
               this.play();
            }
            else if(§1!e§ != null)
            {
               try
               {
                  §1!e§();
                  §1!e§ = null;
               }
               catch(e:Error)
               {
                  §1!e§ = null;
                  if(!§<!H§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
