package §1!#§
{
   public class §finally§ extends §0&§ implements §+!7§
   {
       
      
      private var §`5§:Vector.<§+!7§>;
      
      private var §%H§:Boolean = true;
      
      private var §2!,§:int = 0;
      
      public function §finally§(param1:Array, param2:Boolean)
      {
         var _loc3_:§+!7§ = null;
         this.§`5§ = new Vector.<§+!7§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§`5§.push(_loc3_);
         }
         this.§%H§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§+!7§ = null;
         for each(_loc1_ in this.§`5§)
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
         var _loc1_:§+!7§ = null;
         for each(_loc1_ in this.§`5§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §"!A§() : int
      {
         if(this.§%H§)
         {
            return this.§`5§.length;
         }
         if(this.§`5§.length > this.§2!,§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §,t§() : int
      {
         if(this.§%H§)
         {
            return 0;
         }
         return this.§2!,§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§+!7§ = null;
         while(this.§`5§.length > 0)
         {
            _loc1_ = this.§`5§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§+!7§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§`5§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §`6§() : void
      {
         var _loc1_:§+!7§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§`5§)
            {
               _loc1_.§`6§();
            }
         }
      }
      
      public function pause() : void
      {
         var _loc1_:§+!7§ = null;
         for each(_loc1_ in this.§`5§)
         {
            _loc1_.pause();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§+!7§ = null;
         for each(_loc1_ in this.§`5§)
         {
            _loc1_.play();
         }
      }
      
      public function §@l§() : void
      {
         var _loc2_:§+!7§ = null;
         §-f§ = -§@!8§;
         this.§2!,§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§`5§.length)
         {
            _loc2_ = this.§`5§[_loc1_];
            _loc2_.§@l§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§+!7§ = null;
         §-f§ += param1;
         if(§-f§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§"!A§;
         var _loc3_:int = this.§,t§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§`5§[_loc4_]).update(param1);
            this.§[&§(_loc5_);
            _loc4_++;
         }
         this.§`!G§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §[&§(param1:§+!7§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§%H§)
            {
               ++this.§2!,§;
               if(this.§2!,§ < this.§`5§.length)
               {
                  this.§`5§[this.§2!,§].play();
               }
            }
         }
      }
      
      private function §`!G§() : void
      {
         if(this.isCompleted)
         {
            if(!§@!A§)
            {
               this.§@l§();
               this.play();
            }
            else if(§=!5§ != null)
            {
               try
               {
                  §=!5§();
                  §=!5§ = null;
               }
               catch(e:Error)
               {
                  §=!5§ = null;
                  if(!§4Z§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
