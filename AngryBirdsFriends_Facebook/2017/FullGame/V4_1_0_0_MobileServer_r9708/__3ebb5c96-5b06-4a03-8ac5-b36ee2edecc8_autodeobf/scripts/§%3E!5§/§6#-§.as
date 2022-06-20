package §>!5§
{
   import §%!9§.b2Vec2;
   import §&!v§.§0"s§;
   import §&!v§.Image;
   import §&!v§.Sprite;
   import §+!C§.§!!S§;
   import §+!C§.§&K§;
   import §+!C§.§2"b§;
   import §-"+§.Texture;
   import §0!=§.§4!+§;
   import §1!+§.b2Body;
   import §1#W§.§!#&§;
   import §3!U§.b2Joint;
   import §3!U§.b2JointEdge;
   import §3!U§.b2PrismaticJoint;
   import §3!U§.b2RevoluteJoint;
   import §3§.§try §;
   import §4o§.§3H§;
   import §6$"§.§ #F§;
   import §6$"§.§#B§;
   import §6$"§.§&![§;
   import §6$"§.§4#s§;
   import §6$"§.§]"o§;
   import §6V§.§&"g§;
   import §7!j§.§'#'§;
   import §7!j§.§8#B§;
   import §7"&§.§!"v§;
   import §7"&§.§#h§;
   import §7"&§.§>"N§;
   import §7"&§.§>#H§;
   import §7"&§.§]"k§;
   import §7"&§.§^"Q§;
   import §@#§.§]#B§;
   import §[#L§.b2Contact;
   import §^$1§.§!!O§;
   import §^$1§.§2"^§;
   import §^$1§.§7"6§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §6#-§ implements §-!S§
   {
      
      private static const §7!_§:Boolean = false;
      
      public static const §;!k§:int = 1000000000;
      
      public static const § w§:int = -1;
      
      public static const ID_NEXT_FREE:int = -2;
      
      public static const §["$§:String = "onDestroy";
       
      
      protected var §2!E§:Vector.<§#-§>;
      
      protected var §0#"§:Vector.<§0S§>;
      
      protected var §]Q§:Vector.<§!!O§>;
      
      protected var §4!§:§&"g§;
      
      private var §^!'§:int = 1000000000;
      
      public var §`=§:§!!S§;
      
      protected var §!#I§:Vector.<§+!H§>;
      
      protected var §3"q§:§&!v§.Sprite;
      
      protected var §,#2§:§&!v§.Sprite;
      
      protected var §+!5§:§&!v§.Sprite;
      
      protected var §`r§:§&!v§.Sprite;
      
      protected var §&"f§:§&!v§.Sprite;
      
      protected var §4!5§:§&!v§.Sprite;
      
      protected var §'-§:Vector.<Texture>;
      
      protected var §7#J§:Vector.<§4#s§>;
      
      protected var §=#?§:int = 1;
      
      protected var §2#Q§:Vector.<§&![§>;
      
      protected var §=^§:int = 0;
      
      protected var §[#M§:int = 0;
      
      private var §@,§:int = 0;
      
      private var § #a§:§]"o§;
      
      protected var §,"S§:§"7§;
      
      private var §=!x§:Boolean = true;
      
      private var §,R§:Boolean = true;
      
      protected var §["7§:§4!+§;
      
      private var §7#L§:Boolean = false;
      
      private var §]w§:Array;
      
      private var §?#6§:Array;
      
      public function §6#-§(param1:§!!S§, param2:§]#B§, param3:§&!v§.Sprite, param4:String)
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         this.§2!E§ = new Vector.<§#-§>();
         this.§0#"§ = new Vector.<§0S§>();
         this.§]Q§ = new Vector.<§!!O§>();
         this.§4!§ = new §&"g§();
         this.§!#I§ = new Vector.<§+!H§>();
         this.§'-§ = new Vector.<Texture>();
         this.§2#Q§ = new Vector.<§&![§>();
         this.§ #a§ = new §]"o§();
         super();
         this.§`=§ = param1;
         this.§3"q§ = param3;
         this.§3"q§.§ !$§ = false;
         this.§,R§ = true;
         this.§=!x§ = true;
         this.§,#2§ = new §&!v§.Sprite();
         this.§+!5§ = new §&!v§.Sprite();
         this.§`r§ = new §&!v§.Sprite();
         this.§4!5§ = new §&!v§.Sprite();
         this.§&"f§ = new §&!v§.Sprite();
         this.§3"q§.addChild(this.§,#2§);
         this.§3"q§.addChild(this.§+!5§);
         this.§3"q§.addChild(this.§`r§);
         §try §.init(4,2);
         if(param2.hasGround)
         {
            _loc5_ = (this.§`=§.§>$$§.§!"n§ + this.§`=§.§>$$§.§9m§) / 2;
            _loc6_ = 0 + §&K§.§="L§;
            this.addObject(param4,_loc5_,_loc6_,0,§6#-§.§ w§);
         }
         this.§?#6§ = [];
         this.addLevelObjects(param2);
      }
      
      public function get §="G§() : §&!v§.Sprite
      {
         return this.§4!5§;
      }
      
      public function get §7"<§() : §&!v§.Sprite
      {
         return this.§`r§;
      }
      
      public function get §##q§() : §&!v§.Sprite
      {
         return this.§+!5§;
      }
      
      public function get backgroundSprite() : §&!v§.Sprite
      {
         return this.§&"f§;
      }
      
      public function get §'"Z§() : §&!v§.Sprite
      {
         return this.§3"q§;
      }
      
      public function get activeObject() : §^"9§
      {
         return this.§,"S§;
      }
      
      public function get objectCount() : int
      {
         return this.§2!E§.length;
      }
      
      public function set §4!'§(param1:§4!+§) : void
      {
         if(param1 != this.§["7§)
         {
            this.§["7§ = param1;
            if(this.§7#L§ && this.§["7§)
            {
               this.§["7§.levelStarted();
            }
         }
      }
      
      public function levelInitialized() : void
      {
         if(!this.§7#L§)
         {
            this.§7#L§ = true;
            if(this.§["7§)
            {
               this.§["7§.levelStarted();
            }
         }
      }
      
      public function §]#3§(param1:String) : §!"v§
      {
         return this.§`=§.levelItemManager.getItem(param1);
      }
      
      public function activateSpecialPower(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         if(this.§,"S§)
         {
            _loc3_ = this.§,"S§.activateSpecialPower(this,param1,param2);
         }
         return _loc3_;
      }
      
      public function §2"s§(param1:§]"o§) : void
      {
         var _loc2_:Number = 1;
         var _loc3_:§!"v§ = this.§`=§.levelItemManager.getItem(param1.type);
         if(_loc3_)
         {
            _loc2_ = _loc3_.scale;
         }
         this.addObjectFromModel(param1,param1.id,false,false,false,_loc2_);
      }
      
      protected function addLevelObjects(param1:§]#B§) : void
      {
         var _loc3_:§]"o§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:§!"v§ = null;
         var _loc6_:§ #F§ = null;
         var _loc2_:int = 0;
         _loc2_ = 0;
         while(_loc2_ < param1.objectCount)
         {
            _loc3_ = param1.getObject(_loc2_);
            _loc4_ = 1;
            if(_loc5_ = this.§`=§.levelItemManager.getItem(_loc3_.type))
            {
               _loc4_ = _loc5_.scale;
            }
            this.addObjectFromModel(_loc3_,_loc3_.id,false,false,false,_loc4_);
            _loc2_++;
         }
         this.generateTerrainTexture();
         this.setTexture(true);
         this.§7#J§ = new Vector.<§4#s§>();
         _loc2_ = 0;
         while(_loc2_ < param1.§8f§)
         {
            _loc6_ = param1.§%I§(_loc2_);
            this.§9"^§(_loc6_);
            _loc2_++;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         §try §.dispose();
         while(this.§2!E§.length > 0)
         {
            this.§=K§(0,false,true);
         }
         while(this.§]Q§.length > 0)
         {
            this.§;#s§(0);
         }
         this.§2!E§ = null;
         this.§0#"§ = null;
         this.§]Q§ = null;
         this.§4!§ = null;
         this.§2#Q§ = null;
         this.§?#6§ = null;
         if(this.§3"q§)
         {
            this.§3"q§.dispose();
            this.§3"q§ = null;
         }
         this.§,#2§ = null;
         this.§+!5§ = null;
         if(this.§`r§)
         {
            this.§`r§.dispose();
            this.§`r§ = null;
         }
         if(this.§4!5§)
         {
            this.§4!5§.dispose();
            this.§4!5§ = null;
         }
         if(this.§&"f§)
         {
            this.§&"f§.dispose();
            this.§&"f§ = null;
         }
         while(this.§'-§.length > 0)
         {
            _loc1_ = this.§'-§.pop();
            this.§`=§.textureManager.unregisterBitmapDataTexture(_loc1_);
         }
      }
      
      public function setTexture(param1:Boolean) : void
      {
         this.§,#2§.visible = param1;
         this.§&"f§.visible = param1;
      }
      
      public function generateTerrainTexture() : void
      {
         var _loc5_:§#-§ = null;
         var _loc6_:Rectangle = null;
         var _loc7_:§^"9§ = null;
         var _loc8_:§]"k§ = null;
         var _loc9_:Number = NaN;
         var _loc10_:String = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Rectangle = null;
         var _loc3_:Vector.<§^"9§> = new Vector.<§^"9§>();
         var _loc4_:Vector.<§^"9§> = new Vector.<§^"9§>();
         for each(_loc5_ in this.§2!E§)
         {
            if((_loc7_ = _loc5_ as §^"9§) && _loc7_.§5!P§())
            {
               _loc9_ = (_loc8_ = _loc7_.levelItem.shape).getDimension() / §!!S§.§,"3§;
               _loc6_ = new Rectangle(_loc5_.sprite.x - _loc9_ / 2,_loc5_.sprite.y - _loc9_ / 2,_loc9_,_loc9_);
               if((_loc10_ = _loc7_.§0t§()) == §!"v§.§#"u§)
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
            this.§5!c§(_loc1_,_loc3_,this.§-!`§(),this.§,#2§);
         }
         if(_loc2_)
         {
            this.§5!c§(_loc2_,_loc4_,this.§>#_§(),this.§&"f§);
         }
      }
      
      private function §5!c§(param1:Rectangle, param2:Vector.<§^"9§>, param3:String, param4:§&!v§.Sprite) : void
      {
         var _loc5_:Number = this.§`=§.camera.borderLeft / §!!S§.§,"3§;
         var _loc6_:Number = this.§`=§.camera.borderRight / §!!S§.§,"3§;
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
         this.§&"N§(_loc14_.rect,_loc14_,_loc9_ * _loc15_,param3);
         var _loc16_:BitmapData = this.§9#4§(param2,_loc10_,_loc11_,_loc12_,_loc13_,_loc9_);
         _loc14_.copyChannel(_loc16_,_loc16_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
         var _loc17_:Texture = this.§`=§.textureManager.getTextureFromBitmapData(_loc14_);
         this.§'-§.push(_loc17_);
         var _loc18_:Image;
         (_loc18_ = new Image(_loc17_)).x = _loc12_ / _loc9_;
         _loc18_.y = _loc13_ / _loc9_;
         _loc18_.scaleX = 1 / _loc9_;
         _loc18_.scaleY = 1 / _loc9_;
         param4.addChild(_loc18_);
         _loc16_.dispose();
      }
      
      private function §9#4§(param1:Vector.<§^"9§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§^"9§ = null;
         var _loc11_:Number = NaN;
         var _loc12_:§]"k§ = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc10_.identity();
            _loc11_ = param6;
            if((_loc12_ = _loc7_.levelItem.shape) is §>"N§)
            {
               this.§1T§(_loc12_,_loc8_,_loc9_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§%D§(),param6,_loc11_,param4,param5);
            }
            else if(_loc12_ is §#h§)
            {
               if((_loc12_ as §#h§).vertices.length == 4)
               {
                  this.§1T§(_loc12_,_loc8_,_loc9_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§%D§(),param6,_loc11_,param4,param5);
               }
               else if((_loc12_ as §#h§).vertices.length == 3)
               {
                  this.§=!P§(_loc12_ as §#h§,_loc8_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§%D§(),param6,_loc11_,param4,param5);
               }
            }
            else if(_loc12_ is §>#H§)
            {
               this.§+!`§(_loc12_ as §>#H§,_loc8_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,param6,_loc11_,param4,param5);
            }
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      protected function §1T§(param1:§]"k§, param2:BitmapData, param3:BitmapData, param4:Matrix, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Number) : void
      {
         var _loc12_:Number = param1.getWidth() / §!!S§.§,"3§ * param9;
         var _loc13_:Number = param1.getHeight() / §!!S§.§,"3§ * param9;
         param4.scale(_loc12_,_loc13_);
         param4.translate(-_loc12_ / 2,-_loc13_ / 2);
         param4.rotate(param7);
         param4.translate(param5 * param8 - param10,param6 * param8 - param11);
         param2.draw(param3,param4);
      }
      
      protected function §=!P§(param1:§#h§, param2:BitmapData, param3:Matrix, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number) : void
      {
         var _loc14_:b2Vec2 = null;
         var _loc11_:flash.display.Sprite;
         (_loc11_ = new flash.display.Sprite()).graphics.beginFill(16777215);
         var _loc12_:Vector.<Number> = new Vector.<Number>();
         var _loc13_:int = 0;
         while(_loc13_ < param1.vertices.length)
         {
            _loc14_ = param1.vertices[_loc13_];
            _loc12_.push(_loc14_.x / §!!S§.§,"3§ * param8,_loc14_.y / §!!S§.§,"3§ * param8);
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
      
      protected function §+!`§(param1:§>#H§, param2:BitmapData, param3:Matrix, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number) : void
      {
         var _loc10_:Number;
         var _loc11_:Number = (_loc10_ = param1.radius) / §!!S§.§,"3§ * param7;
         var _loc12_:flash.display.Sprite;
         (_loc12_ = new flash.display.Sprite()).graphics.beginFill(16777215);
         _loc12_.graphics.drawCircle(_loc11_,_loc11_,_loc11_);
         _loc12_.graphics.endFill();
         param3.translate(param4 * param6 - param8 - _loc11_,param5 * param6 - param9 - _loc11_);
         param2.draw(_loc12_,param3);
         _loc12_.graphics.clear();
         _loc12_ = null;
      }
      
      protected function §-!`§() : String
      {
         return this.§`=§.background.§`_§();
      }
      
      protected function §>#_§() : String
      {
         return this.§`=§.background.§;# §();
      }
      
      protected function getLevelTextureScale() : Number
      {
         return 1;
      }
      
      private function §&"N§(param1:Rectangle, param2:BitmapData, param3:Number, param4:String) : void
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
         var _loc5_:§'#'§;
         if(_loc5_ = this.§`=§.backgroundTextureManager.getTexture(param4))
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
      
      protected function §8!h§(param1:§]"o§, param2:§&!v§.Sprite, param3:§8#B§, param4:§!"v§, param5:Number = 1.0, param6:Boolean = true) : §"7§
      {
         var _loc11_:§"7§ = null;
         var _loc7_:String = param1.type;
         var _loc8_:Number = param1.x;
         var _loc9_:Number = param1.y;
         var _loc10_:Number = param1.angle;
         switch(_loc7_)
         {
            case "BIRD_BLACK":
               _loc11_ = new §,#?§(param2,param3,this.§`=§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_BLUE":
               _loc11_ = new §@!j§(param2,param3,this.§`=§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_GREEN":
               _loc11_ = new §'"H§(param2,param3,this.§`=§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_WHITE":
               _loc11_ = new §]!n§(param2,param3,this.§`=§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_YELLOW":
               _loc11_ = new §&#u§(param2,param3,this.§`=§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_RED":
               _loc11_ = new §5!E§(param2,param3,this.§`=§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_REDBIG":
               _loc11_ = new §!!L§(param2,param3,this.§`=§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_ORANGE":
               _loc11_ = new §@#p§(param2,param3,this.§`=§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_SARDINE":
               _loc11_ = new §!"6§(param2,param3,this.§`=§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_MIGHTY_EAGLE":
               _loc11_ = new §?c§(param2,param3,this.§`=§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            default:
               _loc11_ = new §"7§(param2,param3,this.§`=§.mLevelEngine.mWorld,param4,param1,param5,param6);
         }
         return _loc11_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§=^§ > 0;
      }
      
      protected function addObjectPig(param1:§]"o§, param2:§&!v§.Sprite, param3:§8#B§, param4:§!"v§, param5:Number = 1.0) : §76§
      {
         return new §76§(param2,param3,this.§`=§.mLevelEngine.mWorld,param4,param1,param5);
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number, param5:int, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0, param10:Boolean = false, param11:Boolean = false, param12:Number = 0.0, param13:b2Vec2 = null, param14:Number = 0.0, param15:Number = 0.0, param16:Boolean = true, param17:Number = 1.0) : §#-§
      {
         this.§ #a§ = new §]"o§();
         this.§ #a§.type = param1;
         this.§ #a§.x = param2;
         this.§ #a§.y = param3;
         this.§ #a§.angle = param4;
         this.§ #a§.§<"2§ = 0;
         this.§ #a§.§##@§ = 0;
         this.§ #a§.angularVelocity = param12;
         this.§ #a§.angularDamping = param14;
         this.§ #a§.linearDamping = param15;
         this.§ #a§.awake = param16;
         this.§ #a§.health = param17;
         return this.addObjectFromModel(this.§ #a§,param5,param6,param7,param8,param9,param10,param11);
      }
      
      public function §5#r§(param1:String, param2:Number, param3:Number, param4:Number, param5:int, param6:Number = 0.0, param7:Number = 0.0, param8:Number = 1.0, param9:Boolean = false, param10:Boolean = false) : §#-§
      {
         this.§ #a§ = new §]"o§();
         this.§ #a§.type = param1;
         this.§ #a§.x = param2;
         this.§ #a§.y = param3;
         this.§ #a§.angle = param4;
         this.§ #a§.§<"2§ = param6;
         this.§ #a§.§##@§ = param7;
         return this.addObjectFromModel(this.§ #a§,param5,false,false,false,param8,param9,param10);
      }
      
      protected function addObjectFromModel(param1:§]"o§, param2:int, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true, param6:Number = 1.0, param7:Boolean = false, param8:Boolean = false) : §#-§
      {
         var _loc9_:§&!v§.Sprite = new §&!v§.Sprite();
         var _loc10_:§#-§;
         if((_loc10_ = this.§3#R§(param1,param2,_loc9_,param5,param6)) == null)
         {
            return null;
         }
         if(_loc10_ is §^"9§ && (_loc10_ as §^"9§).§5!P§())
         {
            _loc9_.visible = !this.§=!x§;
         }
         if(_loc10_ is §"7§ && !(_loc10_ is §?c§))
         {
            ++this.§=^§;
         }
         if(!param7)
         {
            if(param8)
            {
               this.§`r§.§]#n§(_loc9_);
            }
            else
            {
               this.§+!5§.§]#n§(_loc9_);
            }
         }
         else
         {
            this.§4!5§.§]#n§(_loc9_);
         }
         if(param3)
         {
            this.§`=§.§8"T§(_loc10_);
         }
         if(param4 && _loc10_ is §"7§)
         {
            this.§,"S§ = §"7§(_loc10_);
         }
         return _loc10_;
      }
      
      private function §3#R§(param1:§]"o§, param2:int, param3:§&!v§.Sprite, param4:Boolean = true, param5:Number = 1.0) : §#-§
      {
         var _loc7_:Vector.<§#B§> = null;
         var _loc8_:§#B§ = null;
         var _loc9_:Boolean = false;
         var _loc10_:§^"9§ = null;
         if(param2 == ID_NEXT_FREE)
         {
            param2 = this.§^!'§;
            ++this.§^!'§;
         }
         else
         {
            if(param2 >= §;!k§)
            {
               throw new Error("Invalid object id: " + param2 + ". Has to be less than " + §;!k§);
            }
            if(this.§0" §(param2))
            {
               throw new Error("Object with id: " + param2 + " already added!");
            }
         }
         var _loc6_:§#-§;
         if((_loc6_ = this.createObjectInstance(param1,param3,param4,param5)) is §^"9§)
         {
            if((_loc6_ as §^"9§).hasSpecialBehavior)
            {
               _loc7_ = (_loc6_ as §^"9§).§]#<§.getBehaviorsData();
               for each(_loc8_ in _loc7_)
               {
                  if(!(_loc9_ = this.§`=§.§1j§(_loc8_.type,_loc8_.event)))
                  {
                     (_loc6_ as §^"9§).§,!m§(this.§`=§,_loc8_);
                  }
               }
            }
         }
         if(_loc6_ is §"7§)
         {
            ++this.§@,§;
         }
         if(_loc6_)
         {
            _loc10_ = _loc6_ as §^"9§;
            if(_loc6_ is §!!O§)
            {
               this.§]Q§.push(_loc6_);
            }
            else
            {
               if(_loc10_)
               {
                  _loc10_.§import§(param2);
                  this.§4!§[param1.instanceName] = _loc6_;
               }
               this.§2!E§.push(_loc6_);
               if(_loc6_ is §0S§)
               {
                  this.§0#"§.push(_loc6_);
               }
            }
            if(this.§["7§)
            {
               this.§["7§.§6P§(_loc6_);
            }
         }
         return _loc6_;
      }
      
      protected function §##M§() : String
      {
         return "INGAME_TEXTURE_SAND_1";
      }
      
      protected function createBombBlockInstance(param1:§]"o§, param2:§&!v§.Sprite, param3:§8#B§, param4:§!"v§, param5:int, param6:Number = 1.0) : §#-§
      {
         return new §&"b§(param2,param3,this.§`=§.mLevelEngine.mWorld,param4,param1,param6,param5);
      }
      
      protected function §&#8§(param1:§]"o§, param2:§&!v§.Sprite, param3:§8#B§, param4:§!"v§, param5:int, param6:Number = 1.0) : §#-§
      {
         return new §@$,§(param2,param3,this.§`=§.mLevelEngine.mWorld,param4,param1,param6,param5);
      }
      
      protected function createObjectInstance(param1:§]"o§, param2:§&!v§.Sprite, param3:Boolean = true, param4:Number = 1.0) : §#-§
      {
         var _loc5_:§!"v§;
         if(!(_loc5_ = this.§`=§.levelItemManager.getItem(param1.type)))
         {
            return null;
         }
         var _loc6_:String;
         if((_loc6_ = _loc5_.itemName).substr(0,13) == "BLOCK_STATIC_")
         {
            _loc6_ = this.§##M§();
         }
         var _loc7_:§8#B§ = this.§`=§.animationManager.getAnimation(_loc6_);
         var _loc8_:§#-§ = null;
         if(param1.type.indexOf("BIRD") == 0)
         {
            _loc8_ = this.§8!h§(param1,param2,_loc7_,_loc5_,param4,param3);
         }
         else if(_loc5_.itemType == §!"v§.§3"$§)
         {
            (_loc8_ = this.addObjectPig(param1,param2,_loc7_,_loc5_,param4)).§=M§ = true;
         }
         else if(_loc5_.itemType == §!"v§.§;!-§ || _loc5_.itemType == §!"v§.§+!t§)
         {
            if(_loc5_.itemName.indexOf("TNT") >= 0)
            {
               _loc8_ = this.createBombBlockInstance(param1,param2,_loc7_,_loc5_,§+!H§.§@u§,param4);
            }
            else if(_loc5_.itemName == §]!n§.§3#J§)
            {
               _loc8_ = this.§&#8§(param1,param2,_loc7_,_loc5_,§+!H§.§;$9§,param4);
            }
            else
            {
               _loc8_ = new §;"i§(param2,_loc7_,this.§`=§.mLevelEngine.mWorld,_loc5_,param1,param4,_loc5_.particleJSONId,_loc5_.particleVariationCount);
            }
         }
         else
         {
            _loc8_ = new §^"9§(param2,_loc7_,this.§`=§.mLevelEngine.mWorld,_loc5_,param1,param4);
         }
         return _loc8_;
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean, param4:Number, param5:Number, param6:int, param7:String) : void
      {
         this.§`=§.addScore(param1,§2"b§.§%$-§,param3,param4,param5,param6,param7);
      }
      
      public function addParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : void
      {
         this.§`=§.particles.addParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function addSimpleParticle(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         this.§`=§.particles.addSimpleParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16);
      }
      
      public function §``§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:Number, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : void
      {
         this.§`=§.particles.§``§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function §]!u§(param1:§^"9§) : void
      {
         var _loc4_:§4#s§ = null;
         var _loc5_:§4#s§ = null;
         var _loc6_:§#-§ = null;
         var _loc7_:§#-§ = null;
         var _loc2_:int = param1.id;
         var _loc3_:int = this.§7#J§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§7#J§[_loc3_];
            if(this.§7#J§[_loc3_].id1 == _loc2_ || this.§7#J§[_loc3_].id2 == _loc2_)
            {
               if(_loc4_.§^;§)
               {
                  _loc6_ = _loc4_.§^;§.§""Z§().GetUserData() as §#-§;
                  _loc7_ = _loc4_.§^;§.§+"2§().GetUserData() as §#-§;
                  if(_loc6_)
                  {
                     _loc6_.attachedJointRemoved(_loc7_);
                  }
                  if(_loc7_)
                  {
                     _loc7_.attachedJointRemoved(_loc6_);
                  }
               }
               _loc5_ = this.§7#J§.pop();
               if(_loc3_ < this.§7#J§.length)
               {
                  this.§7#J§[_loc3_] = _loc5_;
               }
               this.§[!z§(_loc4_);
            }
            _loc3_--;
         }
      }
      
      protected function §9"^§(param1:§ #F§) : §4#s§
      {
         var _loc2_:int = param1.id1;
         var _loc3_:int = param1.id2;
         var _loc4_:§4#s§ = §4#s§.§9"^§(param1);
         this.§7#J§.push(_loc4_);
         var _loc5_:§#-§ = this.§0" §(_loc2_);
         var _loc6_:§#-§ = this.§0" §(_loc3_);
         if(_loc5_ && _loc6_)
         {
            if(_loc4_.type != § #F§.§-#Q§)
            {
               _loc4_.§^;§ = this.§`=§.mLevelEngine.mWorld.§6!K§(_loc4_.§3!J§(_loc5_,_loc6_));
               if(_loc4_.type == § #F§.§]P§ && _loc4_.destroyChild)
               {
                  this.§2#Q§.push(new §&![§(_loc2_,_loc3_,_loc4_.annihilationTime,param1.isOneWayDestroyed,param1.distanceToDestroyChild));
               }
            }
            else
            {
               this.§2#Q§.push(new §&![§(_loc2_,_loc3_,_loc4_.annihilationTime,param1.isOneWayDestroyed,param1.distanceToDestroyChild));
            }
            _loc5_.attachedJointCreated(_loc6_);
            _loc6_.attachedJointCreated(_loc5_);
         }
         return _loc4_;
      }
      
      protected function §[!z§(param1:§4#s§) : void
      {
         if(param1.§^;§)
         {
            this.§`=§.mLevelEngine.mWorld.§`"4§(param1.§^;§);
         }
         if(param1.§6"e§)
         {
            if(this.§+!5§.contains(param1.§6"e§))
            {
               this.§+!5§.removeChild(param1.§6"e§,true);
            }
         }
      }
      
      public function §<!>§(param1:int, param2:Number, param3:Number, param4:int = -1) : void
      {
         this.§!#I§.push(§+!H§.createExplosion(param1,param2,param3,param4));
         this.playExplosionSound(param1);
      }
      
      protected function playExplosionSound(param1:int) : void
      {
         §!#&§.playSound("tnt_box_explodes","ChannelExplosions");
      }
      
      public function §%$'§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = -1, param8:Boolean = true, param9:Boolean = true) : void
      {
         this.§!#I§.push(§+!H§.§[!M§(param1,param2,param3,param4,param5,param6,param7,param8));
         if(param9)
         {
            §!#&§.playSound("tnt_box_explodes","ChannelExplosions");
         }
      }
      
      public function getForceAtPoint(param1:Number, param2:Number, param3:Number, param4:b2Vec2) : b2Vec2
      {
         if(!param4)
         {
            param4 = new b2Vec2();
         }
         param4.SetV(this.§`=§.mLevelEngine.mWorld.GetGravity());
         return param4;
      }
      
      public function get §'`§() : Number
      {
         return this.§`=§.§'`§;
      }
      
      public function §%$7§(param1:Number, param2:Number) : int
      {
         var _loc4_:§^"9§ = null;
         var _loc3_:int = this.§2!E§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§2!E§[_loc3_] as §^"9§) && _loc4_.isInCoordinates(param1,param2))
            {
               return _loc3_;
            }
            _loc3_--;
         }
         return -1;
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §^"9§
      {
         var _loc4_:§^"9§ = null;
         var _loc3_:int = this.§2!E§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§2!E§[_loc3_] as §^"9§)
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
      
      public function §+"J§(param1:Number, param2:Number) : Vector.<§^"9§>
      {
         var _loc5_:§^"9§ = null;
         var _loc3_:Vector.<§^"9§> = new Vector.<§^"9§>();
         var _loc4_:int = this.§2!E§.length - 1;
         while(_loc4_ >= 0)
         {
            if((_loc5_ = this.§2!E§[_loc4_] as §^"9§) && _loc5_.isInCoordinates(param1,param2))
            {
               _loc3_.push(_loc5_);
            }
            _loc4_--;
         }
         return _loc3_;
      }
      
      public function getObject(param1:int) : §#-§
      {
         return this.§2!E§[param1];
      }
      
      public function §0" §(param1:int) : §^"9§
      {
         var _loc2_:§#-§ = null;
         var _loc3_:§^"9§ = null;
         for each(_loc2_ in this.§2!E§)
         {
            _loc3_ = _loc2_ as §^"9§;
            if(_loc3_ && _loc3_.id == param1)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function §2"p§(param1:String) : §^"9§
      {
         return this.§4!§[param1];
      }
      
      public function renderObjects(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:int = this.§2!E§.length - 1;
         while(_loc4_ >= 0)
         {
            this.§2!E§[_loc4_].render(param1,param2,param3);
            _loc4_--;
         }
         this.updateParticles(param1);
         _loc4_ = this.§]Q§.length - 1;
         while(_loc4_ >= 0)
         {
            this.§]Q§[_loc4_].render(param1,param2,param3);
            _loc4_--;
         }
      }
      
      protected function getExplosionDamageMultiplier(param1:Number, param2:Number) : Number
      {
         return 1 / param1;
      }
      
      protected function getExplosionDistanceToObject(param1:Number, param2:Number, param3:§^"9§) : §try §
      {
         var _loc4_:b2Vec2;
         var _loc5_:Number = (_loc4_ = param3.getBody().GetPosition()).x - param1;
         var _loc6_:Number = _loc4_.y - param2;
         var _loc7_:Number = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         var _loc8_:§try §;
         (_loc8_ = §try §.getObject()).§0!j§ = _loc7_;
         _loc8_.§,#v§.x = _loc4_.x;
         _loc8_.§,#v§.y = _loc4_.y;
         return _loc8_;
      }
      
      protected function applyExplosionDamage(param1:§^"9§, param2:Number, param3:Boolean = false) : void
      {
         param1.applyDamage(param2,this,null,param3);
      }
      
      protected function ignoreExplosion(param1:§^"9§, param2:int) : Boolean
      {
         return false;
      }
      
      protected function §=%§() : void
      {
         var _loc2_:§+!H§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§#-§ = null;
         var _loc8_:§^"9§ = null;
         var _loc9_:§try § = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         if(!this.§,R§)
         {
            return;
         }
         var _loc1_:Point = new Point();
         while(this.§!#I§.length > 0)
         {
            _loc2_ = this.§!#I§.shift();
            _loc3_ = _loc2_.§0"P§;
            _loc4_ = _loc2_.x;
            _loc5_ = _loc2_.y;
            _loc6_ = _loc2_.damage;
            this.shakeCameraOnExplosion(_loc2_.push);
            for each(_loc7_ in this.§2!E§)
            {
               if((_loc8_ = _loc7_ as §^"9§) && !this.ignoreExplosion(_loc8_,_loc2_.type))
               {
                  if((_loc9_ = this.getExplosionDistanceToObject(_loc4_,_loc5_,_loc8_)).§0!j§ <= _loc2_.§0"P§)
                  {
                     _loc10_ = _loc2_.push * this.getExplosionDamageMultiplier(_loc9_.§0!j§,_loc2_.§0"P§);
                     if(_loc9_.§0!j§ > 0)
                     {
                        _loc1_.x = _loc9_.§,#v§.x - _loc4_;
                        _loc1_.y = _loc9_.§,#v§.y - _loc5_;
                        _loc1_.normalize(1);
                        _loc11_ = _loc10_ * _loc1_.x;
                        _loc12_ = _loc10_ * _loc1_.y;
                        _loc8_.getBody().ApplyImpulse(new b2Vec2(_loc11_,_loc12_),new b2Vec2(_loc9_.§,#v§.x,_loc9_.§,#v§.y));
                     }
                  }
                  if(_loc9_.§0!j§ <= _loc2_.damageRadius)
                  {
                     _loc13_ = _loc6_ * this.getExplosionDamageMultiplier(_loc9_.§0!j§,_loc2_.damageRadius);
                     if(isNaN(_loc13_))
                     {
                        _loc13_ = 0;
                     }
                     this.applyExplosionDamage(_loc8_,_loc13_);
                  }
                  §try §.§ "=§(_loc9_);
               }
            }
            if(_loc2_.§`#i§)
            {
               this.updateExplosionEffects(_loc2_,_loc4_,_loc5_,_loc3_);
            }
         }
      }
      
      protected function updateExplosionEffects(param1:§+!H§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         this.§`=§.particles.addParticle(this.getMainExplosionCoreName(param1.type),§7"6§.PARTICLE_GROUP_GAME_EFFECTS,§2"^§.PARTICLE_TYPE_STATIC_PARTICLE,param2,param3,600,"",§2"^§.§5#y§,0,0,0,0,1,20,true);
         var _loc5_:int = 30;
         while(_loc5_ < 150)
         {
            _loc6_ = 0.75 * param4 + Math.random() * param4;
            _loc7_ = 1250 + Math.random() * 750;
            _loc8_ = _loc5_ / (180 / Math.PI);
            this.§`=§.particles.addParticle(§2"^§.§`#,§,§7"6§.PARTICLE_GROUP_GAME_EFFECTS,§2"^§.PARTICLE_TYPE_KINETIC_PARTICLE,param2,param3,_loc7_,"",§2"^§.§5#y§,_loc6_ * Math.cos(_loc8_),-_loc6_ * Math.sin(_loc8_),20,0);
            _loc5_ += 5;
         }
      }
      
      protected function getMainExplosionCoreName(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §2"^§.§0#!§;
      }
      
      public function updateObjects(param1:Number) : void
      {
         var _loc4_:§^"9§ = null;
         var _loc2_:§#-§ = null;
         var _loc3_:int = this.§2!E§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§2!E§[_loc3_];
            if(_loc2_.removeOnNextUpdate)
            {
               this.§=K§(_loc3_,true);
            }
            else
            {
               this.§>#s§(_loc2_,param1);
               _loc4_ = _loc2_ as §^"9§;
               if(this.§@#2§(_loc2_))
               {
                  this.§=K§(_loc3_,!(_loc4_ is §"7§));
               }
               else if(_loc4_ && _loc4_.isReadyToBeRemoved(param1))
               {
                  this.§=K§(_loc3_,false);
               }
            }
            _loc3_--;
         }
         this.§8#1§(param1);
         this.§=%§();
         if(this.§["7§)
         {
            this.§["7§.update(param1);
         }
      }
      
      protected function §>#s§(param1:§#-§, param2:Number) : void
      {
         param1.update(param2,this);
      }
      
      protected function updateParticles(param1:Number) : void
      {
         var _loc2_:§!!O§ = null;
         var _loc3_:int = this.§]Q§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§]Q§[_loc3_];
            if(_loc2_.removeOnNextUpdate)
            {
               this.§;#s§(_loc3_);
            }
            else
            {
               _loc2_.update(param1,this);
            }
            _loc3_--;
         }
      }
      
      protected function §8#1§(param1:Number) : void
      {
         this.§57§(param1);
         this.§<4§();
      }
      
      protected function §57§(param1:Number) : void
      {
         var _loc3_:§&![§ = null;
         var _loc4_:§#-§ = null;
         var _loc5_:§#-§ = null;
         var _loc6_:b2Vec2 = null;
         var _loc7_:b2Vec2 = null;
         var _loc8_:Number = NaN;
         var _loc2_:int = this.§2#Q§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§2#Q§[_loc2_];
            if(_loc3_.§'#G§)
            {
               if(!_loc3_.update(param1))
               {
                  if(!_loc3_.isOneWayDestroyed)
                  {
                     _loc4_ = this.§0" §(_loc3_.objectId1);
                     this.removeObject(_loc4_,true);
                  }
                  _loc4_ = this.§0" §(_loc3_.objectId2);
                  this.removeObject(_loc4_,true);
                  this.§2#Q§.splice(_loc2_,1);
               }
            }
            else if(_loc3_.distanceToDestroyChild > 0)
            {
               if((_loc4_ = this.§0" §(_loc3_.objectId1)).getBody().GetLinearVelocity().x > 0 || _loc4_.getBody().GetLinearVelocity().y > 0)
               {
                  _loc5_ = this.§0" §(_loc3_.objectId2);
                  _loc6_ = _loc4_.getBody().GetPosition();
                  _loc7_ = _loc5_.getBody().GetPosition();
                  if((_loc8_ = Math.sqrt((_loc6_.x - _loc7_.x) * (_loc6_.x - _loc7_.x) + (_loc6_.y - _loc7_.y) * (_loc6_.y - _loc7_.y))) > _loc3_.distanceToDestroyChild)
                  {
                     _loc3_.§'#G§ = true;
                  }
               }
            }
            _loc2_--;
         }
      }
      
      private function §,#;§(param1:§4#s§) : void
      {
         var _loc2_:§^"9§ = param1.debug_object_1;
         var _loc3_:§^"9§ = param1.debug_object_2;
         if(!_loc2_)
         {
            _loc2_ = this.§0" §(param1.id1);
            param1.debug_object_1 = _loc2_;
         }
         if(!_loc3_)
         {
            _loc3_ = this.§0" §(param1.id2);
            param1.debug_object_2 = _loc3_;
         }
         var _loc4_:Number = _loc2_.sprite.x;
         var _loc5_:Number = _loc2_.sprite.y;
         var _loc6_:Number = _loc3_.sprite.x;
         var _loc7_:Number = _loc3_.sprite.y;
         var _loc8_:Number = Math.sqrt((_loc6_ - _loc4_) * (_loc6_ - _loc4_) + (_loc7_ - _loc5_) * (_loc7_ - _loc5_));
         var _loc9_:Number = Math.atan2(_loc7_ - _loc5_,_loc6_ - _loc4_);
         if(param1.§6"e§ == null)
         {
            param1.§6"e§ = new §0"s§(4,4,4294901760);
            this.§+!5§.addChild(param1.§6"e§);
         }
         param1.§6"e§.x = _loc4_;
         param1.§6"e§.y = _loc5_;
         param1.§6"e§.width = _loc8_;
         param1.§6"e§.rotation = _loc9_;
      }
      
      protected function §8#%§(param1:Number, param2:Number, param3:Number) : Number
      {
         return 0.01;
      }
      
      private function §<4§() : void
      {
         var _loc1_:§4#s§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         for each(_loc1_ in this.§7#J§)
         {
            if(§7!_§)
            {
               this.§,#;§(_loc1_);
            }
            if(_loc1_.§`#c§ && _loc1_.§;!V§ && _loc1_.§""5§)
            {
               _loc2_ = _loc1_.lowerLimit;
               _loc3_ = _loc1_.upperLimit;
               if(_loc1_.type == § #F§.§<#4§)
               {
                  _loc4_ = (_loc1_.§^;§ as b2PrismaticJoint).§[#y§();
                  _loc5_ = (_loc1_.§^;§ as b2PrismaticJoint).§ "7§();
                  _loc6_ = this.§8#%§(_loc3_,_loc2_,_loc5_);
                  if(_loc5_ > 0 && _loc4_ >= _loc3_ - _loc6_ || _loc5_ < 0 && _loc4_ <= _loc2_ + _loc6_)
                  {
                     (_loc1_.§^;§ as b2PrismaticJoint).§]#2§(-_loc5_);
                  }
               }
               else if(_loc1_.type == § #F§.§+!I§)
               {
                  _loc7_ = (_loc1_.§^;§ as b2RevoluteJoint).§-!j§();
                  if((_loc5_ = (_loc1_.§^;§ as b2RevoluteJoint).§ "7§()) > 0 && _loc7_ >= _loc3_ || _loc5_ < 0 && _loc7_ <= _loc2_)
                  {
                     (_loc1_.§^;§ as b2RevoluteJoint).§]#2§(-_loc5_);
                  }
               }
            }
         }
      }
      
      public function destroyAllJoints() : void
      {
         var _loc1_:§4#s§ = null;
         while(this.§7#J§.length > 0)
         {
            _loc1_ = this.§7#J§.pop();
            this.§[!z§(_loc1_);
         }
      }
      
      public function §@#2§(param1:§#-§) : Boolean
      {
         this.§4"h§(param1);
         if(param1 && (!param1.levelItem || param1.levelItem.getItemBodyType() != §^"Q§.§2n§) && param1.getBody() && this.§#![§(param1.getBody().GetPosition().x,param1.getBody().GetPosition().y))
         {
            if(param1 is §^"9§)
            {
               §^"9§(param1).updateOutOfBounds(this);
            }
            return true;
         }
         return false;
      }
      
      protected function §4"h§(param1:§#-§) : void
      {
      }
      
      public function §&#F§(param1:Number, param2:Number) : Boolean
      {
         return this.§`=§.camera.§#5§(param1,param2);
      }
      
      public function §#![§(param1:Number, param2:Number) : Boolean
      {
         return this.§`=§.§>$$§.§?t§(param1,param2);
      }
      
      public function §;#s§(param1:int) : void
      {
         if(param1 < 0)
         {
            return;
         }
         var _loc2_:§!!O§ = this.§]Q§[param1];
         this.§ [§(_loc2_.sprite);
         this.§]Q§[param1] = null;
         this.§]Q§.splice(param1,1);
         _loc2_.dispose();
         _loc2_ = null;
      }
      
      protected function shouldShowScoreText(param1:§^"9§) : Boolean
      {
         return true;
      }
      
      protected function getScoreTextPosition(param1:§^"9§) : Point
      {
         var _loc2_:Number = param1.getBody().GetPosition().x;
         var _loc3_:Number = param1.getBody().GetPosition().y - 3;
         return new Point(_loc2_,_loc3_);
      }
      
      public function §=K§(param1:int, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc5_:§^"9§ = null;
         var _loc6_:Point = null;
         var _loc7_:int = 0;
         var _loc8_:Boolean = false;
         var _loc9_:int = 0;
         if(param1 < 0)
         {
            return;
         }
         var _loc4_:§#-§;
         if((_loc4_ = this.§2!E§[param1]) is §76§)
         {
            ++this.§[#M§;
         }
         else if(_loc4_ is §"7§)
         {
            --this.§=^§;
         }
         if(_loc4_ == this.§,"S§)
         {
            this.§,"S§ = null;
         }
         if(_loc4_ is §^"9§)
         {
            _loc5_ = _loc4_ as §^"9§;
            if(param2)
            {
               _loc6_ = this.getScoreTextPosition(_loc5_);
               _loc7_ = §2"^§.§9!O§(_loc5_.itemName,_loc5_.§=M§);
               _loc8_ = this.shouldShowScoreText(_loc5_);
               if(_loc5_.levelItem.destroyedScoreInc > 0)
               {
                  this.§`=§.addScore(_loc5_.levelItem.destroyedScoreInc,§2"b§.§8"n§,_loc8_,_loc6_.x,_loc6_.y,_loc7_,_loc5_.levelItem.floatingScoreFont);
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
            this.§]!u§(_loc5_);
            this.removeDestroyedAttachedJoints(_loc5_);
            delete this.§4!§[_loc5_.§]#<§.instanceName];
         }
         this.§ [§(_loc4_.sprite);
         this.§2!E§[param1] = null;
         this.§2!E§.splice(param1,1);
         if(_loc4_ is §0S§)
         {
            if((_loc9_ = this.§0#"§.indexOf(§0S§(_loc4_))) >= 0)
            {
               this.§0#"§.splice(_loc9_,1);
            }
         }
         if(this.§["7§)
         {
            this.§["7§.§-!@§(_loc4_);
         }
         if(!param3)
         {
            this.§-!@§(_loc4_);
         }
         _loc4_.dispose();
         _loc4_ = null;
      }
      
      protected function removeDestroyedAttachedJoints(param1:§^"9§) : void
      {
         var _loc2_:§&![§ = null;
         for each(_loc2_ in this.§2#Q§)
         {
            if(_loc2_.objectId1 == param1.id || _loc2_.objectId2 == param1.id)
            {
               _loc2_.§'#G§ = true;
            }
         }
      }
      
      protected function §-!@§(param1:§#-§) : void
      {
         var _loc2_:§^"9§ = null;
         var _loc3_:§]"o§ = null;
         var _loc4_:Vector.<§3H§> = null;
         var _loc5_:int = 0;
         var _loc6_:§3H§ = null;
         if(param1 is §^"9§)
         {
            _loc2_ = param1 as §^"9§;
            _loc3_ = _loc2_.§]#<§;
            if(_loc3_)
            {
               if(_loc4_ = _loc3_.getEvents())
               {
                  _loc5_ = 0;
                  while(_loc5_ < _loc4_.length)
                  {
                     if((_loc6_ = _loc4_[_loc5_]).§;"4§ == §["$§)
                     {
                        this.§`=§.§?O§(_loc6_);
                     }
                     _loc5_++;
                  }
               }
            }
         }
      }
      
      protected function §'"b§(param1:§^"9§, param2:String, param3:String) : void
      {
         if(param1)
         {
            param1.§]#c§(param2,param3,this);
         }
      }
      
      protected function § [§(param1:§&!v§.Sprite) : void
      {
         if(param1 && param1.parent)
         {
            param1.parent.removeChild(param1);
         }
      }
      
      public function removeObject(param1:§#-§, param2:Boolean = false, param3:Boolean = false) : void
      {
         if(param1)
         {
            this.§=K§(this.§2!E§.indexOf(param1),param2,param3);
         }
      }
      
      public function §'!?§(param1:§#-§, param2:String) : §#-§
      {
         var _loc7_:§^"9§ = null;
         var _loc8_:int = 0;
         var _loc3_:int = this.§2!E§.indexOf(param1);
         if(_loc3_ < 0)
         {
            return null;
         }
         var _loc4_:§#-§;
         var _loc5_:b2Body = (_loc4_ = this.§2!E§[_loc3_]).getBody();
         var _loc6_:§#-§;
         ((_loc6_ = this.addObject(param2,_loc5_.GetPosition().x,_loc5_.GetPosition().y,_loc5_.GetAngle() / Math.PI * 180,§6#-§.ID_NEXT_FREE,false,false,false,1,false)) as §^"9§).§[#2§(_loc4_.getBody());
         (_loc6_ as §^"9§).§+N§(_loc4_.getBody().GetAngularVelocity());
         if(_loc4_ == this.§,"S§)
         {
            this.§,"S§ = null;
         }
         if(_loc4_ is §^"9§)
         {
            (_loc7_ = _loc4_ as §^"9§).updateBeforeRemoving(null,true);
            this.§]!u§(_loc7_);
            this.removeDestroyedAttachedJoints(_loc7_);
            delete this.§4!§[_loc7_.§]#<§.instanceName];
         }
         this.§ [§(_loc4_.sprite);
         this.§2!E§[_loc3_] = null;
         this.§2!E§.splice(_loc3_,1);
         if(_loc4_ is §0S§)
         {
            if((_loc8_ = this.§0#"§.indexOf(§0S§(_loc4_))) >= 0)
            {
               this.§0#"§.splice(_loc8_,1);
            }
         }
         if(this.§["7§)
         {
            this.§["7§.§-!@§(_loc4_);
         }
         _loc4_.dispose(false);
         _loc4_ = null;
         return _loc6_;
      }
      
      public function §+l§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§`=§.§][§();
         }
      }
      
      public function §#2§(param1:Boolean, param2:Number = 0, param3:Number = 0, param4:Number = 0) : void
      {
         this.§`=§.§#2§(param1,param2,param3,param4);
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         this.§3"q§.x = -param1;
         this.§3"q§.y = -param2;
         this.§4!5§.x = -param1;
         this.§4!5§.y = -param2;
         this.§`r§.x = -param1;
         this.§`r§.y = -param2;
         this.§&"f§.x = -param1;
         this.§&"f§.y = -param2;
      }
      
      public function isLevelGoalObjectsAlive() : Boolean
      {
         var _loc2_:§#-§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§2!E§.length)
         {
            _loc2_ = this.§2!E§[_loc1_];
            if(_loc2_)
            {
               if(_loc2_.§=M§)
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
         var _loc2_:§#-§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§2!E§.length)
         {
            _loc2_ = this.§2!E§[_loc1_];
            if(_loc2_ && _loc2_ is §76§ && (_loc2_ as §76§).health > 0)
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function getPigCount(param1:Boolean = false) : int
      {
         var _loc4_:§76§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§2!E§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§2!E§[_loc3_] as §76§) && _loc4_.health > 0)
            {
               if(!param1 || !_loc4_.§-#'§ && !_loc4_.§7#f§)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §4!e§() : Array
      {
         var _loc2_:§^"9§ = null;
         this.§?#6§.length = 0;
         var _loc1_:int = this.§2!E§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§2!E§[_loc1_] as §^"9§;
            if(_loc2_ && _loc2_.health > 0)
            {
               if(_loc2_.§3#n§())
               {
                  this.§?#6§.push(_loc1_);
               }
            }
            _loc1_--;
         }
         return this.§?#6§;
      }
      
      public function §=B§() : int
      {
         var _loc2_:§^"9§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§2!E§)
         {
            if(_loc2_ is §;"i§)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §&#7§() : int
      {
         var _loc2_:§^"9§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§2!E§)
         {
            if(_loc2_ && _loc2_.§5!P§())
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function makePigsSmile(param1:Number = 1) : void
      {
         var _loc3_:§76§ = null;
         var _loc2_:int = this.§2!E§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§2!E§[_loc2_] as §76§;
            if(_loc3_ && _loc3_.health > 0)
            {
               _loc3_.scream();
            }
            _loc2_--;
         }
      }
      
      public function §=!w§() : Boolean
      {
         var _loc2_:§"7§ = null;
         var _loc1_:int = this.§2!E§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§2!E§[_loc1_] as §"7§;
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
         var _loc2_:§^"9§ = null;
         var _loc1_:int = this.§2!E§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§2!E§[_loc1_] as §^"9§;
            if(_loc2_ != null && _loc2_.health > 0 && !_loc2_.§-"V§())
            {
               if(_loc2_.isDamageAwardingScore() && !_loc2_.§6#&§())
               {
                  return false;
               }
               if(_loc2_ is §"7§ && _loc2_.health > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §[![§(param1:Boolean = false) : §76§
      {
         var _loc7_:§76§ = null;
         var _loc2_:int = this.§2!E§.length;
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
            if((_loc7_ = this.§2!E§[_loc6_] as §76§) && _loc7_.health > 0)
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
      
      public function §6!V§() : §^"9§
      {
         var _loc3_:§^"9§ = null;
         var _loc4_:int = 0;
         var _loc1_:§^"9§ = null;
         if(this.§]w§ == null)
         {
            this.§]w§ = [];
         }
         this.§]w§.length = 0;
         var _loc2_:int = this.§2!E§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§2!E§[_loc2_] as §^"9§;
            if(_loc3_)
            {
               if(_loc3_.health > 0 && _loc3_.§ #$§)
               {
                  this.§]w§.push(_loc3_);
               }
            }
            _loc2_--;
         }
         if(this.§]w§.length > 0)
         {
            _loc4_ = Math.random() * this.§]w§.length;
            _loc1_ = this.§]w§[_loc4_];
         }
         return _loc1_;
      }
      
      public function §'"O§() : int
      {
         var _loc3_:§^"9§ = null;
         var _loc1_:int = 0;
         var _loc2_:int = this.§2!E§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§2!E§[_loc2_] as §^"9§;
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
         return int(_loc1_ + this.§`=§.slingshot.§'"O§());
      }
      
      protected function §^"_§(param1:§#-§, param2:§#-§) : Boolean
      {
         if(param1 is §^"9§ && param2 is §^"9§ && !(param1 as §^"9§).§;#D§() && !(param2 as §^"9§).§;#D§())
         {
            return false;
         }
         return true;
      }
      
      protected function hasMinimumCollisionSpeed(param1:§#-§, param2:§#-§) : Boolean
      {
         return this.§^"_§(param1,param2);
      }
      
      public function §#!@§() : void
      {
         this.§=^§ = 0;
      }
      
      protected function shakeCameraOnCollision(param1:Number, param2:Number, param3:Number) : void
      {
      }
      
      protected function shakeCameraOnExplosion(param1:Number) : void
      {
      }
      
      protected function getCollisionDamageFactor(param1:§^"9§, param2:§^"9§) : Number
      {
         var _loc3_:Number = NaN;
         if(param2 is §"7§)
         {
            return 1;
         }
         if(param1 is §"7§)
         {
            return Number(param1.§=!%§(param2.§0!C§()));
         }
         return 1;
      }
      
      protected function getCollisionForceFactor(param1:§^"9§, param2:§^"9§) : Number
      {
         if(param2 is §"7§)
         {
            return 0;
         }
         return 1;
      }
      
      protected function §'"C§(param1:§^"9§, param2:§^"9§) : Number
      {
         var _loc4_:Number = this.getCollisionForceFactor(param1,param2);
         var _loc5_:Number = this.getCollisionForceFactor(param2,param1);
         var _loc6_:Number = param1.getBody().GetMass();
         var _loc7_:Number = param2.getBody().GetMass();
         var _loc8_:b2Vec2 = param1.§4#Z§();
         var _loc9_:b2Vec2 = param2.§4#Z§();
         var _loc10_:Number = _loc4_ * _loc6_ * _loc8_.x - _loc5_ * _loc7_ * _loc9_.x;
         var _loc11_:Number = _loc4_ * _loc6_ * _loc8_.y - _loc5_ * _loc7_ * _loc9_.y;
         return Number(Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_) / 10);
      }
      
      public function §&!1§(param1:§^"9§, param2:§^"9§) : Boolean
      {
         if(param2 is §@!j§ && param1 is §@!j§)
         {
            return true;
         }
         return false;
      }
      
      public function objectCollision(param1:§#-§, param2:§#-§, param3:b2Contact) : Boolean
      {
         var _loc15_:§4#s§ = null;
         var _loc16_:b2JointEdge = null;
         var _loc17_:b2JointEdge = null;
         var _loc18_:b2Joint = null;
         var _loc19_:b2JointEdge = null;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         if(!this.§,R§)
         {
            return false;
         }
         param1.collidedWith(param2);
         param2.collidedWith(param1);
         var _loc4_:§^"9§ = param1 as §^"9§;
         var _loc5_:§^"9§ = param2 as §^"9§;
         if(!_loc4_ || !_loc5_)
         {
            return true;
         }
         if(_loc4_.destroysCollidingObjects || _loc5_.§!U§)
         {
            _loc5_.applyDamage(_loc5_.§##6§ * 2,this,_loc4_,true);
            _loc4_.causedDamageToObjects();
            return true;
         }
         if(_loc5_.destroysCollidingObjects || _loc4_.§!U§)
         {
            _loc4_.applyDamage(_loc4_.§##6§ * 2,this,_loc5_,true);
            _loc5_.causedDamageToObjects();
            return true;
         }
         if(!this.hasMinimumCollisionSpeed(_loc4_,_loc5_))
         {
            return false;
         }
         if(this.§&!1§(_loc4_,_loc5_))
         {
            return false;
         }
         var _loc6_:Number = this.§'"C§(_loc4_,_loc5_);
         var _loc7_:Number = Math.max(0,_loc4_.health);
         var _loc8_:Number = Math.max(0,_loc5_.health);
         if(!_loc4_.§7#p§ && !_loc5_.§7#p§)
         {
            this.shakeCameraOnCollision(_loc6_,_loc7_,_loc8_);
         }
         var _loc9_:Number = this.getCollisionDamageFactor(_loc4_,_loc5_);
         var _loc10_:Number = this.getCollisionDamageFactor(_loc5_,_loc4_);
         var _loc11_:Number = _loc6_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc9_;
         var _loc13_:Number = _loc11_ > 0 ? Number(_loc4_.applyDamage(_loc11_,this,_loc5_,true)) : Number(_loc4_.health);
         var _loc14_:Number = _loc12_ > 0 ? Number(_loc5_.applyDamage(_loc12_,this,_loc4_,true)) : Number(_loc5_.health);
         for each(_loc15_ in this.§7#J§)
         {
            if(_loc15_.breakable && _loc6_ >= _loc15_.breakForce)
            {
               _loc16_ = _loc4_.getBody().GetJointList();
               _loc17_ = _loc5_.getBody().GetJointList();
               if(_loc16_ != null)
               {
                  _loc18_ = _loc16_.joint;
                  _loc19_ = _loc16_.§+!e§;
                  while(_loc18_)
                  {
                     if(_loc18_ == _loc15_.§^;§)
                     {
                        this.§[!z§(_loc15_);
                        break;
                     }
                     if(!_loc19_)
                     {
                        break;
                     }
                     _loc18_ = _loc19_.joint;
                     _loc19_ = _loc19_.§+!e§;
                  }
               }
               if(_loc17_ != null)
               {
                  _loc18_ = _loc17_.joint;
                  _loc19_ = _loc17_.§+!e§;
                  while(_loc18_ && _loc19_)
                  {
                     if(_loc18_ == _loc15_.§^;§)
                     {
                        this.§[!z§(_loc15_);
                        break;
                     }
                     if(!_loc19_)
                     {
                        break;
                     }
                     _loc18_ = _loc19_.joint;
                     _loc19_ = _loc19_.§+!e§;
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
         if(_loc4_ is §"7§)
         {
            if(_loc14_ <= 0)
            {
               if(!_loc5_.disableBirdPassThrough)
               {
                  _loc20_ = _loc4_.§>2§(_loc5_.§0!C§());
                  this.§7"K§(_loc4_ as §"7§,_loc6_ * _loc9_,_loc8_,_loc20_);
               }
               return false;
            }
         }
         if(_loc5_ is §"7§)
         {
            if(_loc13_ <= 0)
            {
               if(!_loc4_.disableBirdPassThrough)
               {
                  _loc21_ = _loc5_.§>2§(_loc4_.§0!C§());
                  this.§7"K§(_loc5_ as §"7§,_loc6_ * _loc10_,_loc7_,_loc21_);
               }
               return false;
            }
         }
         return _loc13_ <= 0 && _loc14_ <= 0;
      }
      
      public function objectCollisionEnded(param1:§#-§, param2:§#-§) : void
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
      
      protected function §7"K§(param1:§"7§, param2:Number, param3:Number, param4:Number) : void
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
         var _loc6_:b2Vec2 = param1.§4#Z§();
         param1.§+#D§(new b2Vec2(_loc6_.x * _loc5_,_loc6_.y * _loc5_));
      }
      
      public function §=D§() : void
      {
         var _loc2_:§^"9§ = null;
         var _loc1_:int = this.§2!E§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§2!E§[_loc1_] as §^"9§;
            if(_loc2_ && _loc2_.§=M§)
            {
               this.§=K§(_loc1_,true);
            }
            _loc1_--;
         }
      }
      
      public function §'#5§() : void
      {
         var _loc2_:§^"9§ = null;
         var _loc1_:int = this.§2!E§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§2!E§[_loc1_] as §^"9§;
            if(_loc2_ != null && _loc2_.isTnt())
            {
               this.§=K§(_loc1_,true);
            }
            _loc1_--;
         }
      }
      
      public function §7D§() : int
      {
         return this.§2!E§.length;
      }
      
      public function §%#n§(param1:§]#B§) : void
      {
         var _loc4_:§^"9§ = null;
         var _loc5_:§]"o§ = null;
         var _loc6_:Vector.<§3H§> = null;
         var _loc7_:§ #F§ = null;
         var _loc8_:§4#s§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§2!E§.length)
         {
            if(_loc4_ = this.§2!E§[_loc2_] as §^"9§)
            {
               if(_loc4_.§?"5§)
               {
                  if(!_loc4_.§-"V§())
                  {
                     (_loc5_ = new §]"o§()).angle = _loc4_.§%D§() / (Math.PI / 180);
                     _loc5_.id = _loc4_.id;
                     _loc5_.type = _loc4_.itemName;
                     if(_loc4_.itemName == §]$1§.§["A§)
                     {
                        _loc5_.type = (_loc4_ as §]$1§).§#"x§;
                     }
                     _loc5_.x = _loc4_.getBody().GetPosition().x;
                     _loc5_.y = _loc4_.getBody().GetPosition().y;
                     if(!_loc4_.§5!P§())
                     {
                        _loc5_.z = _loc4_.§=#7§();
                     }
                     if(_loc4_.§>#1§())
                     {
                        _loc5_.linearForce = _loc4_.§>#1§();
                     }
                     if(_loc4_.§]#<§.hasSpecialBehavior)
                     {
                        _loc5_.§7G§(_loc4_.§]#<§.getBehaviorsData());
                     }
                     if(_loc6_ = _loc4_.§]#<§.getEvents())
                     {
                        _loc5_.§#4§(_loc6_);
                     }
                     param1.addObject(_loc5_);
                  }
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§7#J§.length)
         {
            _loc8_ = this.§7#J§[_loc3_];
            (_loc7_ = new § #F§(_loc8_.type,_loc8_.id1,_loc8_.id2,_loc8_.point1,_loc8_.point2,_loc8_.§@#W§,_loc8_.§;!V§,_loc8_.lowerLimit,_loc8_.upperLimit,_loc8_.§""5§,_loc8_.motorSpeed,_loc8_.§`#c§,_loc8_.maxTorque,_loc8_.breakable,_loc8_.breakForce,_loc8_.isOneWayDestroyed)).annihilationTime = _loc8_.annihilationTime;
            _loc7_.distanceToDestroyChild = _loc8_.distanceToDestroyChild;
            _loc7_.axisX = _loc8_.axisX;
            _loc7_.axisY = _loc8_.axisY;
            _loc7_.breakable = _loc8_.breakable;
            _loc7_.breakForce = _loc8_.breakForce;
            _loc7_.destroyChild = _loc8_.destroyChild;
            param1.§ "l§(_loc7_);
            _loc3_++;
         }
      }
      
      public function §3-§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = [];
         var _loc4_:Number = 0;
         while(_loc4_ < this.§2!E§.length)
         {
            if(this.§2!E§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§2!E§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         var _loc3_:§^"9§ = null;
         this.§=!x§ = param1;
         this.setTexture(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§2!E§.length)
         {
            _loc3_ = this.§2!E§[_loc2_] as §^"9§;
            if(_loc3_ && _loc3_.§5!P§())
            {
               _loc3_.sprite.visible = !this.§=!x§;
            }
            _loc2_++;
         }
      }
      
      public function setCollisionsEnabled(param1:Boolean) : void
      {
         this.§,R§ = param1;
      }
      
      public function §!!t§() : int
      {
         return this.§@,§;
      }
      
      public function §##e§() : int
      {
         return this.§[#M§;
      }
      
      public function §7!0§(param1:§#-§) : Boolean
      {
         var _loc2_:int = this.§2!E§.indexOf(param1);
         return _loc2_ >= 0;
      }
   }
}
