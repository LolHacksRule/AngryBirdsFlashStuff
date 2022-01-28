package §'V§
{
   public class static extends §8a§ implements §%!"§
   {
       
      
      private var §4@§:Vector.<§%!"§>;
      
      private var §,!i§:Boolean = true;
      
      private var §,!=§:int = 0;
      
      public function static(param1:Array, param2:Boolean)
      {
         var _loc3_:§%!"§ = null;
         this.§4@§ = new Vector.<§%!"§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§4@§.push(_loc3_);
         }
         this.§,!i§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§%!"§ = null;
         for each(_loc1_ in this.§4@§)
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
         var _loc1_:§%!"§ = null;
         for each(_loc1_ in this.§4@§)
         {
            if(!_loc1_.isPaused)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §^"<§() : int
      {
         if(this.§,!i§)
         {
            return this.§4@§.length;
         }
         if(this.§4@§.length > this.§,!=§)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §]!A§() : int
      {
         if(this.§,!i§)
         {
            return 0;
         }
         return this.§,!=§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§%!"§ = null;
         while(this.§4@§.length > 0)
         {
            _loc1_ = this.§4@§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§%!"§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§4@§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §]!!§() : void
      {
         var _loc1_:§%!"§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§4@§)
            {
               _loc1_.§]!!§();
            }
         }
      }
      
      public function pause() : void
      {
         var _loc1_:§%!"§ = null;
         for each(_loc1_ in this.§4@§)
         {
            _loc1_.pause();
         }
      }
      
      public function play() : void
      {
         var _loc1_:§%!"§ = null;
         for each(_loc1_ in this.§4@§)
         {
            _loc1_.play();
         }
      }
      
      public function §!1§() : void
      {
         var _loc2_:§%!"§ = null;
         §9R§ = -§&l§;
         this.§,!=§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§4@§.length)
         {
            _loc2_ = this.§4@§[_loc1_];
            _loc2_.§!1§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:§%!"§ = null;
         §9R§ += param1;
         if(§9R§ < 0)
         {
            return;
         }
         var _loc2_:int = this.§^"<§;
         var _loc3_:int = this.§]!A§;
         var _loc4_:int = _loc3_;
         while(_loc4_ < _loc3_ + _loc2_)
         {
            (_loc5_ = this.§4@§[_loc4_]).update(param1);
            this.§>!o§(_loc5_);
            _loc4_++;
         }
         this.§6!P§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §>!o§(param1:§%!"§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§,!i§)
            {
               ++this.§,!=§;
               if(this.§,!=§ < this.§4@§.length)
               {
                  this.§4@§[this.§,!=§].play();
               }
            }
         }
      }
      
      private function §6!P§() : void
      {
         if(this.isCompleted)
         {
            if(!§;!n§)
            {
               this.§!1§();
               this.play();
            }
            else if(§,h§ != null)
            {
               try
               {
                  §,h§();
                  §,h§ = null;
               }
               catch(e:Error)
               {
                  §,h§ = null;
                  if(!§!!p§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
