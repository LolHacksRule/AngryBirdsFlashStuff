package §>!5§
{
   import §&!v§.DisplayObject;
   import §&!v§.Sprite;
   import §+!C§.§!!S§;
   import §7!j§.§8#B§;
   import §7"&§.§>#H§;
   import §7"&§.§]"k§;
   
   public class §!;§
   {
       
      
      protected var §^!"§:Number;
      
      protected var §!!2§:Number;
      
      protected var §6!c§:Number;
      
      protected var §'"V§:Number;
      
      protected var § "j§:int = -1;
      
      protected var § @§:§8#B§;
      
      protected var §5"7§:§8#B§;
      
      protected var §`$"§:§8#B§;
      
      protected var §@3§:int;
      
      protected var §##_§:Number = 0.0;
      
      protected var §;"6§:DisplayObject;
      
      protected var §2"n§:Sprite;
      
      protected var §<!1§:Number = 0;
      
      protected var §^#N§:Number = 0;
      
      protected var §=!Y§:Number = 0.0;
      
      protected var §'$&§:Sprite = null;
      
      protected var §]#h§:Boolean = false;
      
      protected var §0!`§:Boolean = false;
      
      protected var §?"N§:§!#r§;
      
      public function §!;§(param1:§8#B§, param2:Sprite, param3:Boolean = false)
      {
         super();
         this.§ @§ = param1;
         this.§'$&§ = param2;
         this.§0!`§ = param3;
         if(this.§0!`§)
         {
            this.§'$&§.scaleX = -this.§'$&§.scaleX;
         }
         this.initializeImage();
      }
      
      public function get width() : Number
      {
         return this.§^!"§;
      }
      
      public function get height() : Number
      {
         return this.§!!2§;
      }
      
      public function get §>"0§() : Number
      {
         return this.§6!c§;
      }
      
      public function set §'!R§(param1:§!#r§) : void
      {
         this.§?"N§ = param1;
      }
      
      protected function initializeImage() : void
      {
         if(this.§ @§)
         {
            this.§5"7§ = this.§ @§.getSubAnimation(§^"9§.§5!G§);
         }
         if(!this.§5"7§)
         {
            this.§5"7§ = this.§ @§;
         }
         this.setDamageState(0);
         this.selectSubAnimation(0);
         if(this.§`$"§)
         {
            this.§;"6§ = this.§`$"§.getFrameWithOffset(0,this.§;"6§);
            if(!this.§;"6§)
            {
               return;
            }
            this.§^!"§ = this.§;"6§.width;
            this.§!!2§ = this.§;"6§.height;
            if(this.§2"n§)
            {
               this.§2"n§.addChild(this.§;"6§);
               this.§'$&§.addChild(this.§2"n§);
            }
            else
            {
               this.§'$&§.addChild(this.§;"6§);
            }
            return;
         }
      }
      
      public function setAnimation(param1:String, param2:Boolean = true) : void
      {
         if(!this.§ @§ || this.§5"7§ && this.§5"7§.name == param1)
         {
            return;
         }
         this.§5"7§ = this.§ @§.getSubAnimation(param1);
         this.§]#h§ = true;
         this.setDamageState(this.§##_§,param2);
      }
      
      protected function §<#d§(param1:Boolean) : void
      {
         this.§=!Y§ = 0;
         if(param1 && this.§`$"§)
         {
            this.§=!Y§ = Math.random() * this.§`$"§.animationLengthMilliSeconds;
         }
      }
      
      public function dispose() : void
      {
         this.§'$&§ = null;
      }
      
      public function §3!`§(param1:DisplayObject, param2:Boolean = true) : void
      {
         if(param2)
         {
            this.§'$&§.addChild(param1);
         }
         else
         {
            this.§'$&§.addChildAt(param1,0);
         }
      }
      
      public function §3!X§(param1:DisplayObject) : void
      {
         if(this.§'$&§ && param1.parent == this.§'$&§)
         {
            this.§'$&§.removeChild(param1);
         }
      }
      
      public function §[#v§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§6!c§ = 1;
            return;
         }
         this.§6!c§ = this.§^!"§ / this.§!!2§;
         if(this.§6!c§ < 1)
         {
            this.§6!c§ = 1 / this.§6!c§;
         }
         this.§6!c§ = Math.min(11,this.§6!c§);
      }
      
      public function §'!,§(param1:§]"k§) : void
      {
         var _loc2_:§>#H§ = null;
         if(param1 is §>#H§)
         {
            _loc2_ = §>#H§(param1);
            this.§<!1§ = -_loc2_.pivot.x / §!!S§.§,"3§;
            this.§^#N§ = -_loc2_.pivot.y / §!!S§.§,"3§;
            if(this.§;"6§)
            {
               this.§;"6§.x = this.§<!1§;
               this.§;"6§.y = this.§^#N§;
            }
         }
      }
      
      public function setScale(param1:Number) : void
      {
         this.§'$&§.scaleX = param1;
         this.§'$&§.scaleY = param1;
         if(this.§0!`§)
         {
            this.§'$&§.scaleX = -param1;
         }
      }
      
      public function set color(param1:uint) : void
      {
         if(this.§'$&§)
         {
            this.§'$&§.color = param1;
         }
      }
      
      protected function §##F§() : void
      {
         if(this.§?"N§ && this.§5"7§)
         {
            this.§?"N§.§##F§(this.§5"7§.name,this.§@3§,this.§5"7§.subAnimationCount);
         }
      }
      
      public function get §^y§() : Number
      {
         if(this.§`$"§)
         {
            return this.§`$"§.animationLengthMilliSeconds;
         }
         return 0;
      }
      
      public function update(param1:Number) : void
      {
         if(!this.§ @§)
         {
            return;
         }
         this.§=!Y§ += param1;
         if(this.§=!Y§ >= this.§`$"§.animationLengthMilliSeconds)
         {
            if(this.§`$"§.isLooping)
            {
               while(this.§=!Y§ >= this.§`$"§.animationLengthMilliSeconds)
               {
                  this.§=!Y§ -= this.§`$"§.animationLengthMilliSeconds;
               }
            }
            else
            {
               this.§##F§();
            }
         }
         if(this.§]#h§ || this.§`$"§.frameCount > 1)
         {
            this.§]#h§ = false;
            if(this.§`$"§ && this.§;"6§)
            {
               this.§;"6§ = this.§`$"§.getFrameWithOffset(this.§=!Y§,this.§;"6§);
               if(this.§;"6§)
               {
                  this.§;"6§.x = this.§<!1§;
                  this.§;"6§.y = this.§^#N§;
               }
            }
         }
      }
      
      public function setDamageState(param1:Number, param2:Boolean = true) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         this.§##_§ = param1;
         if(this.§5"7§)
         {
            _loc3_ = this.§5"7§.subAnimationCount;
            if((_loc4_ = Math.round(param1 * _loc3_)) >= _loc3_)
            {
               _loc4_ = _loc3_ - 1;
            }
            _loc5_ = this.§@3§;
            this.selectSubAnimation(_loc4_,param2);
            return _loc4_ > _loc5_;
         }
         return false;
      }
      
      public function selectSubAnimation(param1:int, param2:Boolean = true) : void
      {
         if(!this.§5"7§)
         {
            return;
         }
         var _loc3_:§8#B§ = this.§`$"§;
         var _loc4_:int = this.§5"7§.subAnimationCount;
         if(param1 >= 0 && param1 < _loc4_)
         {
            if(this.§@3§ != param1)
            {
               this.§@3§ = param1;
               this.§]#h§ = true;
            }
            this.§`$"§ = this.§5"7§.getSubAnimationFromIndex(param1);
         }
         else
         {
            if(_loc4_ > 0)
            {
               this.selectSubAnimation(0,param2);
               return;
            }
            this.§`$"§ = this.§5"7§;
         }
         if(this.§`$"§ != _loc3_)
         {
            if(param2)
            {
               this.§=!Y§ = Math.random() * this.§`$"§.animationLengthMilliSeconds;
            }
            else
            {
               this.§=!Y§ = 0;
            }
         }
      }
      
      public function §+a§() : String
      {
         if(!this.§ @§)
         {
            return "none";
         }
         return this.§ @§.name;
      }
      
      public function §-$7§(param1:String) : Boolean
      {
         if(this.§ @§)
         {
            return this.§ @§.hasSubAnimation(param1);
         }
         return false;
      }
      
      public function §%"[§(param1:Boolean) : void
      {
         this.§`$"§.§%"[§(param1);
      }
      
      public function §,"f§() : String
      {
         if(this.§ @§)
         {
            return this.§ @§.startAnimationName;
         }
         return null;
      }
   }
}
