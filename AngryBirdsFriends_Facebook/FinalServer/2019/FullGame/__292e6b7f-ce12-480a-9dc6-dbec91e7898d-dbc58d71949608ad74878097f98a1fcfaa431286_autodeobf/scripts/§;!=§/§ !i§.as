package §;!=§
{
   import § !N§.§2m§;
   import § !N§.§5"?§;
   import § !N§.§8!U§;
   import § !N§.§]!#§;
   import § !N§.§^#C§;
   import §!"b§.b2Joint;
   import §!"b§.b2JointEdge;
   import §!"b§.b2PrismaticJoint;
   import §!"b§.b2RevoluteJoint;
   import §#"4§.§&r§;
   import §#g§.§%!a§;
   import §#g§.§7d§;
   import §#g§.§8§;
   import §'#K§.b2Body;
   import §,#e§.§;!`§;
   import §,#e§.Image;
   import §,#e§.Sprite;
   import §,0§.§0"0§;
   import §-#F§.b2Contact;
   import §-#]§.Texture;
   import §04§.b2Vec2;
   import §3"V§.§ b§;
   import §7"T§.§4!L§;
   import §7"T§.§7b§;
   import §7"o§.§##P§;
   import §7"o§.§=" §;
   import §7"o§.§=,§;
   import §7#$§.§?# §;
   import §8#K§.§&2§;
   import §8#K§.§+#y§;
   import §8#K§.§46§;
   import §8#K§.§=$'§;
   import §8#K§.§^r§;
   import §8#K§.§`!j§;
   import §9! §.§&!i§;
   import §9#G§.§[$#§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class § !i§ implements §]!m§
   {
      
      private static const § $,§:Boolean = false;
      
      public static const §="l§:int = 1000000000;
      
      public static const §1"a§:int = -1;
      
      public static const ID_NEXT_FREE:int = -2;
      
      public static const §]#f§:String = "onDestroy";
       
      
      protected var §1#s§:Vector.<§'#N§>;
      
      protected var §`"]§:Vector.<§`"4§>;
      
      protected var §8!c§:Vector.<§=" §>;
      
      protected var §?w§:§&r§;
      
      private var §@",§:int = 1000000000;
      
      public var §9!E§:§8#3§;
      
      protected var §"#Q§:Vector.<§-!J§>;
      
      protected var §&"9§:§,#e§.Sprite;
      
      protected var §%f§:§,#e§.Sprite;
      
      protected var §2#G§:§,#e§.Sprite;
      
      protected var §5#+§:§,#e§.Sprite;
      
      protected var §9"c§:§,#e§.Sprite;
      
      protected var §9"d§:§,#e§.Sprite;
      
      protected var §@!&§:Vector.<Texture>;
      
      protected var §5!-§:Vector.<§]!#§>;
      
      protected var §'!4§:int = 1;
      
      protected var §-#S§:Vector.<§^#C§>;
      
      protected var §,$7§:int = 0;
      
      protected var §##V§:int = 0;
      
      private var §7"P§:int = 0;
      
      private var §^!=§:§5"?§;
      
      protected var §5"q§:§>"G§;
      
      private var §5"t§:Boolean = true;
      
      private var § #v§:Boolean = true;
      
      protected var § #B§:§&!i§;
      
      private var §8!,§:Boolean = false;
      
      private var §2"n§:Array;
      
      private var §;#F§:Array;
      
      public function § !i§(param1:§8#3§, param2:§?# §, param3:§,#e§.Sprite, param4:String)
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:int = 0;
         var _loc8_:§'#N§ = null;
         this.§1#s§ = new Vector.<§'#N§>();
         this.§`"]§ = new Vector.<§`"4§>();
         this.§8!c§ = new Vector.<§=" §>();
         this.§?w§ = new §&r§();
         this.§"#Q§ = new Vector.<§-!J§>();
         this.§@!&§ = new Vector.<Texture>();
         this.§-#S§ = new Vector.<§^#C§>();
         this.§^!=§ = new §5"?§();
         super();
         this.§9!E§ = param1;
         this.§&"9§ = param3;
         this.§&"9§.§4"e§ = false;
         this.§ #v§ = true;
         this.§5"t§ = true;
         this.§%f§ = new §,#e§.Sprite();
         this.§2#G§ = new §,#e§.Sprite();
         this.§5#+§ = new §,#e§.Sprite();
         this.§9"d§ = new §,#e§.Sprite();
         this.§9"c§ = new §,#e§.Sprite();
         this.§&"9§.addChild(this.§%f§);
         this.§&"9§.addChild(this.§2#G§);
         this.§&"9§.addChild(this.§5#+§);
         §[$#§.init(4,2);
         this.§;#F§ = [];
         this.addLevelObjects(param2);
         if(param2.hasGround)
         {
            _loc5_ = (this.§9!E§.§3"b§.§>![§ + this.§9!E§.§3"b§.§`#'§) / 2;
            _loc6_ = 0 + §7d§.§@"6§;
            _loc7_ = 0;
            while(_loc7_ < 5)
            {
               if((_loc8_ = this.addObject(param4,_loc5_,_loc6_,0,§ !i§.§1"a§)) != null)
               {
                  break;
               }
               _loc7_++;
            }
         }
      }
      
      public function get §`"%§() : §,#e§.Sprite
      {
         return this.§9"d§;
      }
      
      public function get §-$-§() : §,#e§.Sprite
      {
         return this.§5#+§;
      }
      
      public function get §2!4§() : §,#e§.Sprite
      {
         return this.§2#G§;
      }
      
      public function get backgroundSprite() : §,#e§.Sprite
      {
         return this.§9"c§;
      }
      
      public function get §&!-§() : §,#e§.Sprite
      {
         return this.§&"9§;
      }
      
      public function get activeObject() : §>"G§
      {
         return this.§5"q§;
      }
      
      public function get objectCount() : int
      {
         return this.§1#s§.length;
      }
      
      public function set §7$8§(param1:§&!i§) : void
      {
         if(param1 != this.§ #B§)
         {
            this.§ #B§ = param1;
            if(this.§8!,§ && this.§ #B§)
            {
               this.§ #B§.levelStarted();
            }
         }
      }
      
      public function levelInitialized() : void
      {
         if(!this.§8!,§)
         {
            this.§8!,§ = true;
            if(this.§ #B§)
            {
               this.§ #B§.levelStarted();
            }
         }
      }
      
      public function §0!l§(param1:String) : §&2§
      {
         return this.§9!E§.levelItemManager.getItem(param1);
      }
      
      public function activateSpecialPower(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         if(this.§5"q§)
         {
            _loc3_ = this.§5"q§.activateSpecialPower(this,param1,param2);
         }
         return _loc3_;
      }
      
      public function §%!N§(param1:§5"?§) : void
      {
         var _loc2_:Number = 1;
         var _loc3_:§&2§ = this.§9!E§.levelItemManager.getItem(param1.type);
         if(_loc3_)
         {
            _loc2_ = _loc3_.scale;
         }
         this.addObjectFromModel(param1,param1.id,false,false,false,_loc2_);
      }
      
      protected function addLevelObjects(param1:§?# §) : void
      {
         var _loc3_:§5"?§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:§&2§ = null;
         var _loc6_:§2m§ = null;
         var _loc2_:int = 0;
         _loc2_ = 0;
         while(_loc2_ < param1.objectCount)
         {
            _loc3_ = param1.getObject(_loc2_);
            _loc4_ = 1;
            if(_loc5_ = this.§9!E§.levelItemManager.getItem(_loc3_.type))
            {
               _loc4_ = _loc5_.scale;
            }
            this.addObjectFromModel(_loc3_,_loc3_.id,false,false,false,_loc4_);
            _loc2_++;
         }
         this.generateTerrainTexture();
         this.setTexture(true);
         this.§5!-§ = new Vector.<§]!#§>();
         _loc2_ = 0;
         while(_loc2_ < param1.§[#@§)
         {
            _loc6_ = param1.§ #2§(_loc2_);
            this.§%$§(_loc6_);
            _loc2_++;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         §[$#§.dispose();
         while(this.§1#s§.length > 0)
         {
            this.§>7§(0,false,true);
         }
         while(this.§8!c§.length > 0)
         {
            this.§7"h§(0);
         }
         this.§1#s§ = null;
         this.§`"]§ = null;
         this.§8!c§ = null;
         this.§?w§ = null;
         this.§-#S§ = null;
         this.§;#F§ = null;
         if(this.§&"9§)
         {
            this.§&"9§.dispose();
            this.§&"9§ = null;
         }
         this.§%f§ = null;
         this.§2#G§ = null;
         if(this.§5#+§)
         {
            this.§5#+§.dispose();
            this.§5#+§ = null;
         }
         if(this.§9"d§)
         {
            this.§9"d§.dispose();
            this.§9"d§ = null;
         }
         if(this.§9"c§)
         {
            this.§9"c§.dispose();
            this.§9"c§ = null;
         }
         while(this.§@!&§.length > 0)
         {
            _loc1_ = this.§@!&§.pop();
            this.§9!E§.textureManager.unregisterBitmapDataTexture(_loc1_);
         }
      }
      
      public function setTexture(param1:Boolean) : void
      {
         this.§%f§.visible = param1;
         this.§9"c§.visible = param1;
      }
      
      public function generateTerrainTexture() : void
      {
         var _loc5_:§'#N§ = null;
         var _loc6_:Rectangle = null;
         var _loc7_:§>"G§ = null;
         var _loc8_:§46§ = null;
         var _loc9_:Number = NaN;
         var _loc10_:String = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Rectangle = null;
         var _loc3_:Vector.<§>"G§> = new Vector.<§>"G§>();
         var _loc4_:Vector.<§>"G§> = new Vector.<§>"G§>();
         for each(_loc5_ in this.§1#s§)
         {
            if((_loc7_ = _loc5_ as §>"G§) && _loc7_.§%@§())
            {
               _loc9_ = (_loc8_ = _loc7_.levelItem.shape).getDimension() / §8#3§.§2K§;
               _loc6_ = new Rectangle(_loc5_.sprite.x - _loc9_ / 2,_loc5_.sprite.y - _loc9_ / 2,_loc9_,_loc9_);
               if((_loc10_ = _loc7_.§]$@§()) == §&2§.§<"u§)
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
            this.§+"M§(_loc1_,_loc3_,this.§6#5§(),this.§%f§);
         }
         if(_loc2_)
         {
            this.§+"M§(_loc2_,_loc4_,this.§6"@§(),this.§9"c§);
         }
      }
      
      private function §+"M§(param1:Rectangle, param2:Vector.<§>"G§>, param3:String, param4:§,#e§.Sprite) : void
      {
         var _loc5_:Number = this.§9!E§.camera.borderLeft / §8#3§.§2K§;
         var _loc6_:Number = this.§9!E§.camera.borderRight / §8#3§.§2K§;
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
         this.§,!@§(_loc14_.rect,_loc14_,_loc9_ * _loc15_,param3);
         var _loc16_:BitmapData = this.§?"3§(param2,_loc10_,_loc11_,_loc12_,_loc13_,_loc9_);
         _loc14_.copyChannel(_loc16_,_loc16_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
         var _loc17_:Texture = this.§9!E§.textureManager.getTextureFromBitmapData(_loc14_);
         this.§@!&§.push(_loc17_);
         var _loc18_:Image;
         (_loc18_ = new Image(_loc17_)).x = _loc12_ / _loc9_;
         _loc18_.y = _loc13_ / _loc9_;
         _loc18_.scaleX = 1 / _loc9_;
         _loc18_.scaleY = 1 / _loc9_;
         param4.addChild(_loc18_);
         _loc16_.dispose();
      }
      
      private function §?"3§(param1:Vector.<§>"G§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§>"G§ = null;
         var _loc11_:Number = NaN;
         var _loc12_:§46§ = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc10_.identity();
            _loc11_ = param6;
            if((_loc12_ = _loc7_.levelItem.shape) is §`!j§)
            {
               this.§`M§(_loc12_,_loc8_,_loc9_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§3"W§(),param6,_loc11_,param4,param5);
            }
            else if(_loc12_ is §^r§)
            {
               if((_loc12_ as §^r§).vertices.length == 4)
               {
                  this.§`M§(_loc12_,_loc8_,_loc9_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§3"W§(),param6,_loc11_,param4,param5);
               }
               else if((_loc12_ as §^r§).vertices.length == 3)
               {
                  this.§5]§(_loc12_ as §^r§,_loc8_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§3"W§(),param6,_loc11_,param4,param5);
               }
            }
            else if(_loc12_ is §=$'§)
            {
               this.§3$1§(_loc12_ as §=$'§,_loc8_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,param6,_loc11_,param4,param5);
            }
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      protected function §`M§(param1:§46§, param2:BitmapData, param3:BitmapData, param4:Matrix, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Number) : void
      {
         var _loc12_:Number = param1.getWidth() / §8#3§.§2K§ * param9;
         var _loc13_:Number = param1.getHeight() / §8#3§.§2K§ * param9;
         param4.scale(_loc12_,_loc13_);
         param4.translate(-_loc12_ / 2,-_loc13_ / 2);
         param4.rotate(param7);
         param4.translate(param5 * param8 - param10,param6 * param8 - param11);
         param2.draw(param3,param4);
      }
      
      protected function §5]§(param1:§^r§, param2:BitmapData, param3:Matrix, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number) : void
      {
         var _loc14_:b2Vec2 = null;
         var _loc11_:flash.display.Sprite;
         (_loc11_ = new flash.display.Sprite()).graphics.beginFill(16777215);
         var _loc12_:Vector.<Number> = new Vector.<Number>();
         var _loc13_:int = 0;
         while(_loc13_ < param1.vertices.length)
         {
            _loc14_ = param1.vertices[_loc13_];
            _loc12_.push(_loc14_.x / §8#3§.§2K§ * param8,_loc14_.y / §8#3§.§2K§ * param8);
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
      
      protected function §3$1§(param1:§=$'§, param2:BitmapData, param3:Matrix, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number) : void
      {
         var _loc10_:Number;
         var _loc11_:Number = (_loc10_ = param1.radius) / §8#3§.§2K§ * param7;
         var _loc12_:flash.display.Sprite;
         (_loc12_ = new flash.display.Sprite()).graphics.beginFill(16777215);
         _loc12_.graphics.drawCircle(_loc11_,_loc11_,_loc11_);
         _loc12_.graphics.endFill();
         param3.translate(param4 * param6 - param8 - _loc11_,param5 * param6 - param9 - _loc11_);
         param2.draw(_loc12_,param3);
         _loc12_.graphics.clear();
         _loc12_ = null;
      }
      
      protected function §6#5§() : String
      {
         return this.§9!E§.background.§[#r§();
      }
      
      protected function §6"@§() : String
      {
         return this.§9!E§.background.§!J§();
      }
      
      protected function getLevelTextureScale() : Number
      {
         return 1;
      }
      
      private function §,!@§(param1:Rectangle, param2:BitmapData, param3:Number, param4:String) : void
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
         var _loc5_:§4!L§;
         if(_loc5_ = this.§9!E§.backgroundTextureManager.getTexture(param4))
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
      
      protected function §4#B§(param1:§5"?§, param2:§,#e§.Sprite, param3:§7b§, param4:§&2§, param5:Number = 1.0, param6:Boolean = true) : §[!k§
      {
         var _loc11_:§[!k§ = null;
         var _loc7_:String = param1.type;
         var _loc8_:Number = param1.x;
         var _loc9_:Number = param1.y;
         var _loc10_:Number = param1.angle;
         switch(_loc7_)
         {
            case "BIRD_BLACK":
               _loc11_ = new §6"§(param2,param3,this.§9!E§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_BLUE":
               _loc11_ = new §8#I§(param2,param3,this.§9!E§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_GREEN":
               _loc11_ = new §#"=§(param2,param3,this.§9!E§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_WHITE":
               _loc11_ = new §6!7§(param2,param3,this.§9!E§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_YELLOW":
               _loc11_ = new §7"i§(param2,param3,this.§9!E§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_RED":
               _loc11_ = new §##b§(param2,param3,this.§9!E§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_REDBIG":
               _loc11_ = new §1!n§(param2,param3,this.§9!E§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_ORANGE":
               _loc11_ = new §1B§(param2,param3,this.§9!E§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_SARDINE":
               _loc11_ = new §"d§(param2,param3,this.§9!E§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_MIGHTY_EAGLE":
               _loc11_ = new §;"h§(param2,param3,this.§9!E§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            default:
               _loc11_ = new §[!k§(param2,param3,this.§9!E§.mLevelEngine.mWorld,param4,param1,param5,param6);
         }
         return _loc11_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§,$7§ > 0;
      }
      
      protected function addObjectPig(param1:§5"?§, param2:§,#e§.Sprite, param3:§7b§, param4:§&2§, param5:Number = 1.0) : §#!m§
      {
         return new §#!m§(param2,param3,this.§9!E§.mLevelEngine.mWorld,param4,param1,param5);
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number, param5:int, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0, param10:Boolean = false, param11:Boolean = false, param12:Number = 0.0, param13:b2Vec2 = null, param14:Number = 0.0, param15:Number = 0.0, param16:Boolean = true, param17:Number = 1.0) : §'#N§
      {
         this.§^!=§ = new §5"?§();
         this.§^!=§.type = param1;
         this.§^!=§.x = param2;
         this.§^!=§.y = param3;
         this.§^!=§.angle = param4;
         this.§^!=§.§1-§ = 0;
         this.§^!=§.§-9§ = 0;
         this.§^!=§.angularVelocity = param12;
         this.§^!=§.angularDamping = param14;
         this.§^!=§.linearDamping = param15;
         this.§^!=§.awake = param16;
         this.§^!=§.health = param17;
         return this.addObjectFromModel(this.§^!=§,param5,param6,param7,param8,param9,param10,param11);
      }
      
      public function §-"k§(param1:String, param2:Number, param3:Number, param4:Number, param5:int, param6:Number = 0.0, param7:Number = 0.0, param8:Number = 1.0, param9:Boolean = false, param10:Boolean = false) : §'#N§
      {
         this.§^!=§ = new §5"?§();
         this.§^!=§.type = param1;
         this.§^!=§.x = param2;
         this.§^!=§.y = param3;
         this.§^!=§.angle = param4;
         this.§^!=§.§1-§ = param6;
         this.§^!=§.§-9§ = param7;
         return this.addObjectFromModel(this.§^!=§,param5,false,false,false,param8,param9,param10);
      }
      
      protected function addObjectFromModel(param1:§5"?§, param2:int, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true, param6:Number = 1.0, param7:Boolean = false, param8:Boolean = false) : §'#N§
      {
         if(this.isFoundEasterEgg(param1.type))
         {
            return null;
         }
         var _loc9_:§,#e§.Sprite = new §,#e§.Sprite();
         var _loc10_:§'#N§;
         if((_loc10_ = this.§0"E§(param1,param2,_loc9_,param5,param6)) == null)
         {
            return null;
         }
         if(_loc10_ is §>"G§ && (_loc10_ as §>"G§).§%@§())
         {
            _loc9_.visible = !this.§5"t§;
         }
         if(_loc10_ is §[!k§ && !(_loc10_ is §;"h§))
         {
            ++this.§,$7§;
         }
         if(!param7)
         {
            if(param8)
            {
               this.§5#+§.§30§(_loc9_);
            }
            else
            {
               this.§2#G§.§30§(_loc9_);
            }
         }
         else
         {
            this.§9"d§.§30§(_loc9_);
         }
         if(param3)
         {
            this.§9!E§.§>"f§(_loc10_);
         }
         if(param4)
         {
            this.§5"q§ = §>"G§(_loc10_);
         }
         return _loc10_;
      }
      
      protected function isFoundEasterEgg(param1:String) : Boolean
      {
         return false;
      }
      
      private function §0"E§(param1:§5"?§, param2:int, param3:§,#e§.Sprite, param4:Boolean = true, param5:Number = 1.0) : §'#N§
      {
         var _loc7_:Vector.<§8!U§> = null;
         var _loc8_:§8!U§ = null;
         var _loc9_:Boolean = false;
         var _loc10_:§>"G§ = null;
         if(param2 == ID_NEXT_FREE)
         {
            param2 = this.§@",§;
            ++this.§@",§;
         }
         else
         {
            if(param2 >= §="l§)
            {
               throw new Error("Invalid object id: " + param2 + ". Has to be less than " + §="l§);
            }
            if(this.§^"1§(param2))
            {
               throw new Error("Object with id: " + param2 + " already added!");
            }
         }
         var _loc6_:§'#N§;
         if((_loc6_ = this.createObjectInstance(param1,param3,param4,param5)) is §>"G§)
         {
            if((_loc6_ as §>"G§).hasSpecialBehavior)
            {
               _loc7_ = (_loc6_ as §>"G§).§8!E§.getBehaviorsData();
               for each(_loc8_ in _loc7_)
               {
                  if(!(_loc9_ = this.§9!E§.§!">§(_loc8_.type,_loc8_.event)))
                  {
                     (_loc6_ as §>"G§).§0!P§(this.§9!E§,_loc8_);
                  }
               }
            }
         }
         if(_loc6_ is §[!k§)
         {
            ++this.§7"P§;
         }
         if(_loc6_)
         {
            _loc10_ = _loc6_ as §>"G§;
            if(_loc6_ is §=" §)
            {
               this.§8!c§.push(_loc6_);
            }
            else
            {
               if(_loc10_)
               {
                  _loc10_.§?$>§(param2);
                  this.§?w§[param1.instanceName] = _loc6_;
               }
               this.§1#s§.push(_loc6_);
               if(_loc6_ is §`"4§)
               {
                  this.§`"]§.push(_loc6_);
               }
            }
            if(this.§ #B§)
            {
               this.§ #B§.§'"[§(_loc6_);
            }
         }
         return _loc6_;
      }
      
      protected function §!#c§() : String
      {
         return "INGAME_TEXTURE_SAND_1";
      }
      
      protected function createBombBlockInstance(param1:§5"?§, param2:§,#e§.Sprite, param3:§7b§, param4:§&2§, param5:int, param6:Number = 1.0) : §'#N§
      {
         return new §`!@§(param2,param3,this.§9!E§.mLevelEngine.mWorld,param4,param1,param6,param5);
      }
      
      protected function §^"&§(param1:§5"?§, param2:§,#e§.Sprite, param3:§7b§, param4:§&2§, param5:int, param6:Number = 1.0) : §'#N§
      {
         return new §&"c§(param2,param3,this.§9!E§.mLevelEngine.mWorld,param4,param1,param6,param5);
      }
      
      protected function createObjectInstance(param1:§5"?§, param2:§,#e§.Sprite, param3:Boolean = true, param4:Number = 1.0) : §'#N§
      {
         var _loc5_:§&2§;
         if(!(_loc5_ = this.§9!E§.levelItemManager.getItem(param1.type)))
         {
            return null;
         }
         var _loc6_:String;
         if((_loc6_ = _loc5_.itemName).substr(0,13) == "BLOCK_STATIC_")
         {
            _loc6_ = this.§!#c§();
         }
         var _loc7_:§7b§ = this.§9!E§.animationManager.getAnimation(_loc6_);
         var _loc8_:§'#N§ = null;
         if(param1.type.indexOf("BIRD") == 0)
         {
            _loc8_ = this.§4#B§(param1,param2,_loc7_,_loc5_,param4,param3);
         }
         else if(_loc5_.itemType == §&2§.§0!D§)
         {
            (_loc8_ = this.addObjectPig(param1,param2,_loc7_,_loc5_,param4)).§3!C§ = true;
         }
         else if(_loc5_.itemType == §&2§.§]!i§ || _loc5_.itemType == §&2§.§1M§)
         {
            if(_loc5_.itemName.indexOf("TNT") >= 0)
            {
               _loc8_ = this.createBombBlockInstance(param1,param2,_loc7_,_loc5_,§-!J§.§%x§,param4);
            }
            else if(_loc5_.itemName == §6!7§.§7!_§)
            {
               _loc8_ = this.§^"&§(param1,param2,_loc7_,_loc5_,§-!J§.§]#V§,param4);
            }
            else
            {
               _loc8_ = new §1!y§(param2,_loc7_,this.§9!E§.mLevelEngine.mWorld,_loc5_,param1,param4,_loc5_.particleJSONId,_loc5_.particleVariationCount);
            }
         }
         else
         {
            _loc8_ = new §>"G§(param2,_loc7_,this.§9!E§.mLevelEngine.mWorld,_loc5_,param1,param4);
         }
         return _loc8_;
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean, param4:Number, param5:Number, param6:int, param7:String) : void
      {
         this.§9!E§.addScore(param1,§%!a§.§<!u§,param3,param4,param5,param6,param7);
      }
      
      public function addParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : void
      {
         this.§9!E§.particles.addParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function addSimpleParticle(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         this.§9!E§.particles.addSimpleParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16);
      }
      
      public function §@#<§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:Number, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : void
      {
         this.§9!E§.particles.§@#<§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function §?"0§(param1:§>"G§) : void
      {
         var _loc4_:§]!#§ = null;
         var _loc5_:§]!#§ = null;
         var _loc6_:§'#N§ = null;
         var _loc7_:§'#N§ = null;
         var _loc2_:int = param1.id;
         var _loc3_:int = this.§5!-§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§5!-§[_loc3_];
            if(this.§5!-§[_loc3_].id1 == _loc2_ || this.§5!-§[_loc3_].id2 == _loc2_)
            {
               if(_loc4_.§?#§)
               {
                  _loc6_ = _loc4_.§?#§.§0I§().GetUserData() as §'#N§;
                  _loc7_ = _loc4_.§?#§.§2"y§().GetUserData() as §'#N§;
                  if(_loc6_)
                  {
                     _loc6_.attachedJointRemoved(_loc7_);
                  }
                  if(_loc7_)
                  {
                     _loc7_.attachedJointRemoved(_loc6_);
                  }
               }
               _loc5_ = this.§5!-§.pop();
               if(_loc3_ < this.§5!-§.length)
               {
                  this.§5!-§[_loc3_] = _loc5_;
               }
               this.§!!I§(_loc4_);
            }
            _loc3_--;
         }
      }
      
      protected function §%$§(param1:§2m§, param2:Boolean = false) : §]!#§
      {
         var _loc3_:int = param1.id1;
         var _loc4_:int = param1.id2;
         var _loc5_:§]!#§;
         (_loc5_ = §]!#§.§%$§(param1)).§#!#§ = param2;
         this.§5!-§.push(_loc5_);
         var _loc6_:§'#N§ = this.§^"1§(_loc3_);
         var _loc7_:§'#N§ = this.§^"1§(_loc4_);
         if(_loc6_ && _loc7_)
         {
            if(_loc5_.type != §2m§.§8!_§)
            {
               _loc5_.§?#§ = this.§9!E§.mLevelEngine.mWorld.§%!5§(_loc5_.§-$§(_loc6_,_loc7_));
               if(_loc5_.type == §2m§.§'v§ && _loc5_.destroyChild)
               {
                  this.§-#S§.push(new §^#C§(_loc3_,_loc4_,_loc5_.annihilationTime,param1.isOneWayDestroyed,param1.distanceToDestroyChild));
               }
            }
            else
            {
               this.§-#S§.push(new §^#C§(_loc3_,_loc4_,_loc5_.annihilationTime,param1.isOneWayDestroyed,param1.distanceToDestroyChild));
            }
            _loc6_.attachedJointCreated(_loc7_);
            _loc7_.attachedJointCreated(_loc6_);
         }
         return _loc5_;
      }
      
      protected function §!!I§(param1:§]!#§) : void
      {
         if(param1.§?#§)
         {
            this.§9!E§.mLevelEngine.mWorld.§+M§(param1.§?#§);
         }
         if(param1.§&4§)
         {
            if(this.§2#G§.contains(param1.§&4§))
            {
               this.§2#G§.removeChild(param1.§&4§,true);
            }
         }
      }
      
      public function addExplosion(param1:int, param2:Number, param3:Number, param4:int = -1) : void
      {
         this.§"#Q§.push(§-!J§.createExplosion(param1,param2,param3,param4));
         this.playExplosionSound(param1);
      }
      
      protected function playExplosionSound(param1:int) : void
      {
         § b§.playSound("tnt_box_explodes","ChannelExplosions");
      }
      
      public function §##Q§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = -1, param8:Boolean = true, param9:Boolean = true) : void
      {
         this.§"#Q§.push(§-!J§.§`#F§(param1,param2,param3,param4,param5,param6,param7,param8));
         if(param9)
         {
            § b§.playSound("tnt_box_explodes","ChannelExplosions");
         }
      }
      
      public function getForceAtPoint(param1:Number, param2:Number, param3:Number, param4:b2Vec2) : b2Vec2
      {
         if(!param4)
         {
            param4 = new b2Vec2();
         }
         param4.SetV(this.§9!E§.mLevelEngine.mWorld.GetGravity());
         return param4;
      }
      
      public function get §&#o§() : Number
      {
         return this.§9!E§.§&#o§;
      }
      
      public function §`#M§(param1:Number, param2:Number) : int
      {
         var _loc4_:§>"G§ = null;
         var _loc3_:int = this.§1#s§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§1#s§[_loc3_] as §>"G§) && _loc4_.isInCoordinates(param1,param2))
            {
               return _loc3_;
            }
            _loc3_--;
         }
         return -1;
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §>"G§
      {
         var _loc4_:§>"G§ = null;
         var _loc3_:int = this.§1#s§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§1#s§[_loc3_] as §>"G§)
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
      
      public function §+"j§(param1:Number, param2:Number) : Vector.<§>"G§>
      {
         var _loc5_:§>"G§ = null;
         var _loc3_:Vector.<§>"G§> = new Vector.<§>"G§>();
         var _loc4_:int = this.§1#s§.length - 1;
         while(_loc4_ >= 0)
         {
            if((_loc5_ = this.§1#s§[_loc4_] as §>"G§) && _loc5_.isInCoordinates(param1,param2))
            {
               _loc3_.push(_loc5_);
            }
            _loc4_--;
         }
         return _loc3_;
      }
      
      public function getObject(param1:int) : §'#N§
      {
         return this.§1#s§[param1];
      }
      
      public function §^"1§(param1:int) : §>"G§
      {
         var _loc2_:§'#N§ = null;
         var _loc3_:§>"G§ = null;
         for each(_loc2_ in this.§1#s§)
         {
            _loc3_ = _loc2_ as §>"G§;
            if(_loc3_ && _loc3_.id == param1)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function §-!l§(param1:String) : §>"G§
      {
         return this.§?w§[param1];
      }
      
      public function renderObjects(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:int = this.§1#s§.length - 1;
         while(_loc4_ >= 0)
         {
            this.§1#s§[_loc4_].render(param1,param2,param3);
            _loc4_--;
         }
         this.updateParticles(param1);
         _loc4_ = this.§8!c§.length - 1;
         while(_loc4_ >= 0)
         {
            this.§8!c§[_loc4_].render(param1,param2,param3);
            _loc4_--;
         }
      }
      
      protected function getExplosionDamageMultiplier(param1:Number, param2:Number) : Number
      {
         return 1 / param1;
      }
      
      protected function getExplosionDistanceToObject(param1:Number, param2:Number, param3:§>"G§) : §[$#§
      {
         var _loc4_:b2Vec2;
         var _loc5_:Number = (_loc4_ = param3.getBody().GetPosition()).x - param1;
         var _loc6_:Number = _loc4_.y - param2;
         var _loc7_:Number = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         var _loc8_:§[$#§;
         (_loc8_ = §[$#§.getObject()).§56§ = _loc7_;
         _loc8_.§>#I§.x = _loc4_.x;
         _loc8_.§>#I§.y = _loc4_.y;
         return _loc8_;
      }
      
      protected function applyExplosionDamage(param1:§>"G§, param2:Number, param3:Boolean = false) : void
      {
         param1.applyDamage(param2,this,null,param3);
      }
      
      protected function ignoreExplosion(param1:§>"G§, param2:int) : Boolean
      {
         return false;
      }
      
      protected function §;"F§() : void
      {
         var _loc2_:§-!J§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§'#N§ = null;
         var _loc8_:§>"G§ = null;
         var _loc9_:§[$#§ = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         if(!this.§ #v§)
         {
            return;
         }
         var _loc1_:Point = new Point();
         while(this.§"#Q§.length > 0)
         {
            _loc2_ = this.§"#Q§.shift();
            _loc3_ = _loc2_.§2!E§;
            _loc4_ = _loc2_.x;
            _loc5_ = _loc2_.y;
            _loc6_ = _loc2_.damage;
            this.shakeCameraOnExplosion(_loc2_.push);
            for each(_loc7_ in this.§1#s§)
            {
               if((_loc8_ = _loc7_ as §>"G§) && !this.ignoreExplosion(_loc8_,_loc2_.type))
               {
                  if((_loc9_ = this.getExplosionDistanceToObject(_loc4_,_loc5_,_loc8_)).§56§ <= _loc2_.§2!E§)
                  {
                     _loc10_ = _loc2_.push * this.getExplosionDamageMultiplier(_loc9_.§56§,_loc2_.§2!E§);
                     if(_loc9_.§56§ > 0)
                     {
                        _loc1_.x = _loc9_.§>#I§.x - _loc4_;
                        _loc1_.y = _loc9_.§>#I§.y - _loc5_;
                        _loc1_.normalize(1);
                        _loc11_ = _loc10_ * _loc1_.x;
                        _loc12_ = _loc10_ * _loc1_.y;
                        _loc8_.getBody().ApplyImpulse(new b2Vec2(_loc11_,_loc12_),new b2Vec2(_loc9_.§>#I§.x,_loc9_.§>#I§.y));
                     }
                  }
                  if(_loc9_.§56§ <= _loc2_.damageRadius)
                  {
                     _loc13_ = _loc6_ * this.getExplosionDamageMultiplier(_loc9_.§56§,_loc2_.damageRadius);
                     if(isNaN(_loc13_))
                     {
                        _loc13_ = 0;
                     }
                     this.applyExplosionDamage(_loc8_,_loc13_);
                  }
                  §[$#§.§#!Q§(_loc9_);
               }
            }
            if(_loc2_.§!!T§)
            {
               this.updateExplosionEffects(_loc2_,_loc4_,_loc5_,_loc3_);
            }
         }
      }
      
      protected function updateExplosionEffects(param1:§-!J§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         this.§9!E§.particles.addParticle(this.getMainExplosionCoreName(param1.type),§##P§.PARTICLE_GROUP_GAME_EFFECTS,§=,§.PARTICLE_TYPE_STATIC_PARTICLE,param2,param3,600,"",§=,§.§?E§,0,0,0,0,1,20,true);
         var _loc5_:int = 30;
         while(_loc5_ < 150)
         {
            _loc6_ = 0.75 * param4 + Math.random() * param4;
            _loc7_ = 1250 + Math.random() * 750;
            _loc8_ = _loc5_ / (180 / Math.PI);
            this.§9!E§.particles.addParticle(§=,§.§4#S§,§##P§.PARTICLE_GROUP_GAME_EFFECTS,§=,§.PARTICLE_TYPE_KINETIC_PARTICLE,param2,param3,_loc7_,"",§=,§.§?E§,_loc6_ * Math.cos(_loc8_),-_loc6_ * Math.sin(_loc8_),20,0);
            _loc5_ += 5;
         }
      }
      
      protected function getMainExplosionCoreName(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §=,§.§ !d§;
      }
      
      public function updateObjects(param1:Number) : void
      {
         var _loc4_:§>"G§ = null;
         var _loc2_:§'#N§ = null;
         var _loc3_:int = this.§1#s§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§1#s§[_loc3_];
            if(_loc2_.removeOnNextUpdate)
            {
               this.§>7§(_loc3_,true);
            }
            else
            {
               this.§9$<§(_loc2_,param1);
               _loc4_ = _loc2_ as §>"G§;
               if(this.§[,§(_loc2_))
               {
                  this.§>7§(_loc3_,!(_loc4_ is §[!k§));
               }
               else if(_loc4_ && _loc4_.isReadyToBeRemoved(param1))
               {
                  this.§>7§(_loc3_,false);
               }
            }
            _loc3_--;
         }
         this.§4#1§(param1);
         this.§;"F§();
         if(this.§ #B§)
         {
            this.§ #B§.update(param1);
         }
      }
      
      protected function §9$<§(param1:§'#N§, param2:Number) : void
      {
         param1.update(param2,this);
      }
      
      protected function updateParticles(param1:Number) : void
      {
         var _loc2_:§=" § = null;
         var _loc3_:int = this.§8!c§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§8!c§[_loc3_];
            if(_loc2_.removeOnNextUpdate)
            {
               this.§7"h§(_loc3_);
            }
            else
            {
               _loc2_.update(param1,this);
            }
            _loc3_--;
         }
      }
      
      protected function §4#1§(param1:Number) : void
      {
         this.§^"A§(param1);
         this.§="J§();
      }
      
      protected function §^"A§(param1:Number) : void
      {
         var _loc3_:§^#C§ = null;
         var _loc4_:§'#N§ = null;
         var _loc5_:§'#N§ = null;
         var _loc6_:b2Vec2 = null;
         var _loc7_:b2Vec2 = null;
         var _loc8_:Number = NaN;
         var _loc2_:int = this.§-#S§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§-#S§[_loc2_];
            if(_loc3_.§##B§)
            {
               if(!_loc3_.update(param1))
               {
                  if(!_loc3_.isOneWayDestroyed)
                  {
                     _loc4_ = this.§^"1§(_loc3_.objectId1);
                     this.removeObject(_loc4_,true);
                  }
                  if(_loc4_ = this.§^"1§(_loc3_.objectId2))
                  {
                     this.removeObject(_loc4_,true);
                  }
                  this.§-#S§.splice(_loc2_,1);
               }
            }
            else if(_loc3_.distanceToDestroyChild > 0)
            {
               if((_loc4_ = this.§^"1§(_loc3_.objectId1)) && (_loc4_.getBody().GetLinearVelocity().x > 0 || _loc4_.getBody().GetLinearVelocity().y > 0))
               {
                  if(_loc5_ = this.§^"1§(_loc3_.objectId2))
                  {
                     _loc6_ = _loc4_.getBody().GetPosition();
                     _loc7_ = _loc5_.getBody().GetPosition();
                     if((_loc8_ = Math.sqrt((_loc6_.x - _loc7_.x) * (_loc6_.x - _loc7_.x) + (_loc6_.y - _loc7_.y) * (_loc6_.y - _loc7_.y))) > _loc3_.distanceToDestroyChild)
                     {
                        _loc3_.§##B§ = true;
                     }
                  }
               }
            }
            _loc2_--;
         }
      }
      
      private function §7<§(param1:§]!#§) : void
      {
         var _loc2_:§>"G§ = param1.debug_object_1;
         var _loc3_:§>"G§ = param1.debug_object_2;
         if(!_loc2_)
         {
            _loc2_ = this.§^"1§(param1.id1);
            param1.debug_object_1 = _loc2_;
         }
         if(!_loc3_)
         {
            _loc3_ = this.§^"1§(param1.id2);
            param1.debug_object_2 = _loc3_;
         }
         var _loc4_:Number = _loc2_.sprite.x;
         var _loc5_:Number = _loc2_.sprite.y;
         var _loc6_:Number = _loc3_.sprite.x;
         var _loc7_:Number = _loc3_.sprite.y;
         var _loc8_:Number = Math.sqrt((_loc6_ - _loc4_) * (_loc6_ - _loc4_) + (_loc7_ - _loc5_) * (_loc7_ - _loc5_));
         var _loc9_:Number = Math.atan2(_loc7_ - _loc5_,_loc6_ - _loc4_);
         if(param1.§&4§ == null)
         {
            param1.§&4§ = new §;!`§(4,4,4294901760);
            this.§2#G§.addChild(param1.§&4§);
         }
         param1.§&4§.x = _loc4_;
         param1.§&4§.y = _loc5_;
         param1.§&4§.width = _loc8_;
         param1.§&4§.rotation = _loc9_;
      }
      
      protected function §]!$§(param1:Number, param2:Number, param3:Number) : Number
      {
         return 0.01;
      }
      
      private function §="J§() : void
      {
         var _loc1_:§]!#§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         for each(_loc1_ in this.§5!-§)
         {
            if(§ $,§)
            {
               this.§7<§(_loc1_);
            }
            if(_loc1_.§8"D§ && _loc1_.§["<§ && _loc1_.§1S§)
            {
               _loc2_ = _loc1_.lowerLimit;
               _loc3_ = _loc1_.upperLimit;
               if(_loc1_.type == §2m§.§ $$§)
               {
                  _loc4_ = (_loc1_.§?#§ as b2PrismaticJoint).§3!I§();
                  _loc5_ = (_loc1_.§?#§ as b2PrismaticJoint).§]"7§();
                  _loc6_ = this.§]!$§(_loc3_,_loc2_,_loc5_);
                  if(_loc5_ > 0 && _loc4_ >= _loc3_ - _loc6_ || _loc5_ < 0 && _loc4_ <= _loc2_ + _loc6_)
                  {
                     (_loc1_.§?#§ as b2PrismaticJoint).§;"8§(-_loc5_);
                  }
               }
               else if(_loc1_.type == §2m§.§@!I§)
               {
                  _loc7_ = (_loc1_.§?#§ as b2RevoluteJoint).§9$"§();
                  if((_loc5_ = (_loc1_.§?#§ as b2RevoluteJoint).§]"7§()) > 0 && _loc7_ >= _loc3_ || _loc5_ < 0 && _loc7_ <= _loc2_)
                  {
                     (_loc1_.§?#§ as b2RevoluteJoint).§;"8§(-_loc5_);
                  }
               }
            }
         }
      }
      
      public function destroyAllJoints() : void
      {
         var _loc1_:§]!#§ = null;
         while(this.§5!-§.length > 0)
         {
            _loc1_ = this.§5!-§.pop();
            this.§!!I§(_loc1_);
         }
      }
      
      public function §[,§(param1:§'#N§) : Boolean
      {
         this.§-"1§(param1);
         if(param1 && (!param1.levelItem || param1.levelItem.getItemBodyType() != §+#y§.BODY_TYPE_STATIC) && param1.getBody() && this.§,!'§(param1.getBody().GetPosition().x,param1.getBody().GetPosition().y))
         {
            if(param1 is §>"G§)
            {
               §>"G§(param1).updateOutOfBounds(this);
            }
            return true;
         }
         return false;
      }
      
      protected function §-"1§(param1:§'#N§) : void
      {
      }
      
      public function §<,§(param1:Number, param2:Number) : Boolean
      {
         return this.§9!E§.camera.§"v§(param1,param2);
      }
      
      public function §,!'§(param1:Number, param2:Number) : Boolean
      {
         return this.§9!E§.§3"b§.§0$8§(param1,param2);
      }
      
      public function §7"h§(param1:int) : void
      {
         if(param1 < 0)
         {
            return;
         }
         var _loc2_:§=" § = this.§8!c§[param1];
         this.§^#F§(_loc2_.sprite);
         this.§8!c§[param1] = null;
         this.§8!c§.splice(param1,1);
         _loc2_.dispose();
         _loc2_ = null;
      }
      
      protected function shouldShowScoreText(param1:§>"G§) : Boolean
      {
         return true;
      }
      
      protected function getScoreTextPosition(param1:§>"G§) : Point
      {
         var _loc2_:Number = param1.getBody().GetPosition().x;
         var _loc3_:Number = param1.getBody().GetPosition().y - 3;
         return new Point(_loc2_,_loc3_);
      }
      
      public function §>7§(param1:int, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc5_:§>"G§ = null;
         var _loc6_:Point = null;
         var _loc7_:int = 0;
         var _loc8_:Boolean = false;
         var _loc9_:int = 0;
         if(param1 < 0)
         {
            return;
         }
         var _loc4_:§'#N§;
         if((_loc4_ = this.§1#s§[param1]) is §#!m§)
         {
            ++this.§##V§;
         }
         else if(_loc4_ is §[!k§)
         {
            --this.§,$7§;
         }
         if(_loc4_ == this.§5"q§)
         {
            this.§5"q§ = null;
         }
         if(_loc4_ is §>"G§)
         {
            _loc5_ = _loc4_ as §>"G§;
            if(param2)
            {
               _loc6_ = this.getScoreTextPosition(_loc5_);
               _loc7_ = §=,§.§[!`§(_loc5_.itemName,_loc5_.§3!C§);
               _loc8_ = this.shouldShowScoreText(_loc5_);
               if(_loc5_.levelItem.destroyedScoreInc > 0)
               {
                  this.§9!E§.addScore(_loc5_.levelItem.destroyedScoreInc,§%!a§.§5#<§,_loc8_,_loc6_.x,_loc6_.y,_loc7_,_loc5_.levelItem.floatingScoreFont);
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
            this.§?"0§(_loc5_);
            this.removeDestroyedAttachedJoints(_loc5_);
            delete this.§?w§[_loc5_.§8!E§.instanceName];
         }
         this.§^#F§(_loc4_.sprite);
         this.§1#s§[param1] = null;
         this.§1#s§.splice(param1,1);
         if(_loc4_ is §`"4§)
         {
            if((_loc9_ = this.§`"]§.indexOf(§`"4§(_loc4_))) >= 0)
            {
               this.§`"]§.splice(_loc9_,1);
            }
         }
         if(this.§ #B§)
         {
            this.§ #B§.§5!U§(_loc4_);
         }
         if(!param3)
         {
            this.§5!U§(_loc4_);
         }
         _loc4_.dispose();
         _loc4_ = null;
      }
      
      protected function removeDestroyedAttachedJoints(param1:§>"G§) : void
      {
         var _loc2_:§^#C§ = null;
         for each(_loc2_ in this.§-#S§)
         {
            if(_loc2_.objectId1 == param1.id || _loc2_.objectId2 == param1.id)
            {
               _loc2_.§##B§ = true;
            }
         }
      }
      
      protected function §5!U§(param1:§'#N§) : void
      {
         var _loc2_:§>"G§ = null;
         var _loc3_:§5"?§ = null;
         var _loc4_:Vector.<§0"0§> = null;
         var _loc5_:int = 0;
         var _loc6_:§0"0§ = null;
         if(param1 is §>"G§)
         {
            _loc2_ = param1 as §>"G§;
            _loc3_ = _loc2_.§8!E§;
            if(_loc3_)
            {
               if(_loc4_ = _loc3_.getEvents())
               {
                  _loc5_ = 0;
                  while(_loc5_ < _loc4_.length)
                  {
                     if((_loc6_ = _loc4_[_loc5_]).§5#3§ == §]#f§)
                     {
                        this.§9!E§.§^#K§(_loc6_);
                     }
                     _loc5_++;
                  }
               }
            }
         }
      }
      
      protected function §0]§(param1:§>"G§, param2:String, param3:String) : void
      {
         if(param1)
         {
            param1.§[#0§(param2,param3,this);
         }
      }
      
      protected function §^#F§(param1:§,#e§.Sprite) : void
      {
         if(param1 && param1.parent)
         {
            param1.parent.removeChild(param1);
         }
      }
      
      public function removeObject(param1:§'#N§, param2:Boolean = false, param3:Boolean = false) : void
      {
         if(param1)
         {
            this.§>7§(this.§1#s§.indexOf(param1),param2,param3);
         }
      }
      
      public function §["$§(param1:§'#N§, param2:String) : §'#N§
      {
         var _loc7_:§>"G§ = null;
         var _loc8_:int = 0;
         var _loc3_:int = this.§1#s§.indexOf(param1);
         if(_loc3_ < 0)
         {
            return null;
         }
         var _loc4_:§'#N§;
         var _loc5_:b2Body = (_loc4_ = this.§1#s§[_loc3_]).getBody();
         var _loc6_:§'#N§;
         ((_loc6_ = this.addObject(param2,_loc5_.GetPosition().x,_loc5_.GetPosition().y,_loc5_.GetAngle() / Math.PI * 180,§ !i§.ID_NEXT_FREE,false,false,false,1,false)) as §>"G§).§5F§(_loc4_.getBody());
         (_loc6_ as §>"G§).§-"m§(_loc4_.getBody().GetAngularVelocity());
         if(_loc4_ == this.§5"q§)
         {
            this.§5"q§ = null;
         }
         if(_loc4_ is §>"G§)
         {
            (_loc7_ = _loc4_ as §>"G§).updateBeforeRemoving(null,true);
            this.§?"0§(_loc7_);
            this.removeDestroyedAttachedJoints(_loc7_);
            delete this.§?w§[_loc7_.§8!E§.instanceName];
         }
         this.§^#F§(_loc4_.sprite);
         this.§1#s§[_loc3_] = null;
         this.§1#s§.splice(_loc3_,1);
         if(_loc4_ is §`"4§)
         {
            if((_loc8_ = this.§`"]§.indexOf(§`"4§(_loc4_))) >= 0)
            {
               this.§`"]§.splice(_loc8_,1);
            }
         }
         if(this.§ #B§)
         {
            this.§ #B§.§5!U§(_loc4_);
         }
         _loc4_.dispose(false);
         _loc4_ = null;
         return _loc6_;
      }
      
      public function §!"#§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§9!E§.§@#T§();
         }
      }
      
      public function §-!D§(param1:Boolean, param2:Number = 0, param3:Number = 0, param4:Number = 0) : void
      {
         this.§9!E§.§-!D§(param1,param2,param3,param4);
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         this.§&"9§.x = -param1;
         this.§&"9§.y = -param2;
         this.§9"d§.x = -param1;
         this.§9"d§.y = -param2;
         this.§5#+§.x = -param1;
         this.§5#+§.y = -param2;
         this.§9"c§.x = -param1;
         this.§9"c§.y = -param2;
      }
      
      public function isLevelGoalObjectsAlive() : Boolean
      {
         var _loc2_:§'#N§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§1#s§.length)
         {
            _loc2_ = this.§1#s§[_loc1_];
            if(_loc2_)
            {
               if(_loc2_.§3!C§)
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
         var _loc2_:§'#N§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§1#s§.length)
         {
            _loc2_ = this.§1#s§[_loc1_];
            if(_loc2_ && _loc2_ is §#!m§ && (_loc2_ as §#!m§).health > 0)
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function getPigCount(param1:Boolean = false) : int
      {
         var _loc4_:§#!m§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§1#s§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§1#s§[_loc3_] as §#!m§) && _loc4_.health > 0)
            {
               if(!param1 || !_loc4_.§,#o§ && !_loc4_.§3f§)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §["[§() : Array
      {
         var _loc2_:§>"G§ = null;
         this.§;#F§.length = 0;
         var _loc1_:int = this.§1#s§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§1#s§[_loc1_] as §>"G§;
            if(_loc2_ && _loc2_.health > 0)
            {
               if(_loc2_.§6!v§())
               {
                  this.§;#F§.push(_loc1_);
               }
            }
            _loc1_--;
         }
         return this.§;#F§;
      }
      
      public function §5$8§() : int
      {
         var _loc2_:§>"G§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§1#s§)
         {
            if(_loc2_ is §1!y§)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §+!#§() : int
      {
         var _loc2_:§>"G§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§1#s§)
         {
            if(_loc2_ && _loc2_.§%@§())
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function makePigsSmile(param1:Number = 1) : void
      {
         var _loc3_:§#!m§ = null;
         var _loc2_:int = this.§1#s§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§1#s§[_loc2_] as §#!m§;
            if(_loc3_ && _loc3_.health > 0)
            {
               _loc3_.scream();
            }
            _loc2_--;
         }
      }
      
      public function §-j§() : Boolean
      {
         var _loc2_:§[!k§ = null;
         var _loc1_:int = this.§1#s§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§1#s§[_loc1_] as §[!k§;
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
         var _loc2_:§>"G§ = null;
         var _loc1_:int = this.§1#s§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§1#s§[_loc1_] as §>"G§;
            if(_loc2_ != null && _loc2_.health > 0 && !_loc2_.§&"R§())
            {
               if(_loc2_.isDamageAwardingScore() && !_loc2_.§4A§())
               {
                  return false;
               }
               if(_loc2_ is §[!k§ && _loc2_.health > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §"!E§(param1:Boolean = false) : §#!m§
      {
         var _loc7_:§#!m§ = null;
         var _loc2_:int = this.§1#s§.length;
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
            if((_loc7_ = this.§1#s§[_loc6_] as §#!m§) && _loc7_.health > 0)
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
      
      public function §<#>§() : §>"G§
      {
         var _loc3_:§>"G§ = null;
         var _loc4_:int = 0;
         var _loc1_:§>"G§ = null;
         if(this.§2"n§ == null)
         {
            this.§2"n§ = [];
         }
         this.§2"n§.length = 0;
         var _loc2_:int = this.§1#s§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§1#s§[_loc2_] as §>"G§;
            if(_loc3_)
            {
               if(_loc3_.health > 0 && _loc3_.§?s§)
               {
                  this.§2"n§.push(_loc3_);
               }
            }
            _loc2_--;
         }
         if(this.§2"n§.length > 0)
         {
            _loc4_ = Math.random() * this.§2"n§.length;
            _loc1_ = this.§2"n§[_loc4_];
         }
         return _loc1_;
      }
      
      public function §`#&§() : int
      {
         var _loc3_:§>"G§ = null;
         var _loc1_:int = 0;
         var _loc2_:int = this.§1#s§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§1#s§[_loc2_] as §>"G§;
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
         return int(_loc1_ + this.§9!E§.slingshot.§`#&§());
      }
      
      protected function §0B§(param1:§'#N§, param2:§'#N§) : Boolean
      {
         if(param1 is §>"G§ && param2 is §>"G§ && !(param1 as §>"G§).§3!0§() && !(param2 as §>"G§).§3!0§())
         {
            return false;
         }
         return true;
      }
      
      protected function hasMinimumCollisionSpeed(param1:§'#N§, param2:§'#N§) : Boolean
      {
         return this.§0B§(param1,param2);
      }
      
      public function §?#J§() : void
      {
         this.§,$7§ = 0;
      }
      
      protected function shakeCameraOnCollision(param1:Number, param2:Number, param3:Number) : void
      {
      }
      
      protected function shakeCameraOnExplosion(param1:Number) : void
      {
      }
      
      protected function getCollisionDamageFactor(param1:§>"G§, param2:§>"G§) : Number
      {
         var _loc3_:Number = NaN;
         if(param2 is §[!k§)
         {
            return 1;
         }
         if(param1 is §[!k§)
         {
            return Number(param1.§-#§(param2.§=#a§()));
         }
         return 1;
      }
      
      protected function getCollisionForceFactor(param1:§>"G§, param2:§>"G§) : Number
      {
         if(param2 is §[!k§)
         {
            return 0;
         }
         return 1;
      }
      
      protected function §;"a§(param1:§>"G§, param2:§>"G§) : Number
      {
         var _loc4_:Number = this.getCollisionForceFactor(param1,param2);
         var _loc5_:Number = this.getCollisionForceFactor(param2,param1);
         var _loc6_:Number = param1.getBody().GetMass();
         var _loc7_:Number = param2.getBody().GetMass();
         var _loc8_:b2Vec2 = param1.§?#'§();
         var _loc9_:b2Vec2 = param2.§?#'§();
         var _loc10_:Number = _loc4_ * _loc6_ * _loc8_.x - _loc5_ * _loc7_ * _loc9_.x;
         var _loc11_:Number = _loc4_ * _loc6_ * _loc8_.y - _loc5_ * _loc7_ * _loc9_.y;
         return Number(Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_) / 10);
      }
      
      public function §&"q§(param1:§>"G§, param2:§>"G§) : Boolean
      {
         if(param2 is §8#I§ && param1 is §8#I§)
         {
            return true;
         }
         return false;
      }
      
      public function objectCollision(param1:§'#N§, param2:§'#N§, param3:b2Contact) : Boolean
      {
         var _loc15_:§]!#§ = null;
         var _loc16_:b2JointEdge = null;
         var _loc17_:b2JointEdge = null;
         var _loc18_:b2Joint = null;
         var _loc19_:b2JointEdge = null;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         if(!this.§ #v§)
         {
            return false;
         }
         param1.collidedWith(param2);
         param2.collidedWith(param1);
         var _loc4_:§>"G§ = param1 as §>"G§;
         var _loc5_:§>"G§ = param2 as §>"G§;
         if(!_loc4_ || !_loc5_)
         {
            return true;
         }
         if(_loc4_.destroysCollidingObjects || _loc5_.§0# §)
         {
            _loc5_.applyDamage(_loc5_.§+#_§ * 2,this,_loc4_,true);
            _loc4_.causedDamageToObjects();
            return true;
         }
         if(_loc5_.destroysCollidingObjects || _loc4_.§0# §)
         {
            _loc4_.applyDamage(_loc4_.§+#_§ * 2,this,_loc5_,true);
            _loc5_.causedDamageToObjects();
            return true;
         }
         if(!this.hasMinimumCollisionSpeed(_loc4_,_loc5_))
         {
            return false;
         }
         if(this.§&"q§(_loc4_,_loc5_))
         {
            return false;
         }
         var _loc6_:Number = this.§;"a§(_loc4_,_loc5_);
         var _loc7_:Number = Math.max(0,_loc4_.health);
         var _loc8_:Number = Math.max(0,_loc5_.health);
         if(!_loc4_.§;N§ && !_loc5_.§;N§)
         {
            this.shakeCameraOnCollision(_loc6_,_loc7_,_loc8_);
         }
         var _loc9_:Number = this.getCollisionDamageFactor(_loc4_,_loc5_);
         var _loc10_:Number = this.getCollisionDamageFactor(_loc5_,_loc4_);
         var _loc11_:Number = _loc6_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc9_;
         var _loc13_:Number = _loc11_ > 0 ? Number(_loc4_.applyDamage(_loc11_,this,_loc5_,true)) : Number(_loc4_.health);
         var _loc14_:Number = _loc12_ > 0 ? Number(_loc5_.applyDamage(_loc12_,this,_loc4_,true)) : Number(_loc5_.health);
         for each(_loc15_ in this.§5!-§)
         {
            if(_loc15_.breakable && _loc6_ >= _loc15_.breakForce)
            {
               _loc16_ = _loc4_.getBody().GetJointList();
               _loc17_ = _loc5_.getBody().GetJointList();
               if(_loc16_ != null)
               {
                  _loc18_ = _loc16_.joint;
                  _loc19_ = _loc16_.next;
                  while(_loc18_)
                  {
                     if(_loc18_ == _loc15_.§?#§)
                     {
                        this.§!!I§(_loc15_);
                        break;
                     }
                     if(!_loc19_)
                     {
                        break;
                     }
                     _loc18_ = _loc19_.joint;
                     _loc19_ = _loc19_.next;
                  }
               }
               if(_loc17_ != null)
               {
                  _loc18_ = _loc17_.joint;
                  _loc19_ = _loc17_.next;
                  while(_loc18_ && _loc19_)
                  {
                     if(_loc18_ == _loc15_.§?#§)
                     {
                        this.§!!I§(_loc15_);
                        break;
                     }
                     if(!_loc19_)
                     {
                        break;
                     }
                     _loc18_ = _loc19_.joint;
                     _loc19_ = _loc19_.next;
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
         if(_loc4_ is §[!k§)
         {
            if(_loc14_ <= 0)
            {
               if(!_loc5_.disableBirdPassThrough)
               {
                  _loc20_ = _loc4_.§2#t§(_loc5_.§=#a§());
                  this.§2"t§(_loc4_ as §[!k§,_loc6_ * _loc9_,_loc8_,_loc20_);
               }
               return false;
            }
         }
         if(_loc5_ is §[!k§)
         {
            if(_loc13_ <= 0)
            {
               if(!_loc4_.disableBirdPassThrough)
               {
                  _loc21_ = _loc5_.§2#t§(_loc4_.§=#a§());
                  this.§2"t§(_loc5_ as §[!k§,_loc6_ * _loc10_,_loc7_,_loc21_);
               }
               return false;
            }
         }
         return _loc13_ <= 0 && _loc14_ <= 0;
      }
      
      public function objectCollisionEnded(param1:§'#N§, param2:§'#N§) : void
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
      
      protected function §2"t§(param1:§[!k§, param2:Number, param3:Number, param4:Number) : void
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
         var _loc6_:b2Vec2 = param1.§?#'§();
         param1.§9"7§(new b2Vec2(_loc6_.x * _loc5_,_loc6_.y * _loc5_));
      }
      
      public function §?#!§() : void
      {
         var _loc2_:§>"G§ = null;
         var _loc1_:int = this.§1#s§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§1#s§[_loc1_] as §>"G§;
            if(_loc2_ && _loc2_.§3!C§)
            {
               this.§>7§(_loc1_,true);
            }
            _loc1_--;
         }
      }
      
      public function §4F§() : void
      {
         var _loc2_:§>"G§ = null;
         var _loc1_:int = this.§1#s§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§1#s§[_loc1_] as §>"G§;
            if(_loc2_ != null && _loc2_.isTnt())
            {
               this.§>7§(_loc1_,true);
            }
            _loc1_--;
         }
      }
      
      public function §-B§() : int
      {
         return this.§1#s§.length;
      }
      
      public function §@!'§(param1:§?# §) : void
      {
         var _loc4_:§>"G§ = null;
         var _loc5_:§5"?§ = null;
         var _loc6_:Vector.<§0"0§> = null;
         var _loc7_:§2m§ = null;
         var _loc8_:§]!#§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§1#s§.length)
         {
            if(_loc4_ = this.§1#s§[_loc2_] as §>"G§)
            {
               if(_loc4_.§<$<§)
               {
                  if(!_loc4_.§&"R§())
                  {
                     (_loc5_ = new §5"?§()).angle = _loc4_.§3"W§() / (Math.PI / 180);
                     _loc5_.id = _loc4_.id;
                     _loc5_.type = _loc4_.itemName;
                     if(_loc4_.itemName == §>"W§.§@!4§)
                     {
                        _loc5_.type = (_loc4_ as §>"W§).§-!T§;
                     }
                     _loc5_.x = _loc4_.getBody().GetPosition().x;
                     _loc5_.y = _loc4_.getBody().GetPosition().y;
                     if(!_loc4_.§%@§())
                     {
                        _loc5_.z = _loc4_.§-0§();
                     }
                     if(_loc4_.§=#]§())
                     {
                        _loc5_.linearForce = _loc4_.§=#]§();
                     }
                     if(_loc4_.§8!E§.hasSpecialBehavior)
                     {
                        _loc5_.§15§(_loc4_.§8!E§.getBehaviorsData());
                     }
                     if(_loc6_ = _loc4_.§8!E§.getEvents())
                     {
                        _loc5_.§6"w§(_loc6_);
                     }
                     param1.addObject(_loc5_);
                  }
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§5!-§.length)
         {
            _loc8_ = this.§5!-§[_loc3_];
            (_loc7_ = new §2m§(_loc8_.type,_loc8_.id1,_loc8_.id2,_loc8_.point1,_loc8_.point2,_loc8_.§3!]§,_loc8_.§["<§,_loc8_.lowerLimit,_loc8_.upperLimit,_loc8_.§1S§,_loc8_.motorSpeed,_loc8_.§8"D§,_loc8_.maxTorque,_loc8_.breakable,_loc8_.breakForce,_loc8_.isOneWayDestroyed)).annihilationTime = _loc8_.annihilationTime;
            _loc7_.distanceToDestroyChild = _loc8_.distanceToDestroyChild;
            _loc7_.axisX = _loc8_.axisX;
            _loc7_.axisY = _loc8_.axisY;
            _loc7_.breakable = _loc8_.breakable;
            _loc7_.breakForce = _loc8_.breakForce;
            _loc7_.destroyChild = _loc8_.destroyChild;
            param1.§3#h§(_loc7_);
            _loc3_++;
         }
      }
      
      public function §>$!§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = [];
         var _loc4_:Number = 0;
         while(_loc4_ < this.§1#s§.length)
         {
            if(this.§1#s§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§1#s§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         var _loc3_:§>"G§ = null;
         this.§5"t§ = param1;
         this.setTexture(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§1#s§.length)
         {
            _loc3_ = this.§1#s§[_loc2_] as §>"G§;
            if(_loc3_ && _loc3_.§%@§())
            {
               _loc3_.sprite.visible = !this.§5"t§;
            }
            _loc2_++;
         }
      }
      
      public function setCollisionsEnabled(param1:Boolean) : void
      {
         this.§ #v§ = param1;
      }
      
      public function §4"q§() : int
      {
         return this.§7"P§;
      }
      
      public function §^#T§() : int
      {
         return this.§##V§;
      }
      
      public function §2,§(param1:§'#N§) : Boolean
      {
         var _loc2_:int = this.§1#s§.indexOf(param1);
         return _loc2_ >= 0;
      }
   }
}
