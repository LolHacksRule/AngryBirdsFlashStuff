package §2!k§
{
   import § !=§.DisplayObject;
   import § !=§.Sprite;
   import §;L§.§=l§;
   import §[^§.§"!>§;
   import §[^§.§#!?§;
   import §]A§.§[d§;
   
   public class §=!4§
   {
       
      
      protected var §'!8§:Number;
      
      protected var §`"3§:Number;
      
      protected var §=8§:Number;
      
      protected var § a§:Number;
      
      protected var §-S§:int = -1;
      
      protected var §,<§:§=l§;
      
      protected var §?Q§:§=l§;
      
      protected var §%!w§:§=l§;
      
      protected var §8!C§:int;
      
      protected var §=+§:Number = 0.0;
      
      protected var §6F§:DisplayObject;
      
      protected var §;q§:Sprite;
      
      protected var §-0§:Number = 0;
      
      protected var §?;§:Number = 0;
      
      protected var §4A§:Number = 0.0;
      
      protected var §%!D§:Sprite = null;
      
      protected var §;B§:Boolean = false;
      
      protected var §[L§:Boolean = false;
      
      public function §=!4§(param1:§=l§, param2:Sprite, param3:Boolean = false)
      {
         super();
         this.§,<§ = param1;
         this.§%!D§ = param2;
         this.§[L§ = param3;
         if(this.§[L§)
         {
            this.§%!D§.scaleX = -this.§%!D§.scaleX;
         }
         this.§>M§();
      }
      
      public function get width() : Number
      {
         return this.§'!8§;
      }
      
      public function get height() : Number
      {
         return this.§`"3§;
      }
      
      public function get §1H§() : Number
      {
         return this.§=8§;
      }
      
      protected function §>M§() : void
      {
         if(this.§,<§)
         {
            this.§?Q§ = this.§,<§.getSubAnimation(§;;§.§-$§);
         }
         if(!this.§?Q§)
         {
            this.§?Q§ = this.§,<§;
         }
         this.setDamageState(0);
         this.§+Q§(0);
         if(this.§%!w§)
         {
            this.§6F§ = this.§%!w§.getFrameWithOffset(0,this.§6F§);
            if(!this.§6F§)
            {
               return;
            }
            this.§'!8§ = this.§6F§.width;
            this.§`"3§ = this.§6F§.height;
            if(this.§;q§)
            {
               this.§;q§.addChild(this.§6F§);
               this.§%!D§.addChild(this.§;q§);
            }
            else
            {
               this.§%!D§.addChild(this.§6F§);
            }
            return;
         }
      }
      
      public function setAnimation(param1:String, param2:Boolean = true) : void
      {
         if(!this.§,<§ || this.§?Q§ && this.§?Q§.name == param1)
         {
            return;
         }
         this.§?Q§ = this.§,<§.getSubAnimation(param1);
         this.§;B§ = true;
         this.setDamageState(this.§=+§,param2);
      }
      
      protected function §'L§(param1:Boolean) : void
      {
         this.§4A§ = 0;
         if(param1 && this.§%!w§)
         {
            this.§4A§ = Math.random() * this.§%!w§.animationLengthMilliSeconds;
         }
      }
      
      public function dispose() : void
      {
         this.§%!D§ = null;
      }
      
      public function §<!G§(param1:DisplayObject, param2:Boolean = true) : void
      {
         if(param2)
         {
            this.§%!D§.addChild(param1);
         }
         else
         {
            this.§%!D§.addChildAt(param1,0);
         }
      }
      
      public function §[[§(param1:DisplayObject) : void
      {
         if(this.§%!D§ && param1.parent == this.§%!D§)
         {
            this.§%!D§.removeChild(param1);
         }
      }
      
      public function § g§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§=8§ = 1;
            return;
         }
         this.§=8§ = this.§'!8§ / this.§`"3§;
         if(this.§=8§ < 1)
         {
            this.§=8§ = 1 / this.§=8§;
         }
         this.§=8§ = Math.min(11,this.§=8§);
      }
      
      public function §1D§(param1:§#!?§) : void
      {
         var _loc2_:§"!>§ = null;
         if(param1 is §"!>§)
         {
            _loc2_ = §"!>§(param1);
            this.§-0§ = -_loc2_.§@`§.x / §[d§.§]!U§;
            this.§?;§ = -_loc2_.§@`§.y / §[d§.§]!U§;
            if(this.§6F§)
            {
               this.§6F§.x = this.§-0§;
               this.§6F§.y = this.§?;§;
            }
         }
      }
      
      public function setScale(param1:Number) : void
      {
         this.§%!D§.scaleX = param1;
         this.§%!D§.scaleY = param1;
         if(this.§[L§)
         {
            this.§%!D§.scaleX = -param1;
         }
      }
      
      protected function §3l§() : void
      {
      }
      
      public function get §0!v§() : Number
      {
         if(this.§%!w§)
         {
            return this.§%!w§.animationLengthMilliSeconds;
         }
         return 0;
      }
      
      public function update(param1:Number) : void
      {
         if(!this.§,<§)
         {
            return;
         }
         this.§4A§ += param1;
         if(this.§4A§ >= this.§%!w§.animationLengthMilliSeconds)
         {
            this.§4A§ -= this.§%!w§.animationLengthMilliSeconds;
            this.§3l§();
         }
         if(this.§;B§ || this.§%!w§.frameCount > 1)
         {
            this.§;B§ = false;
            if(this.§%!w§)
            {
               this.§6F§ = this.§%!w§.getFrameWithOffset(this.§4A§,this.§6F§);
               this.§6F§.x = this.§-0§;
               this.§6F§.y = this.§?;§;
            }
         }
      }
      
      public function setDamageState(param1:Number, param2:Boolean = true) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         this.§=+§ = param1;
         if(this.§?Q§)
         {
            _loc3_ = this.§?Q§.subAnimationCount;
            if((_loc4_ = Math.round(param1 * _loc3_)) >= _loc3_)
            {
               _loc4_ = _loc3_ - 1;
            }
            _loc5_ = this.§8!C§;
            this.§+Q§(_loc4_,param2);
            return _loc4_ > _loc5_;
         }
         return false;
      }
      
      public function §+Q§(param1:int, param2:Boolean = true) : void
      {
         if(!this.§?Q§)
         {
            return;
         }
         var _loc3_:§=l§ = this.§%!w§;
         var _loc4_:int = this.§?Q§.subAnimationCount;
         if(param1 >= 0 && param1 < _loc4_)
         {
            if(this.§8!C§ != param1)
            {
               this.§8!C§ = param1;
               this.§;B§ = true;
            }
            this.§%!w§ = this.§?Q§.getSubAnimationFromIndex(param1);
         }
         else
         {
            if(_loc4_ > 0)
            {
               this.§+Q§(0,param2);
               return;
            }
            this.§%!w§ = this.§?Q§;
         }
         if(this.§%!w§ != _loc3_)
         {
            if(param2)
            {
               this.§4A§ = Math.random() * this.§%!w§.animationLengthMilliSeconds;
            }
            else
            {
               this.§4A§ = 0;
            }
         }
      }
   }
}
