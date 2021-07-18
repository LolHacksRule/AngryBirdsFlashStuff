package §]">§
{
   import §"!&§.§="A§;
   import §"!&§.set;
   import §'4§.§^g§;
   import §4&§.§#r§;
   import §7!8§.DisplayObject;
   import §7!8§.Sprite;
   
   public class §&5§
   {
       
      
      protected var §2!z§:Number;
      
      protected var §@!@§:Number;
      
      protected var §,d§:Number;
      
      protected var §4"%§:Number;
      
      protected var §3";§:int = -1;
      
      protected var §]!k§:§#r§;
      
      protected var §^@§:§#r§;
      
      protected var §@D§:§#r§;
      
      protected var §[6§:int;
      
      protected var §3"D§:Number = 0.0;
      
      protected var §@!]§:DisplayObject;
      
      protected var §;!S§:Sprite;
      
      protected var §^P§:Number = 0;
      
      protected var §#!S§:Number = 0;
      
      protected var §`!'§:Number = 0.0;
      
      protected var §]!$§:Sprite = null;
      
      protected var §7Y§:Boolean = false;
      
      protected var §=B§:Boolean = false;
      
      public function §&5§(param1:§#r§, param2:Sprite, param3:Boolean = false)
      {
         super();
         this.§]!k§ = param1;
         this.§]!$§ = param2;
         this.§=B§ = param3;
         if(this.§=B§)
         {
            this.§]!$§.scaleX = -this.§]!$§.scaleX;
         }
         this.initializeImage();
      }
      
      public function get width() : Number
      {
         return this.§2!z§;
      }
      
      public function get height() : Number
      {
         return this.§@!@§;
      }
      
      public function get §,!D§() : Number
      {
         return this.§,d§;
      }
      
      protected function initializeImage() : void
      {
         this.§^@§ = this.§]!k§.getSubAnimation(§1!0§.§,!Y§);
         if(!this.§^@§)
         {
            this.§^@§ = this.§]!k§;
         }
         this.setDamageState(0);
         this.selectSubAnimation(0);
         if(this.§@D§)
         {
            this.§@!]§ = this.§@D§.getFrameWithOffset(0,this.§@!]§);
            if(!this.§@!]§)
            {
               return;
            }
            this.§2!z§ = this.§@!]§.width;
            this.§@!@§ = this.§@!]§.height;
            if(this.§;!S§)
            {
               this.§;!S§.addChild(this.§@!]§);
               this.§]!$§.addChild(this.§;!S§);
            }
            else
            {
               this.§]!$§.addChild(this.§@!]§);
            }
            return;
         }
      }
      
      public function setAnimation(param1:String, param2:Boolean = true) : void
      {
         if(this.§^@§ && this.§^@§.name == param1)
         {
            return;
         }
         this.§2!0§(param2);
         this.§^@§ = this.§]!k§.getSubAnimation(param1);
         this.§7Y§ = true;
         this.setDamageState(this.§3"D§,param2);
      }
      
      protected function §2!0§(param1:Boolean) : void
      {
         this.§`!'§ = 0;
         if(param1)
         {
            this.§`!'§ = Math.random() * this.§@D§.animationLengthMilliSeconds;
         }
      }
      
      public function dispose() : void
      {
         this.§]!$§ = null;
      }
      
      public function §&Z§(param1:DisplayObject, param2:Boolean = true) : void
      {
         if(param2)
         {
            this.§]!$§.addChild(param1);
         }
         else
         {
            this.§]!$§.addChildAt(param1,0);
         }
      }
      
      public function §]!9§(param1:DisplayObject) : void
      {
         if(this.§]!$§ && param1.parent == this.§]!$§)
         {
            this.§]!$§.removeChild(param1);
         }
      }
      
      public function §0#§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§,d§ = 1;
            return;
         }
         this.§,d§ = this.§2!z§ / this.§@!@§;
         if(this.§,d§ < 1)
         {
            this.§,d§ = 1 / this.§,d§;
         }
         this.§,d§ = Math.min(11,this.§,d§);
      }
      
      public function §>D§(param1:set) : void
      {
         var _loc2_:§="A§ = null;
         if(param1 is §="A§)
         {
            _loc2_ = §="A§(param1);
            this.§^P§ = _loc2_.§="+§.x / §^g§.§5!-§;
            this.§#!S§ = _loc2_.§="+§.y / §^g§.§5!-§;
         }
      }
      
      public function setScale(param1:Number) : void
      {
         this.§]!$§.scaleX = param1;
         this.§]!$§.scaleY = param1;
         if(this.§=B§)
         {
            this.§]!$§.scaleX = -param1;
         }
      }
      
      protected function handleAnimationEnd() : void
      {
      }
      
      public function get §-">§() : Number
      {
         if(this.§@D§)
         {
            return this.§@D§.animationLengthMilliSeconds;
         }
         return 0;
      }
      
      public function update(param1:Number) : void
      {
         if(!this.§]!k§)
         {
            return;
         }
         this.§`!'§ += param1;
         if(this.§`!'§ >= this.§@D§.animationLengthMilliSeconds)
         {
            this.§`!'§ -= this.§@D§.animationLengthMilliSeconds;
            this.handleAnimationEnd();
         }
         if(this.§7Y§ || this.§@D§.frameCount > 1)
         {
            this.§7Y§ = false;
            if(this.§@D§)
            {
               this.§@!]§ = this.§@D§.getFrameWithOffset(this.§`!'§,this.§@!]§);
            }
         }
      }
      
      public function setDamageState(param1:Number, param2:Boolean = true) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         this.§3"D§ = param1;
         if(this.§^@§)
         {
            _loc3_ = this.§^@§.subAnimationCount;
            if((_loc4_ = Math.round(param1 * _loc3_)) >= _loc3_)
            {
               _loc4_ = _loc3_ - 1;
            }
            _loc5_ = this.§[6§;
            this.selectSubAnimation(_loc4_,param2);
            return _loc4_ > _loc5_;
         }
         return false;
      }
      
      public function selectSubAnimation(param1:int, param2:Boolean = true) : void
      {
         var _loc3_:§#r§ = this.§@D§;
         var _loc4_:int = this.§^@§.subAnimationCount;
         if(param1 >= 0 && param1 < _loc4_)
         {
            if(this.§[6§ != param1)
            {
               this.§[6§ = param1;
               this.§7Y§ = true;
            }
            this.§@D§ = this.§^@§.getSubAnimationFromIndex(param1);
         }
         else
         {
            if(_loc4_ > 0)
            {
               this.selectSubAnimation(0,param2);
               return;
            }
            this.§@D§ = this.§^@§;
         }
         if(this.§@D§ != _loc3_)
         {
            if(param2)
            {
               this.§`!'§ = Math.random() * this.§@D§.animationLengthMilliSeconds;
            }
            else
            {
               this.§`!'§ = 0;
            }
         }
      }
   }
}
