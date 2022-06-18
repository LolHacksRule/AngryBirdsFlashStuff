package §!>§
{
   public class §1!N§ extends §#S§ implements §+!C§
   {
       
      
      private var §4!4§:Vector.<§+!C§>;
      
      private var §,r§:Boolean = true;
      
      private var §5!U§:int = 0;
      
      public function §1!N§(param1:Array, param2:Boolean)
      {
         var _loc3_:§+!C§ = null;
         this.§4!4§ = new Vector.<§+!C§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§4!4§.push(_loc3_);
         }
         this.§,r§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§+!C§ = null;
         for each(_loc1_ in this.§4!4§)
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
         var _loc1_:§+!C§ = null;
         for each(_loc1_ in this.§4!4§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §@!K§() : int
      {
         if(this.§,r§)
         {
            return this.§4!4§.length;
         }
         if(this.§4!4§.length > this.§5!U§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §-K§() : int
      {
         if(this.§,r§)
         {
            return 0;
         }
         return this.§5!U§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§+!C§ = null;
         while(this.§4!4§.length > 0)
         {
            _loc1_ = this.§4!4§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§+!C§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§4!4§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §]#§() : void
      {
         var _loc1_:§+!C§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§4!4§)
            {
               _loc1_.§]#§();
            }
         }
      }
      
      public function §9!V§() : void
      {
         var _loc1_:§+!C§ = null;
         for each(_loc1_ in this.§4!4§)
         {
            _loc1_.§9!V§();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§+!C§ = null;
         for each(_loc1_ in this.§4!4§)
         {
            _loc1_.play();
         }
      }
      
      public function §?!C§() : void
      {
         var _loc2_:§+!C§ = null;
         §5+§ = -§!T§;
         this.§5!U§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§4!4§.length)
         {
            _loc2_ = this.§4!4§[_loc1_];
            _loc2_.§?!C§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§+!C§ = null;
         §5+§ += param1;
         if(§5+§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§@!K§;
         var _loc3_:int = this.§-K§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§4!4§[_loc4_]).update(param1);
            this.§#3§(_loc5_);
            _loc4_++;
         }
         this.§8A§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §#3§(param1:§+!C§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§,r§)
            {
               ++this.§5!U§;
               if(this.§5!U§ < this.§4!4§.length)
               {
                  this.§4!4§[this.§5!U§].play();
               }
            }
         }
      }
      
      private function §8A§() : void
      {
         if(this.isCompleted)
         {
            if(!§%o§)
            {
               this.§?!C§();
               this.play();
            }
            else if(§?!%§ != null)
            {
               try
               {
                  §?!%§();
                  §?!%§ = null;
               }
               catch(e:Error)
               {
                  §?!%§ = null;
                  if(!§ !;§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
