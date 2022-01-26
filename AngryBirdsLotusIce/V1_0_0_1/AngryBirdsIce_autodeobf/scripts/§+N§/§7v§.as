package §+N§
{
   public class §7v§ extends §!!!§ implements §=!<§
   {
       
      
      private var §`Q§:Vector.<§=!<§>;
      
      private var §1u§:Boolean = true;
      
      private var §[!$§:int = 0;
      
      public function §7v§(param1:Array, param2:Boolean)
      {
         var _loc3_:§=!<§ = null;
         this.§`Q§ = new Vector.<§=!<§>();
         super();
         for each(_loc3_ in param1)
         {
            this.§`Q§.push(_loc3_);
         }
         this.§1u§ = param2;
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc1_:§=!<§ = null;
         for each(_loc1_ in this.§`Q§)
         {
            if(!_loc1_.isCompleted)
            {
               return false;
            }
         }
         return true;
      }
      
      private function get §>y§() : int
      {
         if(this.§1u§)
         {
            return this.§`Q§.length;
         }
         if(this.§`Q§.length > 0)
         {
            return 1;
         }
         return 0;
      }
      
      private function get §;2§() : int
      {
         if(this.§1u§)
         {
            return 0;
         }
         return this.§[!$§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§=!<§ = null;
         while(this.§`Q§.length > 0)
         {
            _loc1_ = this.§`Q§.shift();
            _loc1_.dispose();
         }
      }
      
      public function stop() : void
      {
         var _loc1_:§=!<§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§`Q§)
            {
               _loc1_.stop();
            }
         }
      }
      
      public function §2d§() : void
      {
         var _loc1_:§=!<§ = null;
         if(!this.isCompleted)
         {
            for each(_loc1_ in this.§`Q§)
            {
               _loc1_.§2d§();
            }
         }
      }
      
      public function pause() : void
      {
         var _loc2_:§=!<§ = null;
         var _loc1_:int = this.§>y§ - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§`Q§[_loc1_];
            _loc2_.pause();
            _loc1_--;
         }
      }
      
      public function play() : void
      {
         var _loc2_:§=!<§ = null;
         var _loc1_:int = this.§>y§ - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§`Q§[_loc1_];
            _loc2_.play();
            _loc1_--;
         }
      }
      
      public function §9G§() : void
      {
         var _loc2_:§=!<§ = null;
         §`+§ = -§1!<§;
         this.§[!$§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§`Q§.length)
         {
            _loc2_ = this.§`Q§[_loc1_];
            _loc2_.§9G§();
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var tween:§=!<§ = null;
         var deltaTime:Number = param1;
         §`+§ += deltaTime;
         if(§`+§ < 0)
         {
            return;
         }
         var activeCount:int = this.§>y§;
         var startIndex:int = this.§;2§;
         var i:int = startIndex;
         while(i < startIndex + activeCount)
         {
            try
            {
               tween = this.§`Q§[i];
               tween.update(deltaTime);
               this.§,§(tween);
            }
            catch(e:Error)
            {
            }
            i++;
         }
         this.§7d§();
      }
      
      public function updateState() : void
      {
         this.update(0);
      }
      
      private function §,§(param1:§=!<§) : void
      {
         if(param1.isCompleted)
         {
            if(!this.§1u§)
            {
               ++this.§[!$§;
               if(this.§[!$§ < this.§`Q§.length)
               {
                  this.§`Q§[this.§[!$§].play();
               }
            }
         }
      }
      
      private function §7d§() : void
      {
         if(this.isCompleted)
         {
            if(!§'!1§)
            {
               this.§9G§();
               this.play();
            }
            else if(§6;§ != null)
            {
               try
               {
                  §6;§();
                  §6;§ = null;
               }
               catch(e:Error)
               {
                  §6;§ = null;
                  if(!§]C§)
                  {
                     throw e;
                  }
               }
            }
         }
      }
   }
}
