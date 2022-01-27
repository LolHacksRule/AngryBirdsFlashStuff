package §6-§
{
   public class §@a§ extends §^6§ implements §0!6§
   {
       
      
      private var §=!X§:Vector.<§0!6§>;
      
      private var §?6§:Boolean = true;
      
      private var §4y§:int = 0;
      
      public function §@a§(param1:Array, param2:Boolean)
      {
         var _loc3_:§0!6§ = null;
         this.§=!X§ = new Vector.<§0!6§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§=!X§.push(_loc3_);
         }
         this.§?6§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§0!6§ = null;
         for each(_loc1_ in this.§=!X§)
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
         var _loc1_:§0!6§ = null;
         for each(_loc1_ in this.§=!X§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §7]§() : int
      {
         if(this.§?6§)
         {
            return this.§=!X§.length;
         }
         if(this.§=!X§.length > this.§4y§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §4b§() : int
      {
         if(this.§?6§)
         {
            return 0;
         }
         return this.§4y§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§0!6§ = null;
         while(this.§=!X§.length > 0)
         {
            _loc1_ = this.§=!X§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§0!6§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§=!X§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §?w§() : void
      {
         var _loc1_:§0!6§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§=!X§)
            {
               _loc1_.§?w§();
            }
         }
      }
      
      public function §9@§() : void
      {
         var _loc1_:§0!6§ = null;
         for each(_loc1_ in this.§=!X§)
         {
            _loc1_.§9@§();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§0!6§ = null;
         for each(_loc1_ in this.§=!X§)
         {
            _loc1_.play();
         }
      }
      
      public function §4!N§() : void
      {
         var _loc2_:§0!6§ = null;
         §-9§ = -§>+§;
         this.§4y§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§=!X§.length)
         {
            _loc2_ = this.§=!X§[_loc1_];
            _loc2_.§4!N§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§0!6§ = null;
         §-9§ += param1;
         if(§-9§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§7]§;
         var _loc3_:int = this.§4b§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§=!X§[_loc4_]).update(param1);
            this.§<[§(_loc5_);
            _loc4_++;
         }
         this.§6!,§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §<[§(param1:§0!6§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§?6§)
            {
               ++this.§4y§;
               if(this.§4y§ < this.§=!X§.length)
               {
                  this.§=!X§[this.§4y§].play();
               }
            }
         }
      }
      
      private function §6!,§() : void
      {
         if(this.isCompleted)
         {
            if(!§3Q§)
            {
               this.§4!N§();
               this.play();
            }
            else if(§0s§ != null)
            {
               try
               {
                  §0s§();
                  §0s§ = null;
               }
               catch(e:Error)
               {
                  §0s§ = null;
                  if(!§@!#§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
