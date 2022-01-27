package §9"!§
{
   import §&!]§.DisplayObject;
   import §&!]§.Sprite;
   import §3"#§.§`"8§;
   import §3>§.§,!^§;
   import §3>§.§1!'§;
   import §9!v§.§1!_§;
   
   public class §7!"§
   {
       
      
      protected var §<!"§:Number;
      
      protected var §6!H§:Number;
      
      protected var §6"0§:Number;
      
      protected var §^!6§:Number;
      
      protected var §@1§:int = -1;
      
      protected var §?^§:§1!_§;
      
      protected var §["A§:§1!_§;
      
      protected var §&6§:§1!_§;
      
      protected var §4A§:int;
      
      protected var §;1§:Number = 0.0;
      
      protected var §,l§:DisplayObject;
      
      protected var §4B§:Sprite;
      
      protected var §9'§:Number = 0;
      
      protected var §^U§:Number = 0;
      
      protected var §]!e§:Number = 0.0;
      
      protected var §5"'§:Sprite = null;
      
      protected var §do§:Boolean = false;
      
      protected var §5!&§:Boolean = false;
      
      public function §7!"§(param1:§1!_§, param2:Sprite, param3:Boolean = false)
      {
         super();
         this.§?^§ = param1;
         this.§5"'§ = param2;
         this.§5!&§ = param3;
         if(this.§5!&§)
         {
            this.§5"'§.scaleX = -this.§5"'§.scaleX;
         }
         this.initializeImage();
      }
      
      public function get width() : Number
      {
         return this.§<!"§;
      }
      
      public function get height() : Number
      {
         return this.§6!H§;
      }
      
      public function get §+!]§() : Number
      {
         return this.§6"0§;
      }
      
      protected function initializeImage() : void
      {
         this.§["A§ = this.§?^§.getSubAnimation(§^"3§.§4!Z§);
         if(!this.§["A§)
         {
            this.§["A§ = this.§?^§;
         }
         this.setDamageState(0);
         this.selectSubAnimation(0);
         if(this.§&6§)
         {
            this.§,l§ = this.§&6§.getFrameWithOffset(0,this.§,l§);
            if(!this.§,l§)
            {
               return;
            }
            this.§<!"§ = this.§,l§.width;
            this.§6!H§ = this.§,l§.height;
            if(this.§4B§)
            {
               this.§4B§.addChild(this.§,l§);
               this.§5"'§.addChild(this.§4B§);
            }
            else
            {
               this.§5"'§.addChild(this.§,l§);
            }
            return;
         }
      }
      
      public function setAnimation(param1:String, param2:Boolean = true) : void
      {
         if(this.§["A§ && this.§["A§.name == param1)
         {
            return;
         }
         this.§#$§(param2);
         this.§["A§ = this.§?^§.getSubAnimation(param1);
         this.§do§ = true;
         this.setDamageState(this.§;1§,param2);
      }
      
      protected function §#$§(param1:Boolean) : void
      {
         this.§]!e§ = 0;
         if(param1)
         {
            this.§]!e§ = Math.random() * this.§&6§.animationLengthMilliSeconds;
         }
      }
      
      public function dispose() : void
      {
         this.§5"'§ = null;
      }
      
      public function §&!Y§(param1:DisplayObject, param2:Boolean = true) : void
      {
         if(param2)
         {
            this.§5"'§.addChild(param1);
         }
         else
         {
            this.§5"'§.addChildAt(param1,0);
         }
      }
      
      public function §8"E§(param1:DisplayObject) : void
      {
         if(this.§5"'§ && param1.parent == this.§5"'§)
         {
            this.§5"'§.removeChild(param1);
         }
      }
      
      public function §[!§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§6"0§ = 1;
            return;
         }
         this.§6"0§ = this.§<!"§ / this.§6!H§;
         if(this.§6"0§ < 1)
         {
            this.§6"0§ = 1 / this.§6"0§;
         }
         this.§6"0§ = Math.min(11,this.§6"0§);
      }
      
      public function §=!d§(param1:§1!'§) : void
      {
         var _loc2_:§,!^§ = null;
         if(param1 is §,!^§)
         {
            _loc2_ = §,!^§(param1);
            this.§9'§ = _loc2_.§?O§.x / §`"8§.§3!=§;
            this.§^U§ = _loc2_.§?O§.y / §`"8§.§3!=§;
         }
      }
      
      public function setScale(param1:Number) : void
      {
         this.§5"'§.scaleX = param1;
         this.§5"'§.scaleY = param1;
         if(this.§5!&§)
         {
            this.§5"'§.scaleX = -param1;
         }
      }
      
      protected function handleAnimationEnd() : void
      {
      }
      
      public function get §,C§() : Number
      {
         if(this.§&6§)
         {
            return this.§&6§.animationLengthMilliSeconds;
         }
         return 0;
      }
      
      public function update(param1:Number) : void
      {
         if(!this.§?^§)
         {
            return;
         }
         this.§]!e§ += param1;
         if(this.§]!e§ >= this.§&6§.animationLengthMilliSeconds)
         {
            this.§]!e§ -= this.§&6§.animationLengthMilliSeconds;
            this.handleAnimationEnd();
         }
         if(this.§do§ || this.§&6§.frameCount > 1)
         {
            this.§do§ = false;
            if(this.§&6§)
            {
               this.§,l§ = this.§&6§.getFrameWithOffset(this.§]!e§,this.§,l§);
            }
         }
      }
      
      public function setDamageState(param1:Number, param2:Boolean = true) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         this.§;1§ = param1;
         if(this.§["A§)
         {
            _loc3_ = this.§["A§.subAnimationCount;
            if((_loc4_ = Math.round(param1 * _loc3_)) >= _loc3_)
            {
               _loc4_ = _loc3_ - 1;
            }
            _loc5_ = this.§4A§;
            this.selectSubAnimation(_loc4_,param2);
            return _loc4_ > _loc5_;
         }
         return false;
      }
      
      public function selectSubAnimation(param1:int, param2:Boolean = true) : void
      {
         var _loc3_:§1!_§ = this.§&6§;
         var _loc4_:int = this.§["A§.subAnimationCount;
         if(param1 >= 0 && param1 < _loc4_)
         {
            if(this.§4A§ != param1)
            {
               this.§4A§ = param1;
               this.§do§ = true;
            }
            this.§&6§ = this.§["A§.getSubAnimationFromIndex(param1);
         }
         else
         {
            if(_loc4_ > 0)
            {
               this.selectSubAnimation(0,param2);
               return;
            }
            this.§&6§ = this.§["A§;
         }
         if(this.§&6§ != _loc3_)
         {
            if(param2)
            {
               this.§]!e§ = Math.random() * this.§&6§.animationLengthMilliSeconds;
            }
            else
            {
               this.§]!e§ = 0;
            }
         }
      }
   }
}
