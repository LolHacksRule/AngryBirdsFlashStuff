package §1!d§
{
   public class §2![§ extends §@!7§ implements §<!V§
   {
       
      
      private var §4!h§:Vector.<§<!V§>;
      
      private var §3G§:Boolean = true;
      
      private var §4!%§:int = 0;
      
      public function §2![§(param1:Array, param2:Boolean)
      {
         var _loc3_:§<!V§ = null;
         this.§4!h§ = new Vector.<§<!V§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§4!h§.push(_loc3_);
         }
         this.§3G§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§<!V§ = null;
         for each(_loc1_ in this.§4!h§)
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
         var _loc1_:§<!V§ = null;
         for each(_loc1_ in this.§4!h§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §@%§() : int
      {
         if(this.§3G§)
         {
            return this.§4!h§.length;
         }
         if(this.§4!h§.length > this.§4!%§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §'f§() : int
      {
         if(this.§3G§)
         {
            return 0;
         }
         return this.§4!%§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§<!V§ = null;
         while(this.§4!h§.length > 0)
         {
            _loc1_ = this.§4!h§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§<!V§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§4!h§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §'L§() : void
      {
         var _loc1_:§<!V§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§4!h§)
            {
               _loc1_.§'L§();
            }
         }
      }
      
      public function §?p§() : void
      {
         var _loc1_:§<!V§ = null;
         for each(_loc1_ in this.§4!h§)
         {
            _loc1_.§?p§();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§<!V§ = null;
         for each(_loc1_ in this.§4!h§)
         {
            _loc1_.play();
         }
      }
      
      public function §4!H§() : void
      {
         var _loc2_:§<!V§ = null;
         §2!N§ = -§ F§;
         this.§4!%§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§4!h§.length)
         {
            _loc2_ = this.§4!h§[_loc1_];
            _loc2_.§4!H§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§<!V§ = null;
         §2!N§ += param1;
         if(§2!N§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§@%§;
         var _loc3_:int = this.§'f§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§4!h§[_loc4_]).update(param1);
            this.§>@§(_loc5_);
            _loc4_++;
         }
         this.§ L§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §>@§(param1:§<!V§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§3G§)
            {
               ++this.§4!%§;
               if(this.§4!%§ < this.§4!h§.length)
               {
                  this.§4!h§[this.§4!%§].play();
               }
            }
         }
      }
      
      private function § L§() : void
      {
         if(this.isCompleted)
         {
            if(!§ !W§)
            {
               this.§4!H§();
               this.play();
            }
            else if(§=a§ != null)
            {
               try
               {
                  §=a§();
                  §=a§ = null;
               }
               catch(e:Error)
               {
                  §=a§ = null;
                  if(!§!!%§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
