package §<!o§
{
   import §'!d§.§^"§;
   import §'4§.§+"C§;
   import §'4§.§^g§;
   import §+!a§.§2!a§;
   import §+!a§.§3!;§;
   import §4&§.§ j§;
   import §4&§.§'!"§;
   import §4&§.§,C§;
   import §5Q§.§^!e§;
   import §7!8§.DisplayObject;
   import §7!8§.Sprite;
   import §7!8§.§`y§;
   import §]K§.§ "G§;
   import flash.geom.Rectangle;
   
   public class §!!q§
   {
       
      
      private var § !J§:int;
      
      private var §#7§:Number;
      
      private var §,!;§:Boolean;
      
      protected var §]!$§:Sprite;
      
      private var §9"6§:Array;
      
      private var §,!'§:Boolean = true;
      
      private var §7!T§:§,C§;
      
      private var §9"$§:Sprite;
      
      private var §^!8§:Sprite;
      
      private var §+!?§:Number;
      
      private var §4J§:Number;
      
      protected var §=T§:Number = 1.0;
      
      protected var §;o§:Number = 0.0;
      
      protected var §+!H§:Number = 0.0;
      
      protected var §8>§:Number = 0.0;
      
      protected var §<!f§:Number = 0.0;
      
      protected var §@f§:Number = 0.0;
      
      protected var §9r§:Number = 0.0;
      
      protected var §`O§:Boolean;
      
      public function §!!q§(param1:§2!a§, param2:Sprite, param3:§,C§, param4:Number)
      {
         this.§9"6§ = [];
         super();
         this.§7!T§ = param3;
         this.§]!$§ = param2;
         this.§#7§ = param1.speed;
         this.§,!;§ = param1.foreground;
         this.initialize(param1,param4);
      }
      
      public function get §"!P§() : Number
      {
         return this.§#7§;
      }
      
      public function get §2a§() : Boolean
      {
         return this.§,!;§;
      }
      
      protected function get §&"'§() : Number
      {
         return this.§ !J§;
      }
      
      protected function initializePivotFromTexture(param1:§'!"§) : void
      {
         this.§+!H§ = param1.pivotY;
         if(!this.§,!;§)
         {
            this.§;o§ = param1.pivotX;
         }
         else
         {
            this.§;o§ = 0;
         }
      }
      
      protected function initializePivotFromComposite(param1:DisplayObject) : void
      {
         var _loc2_:Rectangle = param1.§0!L§;
         this.§+!H§ = _loc2_.bottom;
         this.§;o§ = (_loc2_.left + _loc2_.right) / 2;
      }
      
      protected function § use§(param1:String, param2:Boolean, param3:Number) : void
      {
         var _loc5_:§'!"§ = null;
         var _loc4_:DisplayObject;
         if(!(_loc4_ = § j§.§8!x§(param1,this.§7!T§,param2)))
         {
            if(!(_loc5_ = this.§7!T§.getTexture(param1)))
            {
               return;
            }
            this.§=T§ = param3 * _loc5_.scale;
            this.initializePivotFromTexture(_loc5_);
            this.§ !J§ = _loc5_.width - 2;
         }
         else
         {
            this.§=T§ = param3;
            this.initializePivotFromComposite(_loc4_);
            this.§ !J§ = _loc4_.width - 2;
            _loc4_.dispose();
         }
         this.§ !J§ = Math.round(this.§ !J§);
      }
      
      protected function §=!p§(param1:String, param2:Boolean, param3:int, param4:int) : Sprite
      {
         var _loc7_:DisplayObject = null;
         var _loc8_:Sprite = null;
         var _loc5_:Sprite = new Sprite();
         var _loc6_:int = param3;
         while(_loc6_ <= param4)
         {
            (_loc7_ = this.§^!?§(param1,param2)).x = _loc6_ * this.§ !J§;
            _loc7_.y = 0;
            _loc7_.scaleX = 1;
            _loc7_.scaleY = 1;
            _loc5_.addChild(_loc7_);
            _loc6_++;
         }
         if(§ j§.§=!7§(param1))
         {
            _loc8_ = this.§!"0§(_loc5_);
            _loc5_.§<!7§();
            _loc5_.dispose();
            (_loc5_ = _loc8_).flatten();
         }
         return _loc5_;
      }
      
      private function §!"0§(param1:Sprite) : Sprite
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc2_:Sprite = new Sprite();
         if(param1.numChildren > 0 && param1.getChildAt(0) is Sprite)
         {
            _loc3_ = Sprite(param1.getChildAt(0)).numChildren;
            _loc4_ = _loc3_ - 1;
            while(_loc4_ >= 0)
            {
               _loc5_ = 0;
               while(_loc5_ < param1.numChildren)
               {
                  if(_loc6_ = param1.getChildAt(_loc5_) as Sprite)
                  {
                     _loc7_ = _loc6_.getChildAt(_loc4_);
                     _loc2_.addChildAt(_loc7_,0);
                     _loc7_.x += _loc6_.x;
                  }
                  _loc5_++;
               }
               _loc4_--;
            }
         }
         return _loc2_;
      }
      
      protected function §^!?§(param1:String, param2:Boolean) : DisplayObject
      {
         var _loc4_:§'!"§ = null;
         var _loc3_:DisplayObject = § j§.§8!x§(param1,this.§7!T§,param2);
         if(!_loc3_)
         {
            _loc4_ = this.§7!T§.getTexture(param1);
            _loc3_ = new §`y§(_loc4_.texture,false,param2);
         }
         return _loc3_;
      }
      
      protected function getRepeatCount(param1:Number, param2:int) : int
      {
         return (2 + §^g§.§6!9§ * 1.5 / (param2 * param1)) * 2;
      }
      
      protected function initialize(param1:§2!a§, param2:Number) : void
      {
         var _loc7_:int = 0;
         if(param1.scale != 0)
         {
            this.§=T§ = param1.scale;
         }
         else
         {
            this.§=T§ = 1;
         }
         this.§ use§(param1.spriteName,param1.highQuality,this.§=T§);
         if(this.§ !J§ <= 0)
         {
            return;
         }
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(param1.tileable)
         {
            _loc3_ = -(_loc7_ = this.getRepeatCount(param2,this.§ !J§)) / 2 - 1;
            _loc4_ = -_loc3_ - 1;
            this.§`O§ = true;
         }
         this.§@f§ = param1.xOffset;
         this.§9r§ = param1.yOffset;
         var _loc5_:int = _loc3_;
         while(_loc5_ <= _loc4_)
         {
            this.§'!F§(param1,_loc5_ * this.§ !J§);
            _loc5_++;
         }
         var _loc6_:Sprite = this.§=!p§(param1.spriteName,param1.highQuality,_loc3_,_loc4_);
         this.§]!$§.addChild(_loc6_);
         this.§33§();
         this.§<!v§();
      }
      
      private function §33§() : void
      {
         if(this.§9"$§)
         {
            if(this.§9"$§.numChildren > 0)
            {
               this.§]!$§.addChild(this.§9"$§);
            }
            else
            {
               this.§9"$§.dispose();
               this.§9"$§ = null;
            }
         }
         if(this.§^!8§)
         {
            if(this.§^!8§.numChildren > 0)
            {
               this.§]!$§.addChildAt(this.§^!8§,0);
            }
            else
            {
               this.§^!8§.dispose();
               this.§^!8§ = null;
            }
         }
      }
      
      private function §'!F§(param1:§2!a§, param2:Number) : void
      {
         var _loc4_:§3!;§ = null;
         var _loc5_:§+"C§ = null;
         var _loc6_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < param1.§4i§)
         {
            _loc4_ = param1.§7!s§(_loc3_);
            if((_loc5_ = §^"§.§3h§(_loc4_.id,this.§7!T§)) && _loc5_.§8!n§ > 0)
            {
               _loc5_.x = param2 + _loc4_.x + param1.xOffset;
               _loc5_.y = _loc4_.y;
               _loc5_.scaleX = _loc5_.scaleY = _loc4_.scale;
               _loc5_.rotation = _loc4_.rotation;
               _loc5_.alpha = _loc4_.alpha;
               _loc5_.start();
               §^!e§.§1!P§.add(_loc5_);
               this.§9"6§.push(_loc5_);
               if(_loc4_.§=%§)
               {
                  if(!this.§^!8§)
                  {
                     this.§^!8§ = new Sprite();
                  }
                  this.§^!8§.addChild(_loc5_);
               }
               else
               {
                  if(!this.§9"$§)
                  {
                     this.§9"$§ = new Sprite();
                  }
                  this.§9"$§.addChild(_loc5_);
               }
               _loc6_ = 0;
               while(_loc6_ < _loc4_.fastForwardsAfterAdd)
               {
                  _loc5_.§;";§(1 / 20);
                  _loc6_++;
               }
            }
            else if(_loc5_)
            {
               _loc5_.dispose();
            }
            _loc3_++;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:§ "G§ = null;
         this.§]!$§.§<!7§(0,-1,true);
         for each(_loc1_ in this.§9"6§)
         {
            §^!e§.§1!P§.§;T§(_loc1_);
            _loc1_.dispose();
         }
         this.§9"6§ = [];
         this.§^!8§ = null;
         this.§9"$§ = null;
      }
      
      public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         this.§+!?§ = param1;
         this.§4J§ = param2;
         this.§]!$§.scaleX = this.§=T§;
         this.§]!$§.scaleY = this.§=T§;
         this.§]!$§.x = -param1 * this.§#7§ - this.§;o§ * this.§=T§ + this.§@f§;
         this.§]!$§.y = -param2 - this.§+!H§ * this.§=T§ + this.§9r§;
      }
      
      private function §<!v§() : void
      {
         var _loc1_:§ "G§ = null;
         for each(_loc1_ in this.§9"6§)
         {
            §^!e§.§1!P§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §,N§() : void
      {
         var _loc1_:§ "G§ = null;
         for each(_loc1_ in this.§9"6§)
         {
            §^!e§.§1!P§.§;T§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §]i§(param1:Boolean) : void
      {
         if(param1 == this.§,!'§)
         {
            return;
         }
         this.§,!'§ = param1;
         if(this.§,!'§)
         {
            this.§<!v§();
         }
         else
         {
            this.§,N§();
         }
      }
   }
}
