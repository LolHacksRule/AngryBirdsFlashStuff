package §]$§
{
   public class §>z§ extends §&4§ implements §0!F§
   {
       
      
      private var §18§:Vector.<§0!F§>;
      
      private var §+P§:Boolean = true;
      
      private var §@U§:int = 0;
      
      public function §>z§(param1:Array, param2:Boolean)
      {
         var _loc3_:§0!F§ = null;
         this.§18§ = new Vector.<§0!F§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§18§.push(_loc3_);
         }
         this.§+P§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§0!F§ = null;
         for each(_loc1_ in this.§18§)
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
         var _loc1_:§0!F§ = null;
         for each(_loc1_ in this.§18§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §;=§() : int
      {
         if(this.§+P§)
         {
            return this.§18§.length;
         }
         if(this.§18§.length > this.§@U§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §,>§() : int
      {
         if(this.§+P§)
         {
            return 0;
         }
         return this.§@U§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§0!F§ = null;
         while(this.§18§.length > 0)
         {
            _loc1_ = this.§18§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§0!F§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§18§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §>!J§() : void
      {
         var _loc1_:§0!F§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§18§)
            {
               _loc1_.§>!J§();
            }
         }
      }
      
      public function pause() : void
      {
         var _loc1_:§0!F§ = null;
         for each(_loc1_ in this.§18§)
         {
            _loc1_.pause();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§0!F§ = null;
         for each(_loc1_ in this.§18§)
         {
            _loc1_.play();
         }
      }
      
      public function §#!9§() : void
      {
         var _loc2_:§0!F§ = null;
         §%i§ = -§0v§;
         this.§@U§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§18§.length)
         {
            _loc2_ = this.§18§[_loc1_];
            _loc2_.§#!9§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§0!F§ = null;
         §%i§ += param1;
         if(§%i§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§;=§;
         var _loc3_:int = this.§,>§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§18§[_loc4_]).update(param1);
            this.§ @§(_loc5_);
            _loc4_++;
         }
         this.§1!3§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function § @§(param1:§0!F§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§+P§)
            {
               ++this.§@U§;
               if(this.§@U§ < this.§18§.length)
               {
                  this.§18§[this.§@U§].play();
               }
            }
         }
      }
      
      private function §1!3§() : void
      {
         if(this.isCompleted)
         {
            if(!§-!0§)
            {
               this.§#!9§();
               this.play();
            }
            else if(§"!4§ != null)
            {
               try
               {
                  §"!4§();
                  §"!4§ = null;
               }
               catch(e:Error)
               {
                  §"!4§ = null;
                  if(!§6!"§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
