package §><§
{
   public class §]!v§ extends §6!2§ implements §=!i§
   {
       
      
      private var §"!Y§:Vector.<§=!i§>;
      
      private var §#w§:Boolean = true;
      
      private var §-5§:int = 0;
      
      public function §]!v§(param1:Array, param2:Boolean)
      {
         var _loc3_:§=!i§ = null;
         this.§"!Y§ = new Vector.<§=!i§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§"!Y§.push(_loc3_);
         }
         this.§#w§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§=!i§ = null;
         for each(_loc1_ in this.§"!Y§)
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
         var _loc1_:§=!i§ = null;
         for each(_loc1_ in this.§"!Y§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §%l§() : int
      {
         if(this.§#w§)
         {
            return this.§"!Y§.length;
         }
         if(this.§"!Y§.length > this.§-5§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §-"2§() : int
      {
         if(this.§#w§)
         {
            return 0;
         }
         return this.§-5§;
      }
      
      override public function dispose() : void
      {
         var _loc1_:§=!i§ = null;
         while(this.§"!Y§.length > 0)
         {
            _loc1_ = this.§"!Y§.shift();
            _loc1_.dispose();
         }
         super.dispose();
      }
      
      public function stop() : void
      {
         var _loc1_:§=!i§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§"!Y§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §6Y§() : void
      {
         var _loc1_:§=!i§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§"!Y§)
            {
               _loc1_.§6Y§();
            }
         }
      }
      
      override public function pause() : void
      {
         var _loc1_:§=!i§ = null;
         super.pause();
         for each(_loc1_ in this.§"!Y§)
         {
            _loc1_.pause();
         }
      }
      
      override public function play() : void
      {
         var _loc1_:§=!i§ = null;
         super.play();
         for each(_loc1_ in this.§"!Y§)
         {
            _loc1_.play();
         }
      }
      
      public function §8!V§() : void
      {
         var _loc2_:§=!i§ = null;
         §6!d§ = -§[B§;
         this.§-5§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§"!Y§.length)
         {
            _loc2_ = this.§"!Y§[_loc1_];
            _loc2_.§8!V§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§=!i§ = null;
         if(!§`!v§(param1))
         {
            return;
         }
         var _loc2_:int = this.§%l§;
         var _loc3_:int = this.§-"2§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§"!Y§[_loc4_]).update(param1);
            this.§&-§(_loc5_);
            _loc4_++;
         }
         this.§`1§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §&-§(param1:§=!i§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§#w§)
            {
               ++this.§-5§;
               if(this.§-5§ < this.§"!Y§.length)
               {
                  this.§"!Y§[this.§-5§].play();
               }
            }
         }
      }
      
      private function §`1§() : void
      {
         if(this.isCompleted)
         {
            if(!§?!o§)
            {
               this.§8!V§();
               this.play();
            }
            else if(§@!C§ != null)
            {
               try
               {
                  §@!C§();
                  §@!C§ = null;
               }
               catch(e:Error)
               {
                  §@!C§ = null;
                  if(!§[v§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
