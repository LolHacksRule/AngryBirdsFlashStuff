package §5"D§
{
   import §3R§.§1!R§;
   import §4"@§.DisplayObject;
   import §4"@§.Sprite;
   import §6!M§.§3!@§;
   import §6!M§.§7r§;
   import §^e§.§^5§;
   
   public class §8r§
   {
       
      
      protected var §5!H§:Number;
      
      protected var §5`§:Number;
      
      protected var §;N§:Number;
      
      protected var §]"<§:Number;
      
      protected var §]!&§:int = -1;
      
      protected var §=O§:§^5§;
      
      protected var §!V§:§^5§;
      
      protected var §7!;§:§^5§;
      
      protected var §^!8§:int;
      
      protected var §6m§:Number = 0.0;
      
      protected var §#!R§:DisplayObject;
      
      protected var § §:Sprite;
      
      protected var §7!,§:Number = 0;
      
      protected var §^@§:Number = 0;
      
      protected var §`>§:Number = 0.0;
      
      protected var §9A§:Sprite = null;
      
      protected var §&!s§:Boolean = false;
      
      protected var §"!T§:Boolean = false;
      
      public function §8r§(param1:§^5§, param2:Sprite, param3:Boolean = false)
      {
         super();
         this.§=O§ = param1;
         this.§9A§ = param2;
         this.§"!T§ = param3;
         if(this.§"!T§)
         {
            this.§9A§.scaleX = -this.§9A§.scaleX;
         }
         this.initializeImage();
      }
      
      public function get width() : Number
      {
         return this.§5!H§;
      }
      
      public function get height() : Number
      {
         return this.§5`§;
      }
      
      public function get § K§() : Number
      {
         return this.§;N§;
      }
      
      protected function initializeImage() : void
      {
         this.§!V§ = this.§=O§.getSubAnimation(§6!!§.§[!;§);
         if(!this.§!V§)
         {
            this.§!V§ = this.§=O§;
         }
         this.setDamageState(0);
         this.selectSubAnimation(0);
         if(this.§7!;§)
         {
            this.§#!R§ = this.§7!;§.getFrameWithOffset(0,this.§#!R§);
            if(!this.§#!R§)
            {
               return;
            }
            this.§5!H§ = this.§#!R§.width;
            this.§5`§ = this.§#!R§.height;
            if(this.§ §)
            {
               this.§ §.addChild(this.§#!R§);
               this.§9A§.addChild(this.§ §);
            }
            else
            {
               this.§9A§.addChild(this.§#!R§);
            }
            return;
         }
      }
      
      public function setAnimation(param1:String, param2:Boolean = true) : void
      {
         if(this.§!V§ && this.§!V§.name == param1)
         {
            return;
         }
         this.§,Q§(param2);
         this.§!V§ = this.§=O§.getSubAnimation(param1);
         this.§&!s§ = true;
         this.setDamageState(this.§6m§,param2);
      }
      
      protected function §,Q§(param1:Boolean) : void
      {
         this.§`>§ = 0;
         if(param1)
         {
            this.§`>§ = Math.random() * this.§7!;§.animationLengthMilliSeconds;
         }
      }
      
      public function dispose() : void
      {
         this.§9A§ = null;
      }
      
      public function §>"-§(param1:DisplayObject, param2:Boolean = true) : void
      {
         if(param2)
         {
            this.§9A§.addChild(param1);
         }
         else
         {
            this.§9A§.addChildAt(param1,0);
         }
      }
      
      public function §8#§(param1:DisplayObject) : void
      {
         if(this.§9A§ && param1.parent == this.§9A§)
         {
            this.§9A§.removeChild(param1);
         }
      }
      
      public function §7!t§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§;N§ = 1;
            return;
         }
         this.§;N§ = this.§5!H§ / this.§5`§;
         if(this.§;N§ < 1)
         {
            this.§;N§ = 1 / this.§;N§;
         }
         this.§;N§ = Math.min(11,this.§;N§);
      }
      
      public function §3!"§(param1:§7r§) : void
      {
         var _loc2_:§3!@§ = null;
         if(param1 is §3!@§)
         {
            _loc2_ = §3!@§(param1);
            this.§7!,§ = _loc2_.§?"3§.x / §1!R§.§00§;
            this.§^@§ = _loc2_.§?"3§.y / §1!R§.§00§;
         }
      }
      
      public function setScale(param1:Number) : void
      {
         this.§9A§.scaleX = param1;
         this.§9A§.scaleY = param1;
         if(this.§"!T§)
         {
            this.§9A§.scaleX = -param1;
         }
      }
      
      protected function handleAnimationEnd() : void
      {
      }
      
      public function get §5!_§() : Number
      {
         if(this.§7!;§)
         {
            return this.§7!;§.animationLengthMilliSeconds;
         }
         return 0;
      }
      
      public function update(param1:Number) : void
      {
         if(!this.§=O§)
         {
            return;
         }
         this.§`>§ += param1;
         if(this.§`>§ >= this.§7!;§.animationLengthMilliSeconds)
         {
            this.§`>§ -= this.§7!;§.animationLengthMilliSeconds;
            this.handleAnimationEnd();
         }
         if(this.§&!s§ || this.§7!;§.frameCount > 1)
         {
            this.§&!s§ = false;
            if(this.§7!;§)
            {
               this.§#!R§ = this.§7!;§.getFrameWithOffset(this.§`>§,this.§#!R§);
            }
         }
      }
      
      public function setDamageState(param1:Number, param2:Boolean = true) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         this.§6m§ = param1;
         if(this.§!V§)
         {
            _loc3_ = this.§!V§.subAnimationCount;
            if((_loc4_ = Math.round(param1 * _loc3_)) >= _loc3_)
            {
               _loc4_ = _loc3_ - 1;
            }
            _loc5_ = this.§^!8§;
            this.selectSubAnimation(_loc4_,param2);
            return _loc4_ > _loc5_;
         }
         return false;
      }
      
      public function selectSubAnimation(param1:int, param2:Boolean = true) : void
      {
         var _loc3_:§^5§ = this.§7!;§;
         var _loc4_:int = this.§!V§.subAnimationCount;
         if(param1 >= 0 && param1 < _loc4_)
         {
            if(this.§^!8§ != param1)
            {
               this.§^!8§ = param1;
               this.§&!s§ = true;
            }
            this.§7!;§ = this.§!V§.getSubAnimationFromIndex(param1);
         }
         else
         {
            if(_loc4_ > 0)
            {
               this.selectSubAnimation(0,param2);
               return;
            }
            this.§7!;§ = this.§!V§;
         }
         if(this.§7!;§ != _loc3_)
         {
            if(param2)
            {
               this.§`>§ = Math.random() * this.§7!;§.animationLengthMilliSeconds;
            }
            else
            {
               this.§`>§ = 0;
            }
         }
      }
   }
}
