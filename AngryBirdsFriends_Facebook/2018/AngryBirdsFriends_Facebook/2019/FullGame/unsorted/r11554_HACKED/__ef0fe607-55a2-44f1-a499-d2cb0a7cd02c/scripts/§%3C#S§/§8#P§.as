package §<#S§
{
   import § !D§.§&A§;
   import § !D§.§'"u§;
   import §!6§.DisplayObject;
   import §!6§.Image;
   import §!6§.Sprite;
   import §'!O§.§ !x§;
   import §'!O§.§#$;§;
   import §'!O§.§'"8§;
   import §-"i§.§"!Y§;
   import §-"i§.§+!7§;
   import §-"i§.§@M§;
   import §9X§.ParticleDesignerPS;
   import §@#;§.ParticleManager;
   import §]"P§.Starling;
   import §^"[§.§6"M§;
   import §^"[§.§=#;§;
   import §^"[§.§^!8§;
   import flash.geom.Rectangle;
   
   public class §8#P§ implements §@M§
   {
       
      
      private var §]N§:int;
      
      private var §`!F§:int;
      
      private var §^#,§:Number;
      
      private var §>"Y§:Boolean;
      
      protected var § U§:Sprite;
      
      private var §6#G§:Array;
      
      private var §1#]§:Boolean = true;
      
      private var §2!b§:§=#;§;
      
      private var §]#m§:Sprite;
      
      private var §6$-§:Sprite;
      
      private var §-!6§:Number = 0;
      
      private var §5c§:Number = 0;
      
      protected var §6z§:Number = 1.0;
      
      protected var §?"1§:Number = 0.0;
      
      protected var §5"#§:Number = 0.0;
      
      protected var §+#j§:Number = 0.0;
      
      protected var §@#Z§:Number = 0.0;
      
      protected var §if §:Number = 0.0;
      
      protected var §1!g§:Number = 0.0;
      
      protected var §^!_§:Number = 0.0;
      
      protected var §=#+§:Number = 0.0;
      
      protected var § !o§:Number = 0.0;
      
      protected var §!"[§:Boolean;
      
      private var §!"k§:Vector.<Sprite>;
      
      private var §'$;§:int;
      
      private var §?1§:int;
      
      private var §#""§:int;
      
      private var §+"k§:Vector.<§9H§>;
      
      protected var §=#v§:§"!Y§;
      
      private var §>!G§:Number;
      
      private var §,t§:Number;
      
      private var §1!=§:Number;
      
      private var §]"j§:Number;
      
      private var §>!b§:int = 0;
      
      public function §8#P§(param1:§"!Y§, param2:§'"8§, param3:Sprite, param4:§=#;§, param5:Number)
      {
         this.§6#G§ = [];
         this.§+"k§ = new Vector.<§9H§>();
         super();
         this.§2!b§ = param4;
         this.§=#v§ = param1;
         this.§ U§ = param3;
         this.§^#,§ = param2.speed;
         this.§>"Y§ = param2.foreground;
         this.§^!_§ = param2.velocityX;
         this.§=#+§ = param2.moveStartOffsetX;
         this.§ !o§ = param2.moveEndOffsetX;
         this.initialize(param2,param5);
         this.§ U§.x = -(this.§?"1§ * this.§6z§) + this.§if §;
         this.§ U§.y = -(this.§5"#§ * this.§6z§) + this.§1!g§;
         this.§1!=§ = 0;
         this.§]"j§ = 0;
      }
      
      public function get §;#L§() : Number
      {
         return this.§^#,§;
      }
      
      public function get §6!=§() : Boolean
      {
         return this.§>"Y§;
      }
      
      public function get §`$C§() : Number
      {
         return this.§]N§;
      }
      
      public function get §<"H§() : Number
      {
         return this.§`!F§;
      }
      
      public function get scale() : Number
      {
         return this.§6z§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§6z§ = param1;
      }
      
      protected function initializePivotFromTexture(param1:§^!8§) : void
      {
         this.§5"#§ = param1.pivotY;
         if(!this.§>"Y§)
         {
            this.§?"1§ = param1.pivotX;
         }
         else
         {
            this.§?"1§ = 0;
         }
      }
      
      protected function initializePivotFromComposite(param1:DisplayObject) : void
      {
         var _loc2_:Rectangle = param1.bounds;
         this.§5"#§ = _loc2_.bottom;
         this.§?"1§ = (_loc2_.left + _loc2_.right) / 2;
      }
      
      protected function §>!p§(param1:String, param2:Boolean, param3:Number) : void
      {
         var _loc5_:§^!8§ = null;
         var _loc4_:DisplayObject;
         if(!(_loc4_ = §6"M§.§6"1§(param1,this.§2!b§,param2)))
         {
            if(!(_loc5_ = this.§2!b§.getTexture(param1)))
            {
               return;
            }
            this.§6z§ = param3 * _loc5_.scale;
            this.initializePivotFromTexture(_loc5_);
            this.§]N§ = _loc5_.width - 2;
            this.§`!F§ = _loc5_.height - 2;
         }
         else
         {
            this.§6z§ = param3;
            this.initializePivotFromComposite(_loc4_);
            this.§]N§ = _loc4_.width - 2;
            this.§`!F§ = _loc4_.height - 2;
            _loc4_.dispose();
         }
         this.§]N§ = Math.round(this.§]N§);
         this.§`!F§ = Math.round(this.§`!F§);
      }
      
      protected function §2"Z§(param1:String, param2:Boolean, param3:int, param4:int) : Sprite
      {
         var _loc7_:DisplayObject = null;
         var _loc8_:Sprite = null;
         var _loc5_:Sprite = new Sprite();
         var _loc6_:int = param3;
         while(_loc6_ <= param4)
         {
            (_loc7_ = this.§1"_§(param1,param2)).x = _loc6_ * this.§]N§;
            _loc7_.y = 0;
            _loc7_.scaleX = 1;
            _loc7_.scaleY = 1;
            _loc5_.addChild(_loc7_);
            _loc6_++;
         }
         if(§6"M§.§@#I§(param1))
         {
            _loc8_ = this.§&"E§(_loc5_);
            _loc5_.removeChildren();
            _loc5_.dispose();
            (_loc5_ = _loc8_).flatten();
         }
         return _loc5_;
      }
      
      private function §&"E§(param1:Sprite) : Sprite
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
      
      protected function §1"_§(param1:String, param2:Boolean) : DisplayObject
      {
         var _loc4_:§^!8§ = null;
         var _loc3_:DisplayObject = §6"M§.§6"1§(param1,this.§2!b§,param2);
         if(!_loc3_)
         {
            _loc4_ = this.§2!b§.getTexture(param1);
            _loc3_ = new Image(_loc4_.texture,false,param2);
         }
         return _loc3_;
      }
      
      protected function getRepeatCount(param1:Number, param2:int) : int
      {
         return (2 + §'"u§.§]!F§ * 1.5 / (param2 * param1)) * 2;
      }
      
      protected function initialize(param1:§'"8§, param2:Number) : void
      {
         var _loc6_:String = null;
         var _loc7_:Sprite = null;
         if(param1.scale != 0)
         {
            this.§6z§ = param1.scale;
         }
         else
         {
            this.§6z§ = 1;
         }
         if(param1.§%#V§ && param1.§%#V§.length > 0)
         {
            this.§>!p§(param1.§%#V§[0],param1.highQuality,this.§6z§);
         }
         else
         {
            this.§>!p§(param1.spriteName,param1.highQuality,this.§6z§);
         }
         this.§]N§ = Math.round(this.§]N§);
         this.§`!F§ = Math.round(this.§`!F§);
         if(this.§]N§ <= 0)
         {
            return;
         }
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(param1.tileable)
         {
            this.§>!b§ = this.getRepeatCount(param2,this.§]N§);
            _loc3_ = -this.§>!b§ / 2 - 1;
            _loc4_ = -_loc3_ - 1;
            this.§!"[§ = true;
         }
         this.§if § = param1.xOffset;
         this.§1!g§ = param1.yOffset;
         var _loc5_:int = _loc3_;
         while(_loc5_ <= _loc4_)
         {
            this.§@#Q§(param1,_loc5_ * this.§]N§);
            _loc5_++;
         }
         if(param1.§%#V§ && param1.§%#V§.length > 0)
         {
            this.§!"k§ = new Vector.<Sprite>();
            for each(_loc6_ in param1.§%#V§)
            {
               _loc7_ = this.§2"Z§(_loc6_,param1.highQuality,_loc3_,_loc4_);
               this.§ U§.addChild(_loc7_);
               _loc7_.visible = false;
               this.§!"k§.push(_loc7_);
            }
            this.§'$;§ = param1.frameTime > 0 ? int(param1.frameTime) : 1000;
            this.§?1§ = 0;
            this.§#""§ = 0;
            this.§!"k§[this.§#""§].visible = true;
         }
         else
         {
            _loc7_ = this.§2"Z§(param1.spriteName,param1.highQuality,_loc3_,_loc4_);
            this.§ U§.addChild(_loc7_);
         }
         this.§>!r§();
         this.§7#2§();
         this.§]"7§(param1);
         this.setVisibility(param1.§=d§);
      }
      
      private function §]"7§(param1:§'"8§) : void
      {
         var _loc4_:§#$;§ = null;
         var _loc5_:§9H§ = null;
         var _loc2_:uint = param1.§get §;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.§]#4§(_loc3_);
            if((_loc5_ = §1#c§.§'j§(this.§ U§,this,_loc4_)).§""r§)
            {
               this.§=#v§.§=$A§(this,_loc5_.§""r§);
            }
            this.§+"k§.push(_loc5_);
            _loc3_++;
         }
      }
      
      private function §<E§(param1:Sprite, param2:int = -1) : Boolean
      {
         if(param1)
         {
            if(param1.numChildren > 0)
            {
               param1.scaleX = 1 / this.§6z§;
               param1.scaleY = 1 / this.§6z§;
               param1.x = this.§?"1§ - this.§if § / this.§6z§;
               param1.y = this.§5"#§ - this.§1!g§ / this.§6z§;
               if(param2 < 0)
               {
                  this.§ U§.addChild(param1);
               }
               else
               {
                  this.§ U§.addChildAt(param1,param2);
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
      
      private function §>!r§() : void
      {
         if(!this.§<E§(this.§]#m§))
         {
            this.§]#m§ = null;
         }
         if(!this.§<E§(this.§6$-§,0))
         {
            this.§6$-§ = null;
         }
      }
      
      private function §@#Q§(param1:§'"8§, param2:Number) : void
      {
         var _loc4_:§ !x§ = null;
         var _loc5_:§&A§ = null;
         var _loc6_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < param1.§-D§)
         {
            _loc4_ = param1.§5#3§(_loc3_);
            if((_loc5_ = ParticleManager.§0c§(_loc4_.id,this.§2!b§)) && _loc5_.§>a§ > 0)
            {
               _loc5_.x = param2 + _loc4_.x + param1.xOffset;
               _loc5_.y = _loc4_.y;
               _loc5_.scaleX = _loc5_.scaleY = _loc4_.scale;
               _loc5_.rotation = _loc4_.rotation;
               _loc5_.alpha = _loc4_.alpha;
               _loc5_.start();
               Starling.§?"7§.add(_loc5_);
               this.§6#G§.push(_loc5_);
               if(_loc4_.§="7§)
               {
                  if(!this.§6$-§)
                  {
                     this.§6$-§ = new Sprite();
                  }
                  this.§6$-§.addChild(_loc5_);
               }
               else
               {
                  if(!this.§]#m§)
                  {
                     this.§]#m§ = new Sprite();
                  }
                  this.§]#m§.addChild(_loc5_);
               }
               _loc6_ = 0;
               while(_loc6_ < _loc4_.fastForwardsAfterAdd)
               {
                  _loc5_.§&"9§(1 / 20);
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
         var _loc2_:§9H§ = null;
         this.§ U§.removeChildren(0,-1,true);
         for each(_loc1_ in this.§6#G§)
         {
            Starling.§?"7§.§[g§(_loc1_);
            _loc1_.dispose();
         }
         for each(_loc2_ in this.§+"k§)
         {
            this.§=#v§.§-"8§(this,_loc2_.§""r§);
         }
         this.§6#G§ = [];
         this.§6$-§ = null;
         this.§]#m§ = null;
      }
      
      public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         this.§>!G§ = param1 - this.§-!6§;
         this.§,t§ = param2 - this.§5c§;
         this.§-!6§ = param1;
         this.§5c§ = param2;
         this.§ U§.scaleX = this.§6z§;
         this.§ U§.scaleY = this.§6z§;
         this.§ U§.x += -this.§>!G§ * this.§^#,§;
         this.§ U§.y += -this.§,t§;
      }
      
      private function §7#2§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         for each(_loc1_ in this.§6#G§)
         {
            Starling.§?"7§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §5#M§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         for each(_loc1_ in this.§6#G§)
         {
            Starling.§?"7§.§[g§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §0"q§(param1:Boolean) : void
      {
         if(param1 == this.§1#]§)
         {
            return;
         }
         this.§1#]§ = param1;
         if(this.§1#]§)
         {
            this.§7#2§();
         }
         else
         {
            this.§5#M§();
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§9H§ = null;
         var _loc4_:Number = NaN;
         if(!this.§ U§.visible)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§+"k§.length)
         {
            _loc3_ = this.§+"k§[_loc2_];
            _loc3_.update(param1);
            _loc2_++;
         }
         if(this.§^!_§ != 0)
         {
            _loc4_ = this.§^!_§ * param1 / 1000;
            if(this.§=#+§ != this.§ !o§)
            {
               if(_loc4_ < this.§=#+§)
               {
                  _loc4_ = this.§ !o§;
               }
               else if(_loc4_ > this.§ !o§)
               {
                  _loc4_ = this.§=#+§;
               }
            }
            else
            {
               while(_loc4_ < -this.§`$C§)
               {
                  _loc4_ += this.§`$C§;
               }
               while(_loc4_ > this.§`$C§)
               {
                  _loc4_ -= this.§`$C§;
               }
            }
            this.§ U§.x += _loc4_ * this.§6z§;
            if(this.§>!b§ > 0)
            {
               if(this.§1!=§ == 0 && this.§]"j§ == 0)
               {
                  this.§1!=§ = this.§ U§.x;
                  this.§]"j§ = this.§`$C§ * this.§>!b§;
               }
               if(this.§^!_§ > 0)
               {
                  if(this.§ U§.x >= this.§]"j§)
                  {
                     this.§ U§.x = this.§1!=§;
                  }
               }
               else if(this.§ U§.x <= -this.§]"j§)
               {
                  this.§ U§.x = this.§1!=§;
               }
            }
         }
         if(this.§!"k§ && this.§'$;§ > 0)
         {
            this.§?1§ += param1;
            while(this.§?1§ >= this.§'$;§)
            {
               this.§?1§ -= this.§'$;§;
               ++this.§#""§;
               if(this.§#""§ >= this.§!"k§.length)
               {
                  this.§#""§ = 0;
               }
               _loc2_ = 0;
               while(_loc2_ < this.§!"k§.length)
               {
                  this.§!"k§[_loc2_].visible = this.§#""§ == _loc2_;
                  _loc2_++;
               }
            }
         }
      }
      
      function §]"R§(param1:String) : void
      {
         var _loc3_:§9H§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§+"k§.length)
         {
            _loc3_ = this.§+"k§[_loc2_];
            if(_loc3_.§""r§ == param1)
            {
               _loc3_.start();
            }
            _loc2_++;
         }
      }
      
      public function §`#!§(param1:§+!7§) : void
      {
         this.§]"R§(param1.eventName);
      }
      
      public function setVisibility(param1:Boolean) : void
      {
         this.§ U§.visible = param1;
      }
   }
}
