package §[#a§
{
   import §52§.§#!,§;
   import §9$§.DisplayObject;
   import §9$§.Sprite;
   import §@"§.§`"W§;
   import §`#C§.§-"L§;
   import §`#C§.§3#U§;
   
   public class §]#m§
   {
       
      
      protected var §%"x§:Number;
      
      protected var §<#§:Number;
      
      protected var §%#y§:Number;
      
      protected var §@#!§:Number;
      
      protected var §`!L§:int = -1;
      
      protected var §"!c§:§`"W§;
      
      protected var §2#>§:§`"W§;
      
      protected var §0v§:§`"W§;
      
      protected var §>7§:int;
      
      protected var §<">§:Number = 0.0;
      
      protected var §#P§:DisplayObject;
      
      protected var §]@§:Sprite;
      
      protected var §&"K§:Number = 0;
      
      protected var §?!'§:Number = 0;
      
      protected var §%!L§:Number = 0.0;
      
      protected var §]Y§:Sprite = null;
      
      protected var §[$-§:Boolean = false;
      
      protected var §5$-§:Boolean = false;
      
      protected var §0!x§:§%"<§;
      
      public function §]#m§(param1:§`"W§, param2:Sprite, param3:Boolean = false)
      {
         super();
         this.§"!c§ = param1;
         this.§]Y§ = param2;
         this.§5$-§ = param3;
         if(this.§5$-§)
         {
            this.§]Y§.scaleX = -this.§]Y§.scaleX;
         }
         this.initializeImage();
      }
      
      public function get width() : Number
      {
         return this.§%"x§;
      }
      
      public function get height() : Number
      {
         return this.§<#§;
      }
      
      public function get §[$%§() : Number
      {
         return this.§%#y§;
      }
      
      public function set §<q§(param1:§%"<§) : void
      {
         this.§0!x§ = param1;
      }
      
      protected function initializeImage() : void
      {
         if(this.§"!c§)
         {
            this.§2#>§ = this.§"!c§.getSubAnimation(§="@§.§0!V§);
         }
         if(!this.§2#>§)
         {
            this.§2#>§ = this.§"!c§;
         }
         this.setDamageState(0);
         this.selectSubAnimation(0);
         if(this.§0v§)
         {
            this.§#P§ = this.§0v§.getFrameWithOffset(0,this.§#P§);
            if(!this.§#P§)
            {
               return;
            }
            this.§%"x§ = this.§#P§.width;
            this.§<#§ = this.§#P§.height;
            if(this.§]@§)
            {
               this.§]@§.addChild(this.§#P§);
               this.§]Y§.addChild(this.§]@§);
            }
            else
            {
               this.§]Y§.addChild(this.§#P§);
            }
            return;
         }
      }
      
      public function setAnimation(param1:String, param2:Boolean = true) : void
      {
         if(!this.§"!c§ || this.§2#>§ && this.§2#>§.name == param1)
         {
            return;
         }
         this.§2#>§ = this.§"!c§.getSubAnimation(param1);
         this.§[$-§ = true;
         this.setDamageState(this.§<">§,param2);
      }
      
      protected function §["V§(param1:Boolean) : void
      {
         this.§%!L§ = 0;
         if(param1 && this.§0v§)
         {
            this.§%!L§ = Math.random() * this.§0v§.animationLengthMilliSeconds;
         }
      }
      
      public function dispose() : void
      {
         this.§]Y§ = null;
      }
      
      public function §3!p§(param1:DisplayObject, param2:Boolean = true) : void
      {
         if(param2)
         {
            this.§]Y§.addChild(param1);
         }
         else
         {
            this.§]Y§.addChildAt(param1,0);
         }
      }
      
      public function § "f§(param1:DisplayObject) : void
      {
         if(this.§]Y§ && param1.parent == this.§]Y§)
         {
            this.§]Y§.removeChild(param1);
         }
      }
      
      public function §[&§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§%#y§ = 1;
            return;
         }
         this.§%#y§ = this.§%"x§ / this.§<#§;
         if(this.§%#y§ < 1)
         {
            this.§%#y§ = 1 / this.§%#y§;
         }
         this.§%#y§ = Math.min(11,this.§%#y§);
      }
      
      public function §2"n§(param1:§-"L§) : void
      {
         var _loc2_:§3#U§ = null;
         if(param1 is §3#U§)
         {
            _loc2_ = §3#U§(param1);
            this.§&"K§ = -_loc2_.pivot.x / §#!,§.§?$#§;
            this.§?!'§ = -_loc2_.pivot.y / §#!,§.§?$#§;
            if(this.§#P§)
            {
               this.§#P§.x = this.§&"K§;
               this.§#P§.y = this.§?!'§;
            }
         }
      }
      
      public function setScale(param1:Number) : void
      {
         this.§]Y§.scaleX = param1;
         this.§]Y§.scaleY = param1;
         if(this.§5$-§)
         {
            this.§]Y§.scaleX = -param1;
         }
      }
      
      public function set color(param1:uint) : void
      {
         if(this.§]Y§)
         {
            this.§]Y§.color = param1;
         }
      }
      
      protected function §]#@§() : void
      {
         if(this.§0!x§ && this.§2#>§)
         {
            this.§0!x§.§]#@§(this.§2#>§.name,this.§>7§,this.§2#>§.subAnimationCount);
         }
      }
      
      public function get §1#h§() : Number
      {
         if(this.§0v§)
         {
            return this.§0v§.animationLengthMilliSeconds;
         }
         return 0;
      }
      
      public function update(param1:Number) : void
      {
         if(!this.§"!c§)
         {
            return;
         }
         this.§%!L§ += param1;
         if(this.§%!L§ >= this.§0v§.animationLengthMilliSeconds)
         {
            this.§%!L§ -= this.§0v§.animationLengthMilliSeconds;
            this.§]#@§();
         }
         if(this.§[$-§ || this.§0v§.frameCount > 1)
         {
            this.§[$-§ = false;
            if(this.§0v§ && this.§#P§)
            {
               this.§#P§ = this.§0v§.getFrameWithOffset(this.§%!L§,this.§#P§);
               if(this.§#P§)
               {
                  this.§#P§.x = this.§&"K§;
                  this.§#P§.y = this.§?!'§;
               }
            }
         }
      }
      
      public function setDamageState(param1:Number, param2:Boolean = true) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         this.§<">§ = param1;
         if(this.§2#>§)
         {
            _loc3_ = this.§2#>§.subAnimationCount;
            if((_loc4_ = Math.round(param1 * _loc3_)) >= _loc3_)
            {
               _loc4_ = _loc3_ - 1;
            }
            _loc5_ = this.§>7§;
            this.selectSubAnimation(_loc4_,param2);
            return _loc4_ > _loc5_;
         }
         return false;
      }
      
      public function selectSubAnimation(param1:int, param2:Boolean = true) : void
      {
         if(!this.§2#>§)
         {
            return;
         }
         var _loc3_:§`"W§ = this.§0v§;
         var _loc4_:int = this.§2#>§.subAnimationCount;
         if(param1 >= 0 && param1 < _loc4_)
         {
            if(this.§>7§ != param1)
            {
               this.§>7§ = param1;
               this.§[$-§ = true;
            }
            this.§0v§ = this.§2#>§.getSubAnimationFromIndex(param1);
         }
         else
         {
            if(_loc4_ > 0)
            {
               this.selectSubAnimation(0,param2);
               return;
            }
            this.§0v§ = this.§2#>§;
         }
         if(this.§0v§ != _loc3_)
         {
            if(param2)
            {
               this.§%!L§ = Math.random() * this.§0v§.animationLengthMilliSeconds;
            }
            else
            {
               this.§%!L§ = 0;
            }
         }
      }
      
      public function §8!O§() : String
      {
         if(!this.§"!c§)
         {
            return "none";
         }
         return this.§"!c§.name;
      }
      
      public function §#"N§(param1:String) : Boolean
      {
         if(this.§"!c§)
         {
            return this.§"!c§.hasSubAnimation(param1);
         }
         return false;
      }
      
      public function §?r§(param1:Boolean) : void
      {
         this.§0v§.§?r§(param1);
      }
   }
}
