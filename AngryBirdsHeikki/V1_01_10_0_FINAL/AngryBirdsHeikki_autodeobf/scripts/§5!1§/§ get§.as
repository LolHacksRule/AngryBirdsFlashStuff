package §5!1§
{
   public class § get§ extends §^Q§ implements §&C§
   {
       
      
      private var §8o§:Vector.<§&C§>;
      
      private var §4I§:Boolean = true;
      
      private var §9!<§:int = 0;
      
      public function § get§(param1:Array, param2:Boolean)
      {
         var _loc3_:§&C§ = null;
         this.§8o§ = new Vector.<§&C§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§8o§.push(_loc3_);
         }
         this.§4I§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§&C§ = null;
         for each(_loc1_ in this.§8o§)
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
         var _loc1_:§&C§ = null;
         for each(_loc1_ in this.§8o§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §"!F§() : int
      {
         if(this.§4I§)
         {
            return this.§8o§.length;
         }
         if(this.§8o§.length > this.§9!<§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §0a§() : int
      {
         if(this.§4I§)
         {
            return 0;
         }
         return this.§9!<§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§&C§ = null;
         while(this.§8o§.length > 0)
         {
            _loc1_ = this.§8o§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§&C§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§8o§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §2=§() : void
      {
         var _loc1_:§&C§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§8o§)
            {
               _loc1_.§2=§();
            }
         }
      }
      
      public function §99§() : void
      {
         var _loc1_:§&C§ = null;
         for each(_loc1_ in this.§8o§)
         {
            _loc1_.§99§();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§&C§ = null;
         for each(_loc1_ in this.§8o§)
         {
            _loc1_.play();
         }
      }
      
      public function §9!6§() : void
      {
         var _loc2_:§&C§ = null;
         §+K§ = -§]A§;
         this.§9!<§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§8o§.length)
         {
            _loc2_ = this.§8o§[_loc1_];
            _loc2_.§9!6§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§&C§ = null;
         §+K§ += param1;
         if(§+K§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§"!F§;
         var _loc3_:int = this.§0a§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§8o§[_loc4_]).update(param1);
            this.§1!H§(_loc5_);
            _loc4_++;
         }
         this.§8!e§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §1!H§(param1:§&C§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§4I§)
            {
               ++this.§9!<§;
               if(this.§9!<§ < this.§8o§.length)
               {
                  this.§8o§[this.§9!<§].play();
               }
            }
         }
      }
      
      private function §8!e§() : void
      {
         if(this.isCompleted)
         {
            if(!§#c§)
            {
               this.§9!6§();
               this.play();
            }
            else if(§,3§ != null)
            {
               try
               {
                  §,3§();
                  §,3§ = null;
               }
               catch(e:Error)
               {
                  §,3§ = null;
                  if(!§ !Z§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
