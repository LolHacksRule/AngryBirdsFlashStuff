package §"P§
{
   import §!"+§.§ !S§;
   import §!"+§.§2N§;
   import §-![§.DisplayObject;
   import §-![§.Sprite;
   import §6`§.§-!i§;
   import §9G§.§2F§;
   
   public class §!!_§
   {
       
      
      protected var §-!M§:Number;
      
      protected var §-#§:Number;
      
      protected var § set§:Number;
      
      protected var §+?§:Number;
      
      protected var §1!9§:int = -1;
      
      protected var §!r§:§-!i§;
      
      protected var §#c§:§-!i§;
      
      protected var §3J§:§-!i§;
      
      protected var §#!?§:int;
      
      protected var §2!B§:Number = 0.0;
      
      protected var §1"3§:DisplayObject;
      
      protected var § !&§:Sprite;
      
      protected var §8<§:Number = 0;
      
      protected var §,"&§:Number = 0;
      
      protected var §,!@§:Number = 0.0;
      
      protected var §[<§:Sprite = null;
      
      protected var §04§:Boolean = false;
      
      protected var §4"0§:Boolean = false;
      
      public function §!!_§(param1:§-!i§, param2:Sprite, param3:Boolean = false)
      {
         super();
         this.§!r§ = param1;
         this.§[<§ = param2;
         this.§4"0§ = param3;
         if(this.§4"0§)
         {
            this.§[<§.scaleX = -this.§[<§.scaleX;
         }
         this.§="1§();
      }
      
      public function get width() : Number
      {
         return this.§-!M§;
      }
      
      public function get height() : Number
      {
         return this.§-#§;
      }
      
      public function get §5K§() : Number
      {
         return this.§ set§;
      }
      
      protected function §="1§() : void
      {
         if(this.§!r§)
         {
            this.§#c§ = this.§!r§.getSubAnimation(§^!x§.§!#§);
         }
         if(!this.§#c§)
         {
            this.§#c§ = this.§!r§;
         }
         this.setDamageState(0);
         this.§-"7§(0);
         if(this.§3J§)
         {
            this.§1"3§ = this.§3J§.getFrameWithOffset(0,this.§1"3§);
            if(!this.§1"3§)
            {
               return;
            }
            this.§-!M§ = this.§1"3§.width;
            this.§-#§ = this.§1"3§.height;
            if(this.§ !&§)
            {
               this.§ !&§.addChild(this.§1"3§);
               this.§[<§.addChild(this.§ !&§);
            }
            else
            {
               this.§[<§.addChild(this.§1"3§);
            }
            return;
         }
      }
      
      public function setAnimation(param1:String, param2:Boolean = true) : void
      {
         if(!this.§!r§ || this.§#c§ && this.§#c§.name == param1)
         {
            return;
         }
         this.§#c§ = this.§!r§.getSubAnimation(param1);
         this.§04§ = true;
         this.setDamageState(this.§2!B§,param2);
      }
      
      protected function §%!t§(param1:Boolean) : void
      {
         this.§,!@§ = 0;
         if(param1 && this.§3J§)
         {
            this.§,!@§ = Math.random() * this.§3J§.animationLengthMilliSeconds;
         }
      }
      
      public function dispose() : void
      {
         this.§[<§ = null;
      }
      
      public function §4N§(param1:DisplayObject, param2:Boolean = true) : void
      {
         if(param2)
         {
            this.§[<§.addChild(param1);
         }
         else
         {
            this.§[<§.addChildAt(param1,0);
         }
      }
      
      public function §0!X§(param1:DisplayObject) : void
      {
         if(this.§[<§ && param1.parent == this.§[<§)
         {
            this.§[<§.removeChild(param1);
         }
      }
      
      public function §!@§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§ set§ = 1;
            return;
         }
         this.§ set§ = this.§-!M§ / this.§-#§;
         if(this.§ set§ < 1)
         {
            this.§ set§ = 1 / this.§ set§;
         }
         this.§ set§ = Math.min(11,this.§ set§);
      }
      
      public function §&]§(param1:§ !S§) : void
      {
         var _loc2_:§2N§ = null;
         if(param1 is §2N§)
         {
            _loc2_ = §2N§(param1);
            this.§8<§ = -_loc2_.§&T§.x / §2F§.§6+§;
            this.§,"&§ = -_loc2_.§&T§.y / §2F§.§6+§;
            if(this.§1"3§)
            {
               this.§1"3§.x = this.§8<§;
               this.§1"3§.y = this.§,"&§;
            }
         }
      }
      
      public function setScale(param1:Number) : void
      {
         this.§[<§.scaleX = param1;
         this.§[<§.scaleY = param1;
         if(this.§4"0§)
         {
            this.§[<§.scaleX = -param1;
         }
      }
      
      protected function §5!+§() : void
      {
      }
      
      public function get §""8§() : Number
      {
         if(this.§3J§)
         {
            return this.§3J§.animationLengthMilliSeconds;
         }
         return 0;
      }
      
      public function update(param1:Number) : void
      {
         if(!this.§!r§)
         {
            return;
         }
         this.§,!@§ += param1;
         if(this.§,!@§ >= this.§3J§.animationLengthMilliSeconds)
         {
            this.§,!@§ -= this.§3J§.animationLengthMilliSeconds;
            this.§5!+§();
         }
         if(this.§04§ || this.§3J§.frameCount > 1)
         {
            this.§04§ = false;
            if(this.§3J§ && this.§1"3§)
            {
               this.§1"3§ = this.§3J§.getFrameWithOffset(this.§,!@§,this.§1"3§);
               if(this.§1"3§)
               {
                  this.§1"3§.x = this.§8<§;
                  this.§1"3§.y = this.§,"&§;
               }
            }
         }
      }
      
      public function setDamageState(param1:Number, param2:Boolean = true) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         this.§2!B§ = param1;
         if(this.§#c§)
         {
            _loc3_ = this.§#c§.subAnimationCount;
            if((_loc4_ = Math.round(param1 * _loc3_)) >= _loc3_)
            {
               _loc4_ = _loc3_ - 1;
            }
            _loc5_ = this.§#!?§;
            this.§-"7§(_loc4_,param2);
            return _loc4_ > _loc5_;
         }
         return false;
      }
      
      public function §-"7§(param1:int, param2:Boolean = true) : void
      {
         if(!this.§#c§)
         {
            return;
         }
         var _loc3_:§-!i§ = this.§3J§;
         var _loc4_:int = this.§#c§.subAnimationCount;
         if(param1 >= 0 && param1 < _loc4_)
         {
            if(this.§#!?§ != param1)
            {
               this.§#!?§ = param1;
               this.§04§ = true;
            }
            this.§3J§ = this.§#c§.getSubAnimationFromIndex(param1);
         }
         else
         {
            if(_loc4_ > 0)
            {
               this.§-"7§(0,param2);
               return;
            }
            this.§3J§ = this.§#c§;
         }
         if(this.§3J§ != _loc3_)
         {
            if(param2)
            {
               this.§,!@§ = Math.random() * this.§3J§.animationLengthMilliSeconds;
            }
            else
            {
               this.§,!@§ = 0;
            }
         }
      }
      
      public function §%A§() : String
      {
         if(!this.§!r§)
         {
            return "none";
         }
         return this.§!r§.name;
      }
   }
}
