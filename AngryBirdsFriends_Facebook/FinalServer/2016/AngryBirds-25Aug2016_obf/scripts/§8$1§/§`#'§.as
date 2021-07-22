package §8$1§
{
   import §+#&§.ParticleDesignerPS;
   import §2"5§.ParticleManager;
   import §52§.§#!,§;
   import §52§.§9!n§;
   import §6§.§,"s§;
   import §6§.§]!Q§;
   import §6§.include;
   import §9$§.DisplayObject;
   import §9$§.Image;
   import §9$§.Sprite;
   import §@"§.§&!=§;
   import §@"§.§'!u§;
   import §@"§.§+!3§;
   import §^§.§>$6§;
   import §^§.§?V§;
   import §^§.§]!3§;
   import §^a§.Starling;
   import flash.geom.Rectangle;
   
   public class §`#'§ implements include
   {
       
      
      private var §@!^§:int;
      
      private var §6!>§:int;
      
      private var §8!M§:Number;
      
      private var §3#J§:Boolean;
      
      protected var §]Y§:Sprite;
      
      private var §1B§:Array;
      
      private var § !'§:Boolean = true;
      
      private var §5!H§:§&!=§;
      
      private var §%$$§:Sprite;
      
      private var §`!3§:Sprite;
      
      private var §9!M§:Number = 0;
      
      private var §8"S§:Number = 0;
      
      protected var §]"?§:Number = 1.0;
      
      protected var §7#l§:Number = 0.0;
      
      protected var §>D§:Number = 0.0;
      
      protected var §""b§:Number = 0.0;
      
      protected var §]<§:Number = 0.0;
      
      protected var §""+§:Number = 0.0;
      
      protected var §7"=§:Number = 0.0;
      
      protected var §""T§:Number = 0.0;
      
      protected var §?"2§:Number = 0.0;
      
      protected var §+"+§:Number = 0.0;
      
      protected var §^#_§:Number = 0.0;
      
      protected var §>!l§:Boolean;
      
      private var §;$9§:Vector.<§[!R§>;
      
      protected var §2"^§:§]!Q§;
      
      private var §;$'§:Number;
      
      private var §@"4§:Number;
      
      public function §`#'§(param1:§]!Q§, param2:§?V§, param3:Sprite, param4:§&!=§, param5:Number)
      {
         this.§1B§ = [];
         this.§;$9§ = new Vector.<§[!R§>();
         super();
         this.§5!H§ = param4;
         this.§2"^§ = param1;
         this.§]Y§ = param3;
         this.§8!M§ = param2.speed;
         this.§3#J§ = param2.foreground;
         this.§""T§ = param2.velocityX;
         this.§+"+§ = param2.moveStartOffsetX;
         this.§^#_§ = param2.moveEndOffsetX;
         this.initialize(param2,param5);
         this.§]Y§.x = -(this.§7#l§ * this.§]"?§) + this.§""+§;
         this.§]Y§.y = -(this.§>D§ * this.§]"?§) + this.§7"=§;
      }
      
      public function get §@#]§() : Number
      {
         return this.§8!M§;
      }
      
      public function get §,#%§() : Boolean
      {
         return this.§3#J§;
      }
      
      public function get §!"0§() : Number
      {
         return this.§@!^§;
      }
      
      public function get §'_§() : Number
      {
         return this.§6!>§;
      }
      
      public function get scale() : Number
      {
         return this.§]"?§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§]"?§ = param1;
      }
      
      protected function initializePivotFromTexture(param1:§+!3§) : void
      {
         this.§>D§ = param1.pivotY;
         if(!this.§3#J§)
         {
            this.§7#l§ = param1.pivotX;
         }
         else
         {
            this.§7#l§ = 0;
         }
      }
      
      protected function initializePivotFromComposite(param1:DisplayObject) : void
      {
         var _loc2_:Rectangle = param1.§4#9§;
         this.§>D§ = _loc2_.bottom;
         this.§7#l§ = (_loc2_.left + _loc2_.right) / 2;
      }
      
      protected function §`;§(param1:String, param2:Boolean, param3:Number) : void
      {
         var _loc5_:§+!3§ = null;
         var _loc4_:DisplayObject;
         if(!(_loc4_ = §'!u§.§9#^§(param1,this.§5!H§,param2)))
         {
            if(!(_loc5_ = this.§5!H§.getTexture(param1)))
            {
               return;
            }
            this.§]"?§ = param3 * _loc5_.scale;
            this.initializePivotFromTexture(_loc5_);
            this.§@!^§ = _loc5_.width - 2;
            this.§6!>§ = _loc5_.height - 2;
         }
         else
         {
            this.§]"?§ = param3;
            this.initializePivotFromComposite(_loc4_);
            this.§@!^§ = _loc4_.width - 2;
            this.§6!>§ = _loc4_.height - 2;
            _loc4_.dispose();
         }
         this.§@!^§ = Math.round(this.§@!^§);
         this.§6!>§ = Math.round(this.§6!>§);
      }
      
      protected function §&#;§(param1:String, param2:Boolean, param3:int, param4:int) : Sprite
      {
         var _loc7_:DisplayObject = null;
         var _loc8_:Sprite = null;
         var _loc5_:Sprite = new Sprite();
         var _loc6_:int = param3;
         while(_loc6_ <= param4)
         {
            (_loc7_ = this.§,$7§(param1,param2)).x = _loc6_ * this.§@!^§;
            _loc7_.y = 0;
            _loc7_.scaleX = 1;
            _loc7_.scaleY = 1;
            _loc5_.addChild(_loc7_);
            _loc6_++;
         }
         if(§'!u§.§1!l§(param1))
         {
            _loc8_ = this.§,"4§(_loc5_);
            _loc5_.removeChildren();
            _loc5_.dispose();
            (_loc5_ = _loc8_).flatten();
         }
         return _loc5_;
      }
      
      private function §,"4§(param1:Sprite) : Sprite
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
      
      protected function §,$7§(param1:String, param2:Boolean) : DisplayObject
      {
         var _loc4_:§+!3§ = null;
         var _loc3_:DisplayObject = §'!u§.§9#^§(param1,this.§5!H§,param2);
         if(!_loc3_)
         {
            _loc4_ = this.§5!H§.getTexture(param1);
            _loc3_ = new Image(_loc4_.texture,false,param2);
         }
         return _loc3_;
      }
      
      protected function getRepeatCount(param1:Number, param2:int) : int
      {
         return (2 + §#!,§.§%"9§ * 1.5 / (param2 * param1)) * 2;
      }
      
      protected function initialize(param1:§?V§, param2:Number) : void
      {
         if(param1.scale != 0)
         {
            this.§]"?§ = param1.scale;
         }
         else
         {
            this.§]"?§ = 1;
         }
         this.§`;§(param1.spriteName,param1.highQuality,this.§]"?§);
         if(this.§@!^§ <= 0)
         {
            return;
         }
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(param1.tileable)
         {
            _loc3_ = -int(this.getRepeatCount(param2,this.§@!^§)) / 2 - 1;
            _loc4_ = -_loc3_ - 1;
            this.§>!l§ = true;
         }
         this.§""+§ = param1.xOffset;
         this.§7"=§ = param1.yOffset;
         var _loc5_:int = _loc3_;
         while(_loc5_ <= _loc4_)
         {
            this.§"#>§(param1,_loc5_ * this.§@!^§);
            _loc5_++;
         }
         var _loc6_:Sprite = this.§&#;§(param1.spriteName,param1.highQuality,_loc3_,_loc4_);
         this.§]Y§.addChild(_loc6_);
         this.§5C§();
         this.§;!B§();
         this.§%$4§(param1);
      }
      
      private function §%$4§(param1:§?V§) : void
      {
         var _loc4_:§>$6§ = null;
         var _loc5_:§[!R§ = null;
         var _loc2_:uint = param1.§9#b§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.§!i§(_loc3_);
            if((_loc5_ = §`O§.§!#l§(this.§]Y§,this,_loc4_)).§4"v§)
            {
               this.§2"^§.§^#B§(this,_loc5_.§4"v§);
            }
            this.§;$9§.push(_loc5_);
            _loc3_++;
         }
      }
      
      private function §`!Z§(param1:Sprite, param2:int = -1) : Boolean
      {
         if(param1)
         {
            if(param1.numChildren > 0)
            {
               param1.scaleX = 1 / this.§]"?§;
               param1.scaleY = 1 / this.§]"?§;
               param1.x = this.§7#l§ - this.§""+§ / this.§]"?§;
               param1.y = this.§>D§ - this.§7"=§ / this.§]"?§;
               if(param2 < 0)
               {
                  this.§]Y§.addChild(param1);
               }
               else
               {
                  this.§]Y§.addChildAt(param1,param2);
               }
            }
            else
            {
               param1.dispose();
               return false;
            }
         }
         return true;
      }
      
      private function §5C§() : void
      {
         if(!this.§`!Z§(this.§%$$§))
         {
            this.§%$$§ = null;
         }
         if(!this.§`!Z§(this.§`!3§,0))
         {
            this.§`!3§ = null;
         }
      }
      
      private function §"#>§(param1:§?V§, param2:Number) : void
      {
         var _loc4_:§]!3§ = null;
         var _loc5_:§9!n§ = null;
         var _loc6_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < param1.§ #a§)
         {
            _loc4_ = param1.§='§(_loc3_);
            if((_loc5_ = ParticleManager.§?!f§(_loc4_.id,this.§5!H§)) && _loc5_.§'"H§ > 0)
            {
               _loc5_.x = param2 + _loc4_.x + param1.xOffset;
               _loc5_.y = _loc4_.y;
               _loc5_.scaleX = _loc5_.scaleY = _loc4_.scale;
               _loc5_.rotation = _loc4_.rotation;
               _loc5_.alpha = _loc4_.alpha;
               _loc5_.start();
               Starling.§6!h§.add(_loc5_);
               this.§1B§.push(_loc5_);
               if(_loc4_.§-w§)
               {
                  if(!this.§`!3§)
                  {
                     this.§`!3§ = new Sprite();
                  }
                  this.§`!3§.addChild(_loc5_);
               }
               else
               {
                  if(!this.§%$$§)
                  {
                     this.§%$$§ = new Sprite();
                  }
                  this.§%$$§.addChild(_loc5_);
               }
               _loc6_ = 0;
               while(_loc6_ < _loc4_.fastForwardsAfterAdd)
               {
                  _loc5_.§;9§(1 / 20);
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
         var _loc2_:§[!R§ = null;
         this.§]Y§.removeChildren(0,-1,true);
         for each(_loc1_ in this.§1B§)
         {
            Starling.§6!h§.§%"w§(_loc1_);
            _loc1_.dispose();
         }
         for each(_loc2_ in this.§;$9§)
         {
            this.§2"^§.§]!6§(this,_loc2_.§4"v§);
         }
         this.§1B§ = [];
         this.§`!3§ = null;
         this.§%$$§ = null;
      }
      
      public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         this.§;$'§ = param1 - this.§9!M§;
         this.§@"4§ = param2 - this.§8"S§;
         this.§9!M§ = param1;
         this.§8"S§ = param2;
         this.§]Y§.scaleX = this.§]"?§;
         this.§]Y§.scaleY = this.§]"?§;
         this.§]Y§.x += -this.§;$'§ * this.§8!M§;
         this.§]Y§.y += -this.§@"4§;
      }
      
      private function §;!B§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         for each(_loc1_ in this.§1B§)
         {
            Starling.§6!h§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §4"n§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         for each(_loc1_ in this.§1B§)
         {
            Starling.§6!h§.§%"w§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §,#K§(param1:Boolean) : void
      {
         if(param1 == this.§ !'§)
         {
            return;
         }
         this.§ !'§ = param1;
         if(this.§ !'§)
         {
            this.§;!B§();
         }
         else
         {
            this.§4"n§();
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§[!R§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§;$9§.length)
         {
            _loc3_ = this.§;$9§[_loc2_];
            _loc3_.update(param1);
            _loc2_++;
         }
         if(this.§""T§ != 0)
         {
            this.§?"2§ += this.§""T§ * param1 / 1000;
            if(this.§+"+§ != this.§^#_§)
            {
               if(this.§?"2§ < this.§+"+§)
               {
                  this.§?"2§ = this.§^#_§;
               }
               else if(this.§?"2§ > this.§^#_§)
               {
                  this.§?"2§ = this.§+"+§;
               }
            }
            else
            {
               while(this.§?"2§ < -this.§!"0§)
               {
                  this.§?"2§ += this.§!"0§;
               }
               while(this.§?"2§ > this.§!"0§)
               {
                  this.§?"2§ -= this.§!"0§;
               }
            }
         }
         this.§]Y§.x += this.§?"2§ * this.§]"?§;
      }
      
      function §`#@§(param1:String) : void
      {
         var _loc3_:§[!R§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§;$9§.length)
         {
            _loc3_ = this.§;$9§[_loc2_];
            if(_loc3_.§4"v§ == param1)
            {
               _loc3_.start();
            }
            _loc2_++;
         }
      }
      
      public function §%N§(param1:§,"s§) : void
      {
         this.§`#@§(param1.eventName);
      }
   }
}
