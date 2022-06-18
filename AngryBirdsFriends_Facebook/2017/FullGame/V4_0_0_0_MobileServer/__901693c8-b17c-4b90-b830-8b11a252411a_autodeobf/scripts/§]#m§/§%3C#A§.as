package §]#m§
{
   import §&!v§.DisplayObject;
   import §&!v§.Image;
   import §&!v§.Sprite;
   import §+!C§.§!!S§;
   import §+!C§.§[Q§;
   import §4o§.§!"e§;
   import §4o§.§3H§;
   import §4o§.§8"1§;
   import §6!6§.§%§;
   import §6!6§.§-#P§;
   import §6!6§.§@"W§;
   import §7!j§.§'#'§;
   import §7!j§.§'0§;
   import §7!j§.§[#%§;
   import §9+§.Starling;
   import §;!7§.ParticleDesignerPS;
   import §;#U§.ParticleManager;
   import flash.geom.Rectangle;
   
   public class §<#A§ implements §8"1§
   {
       
      
      private var §-!q§:int;
      
      private var §`"f§:int;
      
      private var §?!z§:Number;
      
      private var §-#,§:Boolean;
      
      protected var §'$&§:Sprite;
      
      private var §4!K§:Array;
      
      private var §!#9§:Boolean = true;
      
      private var §>!4§:§'0§;
      
      private var §6!P§:Sprite;
      
      private var §5"x§:Sprite;
      
      private var §,x§:Number = 0;
      
      private var §7!L§:Number = 0;
      
      protected var § "A§:Number = 1.0;
      
      protected var § #Q§:Number = 0.0;
      
      protected var §9!d§:Number = 0.0;
      
      protected var §;!U§:Number = 0.0;
      
      protected var § ";§:Number = 0.0;
      
      protected var §+I§:Number = 0.0;
      
      protected var §8q§:Number = 0.0;
      
      protected var §&W§:Number = 0.0;
      
      protected var §'2§:Number = 0.0;
      
      protected var §'!"§:Number = 0.0;
      
      protected var §!x§:Number = 0.0;
      
      protected var §>P§:Boolean;
      
      private var §,#f§:Vector.<§ "!§>;
      
      protected var §8!N§:§!"e§;
      
      private var §`#Q§:Number;
      
      private var §'#_§:Number;
      
      public function §<#A§(param1:§!"e§, param2:§%#1§, param3:Sprite, param4:§'0§, param5:Number)
      {
         this.§4!K§ = [];
         this.§,#f§ = new Vector.<§ "!§>();
         super();
         this.§>!4§ = param4;
         this.§8!N§ = param1;
         this.§'$&§ = param3;
         this.§?!z§ = param2.speed;
         this.§-#,§ = param2.foreground;
         this.§&W§ = param2.velocityX;
         this.§'!"§ = param2.moveStartOffsetX;
         this.§!x§ = param2.moveEndOffsetX;
         this.initialize(param2,param5);
         this.§'$&§.x = -(this.§ #Q§ * this.§ "A§) + this.§+I§;
         this.§'$&§.y = -(this.§9!d§ * this.§ "A§) + this.§8q§;
      }
      
      public function get §""#§() : Number
      {
         return this.§?!z§;
      }
      
      public function get §"!r§() : Boolean
      {
         return this.§-#,§;
      }
      
      public function get §?!w§() : Number
      {
         return this.§-!q§;
      }
      
      public function get §0!]§() : Number
      {
         return this.§`"f§;
      }
      
      public function get scale() : Number
      {
         return this.§ "A§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§ "A§ = param1;
      }
      
      protected function initializePivotFromTexture(param1:§'#'§) : void
      {
         this.§9!d§ = param1.pivotY;
         if(!this.§-#,§)
         {
            this.§ #Q§ = param1.pivotX;
         }
         else
         {
            this.§ #Q§ = 0;
         }
      }
      
      protected function initializePivotFromComposite(param1:DisplayObject) : void
      {
         var _loc2_:Rectangle = param1.§=u§;
         this.§9!d§ = _loc2_.bottom;
         this.§ #Q§ = (_loc2_.left + _loc2_.right) / 2;
      }
      
      protected function §,#L§(param1:String, param2:Boolean, param3:Number) : void
      {
         var _loc5_:§'#'§ = null;
         var _loc4_:DisplayObject;
         if(!(_loc4_ = §[#%§.§&G§(param1,this.§>!4§,param2)))
         {
            if(!(_loc5_ = this.§>!4§.getTexture(param1)))
            {
               return;
            }
            this.§ "A§ = param3 * _loc5_.scale;
            this.initializePivotFromTexture(_loc5_);
            this.§-!q§ = _loc5_.width - 2;
            this.§`"f§ = _loc5_.height - 2;
         }
         else
         {
            this.§ "A§ = param3;
            this.initializePivotFromComposite(_loc4_);
            this.§-!q§ = _loc4_.width - 2;
            this.§`"f§ = _loc4_.height - 2;
            _loc4_.dispose();
         }
         this.§-!q§ = Math.round(this.§-!q§);
         this.§`"f§ = Math.round(this.§`"f§);
      }
      
      protected function §%z§(param1:String, param2:Boolean, param3:int, param4:int) : Sprite
      {
         var _loc7_:DisplayObject = null;
         var _loc8_:Sprite = null;
         var _loc5_:Sprite = new Sprite();
         var _loc6_:int = param3;
         while(_loc6_ <= param4)
         {
            (_loc7_ = this.§,S§(param1,param2)).x = _loc6_ * this.§-!q§;
            _loc7_.y = 0;
            _loc7_.scaleX = 1;
            _loc7_.scaleY = 1;
            _loc5_.addChild(_loc7_);
            _loc6_++;
         }
         if(§[#%§.§[#Z§(param1))
         {
            _loc8_ = this.§+!h§(_loc5_);
            _loc5_.removeChildren();
            _loc5_.dispose();
            (_loc5_ = _loc8_).flatten();
         }
         return _loc5_;
      }
      
      private function §+!h§(param1:Sprite) : Sprite
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
      
      protected function §,S§(param1:String, param2:Boolean) : DisplayObject
      {
         var _loc4_:§'#'§ = null;
         var _loc3_:DisplayObject = §[#%§.§&G§(param1,this.§>!4§,param2);
         if(!_loc3_)
         {
            _loc4_ = this.§>!4§.getTexture(param1);
            _loc3_ = new Image(_loc4_.texture,false,param2);
         }
         return _loc3_;
      }
      
      protected function getRepeatCount(param1:Number, param2:int) : int
      {
         return (2 + §!!S§.§6" § * 1.5 / (param2 * param1)) * 2;
      }
      
      protected function initialize(param1:§%#1§, param2:Number) : void
      {
         var _loc7_:int = 0;
         if(param1.scale != 0)
         {
            this.§ "A§ = param1.scale;
         }
         else
         {
            this.§ "A§ = 1;
         }
         this.§,#L§(param1.spriteName,param1.highQuality,this.§ "A§);
         if(this.§-!q§ <= 0)
         {
            return;
         }
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(param1.tileable)
         {
            _loc3_ = -(_loc7_ = this.getRepeatCount(param2,this.§-!q§)) / 2 - 1;
            _loc4_ = -_loc3_ - 1;
            this.§>P§ = true;
         }
         this.§+I§ = param1.xOffset;
         this.§8q§ = param1.yOffset;
         var _loc5_:int = _loc3_;
         while(_loc5_ <= _loc4_)
         {
            this.§[d§(param1,_loc5_ * this.§-!q§);
            _loc5_++;
         }
         var _loc6_:Sprite = this.§%z§(param1.spriteName,param1.highQuality,_loc3_,_loc4_);
         this.§'$&§.addChild(_loc6_);
         this.§2#@§();
         this.§5#k§();
         this.§'7§(param1);
      }
      
      private function §'7§(param1:§%#1§) : void
      {
         var _loc4_:§@"W§ = null;
         var _loc5_:§ "!§ = null;
         var _loc2_:uint = param1.§&! §;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.§["5§(_loc3_);
            if((_loc5_ = §&#!§.§?"S§(this.§'$&§,this,_loc4_)).§&$5§)
            {
               this.§8!N§.§"$§(this,_loc5_.§&$5§);
            }
            this.§,#f§.push(_loc5_);
            _loc3_++;
         }
      }
      
      private function §"#C§(param1:Sprite, param2:int = -1) : Boolean
      {
         if(param1)
         {
            if(param1.numChildren <= 0)
            {
               param1.dispose();
               return false;
            }
            param1.scaleX = 1 / this.§ "A§;
            param1.scaleY = 1 / this.§ "A§;
            param1.x = this.§ #Q§ - this.§+I§ / this.§ "A§;
            param1.y = this.§9!d§ - this.§8q§ / this.§ "A§;
            if(param2 < 0)
            {
               this.§'$&§.addChild(param1);
            }
            else
            {
               this.§'$&§.addChildAt(param1,param2);
            }
         }
         return true;
      }
      
      private function §2#@§() : void
      {
         if(!this.§"#C§(this.§6!P§))
         {
            this.§6!P§ = null;
         }
         if(!this.§"#C§(this.§5"x§,0))
         {
            this.§5"x§ = null;
         }
      }
      
      private function §[d§(param1:§%#1§, param2:Number) : void
      {
         var _loc4_:§-#P§ = null;
         var _loc5_:§[Q§ = null;
         var _loc6_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < param1.§;!`§)
         {
            _loc4_ = param1.§>!U§(_loc3_);
            if((_loc5_ = ParticleManager.§=!r§(_loc4_.id,this.§>!4§)) && _loc5_.§=Z§ > 0)
            {
               _loc5_.x = param2 + _loc4_.x + param1.xOffset;
               _loc5_.y = _loc4_.y;
               _loc5_.scaleX = _loc5_.scaleY = _loc4_.scale;
               _loc5_.rotation = _loc4_.rotation;
               _loc5_.alpha = _loc4_.alpha;
               _loc5_.start();
               Starling.§]F§.add(_loc5_);
               this.§4!K§.push(_loc5_);
               if(_loc4_.§do §)
               {
                  if(!this.§5"x§)
                  {
                     this.§5"x§ = new Sprite();
                  }
                  this.§5"x§.addChild(_loc5_);
               }
               else
               {
                  if(!this.§6!P§)
                  {
                     this.§6!P§ = new Sprite();
                  }
                  this.§6!P§.addChild(_loc5_);
               }
               _loc6_ = 0;
               while(_loc6_ < _loc4_.fastForwardsAfterAdd)
               {
                  _loc5_.§ !T§(1 / 20);
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
         var _loc1_:ParticleDesignerPS = null;
         var _loc2_:§ "!§ = null;
         this.§'$&§.removeChildren(0,-1,true);
         for each(_loc1_ in this.§4!K§)
         {
            Starling.§]F§.§>5§(_loc1_);
            _loc1_.dispose();
         }
         for each(_loc2_ in this.§,#f§)
         {
            this.§8!N§.§7!`§(this,_loc2_.§&$5§);
         }
         this.§4!K§ = [];
         this.§5"x§ = null;
         this.§6!P§ = null;
      }
      
      public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         this.§`#Q§ = param1 - this.§,x§;
         this.§'#_§ = param2 - this.§7!L§;
         this.§,x§ = param1;
         this.§7!L§ = param2;
         this.§'$&§.scaleX = this.§ "A§;
         this.§'$&§.scaleY = this.§ "A§;
         this.§'$&§.x += -this.§`#Q§ * this.§?!z§;
         this.§'$&§.y += -this.§'#_§;
      }
      
      private function §5#k§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         for each(_loc1_ in this.§4!K§)
         {
            Starling.§]F§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function § "5§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         for each(_loc1_ in this.§4!K§)
         {
            Starling.§]F§.§>5§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §-$>§(param1:Boolean) : void
      {
         if(param1 == this.§!#9§)
         {
            return;
         }
         this.§!#9§ = param1;
         if(this.§!#9§)
         {
            this.§5#k§();
         }
         else
         {
            this.§ "5§();
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§ "!§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§,#f§.length)
         {
            _loc3_ = this.§,#f§[_loc2_];
            _loc3_.update(param1);
            _loc2_++;
         }
         if(this.§&W§ != 0)
         {
            this.§'2§ += this.§&W§ * param1 / 1000;
            if(this.§'!"§ != this.§!x§)
            {
               if(this.§'2§ < this.§'!"§)
               {
                  this.§'2§ = this.§!x§;
               }
               else if(this.§'2§ > this.§!x§)
               {
                  this.§'2§ = this.§'!"§;
               }
            }
            else
            {
               while(this.§'2§ < -this.§?!w§)
               {
                  this.§'2§ += this.§?!w§;
               }
               while(this.§'2§ > this.§?!w§)
               {
                  this.§'2§ -= this.§?!w§;
               }
            }
         }
         this.§'$&§.x += this.§'2§ * this.§ "A§;
      }
      
      function §,!2§(param1:String) : void
      {
         var _loc3_:§ "!§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§,#f§.length)
         {
            _loc3_ = this.§,#f§[_loc2_];
            if(_loc3_.§&$5§ == param1)
            {
               _loc3_.start();
            }
            _loc2_++;
         }
      }
      
      public function § N§(param1:§3H§) : void
      {
         this.§,!2§(param1.eventName);
      }
   }
}
