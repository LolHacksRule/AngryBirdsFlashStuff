package §9#@§
{
   import §!!U§.§#"t§;
   import §!!U§.DisplayObject;
   import §!!U§.Sprite;
   import §&#H§.§3#J§;
   import §,!#§.§5"N§;
   import §1#M§.§'!]§;
   import §69§.§>!b§;
   import §69§.§`"-§;
   import §7!F§.§7§;
   import §7!F§.§8!W§;
   import §7!F§.§^"U§;
   import §^#>§.§#_§;
   import §^#>§.§-#D§;
   import flash.geom.Rectangle;
   
   public class §2"A§
   {
       
      
      private var §1"r§:int;
      
      private var §>!t§:Number;
      
      private var §;w§:Boolean;
      
      protected var §%G§:Sprite;
      
      private var §9"l§:Array;
      
      private var §4"!§:Boolean = true;
      
      private var §6V§:§7#5§;
      
      private var §,"p§:Sprite;
      
      private var §9"B§:Sprite;
      
      private var §`!j§:Number;
      
      private var §8"R§:Number;
      
      protected var §8"2§:Number = 1.0;
      
      protected var §%!<§:Number = 0.0;
      
      protected var §=!C§:Number = 0.0;
      
      protected var §[!4§:Number = 0.0;
      
      protected var §6"?§:Number = 0.0;
      
      protected var §2x§:Number = 0.0;
      
      protected var §+"v§:Number = 0.0;
      
      protected var §;O§:Boolean;
      
      public function §2"A§(param1:§>!b§, param2:Sprite, param3:§7#5§, param4:Number)
      {
         this.§9"l§ = [];
         super();
         this.§6V§ = param3;
         this.§%G§ = param2;
         this.§>!t§ = param1.speed;
         this.§;w§ = param1.foreground;
         this.initialize(param1,param4);
      }
      
      public function get §6Y§() : Number
      {
         return this.§>!t§;
      }
      
      public function get §;&§() : Boolean
      {
         return this.§;w§;
      }
      
      protected function get §,,§() : Number
      {
         return this.§1"r§;
      }
      
      protected function initializePivotFromTexture(param1:§8!W§) : void
      {
         this.§=!C§ = param1.pivotY;
         if(!this.§;w§)
         {
            this.§%!<§ = param1.pivotX;
         }
         else
         {
            this.§%!<§ = 0;
         }
      }
      
      protected function initializePivotFromComposite(param1:DisplayObject) : void
      {
         var _loc2_:Rectangle = param1.§@"&§;
         this.§=!C§ = _loc2_.bottom;
         this.§%!<§ = (_loc2_.left + _loc2_.right) / 2;
      }
      
      protected function §39§(param1:String, param2:Boolean, param3:Number) : void
      {
         var _loc5_:§8!W§ = null;
         var _loc4_:DisplayObject;
         if(!(_loc4_ = §^"U§.§]!6§(param1,this.§6V§,param2)))
         {
            if(!(_loc5_ = this.§6V§.getTexture(param1)))
            {
               return;
            }
            this.§8"2§ = param3 * _loc5_.scale;
            this.initializePivotFromTexture(_loc5_);
            this.§1"r§ = _loc5_.width - 2;
         }
         else
         {
            this.§8"2§ = param3;
            this.initializePivotFromComposite(_loc4_);
            this.§1"r§ = _loc4_.width - 2;
            _loc4_.dispose();
         }
         this.§1"r§ = Math.round(this.§1"r§);
      }
      
      protected function §&?§(param1:String, param2:Boolean, param3:int, param4:int) : Sprite
      {
         var _loc7_:DisplayObject = null;
         var _loc8_:Sprite = null;
         var _loc5_:Sprite = new Sprite();
         var _loc6_:int = param3;
         while(_loc6_ <= param4)
         {
            (_loc7_ = this.§<!<§(param1,param2)).x = _loc6_ * this.§1"r§;
            _loc7_.y = 0;
            _loc7_.scaleX = 1;
            _loc7_.scaleY = 1;
            _loc5_.addChild(_loc7_);
            _loc6_++;
         }
         if(§^"U§.§?Z§(param1))
         {
            _loc8_ = this.§%!]§(_loc5_);
            _loc5_.§1!r§();
            _loc5_.dispose();
            (_loc5_ = _loc8_).flatten();
         }
         return _loc5_;
      }
      
      private function §%!]§(param1:Sprite) : Sprite
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
      
      protected function §<!<§(param1:String, param2:Boolean) : DisplayObject
      {
         var _loc4_:§8!W§ = null;
         var _loc3_:DisplayObject = §^"U§.§]!6§(param1,this.§6V§,param2);
         if(!_loc3_)
         {
            _loc4_ = this.§6V§.getTexture(param1);
            _loc3_ = new §#"t§(_loc4_.texture,false,param2);
         }
         return _loc3_;
      }
      
      protected function getRepeatCount(param1:Number, param2:int) : int
      {
         return (2 + §#_§.§]#Q§ * 1.5 / (param2 * param1)) * 2;
      }
      
      protected function initialize(param1:§>!b§, param2:Number) : void
      {
         var _loc7_:int = 0;
         if(param1.scale != 0)
         {
            this.§8"2§ = param1.scale;
         }
         else
         {
            this.§8"2§ = 1;
         }
         this.§39§(param1.spriteName,param1.highQuality,this.§8"2§);
         if(this.§1"r§ <= 0)
         {
            return;
         }
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(param1.tileable)
         {
            _loc3_ = -(_loc7_ = this.getRepeatCount(param2,this.§1"r§)) / 2 - 1;
            _loc4_ = -_loc3_ - 1;
            this.§;O§ = true;
         }
         this.§2x§ = param1.xOffset;
         this.§+"v§ = param1.yOffset;
         var _loc5_:int = _loc3_;
         while(_loc5_ <= _loc4_)
         {
            this.§,"z§(param1,_loc5_ * this.§1"r§);
            _loc5_++;
         }
         var _loc6_:Sprite = this.§&?§(param1.spriteName,param1.highQuality,_loc3_,_loc4_);
         this.§%G§.addChild(_loc6_);
         this.§6";§();
         this.§6"@§();
      }
      
      private function §^"h§(param1:Sprite, param2:int = -1) : Boolean
      {
         if(param1)
         {
            if(param1.numChildren <= 0)
            {
               param1.dispose();
               return false;
            }
            param1.scaleX = 1 / this.§8"2§;
            param1.scaleY = 1 / this.§8"2§;
            param1.x = this.§%!<§ - this.§2x§ / this.§8"2§;
            param1.y = this.§=!C§ - this.§+"v§ / this.§8"2§;
            if(param2 < 0)
            {
               this.§%G§.addChild(param1);
            }
            else
            {
               this.§%G§.addChildAt(param1,param2);
            }
         }
         return true;
      }
      
      private function §6";§() : void
      {
         if(!this.§^"h§(this.§,"p§))
         {
            this.§,"p§ = null;
         }
         if(!this.§^"h§(this.§9"B§,0))
         {
            this.§9"B§ = null;
         }
      }
      
      private function §,"z§(param1:§>!b§, param2:Number) : void
      {
         var _loc4_:§`"-§ = null;
         var _loc5_:§-#D§ = null;
         var _loc6_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < param1.§package§)
         {
            _loc4_ = param1.§+"_§(_loc3_);
            if((_loc5_ = §'!]§.§#"§(_loc4_.id,this.§6V§)) && _loc5_.§0"g§ > 0)
            {
               _loc5_.x = param2 + _loc4_.x + param1.xOffset;
               _loc5_.y = _loc4_.y;
               _loc5_.scaleX = _loc5_.scaleY = _loc4_.scale;
               _loc5_.rotation = _loc4_.rotation;
               _loc5_.alpha = _loc4_.alpha;
               _loc5_.start();
               §3#J§.§^#A§.add(_loc5_);
               this.§9"l§.push(_loc5_);
               if(_loc4_.§9"Q§)
               {
                  if(!this.§9"B§)
                  {
                     this.§9"B§ = new Sprite();
                  }
                  this.§9"B§.addChild(_loc5_);
               }
               else
               {
                  if(!this.§,"p§)
                  {
                     this.§,"p§ = new Sprite();
                  }
                  this.§,"p§.addChild(_loc5_);
               }
               _loc6_ = 0;
               while(_loc6_ < _loc4_.fastForwardsAfterAdd)
               {
                  _loc5_.§9"x§(1 / 20);
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
         var _loc1_:§5"N§ = null;
         this.§%G§.§1!r§(0,-1,true);
         for each(_loc1_ in this.§9"l§)
         {
            §3#J§.§^#A§.§>"k§(_loc1_);
            _loc1_.dispose();
         }
         this.§9"l§ = [];
         this.§9"B§ = null;
         this.§,"p§ = null;
      }
      
      public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         this.§`!j§ = param1;
         this.§8"R§ = param2;
         this.§%G§.scaleX = this.§8"2§;
         this.§%G§.scaleY = this.§8"2§;
         this.§%G§.x = -param1 * this.§>!t§ - this.§%!<§ * this.§8"2§ + this.§2x§;
         this.§%G§.y = -param2 - this.§=!C§ * this.§8"2§ + this.§+"v§;
      }
      
      private function §6"@§() : void
      {
         var _loc1_:§5"N§ = null;
         for each(_loc1_ in this.§9"l§)
         {
            §3#J§.§^#A§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §0"A§() : void
      {
         var _loc1_:§5"N§ = null;
         for each(_loc1_ in this.§9"l§)
         {
            §3#J§.§^#A§.§>"k§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §%Q§(param1:Boolean) : void
      {
         if(param1 == this.§4"!§)
         {
            return;
         }
         this.§4"!§ = param1;
         if(this.§4"!§)
         {
            this.§6"@§();
         }
         else
         {
            this.§0"A§();
         }
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
