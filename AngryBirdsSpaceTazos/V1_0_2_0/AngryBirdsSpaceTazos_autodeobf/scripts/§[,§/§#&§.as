package §[,§
{
   import §'!&§.DisplayObject;
   import §'!&§.Sprite;
   import §8o§.§]!U§;
   import §;"=§.§3!R§;
   import §;"=§.§9!B§;
   import §?!<§.§'!1§;
   
   public class §#&§
   {
       
      
      protected var §6i§:Number;
      
      protected var §>&§:Number;
      
      protected var §&U§:Number;
      
      protected var §8!F§:Number;
      
      protected var §=d§:int = -1;
      
      protected var §"">§:§]!U§;
      
      protected var §[O§:§]!U§;
      
      protected var §+^§:§]!U§;
      
      protected var §"j§:int;
      
      protected var §%!F§:Number = 0.0;
      
      protected var §'"9§:DisplayObject;
      
      protected var §%=§:Sprite;
      
      protected var §[!6§:Number = 0;
      
      protected var §<!R§:Number = 0;
      
      protected var § "=§:Number = 0.0;
      
      protected var §>#§:Sprite = null;
      
      protected var §="#§:Boolean = false;
      
      protected var § !%§:Boolean = false;
      
      public function §#&§(param1:§]!U§, param2:Sprite, param3:Boolean = false)
      {
         super();
         this.§"">§ = param1;
         this.§>#§ = param2;
         this.§ !%§ = param3;
         if(this.§ !%§)
         {
            this.§>#§.scaleX = -this.§>#§.scaleX;
         }
         this.initializeImage();
      }
      
      public function get width() : Number
      {
         return this.§6i§;
      }
      
      public function get height() : Number
      {
         return this.§>&§;
      }
      
      public function get §5!I§() : Number
      {
         return this.§&U§;
      }
      
      protected function initializeImage() : void
      {
         this.§[O§ = this.§"">§.getSubAnimation(§5,§.§+!d§);
         if(!this.§[O§)
         {
            this.§[O§ = this.§"">§;
         }
         this.setDamageState(0);
         this.selectSubAnimation(0);
         if(this.§+^§)
         {
            this.§'"9§ = this.§+^§.getFrameWithOffset(0,this.§'"9§);
            if(!this.§'"9§)
            {
               return;
            }
            this.§6i§ = this.§'"9§.width;
            this.§>&§ = this.§'"9§.height;
            if(this.§%=§)
            {
               this.§%=§.addChild(this.§'"9§);
               this.§>#§.addChild(this.§%=§);
            }
            else
            {
               this.§>#§.addChild(this.§'"9§);
            }
            return;
         }
      }
      
      public function setAnimation(param1:String, param2:Boolean = true) : void
      {
         if(this.§[O§ && this.§[O§.name == param1)
         {
            return;
         }
         this.§7!F§(param2);
         this.§[O§ = this.§"">§.getSubAnimation(param1);
         this.§="#§ = true;
         this.setDamageState(this.§%!F§,param2);
      }
      
      protected function §7!F§(param1:Boolean) : void
      {
         this.§ "=§ = 0;
         if(param1)
         {
            this.§ "=§ = Math.random() * this.§+^§.animationLengthMilliSeconds;
         }
      }
      
      public function dispose() : void
      {
         this.§>#§ = null;
      }
      
      public function §?!Z§(param1:DisplayObject, param2:Boolean = true) : void
      {
         if(param2)
         {
            this.§>#§.addChild(param1);
         }
         else
         {
            this.§>#§.addChildAt(param1,0);
         }
      }
      
      public function §"O§(param1:DisplayObject) : void
      {
         if(this.§>#§ && param1.parent == this.§>#§)
         {
            this.§>#§.removeChild(param1);
         }
      }
      
      public function §>!j§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§&U§ = 1;
            return;
         }
         this.§&U§ = this.§6i§ / this.§>&§;
         if(this.§&U§ < 1)
         {
            this.§&U§ = 1 / this.§&U§;
         }
         this.§&U§ = Math.min(11,this.§&U§);
      }
      
      public function §?!a§(param1:§3!R§) : void
      {
         var _loc2_:§9!B§ = null;
         if(param1 is §9!B§)
         {
            _loc2_ = §9!B§(param1);
            this.§[!6§ = _loc2_.§;y§.x / §'!1§.§<!@§;
            this.§<!R§ = _loc2_.§;y§.y / §'!1§.§<!@§;
         }
      }
      
      public function setScale(param1:Number) : void
      {
         this.§>#§.scaleX = param1;
         this.§>#§.scaleY = param1;
         if(this.§ !%§)
         {
            this.§>#§.scaleX = -param1;
         }
      }
      
      protected function handleAnimationEnd() : void
      {
      }
      
      public function get §-3§() : Number
      {
         if(this.§+^§)
         {
            return this.§+^§.animationLengthMilliSeconds;
         }
         return 0;
      }
      
      public function update(param1:Number) : void
      {
         if(!this.§"">§)
         {
            return;
         }
         this.§ "=§ += param1;
         if(this.§ "=§ >= this.§+^§.animationLengthMilliSeconds)
         {
            this.§ "=§ -= this.§+^§.animationLengthMilliSeconds;
            this.handleAnimationEnd();
         }
         if(this.§="#§ || this.§+^§.frameCount > 1)
         {
            this.§="#§ = false;
            if(this.§+^§)
            {
               this.§'"9§ = this.§+^§.getFrameWithOffset(this.§ "=§,this.§'"9§);
            }
         }
      }
      
      public function setDamageState(param1:Number, param2:Boolean = true) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         this.§%!F§ = param1;
         if(this.§[O§)
         {
            _loc3_ = this.§[O§.subAnimationCount;
            if((_loc4_ = Math.round(param1 * _loc3_)) >= _loc3_)
            {
               _loc4_ = _loc3_ - 1;
            }
            _loc5_ = this.§"j§;
            this.selectSubAnimation(_loc4_,param2);
            return _loc4_ > _loc5_;
         }
         return false;
      }
      
      public function selectSubAnimation(param1:int, param2:Boolean = true) : void
      {
         var _loc3_:§]!U§ = this.§+^§;
         var _loc4_:int = this.§[O§.subAnimationCount;
         if(param1 >= 0 && param1 < _loc4_)
         {
            if(this.§"j§ != param1)
            {
               this.§"j§ = param1;
               this.§="#§ = true;
            }
            this.§+^§ = this.§[O§.getSubAnimationFromIndex(param1);
         }
         else
         {
            if(_loc4_ > 0)
            {
               this.selectSubAnimation(0,param2);
               return;
            }
            this.§+^§ = this.§[O§;
         }
         if(this.§+^§ != _loc3_)
         {
            if(param2)
            {
               this.§ "=§ = Math.random() * this.§+^§.animationLengthMilliSeconds;
            }
            else
            {
               this.§ "=§ = 0;
            }
         }
      }
   }
}
