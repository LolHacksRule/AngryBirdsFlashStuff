package §6"R§
{
   import §1"s§.DisplayObject;
   import §1"s§.Sprite;
   import §3"$§.§[a§;
   import §5!q§.§3"X§;
   import §>P§.§3t§;
   import §>P§.§?"Q§;
   
   public class §2A§
   {
       
      
      protected var §,V§:Number;
      
      protected var §+Y§:Number;
      
      protected var §5"a§:Number;
      
      protected var §7I§:Number;
      
      protected var § !P§:int = -1;
      
      protected var §3-§:§[a§;
      
      protected var §?!p§:§[a§;
      
      protected var §^"=§:§[a§;
      
      protected var §-"f§:int;
      
      protected var §>!E§:Number = 0.0;
      
      protected var §7"+§:DisplayObject;
      
      protected var §9&§:Sprite;
      
      protected var §66§:Number = 0;
      
      protected var §@w§:Number = 0;
      
      protected var §?"g§:Number = 0.0;
      
      protected var § "6§:Sprite = null;
      
      protected var §-5§:Boolean = false;
      
      protected var §,"m§:Boolean = false;
      
      public function §2A§(param1:§[a§, param2:Sprite, param3:Boolean = false)
      {
         super();
         this.§3-§ = param1;
         this.§ "6§ = param2;
         this.§,"m§ = param3;
         if(this.§,"m§)
         {
            this.§ "6§.scaleX = -this.§ "6§.scaleX;
         }
         this.initializeImage();
      }
      
      public function get width() : Number
      {
         return this.§,V§;
      }
      
      public function get height() : Number
      {
         return this.§+Y§;
      }
      
      public function get §!#4§() : Number
      {
         return this.§5"a§;
      }
      
      protected function initializeImage() : void
      {
         if(this.§3-§)
         {
            this.§?!p§ = this.§3-§.getSubAnimation(§4!w§.§-"§);
         }
         if(!this.§?!p§)
         {
            this.§?!p§ = this.§3-§;
         }
         this.setDamageState(0);
         this.selectSubAnimation(0);
         if(this.§^"=§)
         {
            this.§7"+§ = this.§^"=§.getFrameWithOffset(0,this.§7"+§);
            if(!this.§7"+§)
            {
               return;
            }
            this.§,V§ = this.§7"+§.width;
            this.§+Y§ = this.§7"+§.height;
            if(this.§9&§)
            {
               this.§9&§.addChild(this.§7"+§);
               this.§ "6§.addChild(this.§9&§);
            }
            else
            {
               this.§ "6§.addChild(this.§7"+§);
            }
            return;
         }
      }
      
      public function setAnimation(param1:String, param2:Boolean = true) : void
      {
         if(!this.§3-§ || this.§?!p§ && this.§?!p§.name == param1)
         {
            return;
         }
         this.§?!p§ = this.§3-§.getSubAnimation(param1);
         this.§-5§ = true;
         this.setDamageState(this.§>!E§,param2);
      }
      
      protected function §8#6§(param1:Boolean) : void
      {
         this.§?"g§ = 0;
         if(param1 && this.§^"=§)
         {
            this.§?"g§ = Math.random() * this.§^"=§.animationLengthMilliSeconds;
         }
      }
      
      public function dispose() : void
      {
         this.§ "6§ = null;
      }
      
      public function §2P§(param1:DisplayObject, param2:Boolean = true) : void
      {
         if(param2)
         {
            this.§ "6§.addChild(param1);
         }
         else
         {
            this.§ "6§.addChildAt(param1,0);
         }
      }
      
      public function §;"Z§(param1:DisplayObject) : void
      {
         if(this.§ "6§ && param1.parent == this.§ "6§)
         {
            this.§ "6§.removeChild(param1);
         }
      }
      
      public function §5"D§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§5"a§ = 1;
            return;
         }
         this.§5"a§ = this.§,V§ / this.§+Y§;
         if(this.§5"a§ < 1)
         {
            this.§5"a§ = 1 / this.§5"a§;
         }
         this.§5"a§ = Math.min(11,this.§5"a§);
      }
      
      public function §7!D§(param1:§?"Q§) : void
      {
         var _loc2_:§3t§ = null;
         if(param1 is §3t§)
         {
            _loc2_ = §3t§(param1);
            this.§66§ = -_loc2_.§+I§.x / §3"X§.§;"l§;
            this.§@w§ = -_loc2_.§+I§.y / §3"X§.§;"l§;
            if(this.§7"+§)
            {
               this.§7"+§.x = this.§66§;
               this.§7"+§.y = this.§@w§;
            }
         }
      }
      
      public function setScale(param1:Number) : void
      {
         this.§ "6§.scaleX = param1;
         this.§ "6§.scaleY = param1;
         if(this.§,"m§)
         {
            this.§ "6§.scaleX = -param1;
         }
      }
      
      public function set color(param1:uint) : void
      {
         if(this.§ "6§)
         {
            this.§ "6§.color = param1;
         }
      }
      
      protected function handleAnimationEnd() : void
      {
      }
      
      public function get currentAnimationLengthMilliSeconds() : Number
      {
         if(this.§^"=§)
         {
            return this.§^"=§.animationLengthMilliSeconds;
         }
         return 0;
      }
      
      public function update(param1:Number) : void
      {
         if(!this.§3-§)
         {
            return;
         }
         this.§?"g§ += param1;
         if(this.§?"g§ >= this.§^"=§.animationLengthMilliSeconds)
         {
            this.§?"g§ -= this.§^"=§.animationLengthMilliSeconds;
            this.handleAnimationEnd();
         }
         if(this.§-5§ || this.§^"=§.frameCount > 1)
         {
            this.§-5§ = false;
            if(this.§^"=§ && this.§7"+§)
            {
               this.§7"+§ = this.§^"=§.getFrameWithOffset(this.§?"g§,this.§7"+§);
               if(this.§7"+§)
               {
                  this.§7"+§.x = this.§66§;
                  this.§7"+§.y = this.§@w§;
               }
            }
         }
      }
      
      public function setDamageState(param1:Number, param2:Boolean = true) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         this.§>!E§ = param1;
         if(this.§?!p§)
         {
            _loc3_ = this.§?!p§.subAnimationCount;
            if((_loc4_ = Math.round(param1 * _loc3_)) >= _loc3_)
            {
               _loc4_ = _loc3_ - 1;
            }
            _loc5_ = this.§-"f§;
            this.selectSubAnimation(_loc4_,param2);
            return _loc4_ > _loc5_;
         }
         return false;
      }
      
      public function selectSubAnimation(param1:int, param2:Boolean = true) : void
      {
         if(!this.§?!p§)
         {
            return;
         }
         var _loc3_:§[a§ = this.§^"=§;
         var _loc4_:int = this.§?!p§.subAnimationCount;
         if(param1 >= 0 && param1 < _loc4_)
         {
            if(this.§-"f§ != param1)
            {
               this.§-"f§ = param1;
               this.§-5§ = true;
            }
            this.§^"=§ = this.§?!p§.getSubAnimationFromIndex(param1);
         }
         else
         {
            if(_loc4_ > 0)
            {
               this.selectSubAnimation(0,param2);
               return;
            }
            this.§^"=§ = this.§?!p§;
         }
         if(this.§^"=§ != _loc3_)
         {
            if(param2)
            {
               this.§?"g§ = Math.random() * this.§^"=§.animationLengthMilliSeconds;
            }
            else
            {
               this.§?"g§ = 0;
            }
         }
      }
      
      public function getCurrentAnimationName() : String
      {
         if(!this.§3-§)
         {
            return "none";
         }
         return this.§3-§.name;
      }
   }
}
