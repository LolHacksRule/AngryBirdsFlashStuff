package §?!%§
{
   public class §4,§ extends §,m§ implements §+a§
   {
       
      
      private var §+!7§:Vector.<§+a§>;
      
      private var §'d§:Boolean = true;
      
      private var §-&§:int = 0;
      
      public function §4,§(param1:Array, param2:Boolean)
      {
         var _loc3_:§+a§ = null;
         this.§+!7§ = new Vector.<§+a§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§+!7§.push(_loc3_);
         }
         this.§'d§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§+a§ = null;
         for each(_loc1_ in this.§+!7§)
         {
            if(!_loc1_.isCompleted)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §"!"§() : int
      {
         if(this.§'d§)
         {
            return this.§+!7§.length;
         }
         if(this.§+!7§.length > 0)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §>I§() : int
      {
         if(this.§'d§)
         {
            return 0;
         }
         return this.§-&§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§+a§ = null;
         while(this.§+!7§.length > 0)
         {
            _loc1_ = this.§+!7§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§+a§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§+!7§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §each §() : void
      {
         var _loc1_:§+a§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§+!7§)
            {
               _loc1_.§each §();
            }
         }
      }
      
      public function pause() : void
      {
         var _loc2_:§+a§ = null;
         var _loc1_:int = this.§"!"§ - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§+!7§[_loc1_];
            _loc2_.pause();
            _loc1_--;
         }
      }
      
      public function play() : void
      {
         var _loc2_:§+a§ = null;
         var _loc1_:int = this.§"!"§ - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§+!7§[_loc1_];
            _loc2_.play();
            _loc1_--;
         }
      }
      
      public function §8h§() : void
      {
         var _loc2_:§+a§ = null;
         §&!9§ = -§'s§;
         this.§-&§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§+!7§.length)
         {
            _loc2_ = this.§+!7§[_loc1_];
            _loc2_.§8h§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var tween:§+a§ = null;
         var deltaTime:Number = param1;
         §&!9§ += deltaTime;
         if(§&!9§ < 0)
         {
            return;
         }
         var activeCount:int = this.§"!"§;
         var startIndex:int = this.§>I§;
         var i:int = startIndex;
         while(i < startIndex + activeCount)
         {
            try
            {
               tween = this.§+!7§[i];
               tween.update(deltaTime);
               this.§4T§(tween);
            }
            catch(e:Error)
            {
            }
            i++;
         }
         this.§!d§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §4T§(param1:§+a§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§'d§)
            {
               ++this.§-&§;
               if(this.§-&§ < this.§+!7§.length)
               {
                  this.§+!7§[this.§-&§].play();
               }
            }
         }
      }
      
      private function §!d§() : void
      {
         if(this.isCompleted)
         {
            if(!§"!B§)
            {
               this.§8h§();
               this.play();
            }
            else if(§,!F§ != null)
            {
               try
               {
                  §,!F§();
                  §,!F§ = null;
               }
               catch(e:Error)
               {
                  §,!F§ = null;
                  if(!§^!G§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
