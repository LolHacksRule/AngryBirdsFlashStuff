package §8§#8
{
   import § ! §.b2Joint;
   import § ! §.b2JointEdge;
   import § ! §.b2PrismaticJoint;
   import § ! §.b2RevoluteJoint;
   import § "%§.b2Vec2;
   import §!'§.§3"V§;
   import §!'§.§@>§;
   import §!'§.§[p§;
   import §'!L§.§5",§;
   import §4"O§.b2Body;
   import §5#J§.§2#<§;
   import §8"L§.§!!C§;
   import §8"L§.§4U§;
   import §8"L§.§8g§;
   import §8"L§.§?!i§;
   import §8"L§.§?"b§;
   import §8"L§.§`$%§;
   import §8$@§.§="6§;
   import §9$;§.Texture;
   import §;$3§.§>f§;
   import §>M§.§#H§;
   import §>M§.§+$9§;
   import §>M§.§3!1§;
   import §>M§.§["z§;
   import §>M§.§[N§;
   import §@!M§.§!"p§;
   import §@0§.§%!q§;
   import §@0§.§&"A§;
   import §@0§.§`s§;
   import §^"S§.§'#E§;
   import §^"S§.Image;
   import §^"S§.Sprite;
   import §`!k§.b2Contact;
   import §`"8§.§0$2§;
   import §`"8§.§`"X§;
   import §`7§.§0t§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §!#L§ implements §&#V§
   {
      
      private static const §;#;§:Boolean = false;
      
      public static const §>"P§:int = 1000000000;
      
      public static const §1!a§:int = -1;
      
      public static const ID_NEXT_FREE:int = -2;
      
      public static const §@!,§:String = "onDestroy";
       
      
      protected var §4$8§:Vector.<§,#5§>;
      
      protected var §8!k§:Vector.<§7!0§>;
      
      protected var §&""§:Vector.<§3"V§>;
      
      protected var §4#H§:§0t§;
      
      private var §-4§:int = 1000000000;
      
      public var §=#N§:§%!q§;
      
      protected var §;C§:Vector.<§2#%§>;
      
      protected var §6#,§:§^"S§.Sprite;
      
      protected var §#"f§:§^"S§.Sprite;
      
      protected var §@#k§:§^"S§.Sprite;
      
      protected var §0$5§:§^"S§.Sprite;
      
      protected var §;"J§:§^"S§.Sprite;
      
      protected var §"l§:§^"S§.Sprite;
      
      protected var §]#X§:Vector.<Texture>;
      
      protected var §4!V§:Vector.<§#H§>;
      
      protected var §6$'§:int = 1;
      
      protected var §`"j§:Vector.<§+$9§>;
      
      protected var §4!E§:int = 0;
      
      protected var §""u§:int = 0;
      
      private var §`$-§:int = 0;
      
      private var §@"0§:§["z§;
      
      protected var §%#H§:§4!y§;
      
      private var §?!a§:Boolean = true;
      
      private var §-$<§:Boolean = true;
      
      protected var §]$§:§2#<§;
      
      private var §4!M§:Boolean = false;
      
      private var §@#w§:Array;
      
      private var §5"o§:Array;
      
      public function §!#L§(param1:§%!q§, param2:§>f§, param3:§^"S§.Sprite, param4:String)
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:int = 0;
         var _loc8_:§,#5§ = null;
         this.§4$8§ = new Vector.<§,#5§>();
         this.§8!k§ = new Vector.<§7!0§>();
         this.§&""§ = new Vector.<§3"V§>();
         this.§4#H§ = new §0t§();
         this.§;C§ = new Vector.<§2#%§>();
         this.§]#X§ = new Vector.<Texture>();
         this.§`"j§ = new Vector.<§+$9§>();
         this.§@"0§ = new §["z§();
         super();
         this.§=#N§ = param1;
         this.§6#,§ = param3;
         this.§6#,§.§?C§ = false;
         this.§-$<§ = true;
         this.§?!a§ = true;
         this.§#"f§ = new §^"S§.Sprite();
         this.§@#k§ = new §^"S§.Sprite();
         this.§0$5§ = new §^"S§.Sprite();
         this.§"l§ = new §^"S§.Sprite();
         this.§;"J§ = new §^"S§.Sprite();
         this.§6#,§.addChild(this.§#"f§);
         this.§6#,§.addChild(this.§@#k§);
         this.§6#,§.addChild(this.§0$5§);
         §="6§.init(4,2);
         this.§5"o§ = [];
         this.addLevelObjects(param2);
         if(param2.hasGround)
         {
            _loc5_ = (this.§=#N§.§^n§.§4!l§ + this.§=#N§.§^n§.§,$1§) / 2;
            _loc6_ = 0 + §`s§.§>"9§;
            _loc7_ = 0;
            while(_loc7_ < 5)
            {
               if((_loc8_ = this.addObject(param4,_loc5_,_loc6_,0,§!#L§.§1!a§)) != null)
               {
                  break;
               }
               _loc7_++;
            }
         }
      }
      
      public function get §!!'§() : §^"S§.Sprite
      {
         return this.§"l§;
      }
      
      public function get §>!f§() : §^"S§.Sprite
      {
         return this.§0$5§;
      }
      
      public function get § #1§() : §^"S§.Sprite
      {
         return this.§@#k§;
      }
      
      public function get backgroundSprite() : §^"S§.Sprite
      {
         return this.§;"J§;
      }
      
      public function get §`#T§() : §^"S§.Sprite
      {
         return this.§6#,§;
      }
      
      public function get activeObject() : §4!y§
      {
         return this.§%#H§;
      }
      
      public function get objectCount() : int
      {
         return this.§4$8§.length;
      }
      
      public function set §^#P§(param1:§2#<§) : void
      {
         if(param1 != this.§]$§)
         {
            this.§]$§ = param1;
            if(this.§4!M§ && this.§]$§)
            {
               this.§]$§.levelStarted();
            }
         }
      }
      
      public function levelInitialized() : void
      {
         if(!this.§4!M§)
         {
            this.§4!M§ = true;
            if(this.§]$§)
            {
               this.§]$§.levelStarted();
            }
         }
      }
      
      public function §%"c§(param1:String) : §4U§
      {
         return this.§=#N§.levelItemManager.getItem(param1);
      }
      
      public function activateSpecialPower(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         if(this.§%#H§)
         {
            _loc3_ = this.§%#H§.activateSpecialPower(this,param1,param2);
         }
         return _loc3_;
      }
      
      public function §,_§(param1:§["z§) : void
      {
         var _loc2_:Number = 1;
         var _loc3_:§4U§ = this.§=#N§.levelItemManager.getItem(param1.type);
         if(_loc3_)
         {
            _loc2_ = _loc3_.scale;
         }
         this.addObjectFromModel(param1,param1.id,false,false,false,_loc2_);
      }
      
      protected function addLevelObjects(param1:§>f§) : void
      {
         var _loc3_:§["z§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:§4U§ = null;
         var _loc6_:§3!1§ = null;
         var _loc2_:int = 0;
         _loc2_ = 0;
         while(_loc2_ < param1.objectCount)
         {
            _loc3_ = param1.getObject(_loc2_);
            _loc4_ = 1;
            if(_loc5_ = this.§=#N§.levelItemManager.getItem(_loc3_.type))
            {
               _loc4_ = _loc5_.scale;
            }
            this.addObjectFromModel(_loc3_,_loc3_.id,false,false,false,_loc4_);
            _loc2_++;
         }
         this.generateTerrainTexture();
         this.setTexture(true);
         this.§4!V§ = new Vector.<§#H§>();
         _loc2_ = 0;
         while(_loc2_ < param1.§]r§)
         {
            _loc6_ = param1.§9! §(_loc2_);
            this.§5#1§(_loc6_);
            _loc2_++;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         §="6§.dispose();
         while(this.§4$8§.length > 0)
         {
            this.§&#Z§(0,false,true);
         }
         while(this.§&""§.length > 0)
         {
            this.§3"w§(0);
         }
         this.§4$8§ = null;
         this.§8!k§ = null;
         this.§&""§ = null;
         this.§4#H§ = null;
         this.§`"j§ = null;
         this.§5"o§ = null;
         if(this.§6#,§)
         {
            this.§6#,§.dispose();
            this.§6#,§ = null;
         }
         this.§#"f§ = null;
         this.§@#k§ = null;
         if(this.§0$5§)
         {
            this.§0$5§.dispose();
            this.§0$5§ = null;
         }
         if(this.§"l§)
         {
            this.§"l§.dispose();
            this.§"l§ = null;
         }
         if(this.§;"J§)
         {
            this.§;"J§.dispose();
            this.§;"J§ = null;
         }
         while(this.§]#X§.length > 0)
         {
            _loc1_ = this.§]#X§.pop();
            this.§=#N§.textureManager.unregisterBitmapDataTexture(_loc1_);
         }
      }
      
      public function setTexture(param1:Boolean) : void
      {
         this.§#"f§.visible = param1;
         this.§;"J§.visible = param1;
      }
      
      public function generateTerrainTexture() : void
      {
         var _loc5_:§,#5§ = null;
         var _loc6_:Rectangle = null;
         var _loc7_:§4!y§ = null;
         var _loc8_:§!!C§ = null;
         var _loc9_:Number = NaN;
         var _loc10_:String = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Rectangle = null;
         var _loc3_:Vector.<§4!y§> = new Vector.<§4!y§>();
         var _loc4_:Vector.<§4!y§> = new Vector.<§4!y§>();
         for each(_loc5_ in this.§4$8§)
         {
            if((_loc7_ = _loc5_ as §4!y§) && _loc7_.§83§())
            {
               _loc9_ = (_loc8_ = _loc7_.levelItem.shape).getDimension() / §%!q§.§6q§;
               _loc6_ = new Rectangle(_loc5_.sprite.x - _loc9_ / 2,_loc5_.sprite.y - _loc9_ / 2,_loc9_,_loc9_);
               if((_loc10_ = _loc7_.§^"2§()) == §4U§.§2"i§)
               {
                  _loc4_.push(_loc7_);
                  if(_loc2_ == null)
                  {
                     _loc2_ = new Rectangle(_loc6_.x,_loc6_.y,_loc6_.width,_loc6_.height);
                  }
                  else
                  {
                     _loc2_ = _loc2_.union(_loc6_);
                  }
               }
               else
               {
                  _loc3_.push(_loc7_);
                  if(_loc1_ == null)
                  {
                     _loc1_ = new Rectangle(_loc6_.x,_loc6_.y,_loc6_.width,_loc6_.height);
                  }
                  else
                  {
                     _loc1_ = _loc1_.union(_loc6_);
                  }
               }
            }
         }
         if(_loc1_)
         {
            this.§%#`§(_loc1_,_loc3_,this.§@"6§(),this.§#"f§);
         }
         if(_loc2_)
         {
            this.§%#`§(_loc2_,_loc4_,this.§%_§(),this.§;"J§);
         }
      }
      
      private function §%#`§(param1:Rectangle, param2:Vector.<§4!y§>, param3:String, param4:§^"S§.Sprite) : void
      {
         var _loc5_:Number = this.§=#N§.camera.borderLeft / §%!q§.§6q§;
         var _loc6_:Number = this.§=#N§.camera.borderRight / §%!q§.§6q§;
         var _loc7_:Number = (_loc5_ + _loc6_) / 2;
         var _loc8_:Number = (_loc6_ - _loc5_) / 2;
         _loc5_ = _loc7_ - _loc8_;
         _loc6_ = _loc7_ + _loc8_;
         param1.left = Math.max(param1.left,_loc5_) - 4;
         param1.right = Math.min(param1.right,_loc6_) + 4;
         if(param1.left >= param1.right - 1)
         {
            return;
         }
         var _loc9_:Number = 1;
         while(param1.width > 2048 || param1.height > 2048)
         {
            param1.left /= 1.05;
            param1.top /= 1.05;
            param1.right /= 1.05;
            param1.bottom /= 1.05;
            _loc9_ /= 1.05;
         }
         var _loc10_:int = param1.width;
         var _loc11_:int = param1.height;
         var _loc12_:int = param1.left;
         var _loc13_:int = param1.top;
         var _loc14_:BitmapData = new BitmapData(_loc10_,_loc11_,true,0);
         var _loc15_:Number = this.getLevelTextureScale();
         this.§6!6§(_loc14_.rect,_loc14_,_loc9_ * _loc15_,param3);
         var _loc16_:BitmapData = this.§5!"§(param2,_loc10_,_loc11_,_loc12_,_loc13_,_loc9_);
         _loc14_.copyChannel(_loc16_,_loc16_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
         var _loc17_:Texture = this.§=#N§.textureManager.getTextureFromBitmapData(_loc14_);
         this.§]#X§.push(_loc17_);
         var _loc18_:Image;
         (_loc18_ = new Image(_loc17_)).x = _loc12_ / _loc9_;
         _loc18_.y = _loc13_ / _loc9_;
         _loc18_.scaleX = 1 / _loc9_;
         _loc18_.scaleY = 1 / _loc9_;
         param4.addChild(_loc18_);
         _loc16_.dispose();
      }
      
      private function §5!"§(param1:Vector.<§4!y§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§4!y§ = null;
         var _loc11_:Number = NaN;
         var _loc12_:§!!C§ = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc10_.identity();
            _loc11_ = param6;
            if((_loc12_ = _loc7_.levelItem.shape) is §?!i§)
            {
               this.§+G§(_loc12_,_loc8_,_loc9_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§`$"§(),param6,_loc11_,param4,param5);
            }
            else if(_loc12_ is §`$%§)
            {
               if((_loc12_ as §`$%§).vertices.length == 4)
               {
                  this.§+G§(_loc12_,_loc8_,_loc9_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§`$"§(),param6,_loc11_,param4,param5);
               }
               else if((_loc12_ as §`$%§).vertices.length == 3)
               {
                  this.§""c§(_loc12_ as §`$%§,_loc8_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§`$"§(),param6,_loc11_,param4,param5);
               }
            }
            else if(_loc12_ is §8g§)
            {
               this.§,#t§(_loc12_ as §8g§,_loc8_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,param6,_loc11_,param4,param5);
            }
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      protected function §+G§(param1:§!!C§, param2:BitmapData, param3:BitmapData, param4:Matrix, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Number) : void
      {
         var _loc12_:Number = param1.getWidth() / §%!q§.§6q§ * param9;
         var _loc13_:Number = param1.getHeight() / §%!q§.§6q§ * param9;
         param4.scale(_loc12_,_loc13_);
         param4.translate(-_loc12_ / 2,-_loc13_ / 2);
         param4.rotate(param7);
         param4.translate(param5 * param8 - param10,param6 * param8 - param11);
         param2.draw(param3,param4);
      }
      
      protected function §""c§(param1:§`$%§, param2:BitmapData, param3:Matrix, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number) : void
      {
         var _loc14_:b2Vec2 = null;
         var _loc11_:flash.display.Sprite;
         (_loc11_ = new flash.display.Sprite()).graphics.beginFill(16777215);
         var _loc12_:Vector.<Number> = new Vector.<Number>();
         var _loc13_:int = 0;
         while(_loc13_ < param1.vertices.length)
         {
            _loc14_ = param1.vertices[_loc13_];
            _loc12_.push(_loc14_.x / §%!q§.§6q§ * param8,_loc14_.y / §%!q§.§6q§ * param8);
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
      
      protected function §,#t§(param1:§8g§, param2:BitmapData, param3:Matrix, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number) : void
      {
         var _loc10_:Number;
         var _loc11_:Number = (_loc10_ = param1.radius) / §%!q§.§6q§ * param7;
         var _loc12_:flash.display.Sprite;
         (_loc12_ = new flash.display.Sprite()).graphics.beginFill(16777215);
         _loc12_.graphics.drawCircle(_loc11_,_loc11_,_loc11_);
         _loc12_.graphics.endFill();
         param3.translate(param4 * param6 - param8 - _loc11_,param5 * param6 - param9 - _loc11_);
         param2.draw(_loc12_,param3);
         _loc12_.graphics.clear();
         _loc12_ = null;
      }
      
      protected function §@"6§() : String
      {
         return this.§=#N§.background.§?#F§();
      }
      
      protected function §%_§() : String
      {
         return this.§=#N§.background.§=#M§();
      }
      
      protected function getLevelTextureScale() : Number
      {
         return 1;
      }
      
      private function §6!6§(param1:Rectangle, param2:BitmapData, param3:Number, param4:String) : void
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
         var _loc5_:§`"X§;
         if(_loc5_ = this.§=#N§.backgroundTextureManager.getTexture(param4))
         {
            _loc6_ = new BitmapData(_loc5_.bitmapData.width * param3,_loc5_.bitmapData.height * param3);
            (_loc7_ = new Matrix()).scale(param3,param3);
            _loc6_.draw(_loc5_.bitmapData,_loc7_,null,null,null,true);
            _loc8_ = _loc6_.width;
            _loc9_ = _loc6_.height;
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
      
      protected function §3!l§(param1:§["z§, param2:§^"S§.Sprite, param3:§0$2§, param4:§4U§, param5:Number = 1.0, param6:Boolean = true) : §?$%§
      {
         var _loc11_:§?$%§ = null;
         var _loc7_:String = param1.type;
         var _loc8_:Number = param1.x;
         var _loc9_:Number = param1.y;
         var _loc10_:Number = param1.angle;
         switch(_loc7_)
         {
            case "BIRD_BLACK":
               _loc11_ = new §8#[§(param2,param3,this.§=#N§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_BLUE":
               _loc11_ = new §,#+§(param2,param3,this.§=#N§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_GREEN":
               _loc11_ = new §"p§(param2,param3,this.§=#N§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_WHITE":
               _loc11_ = new §?"W§(param2,param3,this.§=#N§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_YELLOW":
               _loc11_ = new §7]§(param2,param3,this.§=#N§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_RED":
               _loc11_ = new §%"V§(param2,param3,this.§=#N§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_REDBIG":
               _loc11_ = new §+$!§(param2,param3,this.§=#N§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_ORANGE":
               _loc11_ = new §6#R§(param2,param3,this.§=#N§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_SARDINE":
               _loc11_ = new §%$'§(param2,param3,this.§=#N§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_MIGHTY_EAGLE":
               _loc11_ = new §6"6§(param2,param3,this.§=#N§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            default:
               _loc11_ = new §?$%§(param2,param3,this.§=#N§.mLevelEngine.mWorld,param4,param1,param5,param6);
         }
         return _loc11_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§4!E§ > 0;
      }
      
      protected function addObjectPig(param1:§["z§, param2:§^"S§.Sprite, param3:§0$2§, param4:§4U§, param5:Number = 1.0) : §6!H§
      {
         return new §6!H§(param2,param3,this.§=#N§.mLevelEngine.mWorld,param4,param1,param5);
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number, param5:int, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0, param10:Boolean = false, param11:Boolean = false, param12:Number = 0.0, param13:b2Vec2 = null, param14:Number = 0.0, param15:Number = 0.0, param16:Boolean = true, param17:Number = 1.0) : §,#5§
      {
         this.§@"0§ = new §["z§();
         this.§@"0§.type = param1;
         this.§@"0§.x = param2;
         this.§@"0§.y = param3;
         this.§@"0§.angle = param4;
         this.§@"0§.§;"b§ = 0;
         this.§@"0§.§<!k§ = 0;
         this.§@"0§.angularVelocity = param12;
         this.§@"0§.angularDamping = param14;
         this.§@"0§.linearDamping = param15;
         this.§@"0§.awake = param16;
         this.§@"0§.health = param17;
         return this.addObjectFromModel(this.§@"0§,param5,param6,param7,param8,param9,param10,param11);
      }
      
      public function §;"o§(param1:String, param2:Number, param3:Number, param4:Number, param5:int, param6:Number = 0.0, param7:Number = 0.0, param8:Number = 1.0, param9:Boolean = false, param10:Boolean = false) : §,#5§
      {
         this.§@"0§ = new §["z§();
         this.§@"0§.type = param1;
         this.§@"0§.x = param2;
         this.§@"0§.y = param3;
         this.§@"0§.angle = param4;
         this.§@"0§.§;"b§ = param6;
         this.§@"0§.§<!k§ = param7;
         return this.addObjectFromModel(this.§@"0§,param5,false,false,false,param8,param9,param10);
      }
      
      protected function addObjectFromModel(param1:§["z§, param2:int, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true, param6:Number = 1.0, param7:Boolean = false, param8:Boolean = false) : §,#5§
      {
         var _loc9_:§^"S§.Sprite = new §^"S§.Sprite();
         var _loc10_:§,#5§;
         if((_loc10_ = this.§3L§(param1,param2,_loc9_,param5,param6)) == null)
         {
            return null;
         }
         if(_loc10_ is §4!y§ && (_loc10_ as §4!y§).§83§())
         {
            _loc9_.visible = !this.§?!a§;
         }
         if(_loc10_ is §?$%§ && !(_loc10_ is §6"6§))
         {
            ++this.§4!E§;
         }
         if(!param7)
         {
            if(param8)
            {
               this.§0$5§.§0#L§(_loc9_);
            }
            else
            {
               this.§@#k§.§0#L§(_loc9_);
            }
         }
         else
         {
            this.§"l§.§0#L§(_loc9_);
         }
         if(param3)
         {
            this.§=#N§.§'"a§(_loc10_);
         }
         if(param4)
         {
            this.§%#H§ = §4!y§(_loc10_);
         }
         return _loc10_;
      }
      
      private function §3L§(param1:§["z§, param2:int, param3:§^"S§.Sprite, param4:Boolean = true, param5:Number = 1.0) : §,#5§
      {
         var _loc7_:Vector.<§[N§> = null;
         var _loc8_:§[N§ = null;
         var _loc9_:Boolean = false;
         var _loc10_:§4!y§ = null;
         if(param2 == ID_NEXT_FREE)
         {
            param2 = this.§-4§;
            ++this.§-4§;
         }
         else
         {
            if(param2 >= §>"P§)
            {
               throw new Error("Invalid object id: " + param2 + ". Has to be less than " + §>"P§);
            }
            if(this.§&!8§(param2))
            {
               throw new Error("Object with id: " + param2 + " already added!");
            }
         }
         var _loc6_:§,#5§;
         if((_loc6_ = this.createObjectInstance(param1,param3,param4,param5)) is §4!y§)
         {
            if((_loc6_ as §4!y§).hasSpecialBehavior)
            {
               _loc7_ = (_loc6_ as §4!y§).§9"f§.getBehaviorsData();
               for each(_loc8_ in _loc7_)
               {
                  if(!(_loc9_ = this.§=#N§.§5#X§(_loc8_.type,_loc8_.event)))
                  {
                     (_loc6_ as §4!y§).§3!N§(this.§=#N§,_loc8_);
                  }
               }
            }
         }
         if(_loc6_ is §?$%§)
         {
            ++this.§`$-§;
         }
         if(_loc6_)
         {
            _loc10_ = _loc6_ as §4!y§;
            if(_loc6_ is §3"V§)
            {
               this.§&""§.push(_loc6_);
            }
            else
            {
               if(_loc10_)
               {
                  _loc10_.§["p§(param2);
                  this.§4#H§[param1.instanceName] = _loc6_;
               }
               this.§4$8§.push(_loc6_);
               if(_loc6_ is §7!0§)
               {
                  this.§8!k§.push(_loc6_);
               }
            }
            if(this.§]$§)
            {
               this.§]$§.§9"K§(_loc6_);
            }
         }
         return _loc6_;
      }
      
      protected function §2#z§() : String
      {
         return "INGAME_TEXTURE_SAND_1";
      }
      
      protected function createBombBlockInstance(param1:§["z§, param2:§^"S§.Sprite, param3:§0$2§, param4:§4U§, param5:int, param6:Number = 1.0) : §,#5§
      {
         return new §!!A§(param2,param3,this.§=#N§.mLevelEngine.mWorld,param4,param1,param6,param5);
      }
      
      protected function §6$@§(param1:§["z§, param2:§^"S§.Sprite, param3:§0$2§, param4:§4U§, param5:int, param6:Number = 1.0) : §,#5§
      {
         return new §1]§(param2,param3,this.§=#N§.mLevelEngine.mWorld,param4,param1,param6,param5);
      }
      
      protected function createObjectInstance(param1:§["z§, param2:§^"S§.Sprite, param3:Boolean = true, param4:Number = 1.0) : §,#5§
      {
         var _loc5_:§4U§;
         if(!(_loc5_ = this.§=#N§.levelItemManager.getItem(param1.type)))
         {
            return null;
         }
         var _loc6_:String;
         if((_loc6_ = _loc5_.itemName).substr(0,13) == "BLOCK_STATIC_")
         {
            _loc6_ = this.§2#z§();
         }
         var _loc7_:§0$2§ = this.§=#N§.animationManager.getAnimation(_loc6_);
         var _loc8_:§,#5§ = null;
         if(param1.type.indexOf("BIRD") == 0)
         {
            _loc8_ = this.§3!l§(param1,param2,_loc7_,_loc5_,param4,param3);
         }
         else if(_loc5_.itemType == §4U§.§6]§)
         {
            (_loc8_ = this.addObjectPig(param1,param2,_loc7_,_loc5_,param4)).§3#,§ = true;
         }
         else if(_loc5_.itemType == §4U§.§ T§ || _loc5_.itemType == §4U§.§+"5§)
         {
            if(_loc5_.itemName.indexOf("TNT") >= 0)
            {
               _loc8_ = this.createBombBlockInstance(param1,param2,_loc7_,_loc5_,§2#%§.§2#8§,param4);
            }
            else if(_loc5_.itemName == §?"W§.§1#d§)
            {
               _loc8_ = this.§6$@§(param1,param2,_loc7_,_loc5_,§2#%§.§=#U§,param4);
            }
            else
            {
               _loc8_ = new §]o§(param2,_loc7_,this.§=#N§.mLevelEngine.mWorld,_loc5_,param1,param4,_loc5_.particleJSONId,_loc5_.particleVariationCount);
            }
         }
         else
         {
            _loc8_ = new §4!y§(param2,_loc7_,this.§=#N§.mLevelEngine.mWorld,_loc5_,param1,param4);
         }
         return _loc8_;
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean, param4:Number, param5:Number, param6:int, param7:String) : void
      {
         this.§=#N§.addScore(param1,§&"A§.§!e§,param3,param4,param5,param6,param7);
      }
      
      public function addParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : void
      {
         this.§=#N§.particles.addParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function addSimpleParticle(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         this.§=#N§.particles.addSimpleParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16);
      }
      
      public function §4#C§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:Number, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : void
      {
         this.§=#N§.particles.§4#C§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function §#"m§(param1:§4!y§) : void
      {
         var _loc4_:§#H§ = null;
         var _loc5_:§#H§ = null;
         var _loc6_:§,#5§ = null;
         var _loc7_:§,#5§ = null;
         var _loc2_:int = param1.id;
         var _loc3_:int = this.§4!V§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§4!V§[_loc3_];
            if(this.§4!V§[_loc3_].id1 == _loc2_ || this.§4!V§[_loc3_].id2 == _loc2_)
            {
               if(_loc4_.§%#Z§)
               {
                  _loc6_ = _loc4_.§%#Z§.§94§().GetUserData() as §,#5§;
                  _loc7_ = _loc4_.§%#Z§.§=#O§().GetUserData() as §,#5§;
                  if(_loc6_)
                  {
                     _loc6_.attachedJointRemoved(_loc7_);
                  }
                  if(_loc7_)
                  {
                     _loc7_.attachedJointRemoved(_loc6_);
                  }
               }
               _loc5_ = this.§4!V§.pop();
               if(_loc3_ < this.§4!V§.length)
               {
                  this.§4!V§[_loc3_] = _loc5_;
               }
               this.§;!-§(_loc4_);
            }
            _loc3_--;
         }
      }
      
      protected function §5#1§(param1:§3!1§) : §#H§
      {
         var _loc2_:int = param1.id1;
         var _loc3_:int = param1.id2;
         var _loc4_:§#H§ = §#H§.§5#1§(param1);
         this.§4!V§.push(_loc4_);
         var _loc5_:§,#5§ = this.§&!8§(_loc2_);
         var _loc6_:§,#5§ = this.§&!8§(_loc3_);
         if(_loc5_ && _loc6_)
         {
            if(_loc4_.type != §3!1§.§8!S§)
            {
               _loc4_.§%#Z§ = this.§=#N§.mLevelEngine.mWorld.§]!x§(_loc4_.§>&§(_loc5_,_loc6_));
               if(_loc4_.type == §3!1§.§=#3§ && _loc4_.destroyChild)
               {
                  this.§`"j§.push(new §+$9§(_loc2_,_loc3_,_loc4_.annihilationTime,param1.isOneWayDestroyed,param1.distanceToDestroyChild));
               }
            }
            else
            {
               this.§`"j§.push(new §+$9§(_loc2_,_loc3_,_loc4_.annihilationTime,param1.isOneWayDestroyed,param1.distanceToDestroyChild));
            }
            _loc5_.attachedJointCreated(_loc6_);
            _loc6_.attachedJointCreated(_loc5_);
         }
         return _loc4_;
      }
      
      protected function §;!-§(param1:§#H§) : void
      {
         if(param1.§%#Z§)
         {
            this.§=#N§.mLevelEngine.mWorld.§[!N§(param1.§%#Z§);
         }
         if(param1.§^"N§)
         {
            if(this.§@#k§.contains(param1.§^"N§))
            {
               this.§@#k§.removeChild(param1.§^"N§,true);
            }
         }
      }
      
      public function addExplosion(param1:int, param2:Number, param3:Number, param4:int = -1) : void
      {
         this.§;C§.push(§2#%§.createExplosion(param1,param2,param3,param4));
         this.playExplosionSound(param1);
      }
      
      protected function playExplosionSound(param1:int) : void
      {
         §!"p§.playSound("tnt_box_explodes","ChannelExplosions");
      }
      
      public function §5#A§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = -1, param8:Boolean = true, param9:Boolean = true) : void
      {
         this.§;C§.push(§2#%§.§@"z§(param1,param2,param3,param4,param5,param6,param7,param8));
         if(param9)
         {
            §!"p§.playSound("tnt_box_explodes","ChannelExplosions");
         }
      }
      
      public function getForceAtPoint(param1:Number, param2:Number, param3:Number, param4:b2Vec2) : b2Vec2
      {
         if(!param4)
         {
            param4 = new b2Vec2();
         }
         param4.SetV(this.§=#N§.mLevelEngine.mWorld.GetGravity());
         return param4;
      }
      
      public function get §9"]§() : Number
      {
         return this.§=#N§.§9"]§;
      }
      
      public function §;""§(param1:Number, param2:Number) : int
      {
         var _loc4_:§4!y§ = null;
         var _loc3_:int = this.§4$8§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§4$8§[_loc3_] as §4!y§) && _loc4_.isInCoordinates(param1,param2))
            {
               return _loc3_;
            }
            _loc3_--;
         }
         return -1;
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §4!y§
      {
         var _loc4_:§4!y§ = null;
         var _loc3_:int = this.§4$8§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§4$8§[_loc3_] as §4!y§)
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
      
      public function §0"!§(param1:Number, param2:Number) : Vector.<§4!y§>
      {
         var _loc5_:§4!y§ = null;
         var _loc3_:Vector.<§4!y§> = new Vector.<§4!y§>();
         var _loc4_:int = this.§4$8§.length - 1;
         while(_loc4_ >= 0)
         {
            if((_loc5_ = this.§4$8§[_loc4_] as §4!y§) && _loc5_.isInCoordinates(param1,param2))
            {
               _loc3_.push(_loc5_);
            }
            _loc4_--;
         }
         return _loc3_;
      }
      
      public function getObject(param1:int) : §,#5§
      {
         return this.§4$8§[param1];
      }
      
      public function §&!8§(param1:int) : §4!y§
      {
         var _loc2_:§,#5§ = null;
         var _loc3_:§4!y§ = null;
         for each(_loc2_ in this.§4$8§)
         {
            _loc3_ = _loc2_ as §4!y§;
            if(_loc3_ && _loc3_.id == param1)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function §?B§(param1:String) : §4!y§
      {
         return this.§4#H§[param1];
      }
      
      public function renderObjects(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:int = this.§4$8§.length - 1;
         while(_loc4_ >= 0)
         {
            this.§4$8§[_loc4_].render(param1,param2,param3);
            _loc4_--;
         }
         this.updateParticles(param1);
         _loc4_ = this.§&""§.length - 1;
         while(_loc4_ >= 0)
         {
            this.§&""§[_loc4_].render(param1,param2,param3);
            _loc4_--;
         }
      }
      
      protected function getExplosionDamageMultiplier(param1:Number, param2:Number) : Number
      {
         return 1 / param1;
      }
      
      protected function getExplosionDistanceToObject(param1:Number, param2:Number, param3:§4!y§) : §="6§
      {
         var _loc4_:b2Vec2;
         var _loc5_:Number = (_loc4_ = param3.getBody().GetPosition()).x - param1;
         var _loc6_:Number = _loc4_.y - param2;
         var _loc7_:Number = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         var _loc8_:§="6§;
         (_loc8_ = §="6§.getObject()).§`"L§ = _loc7_;
         _loc8_.§%#d§.x = _loc4_.x;
         _loc8_.§%#d§.y = _loc4_.y;
         return _loc8_;
      }
      
      protected function applyExplosionDamage(param1:§4!y§, param2:Number, param3:Boolean = false) : void
      {
         param1.applyDamage(param2,this,null,param3);
      }
      
      protected function ignoreExplosion(param1:§4!y§, param2:int) : Boolean
      {
         return false;
      }
      
      protected function §@$§() : void
      {
         var _loc2_:§2#%§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§,#5§ = null;
         var _loc8_:§4!y§ = null;
         var _loc9_:§="6§ = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         if(!this.§-$<§)
         {
            return;
         }
         var _loc1_:Point = new Point();
         while(this.§;C§.length > 0)
         {
            _loc2_ = this.§;C§.shift();
            _loc3_ = _loc2_.§7"-§;
            _loc4_ = _loc2_.x;
            _loc5_ = _loc2_.y;
            _loc6_ = _loc2_.damage;
            this.shakeCameraOnExplosion(_loc2_.push);
            for each(_loc7_ in this.§4$8§)
            {
               if((_loc8_ = _loc7_ as §4!y§) && !this.ignoreExplosion(_loc8_,_loc2_.type))
               {
                  if((_loc9_ = this.getExplosionDistanceToObject(_loc4_,_loc5_,_loc8_)).§`"L§ <= _loc2_.§7"-§)
                  {
                     _loc10_ = _loc2_.push * this.getExplosionDamageMultiplier(_loc9_.§`"L§,_loc2_.§7"-§);
                     if(_loc9_.§`"L§ > 0)
                     {
                        _loc1_.x = _loc9_.§%#d§.x - _loc4_;
                        _loc1_.y = _loc9_.§%#d§.y - _loc5_;
                        _loc1_.normalize(1);
                        _loc11_ = _loc10_ * _loc1_.x;
                        _loc12_ = _loc10_ * _loc1_.y;
                        _loc8_.getBody().ApplyImpulse(new b2Vec2(_loc11_,_loc12_),new b2Vec2(_loc9_.§%#d§.x,_loc9_.§%#d§.y));
                     }
                  }
                  if(_loc9_.§`"L§ <= _loc2_.damageRadius)
                  {
                     _loc13_ = _loc6_ * this.getExplosionDamageMultiplier(_loc9_.§`"L§,_loc2_.damageRadius);
                     if(isNaN(_loc13_))
                     {
                        _loc13_ = 0;
                     }
                     this.applyExplosionDamage(_loc8_,_loc13_);
                  }
                  §="6§.§="u§(_loc9_);
               }
            }
            if(_loc2_.§## §)
            {
               this.updateExplosionEffects(_loc2_,_loc4_,_loc5_,_loc3_);
            }
         }
      }
      
      protected function updateExplosionEffects(param1:§2#%§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         this.§=#N§.particles.addParticle(this.getMainExplosionCoreName(param1.type),§[p§.PARTICLE_GROUP_GAME_EFFECTS,§@>§.PARTICLE_TYPE_STATIC_PARTICLE,param2,param3,600,"",§@>§.§9#9§,0,0,0,0,1,20,true);
         var _loc5_:int = 30;
         while(_loc5_ < 150)
         {
            _loc6_ = 0.75 * param4 + Math.random() * param4;
            _loc7_ = 1250 + Math.random() * 750;
            _loc8_ = _loc5_ / (180 / Math.PI);
            this.§=#N§.particles.addParticle(§@>§.§!#4§,§[p§.PARTICLE_GROUP_GAME_EFFECTS,§@>§.PARTICLE_TYPE_KINETIC_PARTICLE,param2,param3,_loc7_,"",§@>§.§9#9§,_loc6_ * Math.cos(_loc8_),-_loc6_ * Math.sin(_loc8_),20,0);
            _loc5_ += 5;
         }
      }
      
      protected function getMainExplosionCoreName(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §@>§.§>L§;
      }
      
      public function updateObjects(param1:Number) : void
      {
         var _loc4_:§4!y§ = null;
         var _loc2_:§,#5§ = null;
         var _loc3_:int = this.§4$8§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§4$8§[_loc3_];
            if(_loc2_.removeOnNextUpdate)
            {
               this.§&#Z§(_loc3_,true);
            }
            else
            {
               this.§@R§(_loc2_,param1);
               _loc4_ = _loc2_ as §4!y§;
               if(this.§""r§(_loc2_))
               {
                  this.§&#Z§(_loc3_,!(_loc4_ is §?$%§));
               }
               else if(_loc4_ && _loc4_.isReadyToBeRemoved(param1))
               {
                  this.§&#Z§(_loc3_,false);
               }
            }
            _loc3_--;
         }
         this.§3!9§(param1);
         this.§@$§();
         if(this.§]$§)
         {
            this.§]$§.update(param1);
         }
      }
      
      protected function §@R§(param1:§,#5§, param2:Number) : void
      {
         param1.update(param2,this);
      }
      
      protected function updateParticles(param1:Number) : void
      {
         var _loc2_:§3"V§ = null;
         var _loc3_:int = this.§&""§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§&""§[_loc3_];
            if(_loc2_.removeOnNextUpdate)
            {
               this.§3"w§(_loc3_);
            }
            else
            {
               _loc2_.update(param1,this);
            }
            _loc3_--;
         }
      }
      
      protected function §3!9§(param1:Number) : void
      {
         this.§'!Y§(param1);
         this.§8"V§();
      }
      
      protected function §'!Y§(param1:Number) : void
      {
         var _loc3_:§+$9§ = null;
         var _loc4_:§,#5§ = null;
         var _loc5_:§,#5§ = null;
         var _loc6_:b2Vec2 = null;
         var _loc7_:b2Vec2 = null;
         var _loc8_:Number = NaN;
         var _loc2_:int = this.§`"j§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§`"j§[_loc2_];
            if(_loc3_.§1#X§)
            {
               if(!_loc3_.update(param1))
               {
                  if(!_loc3_.isOneWayDestroyed)
                  {
                     _loc4_ = this.§&!8§(_loc3_.objectId1);
                     this.removeObject(_loc4_,true);
                  }
                  _loc4_ = this.§&!8§(_loc3_.objectId2);
                  this.removeObject(_loc4_,true);
                  this.§`"j§.splice(_loc2_,1);
               }
            }
            else if(_loc3_.distanceToDestroyChild > 0)
            {
               if((_loc4_ = this.§&!8§(_loc3_.objectId1)).getBody().GetLinearVelocity().x > 0 || _loc4_.getBody().GetLinearVelocity().y > 0)
               {
                  _loc5_ = this.§&!8§(_loc3_.objectId2);
                  _loc6_ = _loc4_.getBody().GetPosition();
                  _loc7_ = _loc5_.getBody().GetPosition();
                  if((_loc8_ = Math.sqrt((_loc6_.x - _loc7_.x) * (_loc6_.x - _loc7_.x) + (_loc6_.y - _loc7_.y) * (_loc6_.y - _loc7_.y))) > _loc3_.distanceToDestroyChild)
                  {
                     _loc3_.§1#X§ = true;
                  }
               }
            }
            _loc2_--;
         }
      }
      
      private function §5"N§(param1:§#H§) : void
      {
         var _loc2_:§4!y§ = param1.debug_object_1;
         var _loc3_:§4!y§ = param1.debug_object_2;
         if(!_loc2_)
         {
            _loc2_ = this.§&!8§(param1.id1);
            param1.debug_object_1 = _loc2_;
         }
         if(!_loc3_)
         {
            _loc3_ = this.§&!8§(param1.id2);
            param1.debug_object_2 = _loc3_;
         }
         var _loc4_:Number = _loc2_.sprite.x;
         var _loc5_:Number = _loc2_.sprite.y;
         var _loc6_:Number = _loc3_.sprite.x;
         var _loc7_:Number = _loc3_.sprite.y;
         var _loc8_:Number = Math.sqrt((_loc6_ - _loc4_) * (_loc6_ - _loc4_) + (_loc7_ - _loc5_) * (_loc7_ - _loc5_));
         var _loc9_:Number = Math.atan2(_loc7_ - _loc5_,_loc6_ - _loc4_);
         if(param1.§^"N§ == null)
         {
            param1.§^"N§ = new §'#E§(4,4,4294901760);
            this.§@#k§.addChild(param1.§^"N§);
         }
         param1.§^"N§.x = _loc4_;
         param1.§^"N§.y = _loc5_;
         param1.§^"N§.width = _loc8_;
         param1.§^"N§.rotation = _loc9_;
      }
      
      protected function §9j§(param1:Number, param2:Number, param3:Number) : Number
      {
         return 0.01;
      }
      
      private function §8"V§() : void
      {
         var _loc1_:§#H§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         for each(_loc1_ in this.§4!V§)
         {
            if(§;#;§)
            {
               this.§5"N§(_loc1_);
            }
            if(_loc1_.§^v§ && _loc1_.§%!>§ && _loc1_.§;#S§)
            {
               _loc2_ = _loc1_.lowerLimit;
               _loc3_ = _loc1_.upperLimit;
               if(_loc1_.type == §3!1§.§]"q§)
               {
                  _loc4_ = (_loc1_.§%#Z§ as b2PrismaticJoint).§5D§();
                  _loc5_ = (_loc1_.§%#Z§ as b2PrismaticJoint).§^#w§();
                  _loc6_ = this.§9j§(_loc3_,_loc2_,_loc5_);
                  if(_loc5_ > 0 && _loc4_ >= _loc3_ - _loc6_ || _loc5_ < 0 && _loc4_ <= _loc2_ + _loc6_)
                  {
                     (_loc1_.§%#Z§ as b2PrismaticJoint).§,"q§(-_loc5_);
                  }
               }
               else if(_loc1_.type == §3!1§.§8#z§)
               {
                  _loc7_ = (_loc1_.§%#Z§ as b2RevoluteJoint).§?#9§();
                  if((_loc5_ = (_loc1_.§%#Z§ as b2RevoluteJoint).§^#w§()) > 0 && _loc7_ >= _loc3_ || _loc5_ < 0 && _loc7_ <= _loc2_)
                  {
                     (_loc1_.§%#Z§ as b2RevoluteJoint).§,"q§(-_loc5_);
                  }
               }
            }
         }
      }
      
      public function destroyAllJoints() : void
      {
         var _loc1_:§#H§ = null;
         while(this.§4!V§.length > 0)
         {
            _loc1_ = this.§4!V§.pop();
            this.§;!-§(_loc1_);
         }
      }
      
      public function §""r§(param1:§,#5§) : Boolean
      {
         this.§5#k§(param1);
         if(param1 && (!param1.levelItem || param1.levelItem.getItemBodyType() != §?"b§.BODY_TYPE_STATIC) && param1.getBody() && this.§6!T§(param1.getBody().GetPosition().x,param1.getBody().GetPosition().y))
         {
            if(param1 is §4!y§)
            {
               §4!y§(param1).updateOutOfBounds(this);
            }
            return true;
         }
         return false;
      }
      
      protected function §5#k§(param1:§,#5§) : void
      {
      }
      
      public function §>"x§(param1:Number, param2:Number) : Boolean
      {
         return this.§=#N§.camera.§3"@§(param1,param2);
      }
      
      public function §6!T§(param1:Number, param2:Number) : Boolean
      {
         return this.§=#N§.§^n§.§`"b§(param1,param2);
      }
      
      public function §3"w§(param1:int) : void
      {
         if(param1 < 0)
         {
            return;
         }
         var _loc2_:§3"V§ = this.§&""§[param1];
         this.§!"N§(_loc2_.sprite);
         this.§&""§[param1] = null;
         this.§&""§.splice(param1,1);
         _loc2_.dispose();
         _loc2_ = null;
      }
      
      protected function shouldShowScoreText(param1:§4!y§) : Boolean
      {
         return true;
      }
      
      protected function getScoreTextPosition(param1:§4!y§) : Point
      {
         var _loc2_:Number = param1.getBody().GetPosition().x;
         var _loc3_:Number = param1.getBody().GetPosition().y - 3;
         return new Point(_loc2_,_loc3_);
      }
      
      public function §&#Z§(param1:int, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc5_:§4!y§ = null;
         var _loc6_:Point = null;
         var _loc7_:int = 0;
         var _loc8_:Boolean = false;
         var _loc9_:int = 0;
         if(param1 < 0)
         {
            return;
         }
         var _loc4_:§,#5§;
         if((_loc4_ = this.§4$8§[param1]) is §6!H§)
         {
            ++this.§""u§;
         }
         else if(_loc4_ is §?$%§)
         {
            --this.§4!E§;
         }
         if(_loc4_ == this.§%#H§)
         {
            this.§%#H§ = null;
         }
         if(_loc4_ is §4!y§)
         {
            _loc5_ = _loc4_ as §4!y§;
            if(param2)
            {
               _loc6_ = this.getScoreTextPosition(_loc5_);
               _loc7_ = §@>§.§9#N§(_loc5_.itemName,_loc5_.§3#,§);
               _loc8_ = this.shouldShowScoreText(_loc5_);
               if(_loc5_.levelItem.destroyedScoreInc > 0)
               {
                  this.§=#N§.addScore(_loc5_.levelItem.destroyedScoreInc,§&"A§.§9$,§,_loc8_,_loc6_.x,_loc6_.y,_loc7_,_loc5_.levelItem.floatingScoreFont);
               }
            }
            if(param3)
            {
               _loc5_.updateBeforeRemoving(null,param2);
            }
            else
            {
               _loc5_.updateBeforeRemoving(this,param2);
            }
            this.§#"m§(_loc5_);
            this.removeDestroyedAttachedJoints(_loc5_);
            delete this.§4#H§[_loc5_.§9"f§.instanceName];
         }
         this.§!"N§(_loc4_.sprite);
         this.§4$8§[param1] = null;
         this.§4$8§.splice(param1,1);
         if(_loc4_ is §7!0§)
         {
            if((_loc9_ = this.§8!k§.indexOf(§7!0§(_loc4_))) >= 0)
            {
               this.§8!k§.splice(_loc9_,1);
            }
         }
         if(this.§]$§)
         {
            this.§]$§.§6#k§(_loc4_);
         }
         if(!param3)
         {
            this.§6#k§(_loc4_);
         }
         _loc4_.dispose();
         _loc4_ = null;
      }
      
      protected function removeDestroyedAttachedJoints(param1:§4!y§) : void
      {
         var _loc2_:§+$9§ = null;
         for each(_loc2_ in this.§`"j§)
         {
            if(_loc2_.objectId1 == param1.id || _loc2_.objectId2 == param1.id)
            {
               _loc2_.§1#X§ = true;
            }
         }
      }
      
      protected function §6#k§(param1:§,#5§) : void
      {
         var _loc2_:§4!y§ = null;
         var _loc3_:§["z§ = null;
         var _loc4_:Vector.<§5",§> = null;
         var _loc5_:int = 0;
         var _loc6_:§5",§ = null;
         if(param1 is §4!y§)
         {
            _loc2_ = param1 as §4!y§;
            _loc3_ = _loc2_.§9"f§;
            if(_loc3_)
            {
               if(_loc4_ = _loc3_.getEvents())
               {
                  _loc5_ = 0;
                  while(_loc5_ < _loc4_.length)
                  {
                     if((_loc6_ = _loc4_[_loc5_]).§#&§ == §@!,§)
                     {
                        this.§=#N§.§,2§(_loc6_);
                     }
                     _loc5_++;
                  }
               }
            }
         }
      }
      
      protected function §3k§(param1:§4!y§, param2:String, param3:String) : void
      {
         if(param1)
         {
            param1.§ !@§(param2,param3,this);
         }
      }
      
      protected function §!"N§(param1:§^"S§.Sprite) : void
      {
         if(param1 && param1.parent)
         {
            param1.parent.removeChild(param1);
         }
      }
      
      public function removeObject(param1:§,#5§, param2:Boolean = false, param3:Boolean = false) : void
      {
         if(param1)
         {
            this.§&#Z§(this.§4$8§.indexOf(param1),param2,param3);
         }
      }
      
      public function §@"H§(param1:§,#5§, param2:String) : §,#5§
      {
         var _loc7_:§4!y§ = null;
         var _loc8_:int = 0;
         var _loc3_:int = this.§4$8§.indexOf(param1);
         if(_loc3_ < 0)
         {
            return null;
         }
         var _loc4_:§,#5§;
         var _loc5_:b2Body = (_loc4_ = this.§4$8§[_loc3_]).getBody();
         var _loc6_:§,#5§;
         ((_loc6_ = this.addObject(param2,_loc5_.GetPosition().x,_loc5_.GetPosition().y,_loc5_.GetAngle() / Math.PI * 180,§!#L§.ID_NEXT_FREE,false,false,false,1,false)) as §4!y§).§-$1§(_loc4_.getBody());
         (_loc6_ as §4!y§).§`#o§(_loc4_.getBody().GetAngularVelocity());
         if(_loc4_ == this.§%#H§)
         {
            this.§%#H§ = null;
         }
         if(_loc4_ is §4!y§)
         {
            (_loc7_ = _loc4_ as §4!y§).updateBeforeRemoving(null,true);
            this.§#"m§(_loc7_);
            this.removeDestroyedAttachedJoints(_loc7_);
            delete this.§4#H§[_loc7_.§9"f§.instanceName];
         }
         this.§!"N§(_loc4_.sprite);
         this.§4$8§[_loc3_] = null;
         this.§4$8§.splice(_loc3_,1);
         if(_loc4_ is §7!0§)
         {
            if((_loc8_ = this.§8!k§.indexOf(§7!0§(_loc4_))) >= 0)
            {
               this.§8!k§.splice(_loc8_,1);
            }
         }
         if(this.§]$§)
         {
            this.§]$§.§6#k§(_loc4_);
         }
         _loc4_.dispose(false);
         _loc4_ = null;
         return _loc6_;
      }
      
      public function §6$6§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§=#N§.§>"T§();
         }
      }
      
      public function §""x§(param1:Boolean, param2:Number = 0, param3:Number = 0, param4:Number = 0) : void
      {
         this.§=#N§.§""x§(param1,param2,param3,param4);
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         this.§6#,§.x = -param1;
         this.§6#,§.y = -param2;
         this.§"l§.x = -param1;
         this.§"l§.y = -param2;
         this.§0$5§.x = -param1;
         this.§0$5§.y = -param2;
         this.§;"J§.x = -param1;
         this.§;"J§.y = -param2;
      }
      
      public function isLevelGoalObjectsAlive() : Boolean
      {
         var _loc2_:§,#5§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§4$8§.length)
         {
            _loc2_ = this.§4$8§[_loc1_];
            if(_loc2_)
            {
               if(_loc2_.§3#,§)
               {
                  return true;
               }
            }
            _loc1_++;
         }
         return false;
      }
      
      public function isPigsAlive() : Boolean
      {
         var _loc2_:§,#5§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§4$8§.length)
         {
            _loc2_ = this.§4$8§[_loc1_];
            if(_loc2_ && _loc2_ is §6!H§ && (_loc2_ as §6!H§).health > 0)
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function getPigCount(param1:Boolean = false) : int
      {
         var _loc4_:§6!H§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§4$8§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§4$8§[_loc3_] as §6!H§) && _loc4_.health > 0)
            {
               if(!param1 || !_loc4_.§?#z§ && !_loc4_.§2!n§)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §1"c§() : Array
      {
         var _loc2_:§4!y§ = null;
         this.§5"o§.length = 0;
         var _loc1_:int = this.§4$8§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§4$8§[_loc1_] as §4!y§;
            if(_loc2_ && _loc2_.health > 0)
            {
               if(_loc2_.§5!3§())
               {
                  this.§5"o§.push(_loc1_);
               }
            }
            _loc1_--;
         }
         return this.§5"o§;
      }
      
      public function §=!f§() : int
      {
         var _loc2_:§4!y§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§4$8§)
         {
            if(_loc2_ is §]o§)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §@!;§() : int
      {
         var _loc2_:§4!y§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§4$8§)
         {
            if(_loc2_ && _loc2_.§83§())
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function makePigsSmile(param1:Number = 1) : void
      {
         var _loc3_:§6!H§ = null;
         var _loc2_:int = this.§4$8§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§4$8§[_loc2_] as §6!H§;
            if(_loc3_ && _loc3_.health > 0)
            {
               _loc3_.scream();
            }
            _loc2_--;
         }
      }
      
      public function §implements§() : Boolean
      {
         var _loc2_:§?$%§ = null;
         var _loc1_:int = this.§4$8§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§4$8§[_loc1_] as §?$%§;
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
         var _loc2_:§4!y§ = null;
         var _loc1_:int = this.§4$8§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§4$8§[_loc1_] as §4!y§;
            if(_loc2_ != null && _loc2_.health > 0 && !_loc2_.§=$,§())
            {
               if(_loc2_.isDamageAwardingScore() && !_loc2_.§7#]§())
               {
                  return false;
               }
               if(_loc2_ is §?$%§ && _loc2_.health > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §<#;§(param1:Boolean = false) : §6!H§
      {
         var _loc7_:§6!H§ = null;
         var _loc2_:int = this.§4$8§.length;
         var _loc3_:int = this.getPigCount(param1);
         if(_loc3_ == 0)
         {
            return null;
         }
         var _loc4_:int = Math.random() * _loc3_;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         while(_loc6_ < _loc2_)
         {
            if((_loc7_ = this.§4$8§[_loc6_] as §6!H§) && _loc7_.health > 0)
            {
               if(!param1 || _loc7_.isNormal)
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
      
      public function §5$'§() : §4!y§
      {
         var _loc3_:§4!y§ = null;
         var _loc4_:int = 0;
         var _loc1_:§4!y§ = null;
         if(this.§@#w§ == null)
         {
            this.§@#w§ = [];
         }
         this.§@#w§.length = 0;
         var _loc2_:int = this.§4$8§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§4$8§[_loc2_] as §4!y§;
            if(_loc3_)
            {
               if(_loc3_.health > 0 && _loc3_.§`!c§)
               {
                  this.§@#w§.push(_loc3_);
               }
            }
            _loc2_--;
         }
         if(this.§@#w§.length > 0)
         {
            _loc4_ = Math.random() * this.§@#w§.length;
            _loc1_ = this.§@#w§[_loc4_];
         }
         return _loc1_;
      }
      
      public function §+&§() : int
      {
         var _loc3_:§4!y§ = null;
         var _loc1_:int = 0;
         var _loc2_:int = this.§4$8§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§4$8§[_loc2_] as §4!y§;
            if(_loc3_)
            {
               _loc1_ += _loc3_.levelItem.destroyedScoreInc;
               if(_loc3_.isDamageAwardingScore())
               {
                  _loc1_ += _loc3_.levelItem.damageScore;
               }
            }
            _loc2_--;
         }
         return int(_loc1_ + this.§=#N§.slingshot.§+&§());
      }
      
      protected function §8!r§(param1:§,#5§, param2:§,#5§) : Boolean
      {
         if(param1 is §4!y§ && param2 is §4!y§ && !(param1 as §4!y§).§2"g§() && !(param2 as §4!y§).§2"g§())
         {
            return false;
         }
         return true;
      }
      
      protected function hasMinimumCollisionSpeed(param1:§,#5§, param2:§,#5§) : Boolean
      {
         return this.§8!r§(param1,param2);
      }
      
      public function §?#S§() : void
      {
         this.§4!E§ = 0;
      }
      
      protected function shakeCameraOnCollision(param1:Number, param2:Number, param3:Number) : void
      {
      }
      
      protected function shakeCameraOnExplosion(param1:Number) : void
      {
      }
      
      protected function getCollisionDamageFactor(param1:§4!y§, param2:§4!y§) : Number
      {
         var _loc3_:Number = NaN;
         if(param2 is §?$%§)
         {
            return 1;
         }
         if(param1 is §?$%§)
         {
            return Number(param1.§2$9§(param2.§;#B§()));
         }
         return 1;
      }
      
      protected function getCollisionForceFactor(param1:§4!y§, param2:§4!y§) : Number
      {
         if(param2 is §?$%§)
         {
            return 0;
         }
         return 1;
      }
      
      protected function §8!'§(param1:§4!y§, param2:§4!y§) : Number
      {
         var _loc4_:Number = this.getCollisionForceFactor(param1,param2);
         var _loc5_:Number = this.getCollisionForceFactor(param2,param1);
         var _loc6_:Number = param1.getBody().GetMass();
         var _loc7_:Number = param2.getBody().GetMass();
         var _loc8_:b2Vec2 = param1.§!"a§();
         var _loc9_:b2Vec2 = param2.§!"a§();
         var _loc10_:Number = _loc4_ * _loc6_ * _loc8_.x - _loc5_ * _loc7_ * _loc9_.x;
         var _loc11_:Number = _loc4_ * _loc6_ * _loc8_.y - _loc5_ * _loc7_ * _loc9_.y;
         return Number(Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_) / 10);
      }
      
      public function §?"p§(param1:§4!y§, param2:§4!y§) : Boolean
      {
         if(param2 is §,#+§ && param1 is §,#+§)
         {
            return true;
         }
         return false;
      }
      
      public function objectCollision(param1:§,#5§, param2:§,#5§, param3:b2Contact) : Boolean
      {
         var _loc15_:§#H§ = null;
         var _loc16_:b2JointEdge = null;
         var _loc17_:b2JointEdge = null;
         var _loc18_:b2Joint = null;
         var _loc19_:b2JointEdge = null;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         if(!this.§-$<§)
         {
            return false;
         }
         param1.collidedWith(param2);
         param2.collidedWith(param1);
         var _loc4_:§4!y§ = param1 as §4!y§;
         var _loc5_:§4!y§ = param2 as §4!y§;
         if(!_loc4_ || !_loc5_)
         {
            return true;
         }
         if(_loc4_.destroysCollidingObjects || _loc5_.§`c§)
         {
            _loc5_.applyDamage(_loc5_.§""5§ * 2,this,_loc4_,true);
            _loc4_.causedDamageToObjects();
            return true;
         }
         if(_loc5_.destroysCollidingObjects || _loc4_.§`c§)
         {
            _loc4_.applyDamage(_loc4_.§""5§ * 2,this,_loc5_,true);
            _loc5_.causedDamageToObjects();
            return true;
         }
         if(!this.hasMinimumCollisionSpeed(_loc4_,_loc5_))
         {
            return false;
         }
         if(this.§?"p§(_loc4_,_loc5_))
         {
            return false;
         }
         var _loc6_:Number = this.§8!'§(_loc4_,_loc5_);
         var _loc7_:Number = Math.max(0,_loc4_.health);
         var _loc8_:Number = Math.max(0,_loc5_.health);
         if(!_loc4_.§=#]§ && !_loc5_.§=#]§)
         {
            this.shakeCameraOnCollision(_loc6_,_loc7_,_loc8_);
         }
         var _loc9_:Number = this.getCollisionDamageFactor(_loc4_,_loc5_);
         var _loc10_:Number = this.getCollisionDamageFactor(_loc5_,_loc4_);
         var _loc11_:Number = _loc6_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc9_;
         var _loc13_:Number = _loc11_ > 0 ? Number(_loc4_.applyDamage(_loc11_,this,_loc5_,true)) : Number(_loc4_.health);
         var _loc14_:Number = _loc12_ > 0 ? Number(_loc5_.applyDamage(_loc12_,this,_loc4_,true)) : Number(_loc5_.health);
         for each(_loc15_ in this.§4!V§)
         {
            if(_loc15_.breakable && _loc6_ >= _loc15_.breakForce)
            {
               _loc16_ = _loc4_.getBody().GetJointList();
               _loc17_ = _loc5_.getBody().GetJointList();
               if(_loc16_ != null)
               {
                  _loc18_ = _loc16_.joint;
                  _loc19_ = _loc16_.§%I§;
                  while(_loc18_)
                  {
                     if(_loc18_ == _loc15_.§%#Z§)
                     {
                        this.§;!-§(_loc15_);
                        break;
                     }
                     if(!_loc19_)
                     {
                        break;
                     }
                     _loc18_ = _loc19_.joint;
                     _loc19_ = _loc19_.§%I§;
                  }
               }
               if(_loc17_ != null)
               {
                  _loc18_ = _loc17_.joint;
                  _loc19_ = _loc17_.§%I§;
                  while(_loc18_ && _loc19_)
                  {
                     if(_loc18_ == _loc15_.§%#Z§)
                     {
                        this.§;!-§(_loc15_);
                        break;
                     }
                     if(!_loc19_)
                     {
                        break;
                     }
                     _loc18_ = _loc19_.joint;
                     _loc19_ = _loc19_.§%I§;
                  }
               }
            }
         }
         if(_loc13_ < _loc7_)
         {
            _loc5_.causedDamageToObjects();
         }
         if(_loc14_ < _loc8_)
         {
            _loc4_.causedDamageToObjects();
         }
         if(_loc4_ is §?$%§)
         {
            if(_loc14_ <= 0)
            {
               if(!_loc5_.disableBirdPassThrough)
               {
                  _loc20_ = _loc4_.§4Q§(_loc5_.§;#B§());
                  this.§1$0§(_loc4_ as §?$%§,_loc6_ * _loc9_,_loc8_,_loc20_);
               }
               return false;
            }
         }
         if(_loc5_ is §?$%§)
         {
            if(_loc13_ <= 0)
            {
               if(!_loc4_.disableBirdPassThrough)
               {
                  _loc21_ = _loc5_.§4Q§(_loc4_.§;#B§());
                  this.§1$0§(_loc5_ as §?$%§,_loc6_ * _loc10_,_loc7_,_loc21_);
               }
               return false;
            }
         }
         return _loc13_ <= 0 && _loc14_ <= 0;
      }
      
      public function objectCollisionEnded(param1:§,#5§, param2:§,#5§) : void
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
      
      protected function §1$0§(param1:§?$%§, param2:Number, param3:Number, param4:Number) : void
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
         var _loc6_:b2Vec2 = param1.§!"a§();
         param1.§6"0§(new b2Vec2(_loc6_.x * _loc5_,_loc6_.y * _loc5_));
      }
      
      public function §;!2§() : void
      {
         var _loc2_:§4!y§ = null;
         var _loc1_:int = this.§4$8§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§4$8§[_loc1_] as §4!y§;
            if(_loc2_ && _loc2_.§3#,§)
            {
               this.§&#Z§(_loc1_,true);
            }
            _loc1_--;
         }
      }
      
      public function §<#M§() : void
      {
         var _loc2_:§4!y§ = null;
         var _loc1_:int = this.§4$8§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§4$8§[_loc1_] as §4!y§;
            if(_loc2_ != null && _loc2_.isTnt())
            {
               this.§&#Z§(_loc1_,true);
            }
            _loc1_--;
         }
      }
      
      public function §&#1§() : int
      {
         return this.§4$8§.length;
      }
      
      public function §4"n§(param1:§>f§) : void
      {
         var _loc4_:§4!y§ = null;
         var _loc5_:§["z§ = null;
         var _loc6_:Vector.<§5",§> = null;
         var _loc7_:§3!1§ = null;
         var _loc8_:§#H§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§4$8§.length)
         {
            if(_loc4_ = this.§4$8§[_loc2_] as §4!y§)
            {
               if(_loc4_.§9!I§)
               {
                  if(!_loc4_.§=$,§())
                  {
                     (_loc5_ = new §["z§()).angle = _loc4_.§`$"§() / (Math.PI / 180);
                     _loc5_.id = _loc4_.id;
                     _loc5_.type = _loc4_.itemName;
                     if(_loc4_.itemName == §"#1§.§1C§)
                     {
                        _loc5_.type = (_loc4_ as §"#1§).§?#x§;
                     }
                     _loc5_.x = _loc4_.getBody().GetPosition().x;
                     _loc5_.y = _loc4_.getBody().GetPosition().y;
                     if(!_loc4_.§83§())
                     {
                        _loc5_.z = _loc4_.§2$5§();
                     }
                     if(_loc4_.§1"#§())
                     {
                        _loc5_.linearForce = _loc4_.§1"#§();
                     }
                     if(_loc4_.§9"f§.hasSpecialBehavior)
                     {
                        _loc5_.§?w§(_loc4_.§9"f§.getBehaviorsData());
                     }
                     if(_loc6_ = _loc4_.§9"f§.getEvents())
                     {
                        _loc5_.§6#@§(_loc6_);
                     }
                     param1.addObject(_loc5_);
                  }
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§4!V§.length)
         {
            _loc8_ = this.§4!V§[_loc3_];
            (_loc7_ = new §3!1§(_loc8_.type,_loc8_.id1,_loc8_.id2,_loc8_.point1,_loc8_.point2,_loc8_.§9L§,_loc8_.§%!>§,_loc8_.lowerLimit,_loc8_.upperLimit,_loc8_.§;#S§,_loc8_.motorSpeed,_loc8_.§^v§,_loc8_.maxTorque,_loc8_.breakable,_loc8_.breakForce,_loc8_.isOneWayDestroyed)).annihilationTime = _loc8_.annihilationTime;
            _loc7_.distanceToDestroyChild = _loc8_.distanceToDestroyChild;
            _loc7_.axisX = _loc8_.axisX;
            _loc7_.axisY = _loc8_.axisY;
            _loc7_.breakable = _loc8_.breakable;
            _loc7_.breakForce = _loc8_.breakForce;
            _loc7_.destroyChild = _loc8_.destroyChild;
            param1.§^M§(_loc7_);
            _loc3_++;
         }
      }
      
      public function §2"`§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = [];
         var _loc4_:Number = 0;
         while(_loc4_ < this.§4$8§.length)
         {
            if(this.§4$8§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§4$8§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         var _loc3_:§4!y§ = null;
         this.§?!a§ = param1;
         this.setTexture(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§4$8§.length)
         {
            _loc3_ = this.§4$8§[_loc2_] as §4!y§;
            if(_loc3_ && _loc3_.§83§())
            {
               _loc3_.sprite.visible = !this.§?!a§;
            }
            _loc2_++;
         }
      }
      
      public function setCollisionsEnabled(param1:Boolean) : void
      {
         this.§-$<§ = param1;
      }
      
      public function §`$0§() : int
      {
         return this.§`$-§;
      }
      
      public function §@"l§() : int
      {
         return this.§""u§;
      }
      
      public function §'#9§(param1:§,#5§) : Boolean
      {
         var _loc2_:int = this.§4$8§.indexOf(param1);
         return _loc2_ >= 0;
      }
   }
}
