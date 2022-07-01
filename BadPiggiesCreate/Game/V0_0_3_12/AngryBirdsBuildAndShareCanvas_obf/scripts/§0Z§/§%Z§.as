package §0Z§
{
   public class §%Z§ extends §?!X§ implements §9"5§
   {
       
      
      private var § x§:Vector.<§9"5§>;
      
      private var §;5§:Boolean = true;
      
      private var §+!v§:int = 0;
      
      public function §%Z§(param1:Array, param2:Boolean)
      {
         var _loc3_:§9"5§ = null;
         this.§ x§ = new Vector.<§9"5§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§ x§.push(_loc3_);
         }
         this.§;5§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§9"5§ = null;
         for each(_loc1_ in this.§ x§)
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
         var _loc1_:§9"5§ = null;
         for each(_loc1_ in this.§ x§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §4!"§() : int
      {
         if(this.§;5§)
         {
            return this.§ x§.length;
         }
         if(this.§ x§.length > this.§+!v§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get § B§() : int
      {
         if(this.§;5§)
         {
            return 0;
         }
         return this.§+!v§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§9"5§ = null;
         while(this.§ x§.length > 0)
         {
            _loc1_ = this.§ x§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§9"5§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§ x§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §%z§() : void
      {
         var _loc1_:§9"5§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§ x§)
            {
               _loc1_.§%z§();
            }
         }
      }
      
      public function pause() : void
      {
         var _loc1_:§9"5§ = null;
         for each(_loc1_ in this.§ x§)
         {
            _loc1_.pause();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§9"5§ = null;
         for each(_loc1_ in this.§ x§)
         {
            _loc1_.play();
         }
      }
      
      public function §"6§() : void
      {
         var _loc2_:§9"5§ = null;
         §&!w§ = -§>!G§;
         this.§+!v§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§ x§.length)
         {
            _loc2_ = this.§ x§[_loc1_];
            _loc2_.§"6§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§9"5§ = null;
         §&!w§ += param1;
         if(§&!w§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§4!"§;
         var _loc3_:int = this.§ B§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§ x§[_loc4_]).update(param1);
            this.§;!;§(_loc5_);
            _loc4_++;
         }
         this.§[S§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §;!;§(param1:§9"5§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§;5§)
            {
               ++this.§+!v§;
               if(this.§+!v§ < this.§ x§.length)
               {
                  this.§ x§[this.§+!v§].play();
               }
            }
         }
      }
      
      private function §[S§() : void
      {
         if(this.isCompleted)
         {
            if(!§7!=§)
            {
               this.§"6§();
               this.play();
            }
            else if(§-!t§ != null)
            {
               try
               {
                  §-!t§();
                  §-!t§ = null;
               }
               catch(e:Error)
               {
                  §-!t§ = null;
                  if(!§6!]§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
