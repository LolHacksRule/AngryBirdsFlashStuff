package §7P§
{
   import § #§.§&!>§;
   import §!!U§.§#"t§;
   import §!!U§.§2"D§;
   import §!!U§.Sprite;
   import §&v§.Texture;
   import §1!2§.b2JointEdge;
   import §1!2§.b2PrismaticJoint;
   import §1!2§.b2RevoluteJoint;
   import §1!i§.§,#_§;
   import §2"Y§.§"t§;
   import §2"Y§.§&!x§;
   import §2"Y§.§'§;
   import §2"Y§.§,!W§;
   import §2"Y§.§<"+§;
   import §2"Y§.§?#Q§;
   import §2"Y§.§?#^§;
   import §7!F§.§8!W§;
   import §7!F§.§>"G§;
   import §8[§.b2Contact;
   import §<"B§.§-!5§;
   import §<"B§.§-#'§;
   import §<"B§.§2!=§;
   import §<"B§.§94§;
   import §<"B§.§;!#§;
   import §="2§.§?!r§;
   import §?m§.§8!B§;
   import §[""§.§3!2§;
   import §[R§.b2Vec2;
   import §^#>§.§#_§;
   import §^#>§.§&'§;
   import §^#>§.§2-§;
   import §`!r§.§ U§;
   import §`!r§.§!!H§;
   import §`!r§.§,!w§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §;=§ implements §;$§
   {
      
      private static const §<!4§:Boolean = false;
      
      public static const §@"J§:int = 1000000000;
      
      public static const §]"Z§:int = -1;
      
      public static const §""3§:int = -2;
       
      
      protected var §1!b§:Vector.<§7B§>;
      
      protected var §63§:Vector.<§1#E§>;
      
      protected var §`#[§:Vector.<§!!H§>;
      
      protected var §8'§:§,#_§;
      
      private var §6!S§:int = 1000000000;
      
      public var §2#G§:§#_§;
      
      protected var §'"+§:Vector.<§>"_§>;
      
      protected var §9§:§!!U§.Sprite;
      
      protected var §;T§:§!!U§.Sprite;
      
      protected var §!V§:§!!U§.Sprite;
      
      protected var §8!>§:§!!U§.Sprite;
      
      protected var §4!m§:Vector.<Texture>;
      
      protected var §6!Z§:Vector.<§-!5§>;
      
      protected var §="H§:int = 1;
      
      protected var §>>§:Vector.<§;!#§>;
      
      protected var §#!3§:int = 0;
      
      private var §%"`§:int = 0;
      
      private var §[!Y§:int = 0;
      
      private var §!,§:§94§;
      
      private var §1!§:§?"N§;
      
      private var §4"R§:Boolean = true;
      
      private var §%#T§:Boolean = true;
      
      private var §]" §:§&!>§;
      
      private var §`#M§:Boolean = false;
      
      public function §;=§(param1:§#_§, param2:§8!B§, param3:§!!U§.Sprite, param4:String)
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         this.§1!b§ = new Vector.<§7B§>();
         this.§63§ = new Vector.<§1#E§>();
         this.§`#[§ = new Vector.<§!!H§>();
         this.§8'§ = new §,#_§();
         this.§'"+§ = new Vector.<§>"_§>();
         this.§4!m§ = new Vector.<Texture>();
         this.§>>§ = new Vector.<§;!#§>();
         this.§!,§ = new §94§();
         super();
         this.§2#G§ = param1;
         this.§9§ = param3;
         this.§9§.§3'§ = false;
         this.§%#T§ = true;
         this.§4"R§ = true;
         this.§;T§ = new §!!U§.Sprite();
         this.§!V§ = new §!!U§.Sprite();
         this.§8!>§ = new §!!U§.Sprite();
         this.§9§.addChild(this.§;T§);
         this.§9§.addChild(this.§!V§);
         if(param2.hasGround)
         {
            _loc5_ = (this.§2#G§.§""?§.§!M§ + this.§2#G§.§""?§.§="q§) / 2;
            _loc6_ = 0 + §2-§.§?! §;
            this.addObject(param4,_loc5_,_loc6_,0,§;=§.§]"Z§);
         }
         this.addLevelObjects(param2);
      }
      
      public function get §!'§() : §!!U§.Sprite
      {
         return this.§8!>§;
      }
      
      public function get §8#G§() : §!!U§.Sprite
      {
         return this.§9§;
      }
      
      public function get activeObject() : §&#=§
      {
         return this.§1!§;
      }
      
      public function get objectCount() : int
      {
         return this.§1!b§.length;
      }
      
      public function set §-7§(param1:§&!>§) : void
      {
         if(param1 != this.§]" §)
         {
            this.§]" § = param1;
            if(this.§`#M§ && this.§]" §)
            {
               this.§]" §.levelStarted();
            }
         }
      }
      
      public function levelInitialized() : void
      {
         if(!this.§`#M§)
         {
            this.§`#M§ = true;
            if(this.§]" §)
            {
               this.§]" §.levelStarted();
            }
         }
      }
      
      public function §0"I§(param1:String) : §"t§
      {
         return this.§2#G§.levelItemManager.getItem(param1);
      }
      
      public function activateSpecialPower(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         if(this.§1!§)
         {
            _loc3_ = this.§1!§.activateSpecialPower(this,param1,param2);
         }
         return _loc3_;
      }
      
      protected function addLevelObjects(param1:§8!B§) : void
      {
         var _loc3_:§94§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:§"t§ = null;
         var _loc6_:§-#'§ = null;
         var _loc2_:int = 0;
         _loc2_ = 0;
         while(_loc2_ < param1.objectCount)
         {
            _loc3_ = param1.getObject(_loc2_);
            _loc4_ = 1;
            if(_loc5_ = this.§2#G§.levelItemManager.getItem(_loc3_.type))
            {
               _loc4_ = _loc5_.scale;
            }
            this.§<#1§(_loc3_,_loc3_.id,false,false,false,_loc4_);
            _loc2_++;
         }
         this.§-]§();
         this.§`!l§(true);
         this.§6!Z§ = new Vector.<§-!5§>();
         _loc2_ = 0;
         while(_loc2_ < param1.§&"+§)
         {
            _loc6_ = param1.§0#V§(_loc2_);
            this.§]!3§(_loc6_);
            _loc2_++;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         while(this.§1!b§.length > 0)
         {
            this.§5#<§(0,false,true);
         }
         while(this.§`#[§.length > 0)
         {
            this.§,#[§(0);
         }
         this.§1!b§ = null;
         this.§63§ = null;
         this.§`#[§ = null;
         this.§8'§ = null;
         this.§>>§ = null;
         if(this.§9§)
         {
            this.§9§.dispose();
            this.§9§ = null;
         }
         this.§;T§ = null;
         this.§!V§ = null;
         if(this.§8!>§)
         {
            this.§8!>§.dispose();
            this.§8!>§ = null;
         }
         while(this.§4!m§.length > 0)
         {
            _loc1_ = this.§4!m§.pop();
            this.§2#G§.textureManager.unregisterBitmapDataTexture(_loc1_);
         }
      }
      
      private function §`!l§(param1:Boolean) : void
      {
         this.§;T§.visible = param1;
      }
      
      private function §-]§() : void
      {
         var _loc3_:§7B§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:§&#=§ = null;
         var _loc6_:§?#^§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:BitmapData = null;
         var _loc18_:Number = NaN;
         var _loc19_:BitmapData = null;
         var _loc20_:Texture = null;
         var _loc21_:§#"t§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§&#=§> = new Vector.<§&#=§>();
         for each(_loc3_ in this.§1!b§)
         {
            if((_loc5_ = _loc3_ as §&#=§) && _loc5_.§"!@§())
            {
               _loc2_.push(_loc5_);
               _loc6_ = _loc5_.levelItem.shape;
               _loc7_ = Math.max(_loc6_.getWidth(),_loc6_.getHeight()) / §#_§.§8]§ * Math.sqrt(2);
               _loc4_ = new Rectangle(_loc3_.sprite.x - _loc7_ / 2,_loc3_.sprite.y - _loc7_ / 2,_loc7_,_loc7_);
               if(_loc1_ == null)
               {
                  _loc1_ = new Rectangle(_loc4_.x,_loc4_.y,_loc4_.width,_loc4_.height);
               }
               else
               {
                  _loc1_ = _loc1_.union(_loc4_);
               }
            }
         }
         if(_loc1_)
         {
            _loc8_ = this.§2#G§.camera.§'^§ / §#_§.§8]§;
            _loc9_ = this.§2#G§.camera.§="!§ / §#_§.§8]§;
            _loc10_ = (_loc8_ + _loc9_) / 2;
            _loc11_ = (_loc9_ - _loc8_) / 2;
            _loc8_ = _loc10_ - _loc11_;
            _loc9_ = _loc10_ + _loc11_;
            _loc1_.left = Math.max(_loc1_.left,_loc8_) - 4;
            _loc1_.right = Math.min(_loc1_.right,_loc9_) + 4;
            if(_loc1_.left >= _loc1_.right - 1)
            {
               return;
            }
            _loc12_ = 1;
            while(_loc1_.width > 2048 || _loc1_.height > 2048)
            {
               _loc1_.left /= 1.05;
               _loc1_.top /= 1.05;
               _loc1_.right /= 1.05;
               _loc1_.bottom /= 1.05;
               _loc12_ /= 1.05;
            }
            _loc13_ = _loc1_.width;
            _loc14_ = _loc1_.height;
            _loc15_ = _loc1_.left;
            _loc16_ = _loc1_.top;
            _loc17_ = new BitmapData(_loc13_,_loc14_,true,0);
            _loc18_ = this.getLevelTextureScale();
            this.§="F§(_loc17_.rect,_loc17_,_loc12_ * _loc18_);
            _loc19_ = this.§'"=§(_loc2_,_loc13_,_loc14_,_loc15_,_loc16_,_loc12_);
            _loc17_.copyChannel(_loc19_,_loc19_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc20_ = this.§2#G§.textureManager.getTextureFromBitmapData(_loc17_);
            this.§4!m§.push(_loc20_);
            (_loc21_ = new §#"t§(_loc20_)).x = _loc15_ / _loc12_;
            _loc21_.y = _loc16_ / _loc12_;
            _loc21_.scaleX = 1 / _loc12_;
            _loc21_.scaleY = 1 / _loc12_;
            this.§;T§.addChild(_loc21_);
            _loc19_.dispose();
         }
      }
      
      private function §'"=§(param1:Vector.<§&#=§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§&#=§ = null;
         var _loc11_:Number = NaN;
         var _loc12_:§?#^§ = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc10_.identity();
            _loc11_ = param6;
            if((_loc12_ = _loc7_.levelItem.shape) is §<"+§)
            {
               this.§,"r§(_loc12_,_loc8_,_loc9_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§"#,§(),param6,_loc11_,param4,param5);
            }
            else if(_loc12_ is §,!W§)
            {
               if((_loc12_ as §,!W§).vertices.length == 4)
               {
                  this.§,"r§(_loc12_,_loc8_,_loc9_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§"#,§(),param6,_loc11_,param4,param5);
               }
               else if((_loc12_ as §,!W§).vertices.length == 3)
               {
                  this.§0"!§(_loc12_ as §,!W§,_loc8_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§"#,§(),param6,_loc11_,param4,param5);
               }
            }
            else if(_loc12_ is §?#Q§)
            {
               this.§1]§(_loc12_ as §?#Q§,_loc8_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,param6,_loc11_,param4,param5);
            }
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      protected function §,"r§(param1:§?#^§, param2:BitmapData, param3:BitmapData, param4:Matrix, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Number) : void
      {
         var _loc12_:Number = param1.getWidth() / §#_§.§8]§ * param9;
         var _loc13_:Number = param1.getHeight() / §#_§.§8]§ * param9;
         param4.scale(_loc12_,_loc13_);
         param4.translate(-_loc12_ / 2,-_loc13_ / 2);
         param4.rotate(param7);
         param4.translate(param5 * param8 - param10,param6 * param8 - param11);
         param2.draw(param3,param4);
      }
      
      protected function §0"!§(param1:§,!W§, param2:BitmapData, param3:Matrix, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number) : void
      {
         var _loc14_:b2Vec2 = null;
         var _loc11_:flash.display.Sprite;
         (_loc11_ = new flash.display.Sprite()).graphics.beginFill(16777215);
         var _loc12_:Vector.<Number> = new Vector.<Number>();
         var _loc13_:int = 0;
         while(_loc13_ < param1.vertices.length)
         {
            _loc14_ = param1.vertices[_loc13_];
            _loc12_.push(_loc14_.x / §#_§.§8]§ * param8,_loc14_.y / §#_§.§8]§ * param8);
            _loc13_++;
         }
         _loc11_.graphics.drawTriangles(_loc12_);
         _loc11_.graphics.endFill();
         param3.rotate(param6);
         param3.translate(param4 * param7 - param9,param5 * param7 - param10);
         param2.draw(_loc11_,param3);
         _loc11_.graphics.clear();
         _loc11_ = null;
      }
      
      protected function §1]§(param1:§?#Q§, param2:BitmapData, param3:Matrix, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number) : void
      {
         var _loc10_:Number;
         var _loc11_:Number = (_loc10_ = param1.radius) / §#_§.§8]§ * param7;
         var _loc12_:flash.display.Sprite;
         (_loc12_ = new flash.display.Sprite()).graphics.beginFill(16777215);
         _loc12_.graphics.drawCircle(_loc11_,_loc11_,_loc11_);
         _loc12_.graphics.endFill();
         param3.translate(param4 * param6 - param8 - _loc11_,param5 * param6 - param9 - _loc11_);
         param2.draw(_loc12_,param3);
         _loc12_.graphics.clear();
         _loc12_ = null;
      }
      
      protected function §@#[§() : String
      {
         return this.§2#G§.background.§[!!§();
      }
      
      protected function getLevelTextureScale() : Number
      {
         return 1;
      }
      
      private function §="F§(param1:Rectangle, param2:BitmapData, param3:Number) : void
      {
         var _loc6_:BitmapData = null;
         var _loc7_:Matrix = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:* = 0;
         var _loc12_:int = 0;
         var _loc13_:* = 0;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc4_:String = this.§@#[§();
         var _loc5_:§8!W§;
         if(_loc5_ = this.§2#G§.backgroundTextureManager.getTexture(_loc4_))
         {
            _loc6_ = new BitmapData(_loc5_.bitmapData.width * param3,_loc5_.bitmapData.height * param3);
            (_loc7_ = new Matrix()).scale(param3,param3);
            _loc6_.draw(_loc5_.bitmapData,_loc7_);
            _loc8_ = _loc6_.width - 2;
            _loc9_ = _loc6_.height - 2;
            _loc10_ = param1.top / _loc9_;
            if(param1.top < 0)
            {
               _loc10_--;
            }
            _loc11_ = (_loc11_ = int(param1.bottom / _loc9_)) + 1;
            _loc12_ = param1.left / _loc8_;
            if(param1.left < 0)
            {
               _loc12_--;
            }
            _loc13_ = (_loc13_ = int(param1.right / _loc8_)) + 1;
            _loc14_ = _loc12_;
            while(_loc14_ < _loc13_)
            {
               _loc15_ = _loc10_;
               while(_loc15_ < _loc11_)
               {
                  param2.copyPixels(_loc6_,_loc6_.rect,new Point(_loc14_ * _loc8_,_loc15_ * _loc9_));
                  _loc15_++;
               }
               _loc14_++;
            }
            _loc6_.dispose();
         }
      }
      
      protected function addObjectBird(param1:§94§, param2:§!!U§.Sprite, param3:§>"G§, param4:§"t§, param5:Number = 1.0, param6:Boolean = true) : §?"N§
      {
         var _loc11_:§?"N§ = null;
         var _loc7_:String = param1.type;
         var _loc8_:Number = param1.x;
         var _loc9_:Number = param1.y;
         var _loc10_:Number = param1.angle;
         switch(_loc7_)
         {
            case "BIRD_BLACK":
               _loc11_ = new §>#4§(param2,param3,this.§2#G§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_BLUE":
               _loc11_ = new §9!s§(param2,param3,this.§2#G§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_GREEN":
               _loc11_ = new §0"u§(param2,param3,this.§2#G§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_WHITE":
               _loc11_ = new §<!c§(param2,param3,this.§2#G§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_YELLOW":
               _loc11_ = new §<#0§(param2,param3,this.§2#G§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_RED":
               _loc11_ = new §3!Y§(param2,param3,this.§2#G§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_REDBIG":
               _loc11_ = new §'#§(param2,param3,this.§2#G§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_ORANGE":
               _loc11_ = new §6#+§(param2,param3,this.§2#G§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_SARDINE":
               _loc11_ = new §@#P§(param2,param3,this.§2#G§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_MIGHTY_EAGLE":
               _loc11_ = new §'"o§(param2,param3,this.§2#G§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            default:
               _loc11_ = new §?"N§(param2,param3,this.§2#G§.mLevelEngine.mWorld,param4,param1,param5,param6);
         }
         return _loc11_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§#!3§ > 0;
      }
      
      protected function addObjectPig(param1:§94§, param2:§!!U§.Sprite, param3:§>"G§, param4:§"t§, param5:Number = 1.0) : §<!2§
      {
         return new §<!2§(param2,param3,this.§2#G§.mLevelEngine.mWorld,param4,param1,param5);
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number, param5:int, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0, param10:Boolean = false) : §7B§
      {
         this.§!,§.type = param1;
         this.§!,§.x = param2;
         this.§!,§.y = param3;
         this.§!,§.angle = param4;
         this.§!,§.§2"5§ = 0;
         this.§!,§.§`#Y§ = 0;
         return this.§<#1§(this.§!,§,param5,param6,param7,param8,param9,param10);
      }
      
      public function §]#^§(param1:String, param2:Number, param3:Number, param4:Number, param5:int, param6:Number = 0.0, param7:Number = 0.0, param8:Number = 1.0, param9:Boolean = false) : §7B§
      {
         this.§!,§.type = param1;
         this.§!,§.x = param2;
         this.§!,§.y = param3;
         this.§!,§.angle = param4;
         this.§!,§.§2"5§ = param6;
         this.§!,§.§`#Y§ = param7;
         return this.§<#1§(this.§!,§,param5,false,false,false,param8,param9);
      }
      
      protected function §<#1§(param1:§94§, param2:int, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true, param6:Number = 1.0, param7:Boolean = false) : §7B§
      {
         var _loc8_:§!!U§.Sprite = new §!!U§.Sprite();
         var _loc9_:§7B§;
         if((_loc9_ = this.§-"N§(param1,param2,_loc8_,param5,param6)) == null)
         {
            return null;
         }
         if(_loc9_ is §&#=§ && (_loc9_ as §&#=§).§"!@§())
         {
            _loc8_.visible = !this.§4"R§;
         }
         if(_loc9_ is §?"N§ && !(_loc9_ is §'"o§))
         {
            ++this.§#!3§;
         }
         if(!param7)
         {
            this.§!V§.§["`§(_loc8_);
         }
         else
         {
            this.§8!>§.§["`§(_loc8_);
         }
         if(param3)
         {
            this.§2#G§.§"!N§(_loc9_);
         }
         if(param4 && _loc9_ is §?"N§)
         {
            this.§1!§ = §?"N§(_loc9_);
         }
         return _loc9_;
      }
      
      private function §-"N§(param1:§94§, param2:int, param3:§!!U§.Sprite, param4:Boolean = true, param5:Number = 1.0) : §7B§
      {
         var _loc7_:§&#=§ = null;
         if(param2 == §""3§)
         {
            param2 = this.§6!S§;
            ++this.§6!S§;
         }
         else
         {
            if(param2 >= §@"J§)
            {
               throw new Error("Invalid object id: " + param2 + ". Has to be less than " + §@"J§);
            }
            if(this.§3p§(param2))
            {
               throw new Error("Object with id: " + param2 + " already added!");
            }
         }
         var _loc6_:§7B§;
         if((_loc6_ = this.createObjectInstance(param1,param3,param4,param5)) is §?"N§)
         {
            ++this.§[!Y§;
         }
         if(_loc6_)
         {
            _loc7_ = _loc6_ as §&#=§;
            if(_loc6_ is §!!H§)
            {
               this.§`#[§.push(_loc6_);
            }
            else
            {
               if(_loc7_)
               {
                  _loc7_.§3#A§(param2);
                  this.§8'§[param1.instanceName] = _loc6_;
               }
               this.§1!b§.push(_loc6_);
               if(_loc6_ is §1#E§)
               {
                  this.§63§.push(_loc6_);
               }
            }
            if(this.§]" §)
            {
               this.§]" §.§9!U§(_loc6_);
            }
         }
         return _loc6_;
      }
      
      protected function getCommonTextureName() : String
      {
         return "INGAME_TEXTURE_SAND_1";
      }
      
      protected function createBombBlockInstance(param1:§94§, param2:§!!U§.Sprite, param3:§>"G§, param4:§"t§, param5:int, param6:Number = 1.0) : §7B§
      {
         return new §-F§(param2,param3,this.§2#G§.mLevelEngine.mWorld,param4,param1,param6,param5);
      }
      
      protected function §1k§(param1:§94§, param2:§!!U§.Sprite, param3:§>"G§, param4:§"t§, param5:int, param6:Number = 1.0) : §7B§
      {
         return new §;#-§(param2,param3,this.§2#G§.mLevelEngine.mWorld,param4,param1,param6,param5);
      }
      
      protected function createObjectInstance(param1:§94§, param2:§!!U§.Sprite, param3:Boolean = true, param4:Number = 1.0) : §7B§
      {
         var _loc5_:§"t§;
         if(!(_loc5_ = this.§2#G§.levelItemManager.getItem(param1.type)))
         {
            return null;
         }
         var _loc6_:String;
         if((_loc6_ = _loc5_.itemName).substr(0,13) == "BLOCK_STATIC_")
         {
            _loc6_ = this.getCommonTextureName();
         }
         var _loc7_:§>"G§ = this.§2#G§.animationManager.getAnimation(_loc6_);
         var _loc8_:§7B§ = null;
         if(param1.type.indexOf("BIRD") == 0)
         {
            _loc8_ = this.addObjectBird(param1,param2,_loc7_,_loc5_,param4,param3);
         }
         else if(_loc5_.itemType == §"t§.§5s§)
         {
            _loc8_ = this.addObjectPig(param1,param2,_loc7_,_loc5_,param4);
         }
         else if(_loc5_.itemType == §"t§.§;"e§ || _loc5_.itemType == §"t§.§6!9§)
         {
            if(_loc5_.itemName.indexOf("TNT") >= 0)
            {
               _loc8_ = this.createBombBlockInstance(param1,param2,_loc7_,_loc5_,§>"_§.§#§,param4);
            }
            else if(_loc5_.itemName == §<!c§.§8>§)
            {
               _loc8_ = this.§1k§(param1,param2,_loc7_,_loc5_,§>"_§.§%#G§,param4);
            }
            else
            {
               _loc8_ = new §7";§(param2,_loc7_,this.§2#G§.mLevelEngine.mWorld,_loc5_,param1,param4,_loc5_.particleJSONId,_loc5_.particleVariationCount);
            }
         }
         else
         {
            _loc8_ = new §&#=§(param2,_loc7_,this.§2#G§.mLevelEngine.mWorld,_loc5_,param1,param4);
         }
         return _loc8_;
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean, param4:Number, param5:Number, param6:int) : void
      {
         this.§2#G§.addScore(param1,§&'§.§'#?§,param3,param4,param5,param6);
      }
      
      public function §;!0§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : void
      {
         this.§2#G§.particles.§;!0§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function §`?§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         this.§2#G§.particles.§`?§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16);
      }
      
      protected function §7"L§(param1:§&#=§) : void
      {
         var _loc4_:§-!5§ = null;
         var _loc5_:§-!5§ = null;
         var _loc6_:§7B§ = null;
         var _loc7_:§7B§ = null;
         var _loc2_:int = param1.id;
         var _loc3_:int = this.§6!Z§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§6!Z§[_loc3_];
            if(this.§6!Z§[_loc3_].id1 == _loc2_ || this.§6!Z§[_loc3_].id2 == _loc2_)
            {
               if(_loc4_.§##>§)
               {
                  _loc6_ = _loc4_.§##>§.§;!`§().GetUserData() as §7B§;
                  _loc7_ = _loc4_.§##>§.§8!'§().GetUserData() as §7B§;
                  if(_loc6_)
                  {
                     _loc6_.attachedJointRemoved(_loc7_);
                  }
                  if(_loc7_)
                  {
                     _loc7_.attachedJointRemoved(_loc6_);
                  }
               }
               _loc5_ = this.§6!Z§.pop();
               if(_loc3_ < this.§6!Z§.length)
               {
                  this.§6!Z§[_loc3_] = _loc5_;
               }
               this.§`"S§(_loc4_);
            }
            _loc3_--;
         }
      }
      
      protected function §]!3§(param1:§-#'§) : §-!5§
      {
         var _loc2_:int = param1.id1;
         var _loc3_:int = param1.id2;
         var _loc4_:§-!5§ = §-!5§.§]!3§(param1);
         this.§6!Z§.push(_loc4_);
         var _loc5_:§7B§ = this.§3p§(_loc2_);
         var _loc6_:§7B§ = this.§3p§(_loc3_);
         if(_loc5_ && _loc6_)
         {
            if(_loc4_.type != §-#'§.§use §)
            {
               _loc4_.§##>§ = this.§2#G§.mLevelEngine.mWorld.CreateJoint(_loc4_.§!!0§(_loc5_,_loc6_));
            }
            else
            {
               this.§>>§.push(new §;!#§(_loc2_,_loc3_,_loc4_.annihilationTime,param1.§-"A§));
            }
            _loc5_.attachedJointCreated(_loc6_);
            _loc6_.attachedJointCreated(_loc5_);
         }
         return _loc4_;
      }
      
      protected function §`"S§(param1:§-!5§) : void
      {
         if(param1.§##>§)
         {
            this.§2#G§.mLevelEngine.mWorld.DestroyJoint(param1.§##>§);
         }
         if(param1.§`"t§)
         {
            if(this.§!V§.contains(param1.§`"t§))
            {
               this.§!V§.removeChild(param1.§`"t§,true);
            }
         }
      }
      
      public function §1!R§(param1:int, param2:Number, param3:Number, param4:int = -1) : void
      {
         this.§'"+§.push(§>"_§.§[1§(param1,param2,param3));
         this.§#!q§(param1);
      }
      
      protected function §#!q§(param1:int) : void
      {
         §?!r§.§"#_§("TntExplosions","ChannelExplosions");
      }
      
      public function §6#4§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         this.§'"+§.push(§>"_§.§2W§(param1,param2,param3,param4,param5,param6));
         §?!r§.§"#_§("TntExplosions","ChannelExplosions");
      }
      
      public function getForceAtPoint(param1:Number, param2:Number, param3:Number, param4:b2Vec2) : b2Vec2
      {
         if(!param4)
         {
            param4 = new b2Vec2();
         }
         param4.SetV(this.§2#G§.mLevelEngine.mWorld.GetGravity());
         return param4;
      }
      
      public function get timeSpeedMultiplier() : Number
      {
         return this.§2#G§.timeSpeedMultiplier;
      }
      
      public function §4#7§(param1:Number, param2:Number) : int
      {
         var _loc4_:§&#=§ = null;
         var _loc3_:int = this.§1!b§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§1!b§[_loc3_] as §&#=§) && _loc4_.isInCoordinates(param1,param2))
            {
               return _loc3_;
            }
            _loc3_--;
         }
         return -1;
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §&#=§
      {
         var _loc4_:§&#=§ = null;
         var _loc3_:int = this.§1!b§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§1!b§[_loc3_] as §&#=§)
            {
               if(_loc4_.isInCoordinates(param1,param2))
               {
                  return _loc4_;
               }
            }
            _loc3_--;
         }
         return null;
      }
      
      public function §;"r§(param1:Number, param2:Number) : Vector.<§&#=§>
      {
         var _loc5_:§&#=§ = null;
         var _loc3_:Vector.<§&#=§> = new Vector.<§&#=§>();
         var _loc4_:int = this.§1!b§.length - 1;
         while(_loc4_ >= 0)
         {
            if((_loc5_ = this.§1!b§[_loc4_] as §&#=§) && _loc5_.isInCoordinates(param1,param2))
            {
               _loc3_.push(_loc5_);
            }
            _loc4_--;
         }
         return _loc3_;
      }
      
      public function getObject(param1:int) : §7B§
      {
         return this.§1!b§[param1];
      }
      
      public function §3p§(param1:int) : §&#=§
      {
         var _loc2_:§7B§ = null;
         var _loc3_:§&#=§ = null;
         for each(_loc2_ in this.§1!b§)
         {
            _loc3_ = _loc2_ as §&#=§;
            if(_loc3_ && _loc3_.id == param1)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function §5"z§(param1:String) : §&#=§
      {
         return this.§8'§[param1];
      }
      
      public function renderObjects(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:int = this.§1!b§.length - 1;
         while(_loc4_ >= 0)
         {
            this.§1!b§[_loc4_].render(param1,param2,param3);
            _loc4_--;
         }
         this.§&"A§(param1);
         _loc4_ = this.§`#[§.length - 1;
         while(_loc4_ >= 0)
         {
            this.§`#[§[_loc4_].render(param1,param2,param3);
            _loc4_--;
         }
      }
      
      protected function getExplosionDamageMultiplier(param1:Number, param2:Number) : Number
      {
         return 1 / param1;
      }
      
      protected function getExplosionDistanceToObject(param1:Number, param2:Number, param3:§&#=§) : §3!2§
      {
         var _loc4_:Number = param3.§3!t§().GetPosition().x - param1;
         var _loc5_:Number = param3.§3!t§().GetPosition().y - param2;
         var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         var _loc7_:§3!2§;
         (_loc7_ = new §3!2§()).distance = _loc6_;
         _loc7_.§>"6§ = new Point(param3.§3!t§().GetPosition().x,param3.§3!t§().GetPosition().y);
         return _loc7_;
      }
      
      protected function §>U§(param1:§&#=§, param2:Number, param3:Boolean = false) : void
      {
         param1.applyDamage(param2,this,null,param3);
      }
      
      protected function §^!E§(param1:§&#=§) : Boolean
      {
         return false;
      }
      
      protected function §4!j§() : void
      {
         var _loc1_:§>"_§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§7B§ = null;
         var _loc7_:§&#=§ = null;
         var _loc8_:§3!2§ = null;
         var _loc9_:Number = NaN;
         var _loc10_:Point = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         if(!this.§%#T§)
         {
            return;
         }
         while(this.§'"+§.length > 0)
         {
            _loc1_ = this.§'"+§.shift();
            _loc2_ = _loc1_.§&D§;
            _loc3_ = _loc1_.x;
            _loc4_ = _loc1_.y;
            _loc5_ = _loc1_.damage;
            this.shakeCameraOnExplosion(_loc1_.push);
            for each(_loc6_ in this.§1!b§)
            {
               if((_loc7_ = _loc6_ as §&#=§) && !this.§^!E§(_loc7_))
               {
                  if((_loc8_ = this.getExplosionDistanceToObject(_loc3_,_loc4_,_loc7_)).distance <= _loc1_.§&D§)
                  {
                     _loc9_ = _loc1_.push * this.getExplosionDamageMultiplier(_loc8_.distance,_loc1_.§&D§);
                     if(_loc8_.distance > 0)
                     {
                        (_loc10_ = new Point(_loc8_.§>"6§.x - _loc3_,_loc8_.§>"6§.y - _loc4_)).normalize(1);
                        _loc11_ = _loc9_ * _loc10_.x;
                        _loc12_ = _loc9_ * _loc10_.y;
                        _loc7_.§3!t§().ApplyImpulse(new b2Vec2(_loc11_,_loc12_),new b2Vec2(_loc8_.§>"6§.x,_loc8_.§>"6§.y));
                     }
                  }
                  if(_loc8_.distance <= _loc1_.§6"-§)
                  {
                     _loc13_ = _loc5_ * this.getExplosionDamageMultiplier(_loc8_.distance,_loc1_.§6"-§);
                     this.§>U§(_loc7_,_loc13_);
                  }
               }
            }
            this.updateExplosionEffects(_loc1_,_loc3_,_loc4_,_loc2_);
         }
      }
      
      protected function updateExplosionEffects(param1:§>"_§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         this.§2#G§.particles.§;!0§(this.§ "$§(param1.type),§,!w§.§ !B§,§ U§.§>#]§,param2,param3,600,"",§ U§.§^#+§,0,0,0,0,1,20,true);
         var _loc5_:int = 30;
         while(_loc5_ < 150)
         {
            _loc6_ = 0.75 * param4 + Math.random() * param4;
            _loc7_ = 1250 + Math.random() * 750;
            _loc8_ = _loc5_ / (180 / Math.PI);
            this.§2#G§.particles.§;!0§(§ U§.§;!%§,§,!w§.§ !B§,§ U§.§'# §,param2,param3,_loc7_,"",§ U§.§^#+§,_loc6_ * Math.cos(_loc8_),-_loc6_ * Math.sin(_loc8_),20,0);
            _loc5_ += 5;
         }
      }
      
      protected function § "$§(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return § U§.§ !`§;
      }
      
      public function updateObjects(param1:Number) : void
      {
         var _loc4_:§&#=§ = null;
         var _loc2_:§7B§ = null;
         var _loc3_:int = this.§1!b§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§1!b§[_loc3_];
            if(_loc2_.removeOnNextUpdate)
            {
               this.§5#<§(_loc3_,true);
            }
            else
            {
               this.updateObject(_loc2_,param1);
               _loc4_ = _loc2_ as §&#=§;
               if(this.§&<§(_loc2_))
               {
                  if(_loc4_)
                  {
                     _loc4_.§[v§(§'#2§.§&x§);
                  }
                  this.§5#<§(_loc3_,!(_loc4_ is §?"N§));
               }
               else if(_loc4_ && _loc4_.isReadyToBeRemoved(param1))
               {
                  _loc4_.§[v§(§'#2§.§&x§);
                  this.§5#<§(_loc3_,false);
               }
            }
            _loc3_--;
         }
         this.§`e§(param1);
         this.§4!j§();
         if(this.§]" §)
         {
            this.§]" §.update(param1);
         }
      }
      
      protected function updateObject(param1:§7B§, param2:Number) : void
      {
         param1.update(param2,this);
      }
      
      protected function §&"A§(param1:Number) : void
      {
         var _loc2_:§!!H§ = null;
         var _loc3_:int = this.§`#[§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§`#[§[_loc3_];
            if(_loc2_.removeOnNextUpdate)
            {
               this.§,#[§(_loc3_);
            }
            else
            {
               _loc2_.update(param1,this);
            }
            _loc3_--;
         }
      }
      
      protected function §`e§(param1:Number) : void
      {
         this.§;R§(param1);
         this.§9"X§();
      }
      
      protected function §;R§(param1:Number) : void
      {
         var _loc3_:§;!#§ = null;
         var _loc4_:§7B§ = null;
         var _loc2_:int = this.§>>§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§>>§[_loc2_];
            if(_loc3_.§>"i§)
            {
               if(!_loc3_.update(param1))
               {
                  if(!_loc3_.§+!A§)
                  {
                     _loc4_ = this.§3p§(_loc3_.objectId1);
                     this.removeObject(_loc4_,true);
                  }
                  _loc4_ = this.§3p§(_loc3_.objectId2);
                  this.removeObject(_loc4_,true);
                  this.§>>§.splice(_loc2_,1);
               }
            }
            _loc2_--;
         }
      }
      
      private function §'w§(param1:§-!5§) : void
      {
         var _loc2_:§&#=§ = param1.debug_object_1;
         var _loc3_:§&#=§ = param1.debug_object_2;
         if(!_loc2_)
         {
            _loc2_ = this.§3p§(param1.id1);
            param1.debug_object_1 = _loc2_;
         }
         if(!_loc3_)
         {
            _loc3_ = this.§3p§(param1.id2);
            param1.debug_object_2 = _loc3_;
         }
         var _loc4_:Number = _loc2_.sprite.x;
         var _loc5_:Number = _loc2_.sprite.y;
         var _loc6_:Number = _loc3_.sprite.x;
         var _loc7_:Number = _loc3_.sprite.y;
         var _loc8_:Number = Math.sqrt((_loc6_ - _loc4_) * (_loc6_ - _loc4_) + (_loc7_ - _loc5_) * (_loc7_ - _loc5_));
         var _loc9_:Number = Math.atan2(_loc7_ - _loc5_,_loc6_ - _loc4_);
         if(param1.§`"t§ == null)
         {
            param1.§`"t§ = new §2"D§(4,4,4294901760);
            this.§!V§.addChild(param1.§`"t§);
         }
         param1.§`"t§.x = _loc4_;
         param1.§`"t§.y = _loc5_;
         param1.§`"t§.width = _loc8_;
         param1.§`"t§.rotation = _loc9_;
      }
      
      protected function §,# §(param1:Number, param2:Number, param3:Number) : Number
      {
         return 0.01;
      }
      
      private function §9"X§() : void
      {
         var _loc1_:§-!5§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         for each(_loc1_ in this.§6!Z§)
         {
            if(§<!4§)
            {
               this.§'w§(_loc1_);
            }
            if(_loc1_.§@[§ && _loc1_.§9"r§ && _loc1_.§?"B§)
            {
               _loc2_ = _loc1_.lowerLimit;
               _loc3_ = _loc1_.upperLimit;
               if(_loc1_.type == §-#'§.§,"?§)
               {
                  _loc4_ = (_loc1_.§##>§ as b2PrismaticJoint).§##2§();
                  _loc5_ = (_loc1_.§##>§ as b2PrismaticJoint).§+#0§();
                  _loc6_ = this.§,# §(_loc3_,_loc2_,_loc5_);
                  if(_loc5_ > 0 && _loc4_ >= _loc3_ - _loc6_ || _loc5_ < 0 && _loc4_ <= _loc2_ + _loc6_)
                  {
                     (_loc1_.§##>§ as b2PrismaticJoint).§8#S§(-_loc5_);
                  }
               }
               else if(_loc1_.type == §-#'§.§>"z§)
               {
                  _loc7_ = (_loc1_.§##>§ as b2RevoluteJoint).§4"F§();
                  if((_loc5_ = (_loc1_.§##>§ as b2RevoluteJoint).§+#0§()) > 0 && _loc7_ >= _loc3_ || _loc5_ < 0 && _loc7_ <= _loc2_)
                  {
                     (_loc1_.§##>§ as b2RevoluteJoint).§8#S§(-_loc5_);
                  }
               }
            }
         }
      }
      
      public function §7U§() : void
      {
         var _loc1_:§-!5§ = null;
         while(this.§6!Z§.length > 0)
         {
            _loc1_ = this.§6!Z§.pop();
            this.§`"S§(_loc1_);
         }
      }
      
      public function §&<§(param1:§7B§) : Boolean
      {
         this.§0#B§(param1);
         if(param1 && (!param1.levelItem || param1.levelItem.getItemBodyType() != §&!x§.§&#_§) && param1.§3!t§() && this.§%!%§(param1.§3!t§().GetPosition().x,param1.§3!t§().GetPosition().y))
         {
            if(param1 is §&#=§)
            {
               §&#=§(param1).updateOutOfBounds(this);
            }
            return true;
         }
         return false;
      }
      
      protected function §0#B§(param1:§7B§) : void
      {
      }
      
      public function §5#!§(param1:Number, param2:Number) : Boolean
      {
         return this.§2#G§.camera.§?l§(param1,param2);
      }
      
      public function §%!%§(param1:Number, param2:Number) : Boolean
      {
         return this.§2#G§.§""?§.§'"b§(param1,param2);
      }
      
      public function §,#[§(param1:int) : void
      {
         if(param1 < 0)
         {
            return;
         }
         var _loc2_:§!!H§ = this.§`#[§[param1];
         this.§6^§(_loc2_.sprite);
         this.§`#[§[param1] = null;
         this.§`#[§.splice(param1,1);
         _loc2_.dispose();
         _loc2_ = null;
      }
      
      protected function shouldShowScoreText(param1:§&#=§) : Boolean
      {
         return true;
      }
      
      protected function getScoreTextPosition(param1:§&#=§) : Point
      {
         var _loc2_:Number = param1.§3!t§().GetPosition().x;
         var _loc3_:Number = param1.§3!t§().GetPosition().y - 3;
         return new Point(_loc2_,_loc3_);
      }
      
      public function §5#<§(param1:int, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc5_:§&#=§ = null;
         var _loc6_:§;!#§ = null;
         var _loc7_:Point = null;
         var _loc8_:int = 0;
         var _loc9_:Boolean = false;
         var _loc10_:int = 0;
         if(param1 < 0)
         {
            return;
         }
         var _loc4_:§7B§;
         if((_loc4_ = this.§1!b§[param1]) is §<!2§)
         {
            ++this.§%"`§;
         }
         else if(_loc4_ is §?"N§)
         {
            --this.§#!3§;
         }
         if(_loc4_ == this.§1!§)
         {
            this.§1!§ = null;
         }
         if(_loc4_ is §&#=§)
         {
            _loc5_ = _loc4_ as §&#=§;
            if(param2)
            {
               _loc7_ = this.getScoreTextPosition(_loc5_);
               _loc8_ = § U§.§0#`§(_loc5_.itemName);
               _loc9_ = this.shouldShowScoreText(_loc5_);
               this.§2#G§.addScore(_loc5_.levelItem.score,§&'§.§8#'§,_loc9_,_loc7_.x,_loc7_.y,_loc8_);
            }
            if(param3)
            {
               _loc5_.updateBeforeRemoving(null);
            }
            else
            {
               _loc5_.updateBeforeRemoving(this);
            }
            this.§7"L§(_loc5_);
            for each(_loc6_ in this.§>>§)
            {
               if(_loc6_.objectId1 == _loc5_.id || _loc6_.objectId2 == _loc5_.id)
               {
                  _loc6_.§>"i§ = true;
               }
            }
            delete this.§8'§[_loc5_.§["H§.instanceName];
         }
         this.§6^§(_loc4_.sprite);
         this.§1!b§[param1] = null;
         this.§1!b§.splice(param1,1);
         if(_loc4_ is §1#E§)
         {
            if((_loc10_ = this.§63§.indexOf(_loc4_)) >= 0)
            {
               this.§63§.splice(_loc10_,1);
            }
         }
         if(this.§]" §)
         {
            this.§]" §.§^!I§(_loc4_);
         }
         this.§^!I§(_loc4_);
         _loc4_.dispose();
         _loc4_ = null;
      }
      
      protected function §^!I§(param1:§7B§) : void
      {
         var _loc2_:§&#=§ = null;
         var _loc3_:§2!=§ = null;
         var _loc4_:* = null;
         var _loc5_:String = null;
         var _loc6_:§&#=§ = null;
         if(param1 is §&#=§)
         {
            _loc2_ = param1 as §&#=§;
            _loc3_ = _loc2_.§["H§ as §2!=§;
            if(_loc3_)
            {
               for(_loc4_ in _loc3_.§=#X§.§^!o§)
               {
                  _loc5_ = _loc3_.§=#X§.§^!o§[_loc4_];
                  _loc6_ = this.§5"z§(_loc4_);
                  this.performTriggerActionOnObject(_loc6_,_loc5_,"onDestroyed");
               }
            }
         }
      }
      
      protected function performTriggerActionOnObject(param1:§&#=§, param2:String, param3:String) : void
      {
         if(param1)
         {
            param1.§="D§(param2,param3,this);
         }
      }
      
      private function §6^§(param1:§!!U§.Sprite) : void
      {
         if(param1 && param1.parent)
         {
            param1.parent.removeChild(param1);
         }
      }
      
      public function removeObject(param1:§7B§, param2:Boolean = false) : void
      {
         if(param1)
         {
            this.§5#<§(this.§1!b§.indexOf(param1),param2);
         }
      }
      
      public function §5"J§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§2#G§.§@"1§();
         }
      }
      
      public function §&!G§(param1:Boolean, param2:Number = 0, param3:Number = 0, param4:Number = 0) : void
      {
         this.§2#G§.§&!G§(param1,param2,param3,param4);
      }
      
      public function §'"0§(param1:Number, param2:Number) : void
      {
         this.§9§.x = -param1;
         this.§9§.y = -param2;
         this.§8!>§.x = -param1;
         this.§8!>§.y = -param2;
      }
      
      public function isPigsAlive() : Boolean
      {
         var _loc2_:§7B§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§1!b§.length)
         {
            _loc2_ = this.§1!b§[_loc1_];
            if(_loc2_ && _loc2_ is §<!2§ && (_loc2_ as §<!2§).health > 0)
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function §3"z§(param1:Boolean = false) : int
      {
         var _loc4_:§<!2§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§1!b§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§1!b§[_loc3_] as §<!2§) && _loc4_.health > 0)
            {
               if(!param1 || !_loc4_.§5!+§ && !_loc4_.§;e§)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §@"z§() : int
      {
         var _loc2_:§&#=§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§1!b§)
         {
            if(_loc2_ is §7";§)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §6#W§() : int
      {
         var _loc2_:§&#=§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§1!b§)
         {
            if(_loc2_ && _loc2_.§"!@§())
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function makePigsSmile(param1:Number = 1) : void
      {
         var _loc3_:§<!2§ = null;
         var _loc2_:int = this.§1!b§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§1!b§[_loc2_] as §<!2§;
            if(_loc3_ && _loc3_.health > 0)
            {
               _loc3_.scream();
            }
            _loc2_--;
         }
      }
      
      public function §;!N§() : Boolean
      {
         var _loc2_:§?"N§ = null;
         var _loc1_:int = this.§1!b§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§1!b§[_loc1_] as §?"N§;
            if(_loc2_ && _loc2_.health > 0)
            {
               return true;
            }
            _loc1_--;
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc2_:§&#=§ = null;
         var _loc1_:int = this.§1!b§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§1!b§[_loc1_] as §&#=§;
            if(_loc2_ != null && _loc2_.health > 0 && !_loc2_.§[#L§())
            {
               if(_loc2_.isDamageAwardingScore() && !_loc2_.§+"6§())
               {
                  return false;
               }
               if(_loc2_ is §?"N§ && _loc2_.health > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §,O§(param1:Boolean = false) : §<!2§
      {
         var _loc7_:§<!2§ = null;
         var _loc2_:int = this.§1!b§.length;
         var _loc3_:int = this.§3"z§(param1);
         if(_loc3_ == 0)
         {
            return null;
         }
         var _loc4_:int = Math.random() * _loc3_;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         while(_loc6_ < _loc2_)
         {
            if((_loc7_ = this.§1!b§[_loc6_] as §<!2§) && _loc7_.health > 0)
            {
               if(!param1 || !_loc7_.§5!+§ && !_loc7_.§;e§)
               {
                  if(_loc5_ >= _loc4_)
                  {
                     return _loc7_;
                  }
                  _loc5_++;
               }
            }
            _loc6_++;
         }
         return null;
      }
      
      public function §#"+§() : int
      {
         var _loc3_:§&#=§ = null;
         var _loc1_:int = 0;
         var _loc2_:int = this.§1!b§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§1!b§[_loc2_] as §&#=§;
            if(_loc3_)
            {
               _loc1_ += _loc3_.levelItem.score;
               if(_loc3_.isDamageAwardingScore())
               {
                  _loc1_ += this.damageScoreMultiplier * int(_loc3_.healthMax);
               }
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§2#G§.slingshot.§#"+§());
      }
      
      protected function §6S§(param1:§7B§, param2:§7B§) : Boolean
      {
         if(param1 is §&#=§ && param2 is §&#=§ && !(param1 as §&#=§).§@"W§() && !(param2 as §&#=§).§@"W§())
         {
            return false;
         }
         return true;
      }
      
      protected function hasMinimumCollisionSpeed(param1:§7B§, param2:§7B§) : Boolean
      {
         return this.§6S§(param1,param2);
      }
      
      public function §<"Z§() : void
      {
         this.§#!3§ = 0;
      }
      
      protected function shakeCameraOnCollision(param1:Number, param2:Number, param3:Number) : void
      {
      }
      
      protected function shakeCameraOnExplosion(param1:Number) : void
      {
      }
      
      protected function getCollisionDamageFactor(param1:§&#=§, param2:§&#=§) : Number
      {
         var _loc3_:Number = NaN;
         if(param2 is §?"N§)
         {
            return 1;
         }
         if(param1 is §?"N§)
         {
            return Number(param1.§!!>§(param2.§+"J§()));
         }
         return 1;
      }
      
      protected function getCollisionForceFactor(param1:§&#=§, param2:§&#=§) : Number
      {
         if(param2 is §?"N§)
         {
            return 0;
         }
         return 1;
      }
      
      protected function §2#E§(param1:§&#=§, param2:§&#=§) : Number
      {
         var _loc4_:Number = this.getCollisionForceFactor(param1,param2);
         var _loc5_:Number = this.getCollisionForceFactor(param2,param1);
         var _loc6_:Number = param1.§3!t§().GetMass();
         var _loc7_:Number = param2.§3!t§().GetMass();
         var _loc8_:b2Vec2 = param1.§;!x§();
         var _loc9_:b2Vec2 = param2.§;!x§();
         var _loc10_:Number = _loc4_ * _loc6_ * _loc8_.x - _loc5_ * _loc7_ * _loc9_.x;
         var _loc11_:Number = _loc4_ * _loc6_ * _loc8_.y - _loc5_ * _loc7_ * _loc9_.y;
         return Number(Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_) / 10);
      }
      
      public function objectCollision(param1:§7B§, param2:§7B§, param3:b2Contact) : Boolean
      {
         var _loc13_:§-!5§ = null;
         var _loc14_:b2JointEdge = null;
         var _loc15_:b2JointEdge = null;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         if(!this.§%#T§)
         {
            return false;
         }
         param1.collidedWith(param2);
         param2.collidedWith(param1);
         var _loc4_:§&#=§ = param1 as §&#=§;
         var _loc5_:§&#=§ = param2 as §&#=§;
         if(!_loc4_ || !_loc5_)
         {
            return true;
         }
         if(_loc4_.destroysCollidingObjects || _loc5_.§,"W§)
         {
            _loc5_.applyDamage(_loc5_.healthMax * 2,this,_loc4_,true);
            _loc4_.causedDamageToObjects();
            return true;
         }
         if(_loc5_.destroysCollidingObjects || _loc4_.§,"W§)
         {
            _loc4_.applyDamage(_loc4_.healthMax * 2,this,_loc5_,true);
            _loc5_.causedDamageToObjects();
            return true;
         }
         if(!this.hasMinimumCollisionSpeed(_loc4_,_loc5_))
         {
            return false;
         }
         if(_loc4_ is §?"N§ && _loc5_ is §?"N§)
         {
            return true;
         }
         var _loc6_:Number = this.§2#E§(_loc4_,_loc5_);
         var _loc7_:Number = Math.max(0,_loc4_.health);
         var _loc8_:Number = Math.max(0,_loc5_.health);
         this.shakeCameraOnCollision(_loc6_,_loc7_,_loc8_);
         var _loc9_:Number = this.getCollisionDamageFactor(_loc4_,_loc5_);
         var _loc10_:Number = this.getCollisionDamageFactor(_loc5_,_loc4_);
         var _loc11_:Number = _loc4_.applyDamage(_loc6_ * _loc10_,this,_loc5_,true);
         var _loc12_:Number = _loc5_.applyDamage(_loc6_ * _loc9_,this,_loc4_,true);
         for each(_loc13_ in this.§6!Z§)
         {
            if(_loc13_.isBreakable && _loc6_ >= _loc13_.minBreakForce)
            {
               _loc14_ = _loc4_.§3!t§().GetJointList();
               _loc15_ = _loc5_.§3!t§().GetJointList();
               if(_loc14_ != null && _loc14_.joint == _loc13_.§##>§ || _loc15_ != null && _loc15_.joint == _loc13_.§##>§)
               {
                  this.§`"S§(_loc13_);
               }
            }
         }
         if(_loc11_ < _loc7_)
         {
            _loc5_.causedDamageToObjects();
         }
         if(_loc12_ < _loc8_)
         {
            _loc4_.causedDamageToObjects();
         }
         if(_loc4_ is §?"N§)
         {
            if(_loc12_ <= 0)
            {
               _loc16_ = _loc4_.§5#Q§(_loc5_.§+"J§());
               this.§!"u§(_loc4_ as §?"N§,_loc6_ * _loc9_,_loc8_,_loc16_);
               return false;
            }
         }
         if(_loc5_ is §?"N§)
         {
            if(_loc11_ <= 0)
            {
               _loc17_ = _loc5_.§5#Q§(_loc4_.§+"J§());
               this.§!"u§(_loc5_ as §?"N§,_loc6_ * _loc10_,_loc7_,_loc17_);
               return false;
            }
         }
         return _loc11_ <= 0 && _loc12_ <= 0;
      }
      
      public function §#K§(param1:§7B§, param2:§7B§) : void
      {
         if(param1)
         {
            param1.collisionEnded(param2);
         }
         if(param2)
         {
            param2.collisionEnded(param1);
         }
      }
      
      protected function §!"u§(param1:§?"N§, param2:Number, param3:Number, param4:Number) : void
      {
         if(param2 == 0)
         {
            return;
         }
         var _loc5_:Number = (param2 - param3) / param2;
         if(isNaN(_loc5_))
         {
            _loc5_ = 0;
         }
         if((_loc5_ *= param4) > 1)
         {
            _loc5_ = 1;
         }
         var _loc6_:b2Vec2 = param1.§;!x§();
         param1.§3l§(new b2Vec2(_loc6_.x * _loc5_,_loc6_.y * _loc5_));
      }
      
      public function §5h§() : void
      {
         var _loc2_:§&#=§ = null;
         var _loc1_:int = this.§1!b§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§1!b§[_loc1_] as §&#=§;
            if(_loc2_ != null && _loc2_ is §<!2§)
            {
               this.§5#<§(_loc1_,true);
            }
            _loc1_--;
         }
      }
      
      public function §?"O§() : void
      {
         var _loc2_:§&#=§ = null;
         var _loc1_:int = this.§1!b§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§1!b§[_loc1_] as §&#=§;
            if(_loc2_ != null && _loc2_.§2g§())
            {
               this.§5#<§(_loc1_,true);
            }
            _loc1_--;
         }
      }
      
      public function §!A§() : int
      {
         return this.§1!b§.length;
      }
      
      public function §6#O§(param1:§8!B§) : void
      {
         var _loc4_:§&#=§ = null;
         var _loc5_:§94§ = null;
         var _loc6_:§-#'§ = null;
         var _loc7_:§-!5§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§1!b§.length)
         {
            if(_loc4_ = this.§1!b§[_loc2_] as §&#=§)
            {
               if(_loc4_.§3#$§)
               {
                  if(!_loc4_.§[#L§())
                  {
                     (_loc5_ = new §94§()).angle = _loc4_.§"#,§() / (Math.PI / 180);
                     _loc5_.id = _loc4_.id;
                     _loc5_.type = _loc4_.itemName;
                     _loc5_.x = _loc4_.§3!t§().GetPosition().x;
                     _loc5_.y = _loc4_.§3!t§().GetPosition().y;
                     param1.addObject(_loc5_);
                  }
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§6!Z§.length)
         {
            _loc7_ = this.§6!Z§[_loc3_];
            _loc6_ = new §-#'§(_loc7_.type,_loc7_.id1,_loc7_.id2,_loc7_.point1,_loc7_.point2,_loc7_.§4C§,_loc7_.§9"r§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§?"B§,_loc7_.motorSpeed,_loc7_.§@[§,_loc7_.maxTorque);
            param1.§@"_§(_loc6_);
            _loc3_++;
         }
      }
      
      public function §-!!§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = [];
         var _loc4_:Number = 0;
         while(_loc4_ < this.§1!b§.length)
         {
            if(this.§1!b§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§1!b§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         var _loc3_:§&#=§ = null;
         this.§4"R§ = param1;
         this.§`!l§(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§1!b§.length)
         {
            _loc3_ = this.§1!b§[_loc2_] as §&#=§;
            if(_loc3_ && _loc3_.§"!@§())
            {
               _loc3_.sprite.visible = !this.§4"R§;
            }
            _loc2_++;
         }
      }
      
      public function setCollisionsEnabled(param1:Boolean) : void
      {
         this.§%#T§ = param1;
      }
      
      public function §1p§() : int
      {
         return this.§[!Y§;
      }
      
      public function §9#H§() : int
      {
         return this.§%"`§;
      }
      
      public function get damageScoreMultiplier() : int
      {
         return this.§2#G§.damageScoreMultiplier;
      }
   }
}
