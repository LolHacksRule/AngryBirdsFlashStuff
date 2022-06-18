package §4x§
{
   public class §5!0§ extends §7!B§ implements §!!<§
   {
       
      
      private var §3%§:Vector.<§!!<§>;
      
      private var §9!-§:Boolean = true;
      
      private var §=!'§:int = 0;
      
      public function §5!0§(param1:Array, param2:Boolean)
      {
         var _loc3_:§!!<§ = null;
         this.§3%§ = new Vector.<§!!<§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§3%§.push(_loc3_);
         }
         this.§9!-§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§!!<§ = null;
         for each(_loc1_ in this.§3%§)
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
         var _loc1_:§!!<§ = null;
         for each(_loc1_ in this.§3%§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §9!_§() : int
      {
         if(this.§9!-§)
         {
            return this.§3%§.length;
         }
         if(this.§3%§.length > this.§=!'§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §^L§() : int
      {
         if(this.§9!-§)
         {
            return 0;
         }
         return this.§=!'§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§!!<§ = null;
         while(this.§3%§.length > 0)
         {
            _loc1_ = this.§3%§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§!!<§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§3%§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function § p§() : void
      {
         var _loc1_:§!!<§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§3%§)
            {
               _loc1_.§ p§();
            }
         }
      }
      
      public function §5q§() : void
      {
         var _loc1_:§!!<§ = null;
         for each(_loc1_ in this.§3%§)
         {
            _loc1_.§5q§();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§!!<§ = null;
         for each(_loc1_ in this.§3%§)
         {
            _loc1_.play();
         }
      }
      
      public function §#!§() : void
      {
         var _loc2_:§!!<§ = null;
         §9!6§ = -§ ,§;
         this.§=!'§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§3%§.length)
         {
            _loc2_ = this.§3%§[_loc1_];
            _loc2_.§#!§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§!!<§ = null;
         §9!6§ += param1;
         if(§9!6§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§9!_§;
         var _loc3_:int = this.§^L§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§3%§[_loc4_]).update(param1);
            this.§49§(_loc5_);
            _loc4_++;
         }
         this.§<!0§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §49§(param1:§!!<§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§9!-§)
            {
               ++this.§=!'§;
               if(this.§=!'§ < this.§3%§.length)
               {
                  this.§3%§[this.§=!'§].play();
               }
            }
         }
      }
      
      private function §<!0§() : void
      {
         if(this.isCompleted)
         {
            if(!§>n§)
            {
               this.§#!§();
               this.play();
            }
            else if(§4!P§ != null)
            {
               try
               {
                  §4!P§();
                  §4!P§ = null;
               }
               catch(e:Error)
               {
                  §4!P§ = null;
                  if(!§ !3§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
