package §"!-§
{
   import §!!<§.§29§;
   import §!!<§.§`!J§;
   import §0!Y§.DisplayObject;
   import §0!Y§.Sprite;
   import §6!?§.§7!t§;
   import §@"1§.§"h§;
   
   public class §&2§
   {
       
      
      protected var §#!n§:Number;
      
      protected var §1q§:Number;
      
      protected var §%!§:Number;
      
      protected var §;!G§:Number;
      
      protected var §7!b§:int = -1;
      
      protected var §0"§:§7!t§;
      
      protected var §@g§:§7!t§;
      
      protected var §'!c§:§7!t§;
      
      protected var §;h§:int;
      
      protected var §3;§:Number = 0.0;
      
      protected var §2!l§:DisplayObject;
      
      protected var §<!k§:Sprite;
      
      protected var §1C§:Number = 0;
      
      protected var §2-§:Number = 0;
      
      protected var §]!s§:Number = 0.0;
      
      protected var §<q§:Sprite = null;
      
      protected var §%!7§:Boolean = false;
      
      protected var §^!Y§:Boolean = false;
      
      public function §&2§(param1:§7!t§, param2:Sprite, param3:Boolean = false)
      {
         super();
         this.§0"§ = param1;
         this.§<q§ = param2;
         this.§^!Y§ = param3;
         if(this.§^!Y§)
         {
            this.§<q§.scaleX = -this.§<q§.scaleX;
         }
         this.§1-§();
      }
      
      public function get width() : Number
      {
         return this.§#!n§;
      }
      
      public function get height() : Number
      {
         return this.§1q§;
      }
      
      public function get §-!_§() : Number
      {
         return this.§%!§;
      }
      
      protected function §1-§() : void
      {
         if(this.§0"§)
         {
            this.§@g§ = this.§0"§.getSubAnimation(§[-§.§!!6§);
         }
         if(!this.§@g§)
         {
            this.§@g§ = this.§0"§;
         }
         this.setDamageState(0);
         this.§<`§(0);
         if(this.§'!c§)
         {
            this.§2!l§ = this.§'!c§.getFrameWithOffset(0,this.§2!l§);
            if(!this.§2!l§)
            {
               return;
            }
            this.§#!n§ = this.§2!l§.width;
            this.§1q§ = this.§2!l§.height;
            if(this.§<!k§)
            {
               this.§<!k§.addChild(this.§2!l§);
               this.§<q§.addChild(this.§<!k§);
            }
            else
            {
               this.§<q§.addChild(this.§2!l§);
            }
            return;
         }
      }
      
      public function setAnimation(param1:String, param2:Boolean = true) : void
      {
         if(!this.§0"§ || this.§@g§ && this.§@g§.name == param1)
         {
            return;
         }
         this.§@g§ = this.§0"§.getSubAnimation(param1);
         this.§%!7§ = true;
         this.setDamageState(this.§3;§,param2);
      }
      
      protected function §%!&§(param1:Boolean) : void
      {
         this.§]!s§ = 0;
         if(param1 && this.§'!c§)
         {
            this.§]!s§ = Math.random() * this.§'!c§.animationLengthMilliSeconds;
         }
      }
      
      public function dispose() : void
      {
         this.§<q§ = null;
      }
      
      public function §3L§(param1:DisplayObject, param2:Boolean = true) : void
      {
         if(param2)
         {
            this.§<q§.addChild(param1);
         }
         else
         {
            this.§<q§.addChildAt(param1,0);
         }
      }
      
      public function §3W§(param1:DisplayObject) : void
      {
         if(this.§<q§ && param1.parent == this.§<q§)
         {
            this.§<q§.removeChild(param1);
         }
      }
      
      public function §>a§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§%!§ = 1;
            return;
         }
         this.§%!§ = this.§#!n§ / this.§1q§;
         if(this.§%!§ < 1)
         {
            this.§%!§ = 1 / this.§%!§;
         }
         this.§%!§ = Math.min(11,this.§%!§);
      }
      
      public function §8!s§(param1:§`!J§) : void
      {
         var _loc2_:§29§ = null;
         if(param1 is §29§)
         {
            _loc2_ = §29§(param1);
            this.§1C§ = -_loc2_.§0!+§.x / §"h§.§4<§;
            this.§2-§ = -_loc2_.§0!+§.y / §"h§.§4<§;
            if(this.§2!l§)
            {
               this.§2!l§.x = this.§1C§;
               this.§2!l§.y = this.§2-§;
            }
         }
      }
      
      public function setScale(param1:Number) : void
      {
         this.§<q§.scaleX = param1;
         this.§<q§.scaleY = param1;
         if(this.§^!Y§)
         {
            this.§<q§.scaleX = -param1;
         }
      }
      
      protected function §&!Y§() : void
      {
      }
      
      public function get § !J§() : Number
      {
         if(this.§'!c§)
         {
            return this.§'!c§.animationLengthMilliSeconds;
         }
         return 0;
      }
      
      public function update(param1:Number) : void
      {
         if(!this.§0"§)
         {
            return;
         }
         this.§]!s§ += param1;
         if(this.§]!s§ >= this.§'!c§.animationLengthMilliSeconds)
         {
            this.§]!s§ -= this.§'!c§.animationLengthMilliSeconds;
            this.§&!Y§();
         }
         if(this.§%!7§ || this.§'!c§.frameCount > 1)
         {
            this.§%!7§ = false;
            if(this.§'!c§)
            {
               this.§2!l§ = this.§'!c§.getFrameWithOffset(this.§]!s§,this.§2!l§);
               this.§2!l§.x = this.§1C§;
               this.§2!l§.y = this.§2-§;
            }
         }
      }
      
      public function setDamageState(param1:Number, param2:Boolean = true) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         this.§3;§ = param1;
         if(this.§@g§)
         {
            _loc3_ = this.§@g§.subAnimationCount;
            if((_loc4_ = Math.round(param1 * _loc3_)) >= _loc3_)
            {
               _loc4_ = _loc3_ - 1;
            }
            _loc5_ = this.§;h§;
            this.§<`§(_loc4_,param2);
            return _loc4_ > _loc5_;
         }
         return false;
      }
      
      public function §<`§(param1:int, param2:Boolean = true) : void
      {
         if(!this.§@g§)
         {
            return;
         }
         var _loc3_:§7!t§ = this.§'!c§;
         var _loc4_:int = this.§@g§.subAnimationCount;
         if(param1 >= 0 && param1 < _loc4_)
         {
            if(this.§;h§ != param1)
            {
               this.§;h§ = param1;
               this.§%!7§ = true;
            }
            this.§'!c§ = this.§@g§.getSubAnimationFromIndex(param1);
         }
         else
         {
            if(_loc4_ > 0)
            {
               this.§<`§(0,param2);
               return;
            }
            this.§'!c§ = this.§@g§;
         }
         if(this.§'!c§ != _loc3_)
         {
            if(param2)
            {
               this.§]!s§ = Math.random() * this.§'!c§.animationLengthMilliSeconds;
            }
            else
            {
               this.§]!s§ = 0;
            }
         }
      }
   }
}
