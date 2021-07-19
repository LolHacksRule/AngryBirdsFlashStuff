package §?@§
{
   public class §if§ extends §-w§ implements §9!k§
   {
       
      
      private var §9!5§:Vector.<§9!k§>;
      
      private var §`!v§:Boolean = true;
      
      private var §6!M§:int = 0;
      
      public function §if§(param1:Array, param2:Boolean)
      {
         var _loc3_:§9!k§ = null;
         this.§9!5§ = new Vector.<§9!k§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§9!5§.push(_loc3_);
         }
         this.§`!v§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§9!k§ = null;
         for each(_loc1_ in this.§9!5§)
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
         var _loc1_:§9!k§ = null;
         for each(_loc1_ in this.§9!5§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §<!M§() : int
      {
         if(this.§`!v§)
         {
            return this.§9!5§.length;
         }
         if(this.§9!5§.length > this.§6!M§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §1h§() : int
      {
         if(this.§`!v§)
         {
            return 0;
         }
         return this.§6!M§;
      }
      
      override public function dispose() : void
      {
         var _loc1_:§9!k§ = null;
         while(this.§9!5§.length > 0)
         {
            _loc1_ = this.§9!5§.shift();
            _loc1_.dispose();
         }
         super.dispose();
      }
      
      public function stop() : void
      {
         var _loc1_:§9!k§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§9!5§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §+-§() : void
      {
         var _loc1_:§9!k§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§9!5§)
            {
               _loc1_.§+-§();
            }
         }
      }
      
      override public function pause() : void
      {
         var _loc1_:§9!k§ = null;
         super.pause();
         for each(_loc1_ in this.§9!5§)
         {
            _loc1_.pause();
         }
      }
      
      override public function play() : void
      {
         var _loc1_:§9!k§ = null;
         super.play();
         for each(_loc1_ in this.§9!5§)
         {
            _loc1_.play();
         }
      }
      
      public function §8_§() : void
      {
         var _loc2_:§9!k§ = null;
         §^B§ = -§55§;
         this.§6!M§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§9!5§.length)
         {
            _loc2_ = this.§9!5§[_loc1_];
            _loc2_.§8_§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§9!k§ = null;
         if(!§`G§(param1))
         {
            return;
         }
         var _loc2_:int = this.§<!M§;
         var _loc3_:int = this.§1h§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§9!5§[_loc4_]).update(param1);
            this.§%!i§(_loc5_);
            _loc4_++;
         }
         this.§'!r§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §%!i§(param1:§9!k§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§`!v§)
            {
               ++this.§6!M§;
               if(this.§6!M§ < this.§9!5§.length)
               {
                  this.§9!5§[this.§6!M§].play();
               }
            }
         }
      }
      
      private function §'!r§() : void
      {
         if(this.isCompleted)
         {
            if(!§7f§)
            {
               this.§8_§();
               this.play();
            }
            else if(§try§ != null)
            {
               try
               {
                  §try§();
                  §try§ = null;
               }
               catch(e:Error)
               {
                  §try§ = null;
                  if(!§5l§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
