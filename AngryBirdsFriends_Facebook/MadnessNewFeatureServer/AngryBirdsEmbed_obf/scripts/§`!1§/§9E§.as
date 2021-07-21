package §`!1§
{
   public class §9E§ extends §+<§ implements §6!>§
   {
       
      
      private var §9l§:Vector.<§6!>§>;
      
      private var §-d§:Boolean = true;
      
      private var §`Q§:int = 0;
      
      public function §9E§(param1:Array, param2:Boolean)
      {
         var _loc3_:§6!>§ = null;
         this.§9l§ = new Vector.<§6!>§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§9l§.push(_loc3_);
         }
         this.§-d§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§6!>§ = null;
         for each(_loc1_ in this.§9l§)
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
         var _loc1_:§6!>§ = null;
         for each(_loc1_ in this.§9l§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §1'§() : int
      {
         if(this.§-d§)
         {
            return this.§9l§.length;
         }
         if(this.§9l§.length > this.§`Q§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §',§() : int
      {
         if(this.§-d§)
         {
            return 0;
         }
         return this.§`Q§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§6!>§ = null;
         while(this.§9l§.length > 0)
         {
            _loc1_ = this.§9l§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§6!>§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§9l§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §@?§() : void
      {
         var _loc1_:§6!>§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§9l§)
            {
               _loc1_.§@?§();
            }
         }
      }
      
      public function pause() : void
      {
         var _loc1_:§6!>§ = null;
         for each(_loc1_ in this.§9l§)
         {
            _loc1_.pause();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§6!>§ = null;
         for each(_loc1_ in this.§9l§)
         {
            _loc1_.play();
         }
      }
      
      public function §#Z§() : void
      {
         var _loc2_:§6!>§ = null;
         §"<§ = -§[s§;
         this.§`Q§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§9l§.length)
         {
            _loc2_ = this.§9l§[_loc1_];
            _loc2_.§#Z§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§6!>§ = null;
         §"<§ += param1;
         if(§"<§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§1'§;
         var _loc3_:int = this.§',§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§9l§[_loc4_]).update(param1);
            this.§&!L§(_loc5_);
            _loc4_++;
         }
         this.§<;§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §&!L§(param1:§6!>§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§-d§)
            {
               ++this.§`Q§;
               if(this.§`Q§ < this.§9l§.length)
               {
                  this.§9l§[this.§`Q§].play();
               }
            }
         }
      }
      
      private function §<;§() : void
      {
         if(this.isCompleted)
         {
            if(!§@!O§)
            {
               this.§#Z§();
               this.play();
            }
            else if(§"R§ != null)
            {
               try
               {
                  §"R§();
                  §"R§ = null;
               }
               catch(e:Error)
               {
                  §"R§ = null;
                  if(!§!!C§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
