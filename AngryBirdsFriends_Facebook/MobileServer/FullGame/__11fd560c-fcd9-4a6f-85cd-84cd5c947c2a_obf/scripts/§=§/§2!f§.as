package §=§#9
{
   import §'!L§.§-$?§;
   import §'!L§.§5",§;
   import §'!L§.§8"y§;
   import §6$8§.§1"_§;
   import §6$8§.§4"p§;
   import §6$8§.§]!7§;
   import §?"e§.Starling;
   import §@0§.§%!q§;
   import §@0§.§6"9§;
   import §]#&§.ParticleDesignerPS;
   import §^"S§.DisplayObject;
   import §^"S§.Image;
   import §^"S§.Sprite;
   import §`"8§.§34§;
   import §`"8§.§="?§;
   import §`"8§.§`"X§;
   import §`"D§.ParticleManager;
   import flash.geom.Rectangle;
   
   public class §2!f§ implements §-$?§
   {
       
      
      private var §`#G§:int;
      
      private var §'!$§:int;
      
      private var §["X§:Number;
      
      private var §""J§:Boolean;
      
      protected var §4"D§:Sprite;
      
      private var §4#e§:Array;
      
      private var §43§:Boolean = true;
      
      private var §4Z§:§34§;
      
      private var §8]§:Sprite;
      
      private var §3#;§:Sprite;
      
      private var § "p§:Number = 0;
      
      private var §<!G§:Number = 0;
      
      protected var §^#5§:Number = 1.0;
      
      protected var §3$'§:Number = 0.0;
      
      protected var §,#g§:Number = 0.0;
      
      protected var §""&§:Number = 0.0;
      
      protected var §4"V§:Number = 0.0;
      
      protected var §>!M§:Number = 0.0;
      
      protected var §^!W§:Number = 0.0;
      
      protected var §[$1§:Number = 0.0;
      
      protected var §&!3§:Number = 0.0;
      
      protected var §--§:Number = 0.0;
      
      protected var §5#B§:Number = 0.0;
      
      protected var §@"<§:Boolean;
      
      private var §6#l§:Vector.<§=!x§>;
      
      protected var §&l§:§8"y§;
      
      private var §[M§:Number;
      
      private var §!!5§:Number;
      
      public function §2!f§(param1:§8"y§, param2:§]!7§, param3:Sprite, param4:§34§, param5:Number)
      {
         this.§4#e§ = [];
         this.§6#l§ = new Vector.<§=!x§>();
         super();
         this.§4Z§ = param4;
         this.§&l§ = param1;
         this.§4"D§ = param3;
         this.§["X§ = param2.speed;
         this.§""J§ = param2.foreground;
         this.§[$1§ = param2.velocityX;
         this.§--§ = param2.moveStartOffsetX;
         this.§5#B§ = param2.moveEndOffsetX;
         this.initialize(param2,param5);
         this.§4"D§.x = -(this.§3$'§ * this.§^#5§) + this.§>!M§;
         this.§4"D§.y = -(this.§,#g§ * this.§^#5§) + this.§^!W§;
      }
      
      public function get §&![§() : Number
      {
         return this.§["X§;
      }
      
      public function get §3$6§() : Boolean
      {
         return this.§""J§;
      }
      
      public function get §6#Z§() : Number
      {
         return this.§`#G§;
      }
      
      public function get §6z§() : Number
      {
         return this.§'!$§;
      }
      
      public function get scale() : Number
      {
         return this.§^#5§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§^#5§ = param1;
      }
      
      protected function initializePivotFromTexture(param1:§`"X§) : void
      {
         this.§,#g§ = param1.pivotY;
         if(!this.§""J§)
         {
            this.§3$'§ = param1.pivotX;
         }
         else
         {
            this.§3$'§ = 0;
         }
      }
      
      protected function initializePivotFromComposite(param1:DisplayObject) : void
      {
         var _loc2_:Rectangle = param1.§^$9§;
         this.§,#g§ = _loc2_.bottom;
         this.§3$'§ = (_loc2_.left + _loc2_.right) / 2;
      }
      
      protected function §+#u§(param1:String, param2:Boolean, param3:Number) : void
      {
         var _loc5_:§`"X§ = null;
         var _loc4_:DisplayObject;
         if(!(_loc4_ = §="?§.§-#y§(param1,this.§4Z§,param2)))
         {
            if(!(_loc5_ = this.§4Z§.getTexture(param1)))
            {
               return;
            }
            this.§^#5§ = param3 * _loc5_.scale;
            this.initializePivotFromTexture(_loc5_);
            this.§`#G§ = _loc5_.width - 2;
            this.§'!$§ = _loc5_.height - 2;
         }
         else
         {
            this.§^#5§ = param3;
            this.initializePivotFromComposite(_loc4_);
            this.§`#G§ = _loc4_.width - 2;
            this.§'!$§ = _loc4_.height - 2;
            _loc4_.dispose();
         }
         this.§`#G§ = Math.round(this.§`#G§);
         this.§'!$§ = Math.round(this.§'!$§);
      }
      
      protected function §5#%§(param1:String, param2:Boolean, param3:int, param4:int) : Sprite
      {
         var _loc7_:DisplayObject = null;
         var _loc8_:Sprite = null;
         var _loc5_:Sprite = new Sprite();
         var _loc6_:int = param3;
         while(_loc6_ <= param4)
         {
            (_loc7_ = this.§##e§(param1,param2)).x = _loc6_ * this.§`#G§;
            _loc7_.y = 0;
            _loc7_.scaleX = 1;
            _loc7_.scaleY = 1;
            _loc5_.addChild(_loc7_);
            _loc6_++;
         }
         if(§="?§.§7"X§(param1))
         {
            _loc8_ = this.§2"t§(_loc5_);
            _loc5_.removeChildren();
            _loc5_.dispose();
            (_loc5_ = _loc8_).flatten();
         }
         return _loc5_;
      }
      
      private function §2"t§(param1:Sprite) : Sprite
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
      
      protected function §##e§(param1:String, param2:Boolean) : DisplayObject
      {
         var _loc4_:§`"X§ = null;
         var _loc3_:DisplayObject = §="?§.§-#y§(param1,this.§4Z§,param2);
         if(!_loc3_)
         {
            _loc4_ = this.§4Z§.getTexture(param1);
            _loc3_ = new Image(_loc4_.texture,false,param2);
         }
         return _loc3_;
      }
      
      protected function getRepeatCount(param1:Number, param2:int) : int
      {
         return (2 + §%!q§.§ "+§ * 1.5 / (param2 * param1)) * 2;
      }
      
      protected function initialize(param1:§]!7§, param2:Number) : void
      {
         var _loc7_:int = 0;
         if(param1.scale != 0)
         {
            this.§^#5§ = param1.scale;
         }
         else
         {
            this.§^#5§ = 1;
         }
         this.§+#u§(param1.spriteName,param1.highQuality,this.§^#5§);
         if(this.§`#G§ <= 0)
         {
            return;
         }
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(param1.tileable)
         {
            _loc3_ = -(_loc7_ = this.getRepeatCount(param2,this.§`#G§)) / 2 - 1;
            _loc4_ = -_loc3_ - 1;
            this.§@"<§ = true;
         }
         this.§>!M§ = param1.xOffset;
         this.§^!W§ = param1.yOffset;
         var _loc5_:int = _loc3_;
         while(_loc5_ <= _loc4_)
         {
            this.§'!h§(param1,_loc5_ * this.§`#G§);
            _loc5_++;
         }
         var _loc6_:Sprite = this.§5#%§(param1.spriteName,param1.highQuality,_loc3_,_loc4_);
         this.§4"D§.addChild(_loc6_);
         this.§4!D§();
         this.§`-§();
         this.§#z§(param1);
      }
      
      private function §#z§(param1:§]!7§) : void
      {
         var _loc4_:§1"_§ = null;
         var _loc5_:§=!x§ = null;
         var _loc2_:uint = param1.§9!M§;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.§5!§(_loc3_);
            if((_loc5_ = §[!7§.§'!j§(this.§4"D§,this,_loc4_)).§,#>§)
            {
               this.§&l§.§4l§(this,_loc5_.§,#>§);
            }
            this.§6#l§.push(_loc5_);
            _loc3_++;
         }
      }
      
      private function §&"c§(param1:Sprite, param2:int = -1) : Boolean
      {
         if(param1)
         {
            if(param1.numChildren <= 0)
            {
               param1.dispose();
               return false;
            }
            param1.scaleX = 1 / this.§^#5§;
            param1.scaleY = 1 / this.§^#5§;
            param1.x = this.§3$'§ - this.§>!M§ / this.§^#5§;
            param1.y = this.§,#g§ - this.§^!W§ / this.§^#5§;
            if(param2 < 0)
            {
               this.§4"D§.addChild(param1);
            }
            else
            {
               this.§4"D§.addChildAt(param1,param2);
            }
         }
         return true;
      }
      
      private function §4!D§() : void
      {
         if(!this.§&"c§(this.§8]§))
         {
            this.§8]§ = null;
         }
         if(!this.§&"c§(this.§3#;§,0))
         {
            this.§3#;§ = null;
         }
      }
      
      private function §'!h§(param1:§]!7§, param2:Number) : void
      {
         var _loc4_:§4"p§ = null;
         var _loc5_:§6"9§ = null;
         var _loc6_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < param1.§^!,§)
         {
            _loc4_ = param1.§+w§(_loc3_);
            if((_loc5_ = ParticleManager.§"#b§(_loc4_.id,this.§4Z§)) && _loc5_.§ !Y§ > 0)
            {
               _loc5_.x = param2 + _loc4_.x + param1.xOffset;
               _loc5_.y = _loc4_.y;
               _loc5_.scaleX = _loc5_.scaleY = _loc4_.scale;
               _loc5_.rotation = _loc4_.rotation;
               _loc5_.alpha = _loc4_.alpha;
               _loc5_.start();
               Starling.§%!&§.add(_loc5_);
               this.§4#e§.push(_loc5_);
               if(_loc4_.§>+§)
               {
                  if(!this.§3#;§)
                  {
                     this.§3#;§ = new Sprite();
                  }
                  this.§3#;§.addChild(_loc5_);
               }
               else
               {
                  if(!this.§8]§)
                  {
                     this.§8]§ = new Sprite();
                  }
                  this.§8]§.addChild(_loc5_);
               }
               _loc6_ = 0;
               while(_loc6_ < _loc4_.fastForwardsAfterAdd)
               {
                  _loc5_.§##f§(1 / 20);
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
         var _loc2_:§=!x§ = null;
         this.§4"D§.removeChildren(0,-1,true);
         for each(_loc1_ in this.§4#e§)
         {
            Starling.§%!&§.§4!v§(_loc1_);
            _loc1_.dispose();
         }
         for each(_loc2_ in this.§6#l§)
         {
            this.§&l§.§-8§(this,_loc2_.§,#>§);
         }
         this.§4#e§ = [];
         this.§3#;§ = null;
         this.§8]§ = null;
      }
      
      public function setScreenOffset(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         this.§[M§ = param1 - this.§ "p§;
         this.§!!5§ = param2 - this.§<!G§;
         this.§ "p§ = param1;
         this.§<!G§ = param2;
         this.§4"D§.scaleX = this.§^#5§;
         this.§4"D§.scaleY = this.§^#5§;
         this.§4"D§.x += -this.§[M§ * this.§["X§;
         this.§4"D§.y += -this.§!!5§;
      }
      
      private function §`-§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         for each(_loc1_ in this.§4#e§)
         {
            Starling.§%!&§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §1o§() : void
      {
         var _loc1_:ParticleDesignerPS = null;
         for each(_loc1_ in this.§4#e§)
         {
            Starling.§%!&§.§4!v§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §-#p§(param1:Boolean) : void
      {
         if(param1 == this.§43§)
         {
            return;
         }
         this.§43§ = param1;
         if(this.§43§)
         {
            this.§`-§();
         }
         else
         {
            this.§1o§();
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§=!x§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§6#l§.length)
         {
            _loc3_ = this.§6#l§[_loc2_];
            _loc3_.update(param1);
            _loc2_++;
         }
         if(this.§[$1§ != 0)
         {
            this.§&!3§ += this.§[$1§ * param1 / 1000;
            if(this.§--§ != this.§5#B§)
            {
               if(this.§&!3§ < this.§--§)
               {
                  this.§&!3§ = this.§5#B§;
               }
               else if(this.§&!3§ > this.§5#B§)
               {
                  this.§&!3§ = this.§--§;
               }
            }
            else
            {
               while(this.§&!3§ < -this.§6#Z§)
               {
                  this.§&!3§ += this.§6#Z§;
               }
               while(this.§&!3§ > this.§6#Z§)
               {
                  this.§&!3§ -= this.§6#Z§;
               }
            }
         }
         this.§4"D§.x += this.§&!3§ * this.§^#5§;
      }
      
      function § "t§(param1:String) : void
      {
         var _loc3_:§=!x§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§6#l§.length)
         {
            _loc3_ = this.§6#l§[_loc2_];
            if(_loc3_.§,#>§ == param1)
            {
               _loc3_.start();
            }
            _loc2_++;
         }
      }
      
      public function §%+§(param1:§5",§) : void
      {
         this.§ "t§(param1.eventName);
      }
   }
}
