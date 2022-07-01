package §%Z§
{
   import § 2§.§=+§;
   import §0!_§.§+!?§;
   import §2!s§.§1"'§;
   import §2!s§.§4"1§;
   import §`!B§.DisplayObject;
   import §`!B§.Sprite;
   
   public class §?%§
   {
       
      
      protected var §%!=§:Number;
      
      protected var §0!#§:Number;
      
      protected var §^!L§:Number;
      
      protected var §7!y§:Number;
      
      protected var §]!$§:int = -1;
      
      protected var §3z§:§+!?§;
      
      protected var §>!0§:§+!?§;
      
      protected var §08§:§+!?§;
      
      protected var §7!!§:int;
      
      protected var §"E§:Number = 0.0;
      
      protected var §[!q§:DisplayObject;
      
      protected var §&! §:Sprite;
      
      protected var §'!c§:Number = 0;
      
      protected var §-!S§:Number = 0;
      
      protected var §#0§:Number = 0.0;
      
      protected var § C§:Sprite = null;
      
      protected var §&f§:Boolean = false;
      
      protected var §1"§:Boolean = false;
      
      public function §?%§(param1:§+!?§, param2:Sprite, param3:Boolean = false)
      {
         super();
         this.§3z§ = param1;
         this.§ C§ = param2;
         this.§1"§ = param3;
         if(this.§1"§)
         {
            this.§ C§.scaleX = -this.§ C§.scaleX;
         }
         this.§5A§();
      }
      
      public function get width() : Number
      {
         return this.§%!=§;
      }
      
      public function get height() : Number
      {
         return this.§0!#§;
      }
      
      public function get §5!V§() : Number
      {
         return this.§^!L§;
      }
      
      protected function §5A§() : void
      {
         if(this.§3z§)
         {
            this.§>!0§ = this.§3z§.getSubAnimation(§&!-§.§ !N§);
         }
         if(!this.§>!0§)
         {
            this.§>!0§ = this.§3z§;
         }
         this.setDamageState(0);
         this.§4!D§(0);
         if(this.§08§)
         {
            this.§[!q§ = this.§08§.getFrameWithOffset(0,this.§[!q§);
            if(!this.§[!q§)
            {
               return;
            }
            this.§%!=§ = this.§[!q§.width;
            this.§0!#§ = this.§[!q§.height;
            if(this.§&! §)
            {
               this.§&! §.addChild(this.§[!q§);
               this.§ C§.addChild(this.§&! §);
            }
            else
            {
               this.§ C§.addChild(this.§[!q§);
            }
            return;
         }
      }
      
      public function setAnimation(param1:String, param2:Boolean = true) : void
      {
         if(!this.§3z§ || this.§>!0§ && this.§>!0§.name == param1)
         {
            return;
         }
         this.§>!0§ = this.§3z§.getSubAnimation(param1);
         this.§&f§ = true;
         this.setDamageState(this.§"E§,param2);
      }
      
      protected function §4>§(param1:Boolean) : void
      {
         this.§#0§ = 0;
         if(param1 && this.§08§)
         {
            this.§#0§ = Math.random() * this.§08§.animationLengthMilliSeconds;
         }
      }
      
      public function dispose() : void
      {
         this.§ C§ = null;
      }
      
      public function §^G§(param1:DisplayObject, param2:Boolean = true) : void
      {
         if(param2)
         {
            this.§ C§.addChild(param1);
         }
         else
         {
            this.§ C§.addChildAt(param1,0);
         }
      }
      
      public function §%"2§(param1:DisplayObject) : void
      {
         if(this.§ C§ && param1.parent == this.§ C§)
         {
            this.§ C§.removeChild(param1);
         }
      }
      
      public function §-B§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§^!L§ = 1;
            return;
         }
         this.§^!L§ = this.§%!=§ / this.§0!#§;
         if(this.§^!L§ < 1)
         {
            this.§^!L§ = 1 / this.§^!L§;
         }
         this.§^!L§ = Math.min(11,this.§^!L§);
      }
      
      public function §2"7§(param1:§4"1§) : void
      {
         var _loc2_:§1"'§ = null;
         if(param1 is §1"'§)
         {
            _loc2_ = §1"'§(param1);
            this.§'!c§ = -_loc2_.§3!-§.x / §=+§.§5!w§;
            this.§-!S§ = -_loc2_.§3!-§.y / §=+§.§5!w§;
            if(this.§[!q§)
            {
               this.§[!q§.x = this.§'!c§;
               this.§[!q§.y = this.§-!S§;
            }
         }
      }
      
      public function setScale(param1:Number) : void
      {
         this.§ C§.scaleX = param1;
         this.§ C§.scaleY = param1;
         if(this.§1"§)
         {
            this.§ C§.scaleX = -param1;
         }
      }
      
      public function set color(param1:uint) : void
      {
         if(this.§ C§)
         {
            this.§ C§.color = param1;
         }
      }
      
      protected function §6"'§() : void
      {
      }
      
      public function get §'Q§() : Number
      {
         if(this.§08§)
         {
            return this.§08§.animationLengthMilliSeconds;
         }
         return 0;
      }
      
      public function update(param1:Number) : void
      {
         if(!this.§3z§)
         {
            return;
         }
         this.§#0§ += param1;
         if(this.§#0§ >= this.§08§.animationLengthMilliSeconds)
         {
            this.§#0§ -= this.§08§.animationLengthMilliSeconds;
            this.§6"'§();
         }
         if(this.§&f§ || this.§08§.frameCount > 1)
         {
            this.§&f§ = false;
            if(this.§08§ && this.§[!q§)
            {
               this.§[!q§ = this.§08§.getFrameWithOffset(this.§#0§,this.§[!q§);
               if(this.§[!q§)
               {
                  this.§[!q§.x = this.§'!c§;
                  this.§[!q§.y = this.§-!S§;
               }
            }
         }
      }
      
      public function setDamageState(param1:Number, param2:Boolean = true) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         this.§"E§ = param1;
         if(this.§>!0§)
         {
            _loc3_ = this.§>!0§.subAnimationCount;
            if((_loc4_ = Math.round(param1 * _loc3_)) >= _loc3_)
            {
               _loc4_ = _loc3_ - 1;
            }
            _loc5_ = this.§7!!§;
            this.§4!D§(_loc4_,param2);
            return _loc4_ > _loc5_;
         }
         return false;
      }
      
      public function §4!D§(param1:int, param2:Boolean = true) : void
      {
         if(!this.§>!0§)
         {
            return;
         }
         var _loc3_:§+!?§ = this.§08§;
         var _loc4_:int = this.§>!0§.subAnimationCount;
         if(param1 >= 0 && param1 < _loc4_)
         {
            if(this.§7!!§ != param1)
            {
               this.§7!!§ = param1;
               this.§&f§ = true;
            }
            this.§08§ = this.§>!0§.getSubAnimationFromIndex(param1);
         }
         else
         {
            if(_loc4_ > 0)
            {
               this.§4!D§(0,param2);
               return;
            }
            this.§08§ = this.§>!0§;
         }
         if(this.§08§ != _loc3_)
         {
            if(param2)
            {
               this.§#0§ = Math.random() * this.§08§.animationLengthMilliSeconds;
            }
            else
            {
               this.§#0§ = 0;
            }
         }
      }
      
      public function §@-§() : String
      {
         if(!this.§3z§)
         {
            return "none";
         }
         return this.§3z§.name;
      }
   }
}
