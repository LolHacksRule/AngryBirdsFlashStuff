package §8§#8
{
   import §8"L§.§!!C§;
   import §8"L§.§8g§;
   import §@0§.§%!q§;
   import §^"S§.DisplayObject;
   import §^"S§.Sprite;
   import §`"8§.§0$2§;
   
   public class § "m§
   {
       
      
      protected var §%<§:Number;
      
      protected var §7$#§:Number;
      
      protected var §3"$§:Number;
      
      protected var § !J§:Number;
      
      protected var §,#k§:int = -1;
      
      protected var §&n§:§0$2§;
      
      protected var §#"_§:§0$2§;
      
      protected var §-!G§:§0$2§;
      
      protected var §-"n§:int;
      
      protected var §^$7§:Number = 0.0;
      
      protected var § $9§:DisplayObject;
      
      protected var §<X§:Sprite;
      
      protected var §=#+§:Number = 0;
      
      protected var §5]§:Number = 0;
      
      protected var §4#P§:Number = 0.0;
      
      protected var §4"D§:Sprite = null;
      
      protected var §4!O§:Boolean = false;
      
      protected var §@#7§:Boolean = false;
      
      protected var §;w§:§[#i§;
      
      public function § "m§(param1:§0$2§, param2:Sprite, param3:Boolean = false)
      {
         super();
         this.§&n§ = param1;
         this.§4"D§ = param2;
         this.§@#7§ = param3;
         if(this.§@#7§)
         {
            this.§4"D§.scaleX = -this.§4"D§.scaleX;
         }
         this.initializeImage();
      }
      
      public function get width() : Number
      {
         return this.§%<§;
      }
      
      public function get height() : Number
      {
         return this.§7$#§;
      }
      
      public function get §@$<§() : Number
      {
         return this.§3"$§;
      }
      
      public function set §+#c§(param1:§[#i§) : void
      {
         this.§;w§ = param1;
      }
      
      protected function initializeImage() : void
      {
         if(this.§&n§)
         {
            this.§#"_§ = this.§&n§.getSubAnimation(§4!y§.§<#J§);
         }
         if(!this.§#"_§)
         {
            this.§#"_§ = this.§&n§;
         }
         this.setDamageState(0);
         this.selectSubAnimation(0);
         if(this.§-!G§)
         {
            this.§ $9§ = this.§-!G§.getFrameWithOffset(0,this.§ $9§);
            if(!this.§ $9§)
            {
               return;
            }
            this.§%<§ = this.§ $9§.width;
            this.§7$#§ = this.§ $9§.height;
            if(this.§<X§)
            {
               this.§<X§.addChild(this.§ $9§);
               this.§4"D§.addChild(this.§<X§);
            }
            else
            {
               this.§4"D§.addChild(this.§ $9§);
            }
            return;
         }
      }
      
      public function setAnimation(param1:String, param2:Boolean = true) : void
      {
         if(!this.§&n§ || this.§#"_§ && this.§#"_§.name == param1)
         {
            return;
         }
         this.§#"_§ = this.§&n§.getSubAnimation(param1);
         this.§4!O§ = true;
         this.setDamageState(this.§^$7§,param2);
      }
      
      protected function §8@§(param1:Boolean) : void
      {
         this.§4#P§ = 0;
         if(param1 && this.§-!G§)
         {
            this.§4#P§ = Math.random() * this.§-!G§.animationLengthMilliSeconds;
         }
      }
      
      public function dispose() : void
      {
         this.§4"D§ = null;
      }
      
      public function §+s§(param1:DisplayObject, param2:Boolean = true) : void
      {
         if(param2)
         {
            this.§4"D§.addChild(param1);
         }
         else
         {
            this.§4"D§.addChildAt(param1,0);
         }
      }
      
      public function §,i§(param1:DisplayObject) : void
      {
         if(this.§4"D§ && param1.parent == this.§4"D§)
         {
            this.§4"D§.removeChild(param1);
         }
      }
      
      public function §@#X§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§3"$§ = 1;
            return;
         }
         this.§3"$§ = this.§%<§ / this.§7$#§;
         if(this.§3"$§ < 1)
         {
            this.§3"$§ = 1 / this.§3"$§;
         }
         this.§3"$§ = Math.min(11,this.§3"$§);
      }
      
      public function §##'§(param1:§!!C§) : void
      {
         var _loc2_:§8g§ = null;
         if(param1 is §8g§)
         {
            _loc2_ = §8g§(param1);
            this.§=#+§ = -_loc2_.pivot.x / §%!q§.§6q§;
            this.§5]§ = -_loc2_.pivot.y / §%!q§.§6q§;
            if(this.§ $9§)
            {
               this.§ $9§.x = this.§=#+§;
               this.§ $9§.y = this.§5]§;
            }
         }
      }
      
      public function setScale(param1:Number) : void
      {
         this.§4"D§.scaleX = param1;
         this.§4"D§.scaleY = param1;
         if(this.§@#7§)
         {
            this.§4"D§.scaleX = -param1;
         }
      }
      
      public function set color(param1:uint) : void
      {
         if(this.§4"D§)
         {
            this.§4"D§.color = param1;
         }
      }
      
      protected function §@w§() : void
      {
         if(this.§;w§ && this.§#"_§)
         {
            this.§;w§.§@w§(this.§#"_§.name,this.§-"n§,this.§#"_§.subAnimationCount);
         }
      }
      
      public function get §,#f§() : Number
      {
         if(this.§-!G§)
         {
            return this.§-!G§.animationLengthMilliSeconds;
         }
         return 0;
      }
      
      public function update(param1:Number) : void
      {
         if(!this.§&n§)
         {
            return;
         }
         this.§4#P§ += param1;
         if(this.§4#P§ >= this.§-!G§.animationLengthMilliSeconds)
         {
            if(this.§-!G§.isLooping)
            {
               while(this.§4#P§ >= this.§-!G§.animationLengthMilliSeconds)
               {
                  this.§4#P§ -= this.§-!G§.animationLengthMilliSeconds;
               }
            }
            else
            {
               this.§@w§();
            }
         }
         if(this.§4!O§ || this.§-!G§.frameCount > 1)
         {
            this.§4!O§ = false;
            if(this.§-!G§ && this.§ $9§)
            {
               this.§ $9§ = this.§-!G§.getFrameWithOffset(this.§4#P§,this.§ $9§);
               if(this.§ $9§)
               {
                  this.§ $9§.x = this.§=#+§;
                  this.§ $9§.y = this.§5]§;
               }
            }
         }
      }
      
      public function setDamageState(param1:Number, param2:Boolean = true) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         this.§^$7§ = param1;
         if(this.§#"_§)
         {
            _loc3_ = this.§#"_§.subAnimationCount;
            if((_loc4_ = Math.round(param1 * _loc3_)) >= _loc3_)
            {
               _loc4_ = _loc3_ - 1;
            }
            _loc5_ = this.§-"n§;
            this.selectSubAnimation(_loc4_,param2);
            return _loc4_ > _loc5_;
         }
         return false;
      }
      
      public function selectSubAnimation(param1:int, param2:Boolean = true) : void
      {
         if(!this.§#"_§)
         {
            return;
         }
         var _loc3_:§0$2§ = this.§-!G§;
         var _loc4_:int = this.§#"_§.subAnimationCount;
         if(param1 >= 0 && param1 < _loc4_)
         {
            if(this.§-"n§ != param1)
            {
               this.§-"n§ = param1;
               this.§4!O§ = true;
            }
            this.§-!G§ = this.§#"_§.getSubAnimationFromIndex(param1);
         }
         else
         {
            if(_loc4_ > 0)
            {
               this.selectSubAnimation(0,param2);
               return;
            }
            this.§-!G§ = this.§#"_§;
         }
         if(this.§-!G§ != _loc3_)
         {
            if(param2)
            {
               this.§4#P§ = Math.random() * this.§-!G§.animationLengthMilliSeconds;
            }
            else
            {
               this.§4#P§ = 0;
            }
         }
      }
      
      public function § $6§() : String
      {
         if(!this.§&n§)
         {
            return "none";
         }
         return this.§&n§.name;
      }
      
      public function §+!3§(param1:String) : Boolean
      {
         if(this.§&n§)
         {
            return this.§&n§.hasSubAnimation(param1);
         }
         return false;
      }
      
      public function §&L§(param1:Boolean) : void
      {
         this.§-!G§.§&L§(param1);
      }
      
      public function §-$!§() : String
      {
         if(this.§&n§)
         {
            return this.§&n§.startAnimationName;
         }
         return null;
      }
   }
}
