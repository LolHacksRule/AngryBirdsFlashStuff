package §"!0§
{
   public class §&!j§ extends §@u§ implements §"Z§
   {
       
      
      private var §=n§:Vector.<§"Z§>;
      
      private var §-A§:Boolean = true;
      
      private var §,!]§:int = 0;
      
      public function §&!j§(param1:Array, param2:Boolean)
      {
         var _loc3_:§"Z§ = null;
         this.§=n§ = new Vector.<§"Z§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§=n§.push(_loc3_);
         }
         this.§-A§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§"Z§ = null;
         for each(_loc1_ in this.§=n§)
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
         var _loc1_:§"Z§ = null;
         for each(_loc1_ in this.§=n§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §^!>§() : int
      {
         if(this.§-A§)
         {
            return this.§=n§.length;
         }
         if(this.§=n§.length > this.§,!]§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §>!f§() : int
      {
         if(this.§-A§)
         {
            return 0;
         }
         return this.§,!]§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§"Z§ = null;
         while(this.§=n§.length > 0)
         {
            _loc1_ = this.§=n§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§"Z§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§=n§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §1!+§() : void
      {
         var _loc1_:§"Z§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§=n§)
            {
               _loc1_.§1!+§();
            }
         }
      }
      
      public function pause() : void
      {
         var _loc1_:§"Z§ = null;
         for each(_loc1_ in this.§=n§)
         {
            _loc1_.pause();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§"Z§ = null;
         for each(_loc1_ in this.§=n§)
         {
            _loc1_.play();
         }
      }
      
      public function §]!I§() : void
      {
         var _loc2_:§"Z§ = null;
         §<h§ = -§"Y§;
         this.§,!]§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§=n§.length)
         {
            _loc2_ = this.§=n§[_loc1_];
            _loc2_.§]!I§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§"Z§ = null;
         §<h§ += param1;
         if(§<h§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§^!>§;
         var _loc3_:int = this.§>!f§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§=n§[_loc4_]).update(param1);
            this.§#m§(_loc5_);
            _loc4_++;
         }
         this.§;!e§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §#m§(param1:§"Z§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§-A§)
            {
               ++this.§,!]§;
               if(this.§,!]§ < this.§=n§.length)
               {
                  this.§=n§[this.§,!]§].play();
               }
            }
         }
      }
      
      private function §;!e§() : void
      {
         if(this.isCompleted)
         {
            if(!§3"3§)
            {
               this.§]!I§();
               this.play();
            }
            else if(§ C§ != null)
            {
               try
               {
                  § C§();
                  § C§ = null;
               }
               catch(e:Error)
               {
                  § C§ = null;
                  if(!§!=§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
