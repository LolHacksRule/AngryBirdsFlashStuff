package §8!-§
{
   public class §,p§ extends §,I§ implements §98§
   {
       
      
      private var §2-§:Vector.<§98§>;
      
      private var §+!5§:Boolean = true;
      
      private var §2!J§:int = 0;
      
      public function §,p§(param1:Array, param2:Boolean)
      {
         var _loc3_:§98§ = null;
         this.§2-§ = new Vector.<§98§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§2-§.push(_loc3_);
         }
         this.§+!5§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§98§ = null;
         for each(_loc1_ in this.§2-§)
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
         var _loc1_:§98§ = null;
         for each(_loc1_ in this.§2-§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §;!B§() : int
      {
         if(this.§+!5§)
         {
            return this.§2-§.length;
         }
         if(this.§2-§.length > this.§2!J§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §,!V§() : int
      {
         if(this.§+!5§)
         {
            return 0;
         }
         return this.§2!J§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§98§ = null;
         while(this.§2-§.length > 0)
         {
            _loc1_ = this.§2-§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§98§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§2-§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §4!A§() : void
      {
         var _loc1_:§98§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§2-§)
            {
               _loc1_.§4!A§();
            }
         }
      }
      
      public function §0!G§() : void
      {
         var _loc1_:§98§ = null;
         for each(_loc1_ in this.§2-§)
         {
            _loc1_.§0!G§();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§98§ = null;
         for each(_loc1_ in this.§2-§)
         {
            _loc1_.play();
         }
      }
      
      public function §+J§() : void
      {
         var _loc2_:§98§ = null;
         §"x§ = -§=u§;
         this.§2!J§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§2-§.length)
         {
            _loc2_ = this.§2-§[_loc1_];
            _loc2_.§+J§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§98§ = null;
         §"x§ += param1;
         if(§"x§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§;!B§;
         var _loc3_:int = this.§,!V§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§2-§[_loc4_]).update(param1);
            this.§ a§(_loc5_);
            _loc4_++;
         }
         this.§4w§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function § a§(param1:§98§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§+!5§)
            {
               ++this.§2!J§;
               if(this.§2!J§ < this.§2-§.length)
               {
                  this.§2-§[this.§2!J§].play();
               }
            }
         }
      }
      
      private function §4w§() : void
      {
         if(this.isCompleted)
         {
            if(!§-h§)
            {
               this.§+J§();
               this.play();
            }
            else if(§&!A§ != null)
            {
               try
               {
                  §&!A§();
                  §&!A§ = null;
               }
               catch(e:Error)
               {
                  §&!A§ = null;
                  if(!§3!b§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
