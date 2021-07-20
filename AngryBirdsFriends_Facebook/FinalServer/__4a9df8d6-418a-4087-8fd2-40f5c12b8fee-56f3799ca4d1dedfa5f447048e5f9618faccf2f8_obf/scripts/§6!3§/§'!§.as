package §6!3§
{
   import §"#z§.Texture;
   import §&!_§.§[!j§;
   import §'G§.§3$B§;
   import §'G§.§;D§;
   import §,"v§.§7!J§;
   import §-#X§.§,!B§;
   import §-#X§.§0!H§;
   import §-#X§.§2"7§;
   import §-#X§.§9#J§;
   import §-#X§.§^"B§;
   import §1#]§.b2Contact;
   import §2!l§.§4"3§;
   import §2_§.b2Joint;
   import §2_§.b2JointEdge;
   import §2_§.b2PrismaticJoint;
   import §2_§.b2RevoluteJoint;
   import §6#H§.§,"$§;
   import §6#H§.Image;
   import §6#H§.Sprite;
   import §7"p§.§6!9§;
   import §7"p§.§<#]§;
   import §7"p§.§[!f§;
   import §7$?§.§,"6§;
   import §8#K§.§3Z§;
   import §<#E§.§7"c§;
   import §>2§.§ $,§;
   import §>2§.§!6§;
   import §>2§.§-#v§;
   import §?!C§.b2Vec2;
   import §?$<§.§'!s§;
   import §?$<§.§,C§;
   import §?$<§.§4!d§;
   import §?$<§.§4"F§;
   import §?$<§.§;<§;
   import §?$<§.§?$>§;
   import §@!S§.b2Body;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §'!§ implements §8$B§
   {
      
      private static const §-$"§:Boolean = false;
      
      public static const §-$%§:int = 1000000000;
      
      public static const §##u§:int = -1;
      
      public static const ID_NEXT_FREE:int = -2;
      
      public static const §?H§:String = "onDestroy";
       
      
      protected var §,N§:Vector.<§!y§>;
      
      protected var §`!4§:Vector.<§@#v§>;
      
      protected var §^U§:Vector.<§[!f§>;
      
      protected var §[$'§:§[!j§;
      
      private var §7#M§:int = 1000000000;
      
      public var §5#0§:§!6§;
      
      protected var §>`§:Vector.<§>#x§>;
      
      protected var §=!k§:§6#H§.Sprite;
      
      protected var §>#q§:§6#H§.Sprite;
      
      protected var §]#5§:§6#H§.Sprite;
      
      protected var §8"j§:§6#H§.Sprite;
      
      protected var §!#H§:§6#H§.Sprite;
      
      protected var §`!%§:§6#H§.Sprite;
      
      protected var §'"L§:Vector.<Texture>;
      
      protected var §&!y§:Vector.<§9#J§>;
      
      protected var §5"B§:int = 1;
      
      protected var §;!b§:Vector.<§^"B§>;
      
      protected var §8u§:int = 0;
      
      protected var §["w§:int = 0;
      
      private var § S§:int = 0;
      
      private var §6!V§:§,!B§;
      
      protected var §1!K§:§;!U§;
      
      private var § !6§:Boolean = true;
      
      private var §4"+§:Boolean = true;
      
      protected var §@w§:§7"c§;
      
      private var §<!0§:Boolean = false;
      
      private var § "k§:Array;
      
      private var §-#%§:Array;
      
      public function §'!§(param1:§!6§, param2:§7!J§, param3:§6#H§.Sprite, param4:String)
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:int = 0;
         var _loc8_:§!y§ = null;
         this.§,N§ = new Vector.<§!y§>();
         this.§`!4§ = new Vector.<§@#v§>();
         this.§^U§ = new Vector.<§[!f§>();
         this.§[$'§ = new §[!j§();
         this.§>`§ = new Vector.<§>#x§>();
         this.§'"L§ = new Vector.<Texture>();
         this.§;!b§ = new Vector.<§^"B§>();
         this.§6!V§ = new §,!B§();
         super();
         this.§5#0§ = param1;
         this.§=!k§ = param3;
         this.§=!k§.§?#N§ = false;
         this.§4"+§ = true;
         this.§ !6§ = true;
         this.§>#q§ = new §6#H§.Sprite();
         this.§]#5§ = new §6#H§.Sprite();
         this.§8"j§ = new §6#H§.Sprite();
         this.§`!%§ = new §6#H§.Sprite();
         this.§!#H§ = new §6#H§.Sprite();
         this.§=!k§.addChild(this.§>#q§);
         this.§=!k§.addChild(this.§]#5§);
         this.§=!k§.addChild(this.§8"j§);
         §,"6§.init(4,2);
         this.§-#%§ = [];
         this.addLevelObjects(param2);
         if(param2.hasGround)
         {
            _loc5_ = (this.§5#0§.§;$5§.§"!]§ + this.§5#0§.§;$5§.§8#4§) / 2;
            _loc6_ = 0 + §-#v§.§6!M§;
            _loc7_ = 0;
            while(_loc7_ < 5)
            {
               if((_loc8_ = this.addObject(param4,_loc5_,_loc6_,0,§'!§.§##u§)) != null)
               {
                  break;
               }
               _loc7_++;
            }
         }
      }
      
      public function get §9#W§() : §6#H§.Sprite
      {
         return this.§`!%§;
      }
      
      public function get §46§() : §6#H§.Sprite
      {
         return this.§8"j§;
      }
      
      public function get §<"e§() : §6#H§.Sprite
      {
         return this.§]#5§;
      }
      
      public function get backgroundSprite() : §6#H§.Sprite
      {
         return this.§!#H§;
      }
      
      public function get §&#c§() : §6#H§.Sprite
      {
         return this.§=!k§;
      }
      
      public function get activeObject() : §;!U§
      {
         return this.§1!K§;
      }
      
      public function get objectCount() : int
      {
         return this.§,N§.length;
      }
      
      public function set §<!b§(param1:§7"c§) : void
      {
         if(param1 != this.§@w§)
         {
            this.§@w§ = param1;
            if(this.§<!0§ && this.§@w§)
            {
               this.§@w§.levelStarted();
            }
         }
      }
      
      public function levelInitialized() : void
      {
         if(!this.§<!0§)
         {
            this.§<!0§ = true;
            if(this.§@w§)
            {
               this.§@w§.levelStarted();
            }
         }
      }
      
      public function §?e§(param1:String) : §?$>§
      {
         return this.§5#0§.levelItemManager.getItem(param1);
      }
      
      public function activateSpecialPower(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         if(this.§1!K§)
         {
            _loc3_ = this.§1!K§.activateSpecialPower(this,param1,param2);
         }
         return _loc3_;
      }
      
      public function §&#-§(param1:§,!B§) : void
      {
         var _loc2_:Number = 1;
         var _loc3_:§?$>§ = this.§5#0§.levelItemManager.getItem(param1.type);
         if(_loc3_)
         {
            _loc2_ = _loc3_.scale;
         }
         this.addObjectFromModel(param1,param1.id,false,false,false,_loc2_);
      }
      
      protected function addLevelObjects(param1:§7!J§) : void
      {
         var _loc3_:§,!B§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:§?$>§ = null;
         var _loc6_:§0!H§ = null;
         var _loc2_:int = 0;
         _loc2_ = 0;
         while(_loc2_ < param1.objectCount)
         {
            _loc3_ = param1.getObject(_loc2_);
            _loc4_ = 1;
            if(_loc5_ = this.§5#0§.levelItemManager.getItem(_loc3_.type))
            {
               _loc4_ = _loc5_.scale;
            }
            this.addObjectFromModel(_loc3_,_loc3_.id,false,false,false,_loc4_);
            _loc2_++;
         }
         this.generateTerrainTexture();
         this.setTexture(true);
         this.§&!y§ = new Vector.<§9#J§>();
         _loc2_ = 0;
         while(_loc2_ < param1.§4!L§)
         {
            _loc6_ = param1.§;#n§(_loc2_);
            this.§>""§(_loc6_);
            _loc2_++;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         §,"6§.dispose();
         while(this.§,N§.length > 0)
         {
            this.§>#S§(0,false,true);
         }
         while(this.§^U§.length > 0)
         {
            this.§!"t§(0);
         }
         this.§,N§ = null;
         this.§`!4§ = null;
         this.§^U§ = null;
         this.§[$'§ = null;
         this.§;!b§ = null;
         this.§-#%§ = null;
         if(this.§=!k§)
         {
            this.§=!k§.dispose();
            this.§=!k§ = null;
         }
         this.§>#q§ = null;
         this.§]#5§ = null;
         if(this.§8"j§)
         {
            this.§8"j§.dispose();
            this.§8"j§ = null;
         }
         if(this.§`!%§)
         {
            this.§`!%§.dispose();
            this.§`!%§ = null;
         }
         if(this.§!#H§)
         {
            this.§!#H§.dispose();
            this.§!#H§ = null;
         }
         while(this.§'"L§.length > 0)
         {
            _loc1_ = this.§'"L§.pop();
            this.§5#0§.textureManager.unregisterBitmapDataTexture(_loc1_);
         }
      }
      
      public function setTexture(param1:Boolean) : void
      {
         this.§>#q§.visible = param1;
         this.§!#H§.visible = param1;
      }
      
      public function generateTerrainTexture() : void
      {
         var _loc5_:§!y§ = null;
         var _loc6_:Rectangle = null;
         var _loc7_:§;!U§ = null;
         var _loc8_:§4"F§ = null;
         var _loc9_:Number = NaN;
         var _loc10_:String = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Rectangle = null;
         var _loc3_:Vector.<§;!U§> = new Vector.<§;!U§>();
         var _loc4_:Vector.<§;!U§> = new Vector.<§;!U§>();
         for each(_loc5_ in this.§,N§)
         {
            if((_loc7_ = _loc5_ as §;!U§) && _loc7_.§4"v§())
            {
               _loc9_ = (_loc8_ = _loc7_.levelItem.shape).getDimension() / §!6§.§[#v§;
               _loc6_ = new Rectangle(_loc5_.sprite.x - _loc9_ / 2,_loc5_.sprite.y - _loc9_ / 2,_loc9_,_loc9_);
               if((_loc10_ = _loc7_.§1F§()) == §?$>§.§;$8§)
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
            this.§^#H§(_loc1_,_loc3_,this.§&"L§(),this.§>#q§);
         }
         if(_loc2_)
         {
            this.§^#H§(_loc2_,_loc4_,this.§2! §(),this.§!#H§);
         }
      }
      
      private function §^#H§(param1:Rectangle, param2:Vector.<§;!U§>, param3:String, param4:§6#H§.Sprite) : void
      {
         var _loc5_:Number = this.§5#0§.camera.borderLeft / §!6§.§[#v§;
         var _loc6_:Number = this.§5#0§.camera.borderRight / §!6§.§[#v§;
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
         this.§1S§(_loc14_.rect,_loc14_,_loc9_ * _loc15_,param3);
         var _loc16_:BitmapData = this.§^!I§(param2,_loc10_,_loc11_,_loc12_,_loc13_,_loc9_);
         _loc14_.copyChannel(_loc16_,_loc16_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
         var _loc17_:Texture = this.§5#0§.textureManager.getTextureFromBitmapData(_loc14_);
         this.§'"L§.push(_loc17_);
         var _loc18_:Image;
         (_loc18_ = new Image(_loc17_)).x = _loc12_ / _loc9_;
         _loc18_.y = _loc13_ / _loc9_;
         _loc18_.scaleX = 1 / _loc9_;
         _loc18_.scaleY = 1 / _loc9_;
         param4.addChild(_loc18_);
         _loc16_.dispose();
      }
      
      private function §^!I§(param1:Vector.<§;!U§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§;!U§ = null;
         var _loc11_:Number = NaN;
         var _loc12_:§4"F§ = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc10_.identity();
            _loc11_ = param6;
            if((_loc12_ = _loc7_.levelItem.shape) is §,C§)
            {
               this.§9$3§(_loc12_,_loc8_,_loc9_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§%#4§(),param6,_loc11_,param4,param5);
            }
            else if(_loc12_ is §4!d§)
            {
               if((_loc12_ as §4!d§).vertices.length == 4)
               {
                  this.§9$3§(_loc12_,_loc8_,_loc9_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§%#4§(),param6,_loc11_,param4,param5);
               }
               else if((_loc12_ as §4!d§).vertices.length == 3)
               {
                  this.§36§(_loc12_ as §4!d§,_loc8_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§%#4§(),param6,_loc11_,param4,param5);
               }
            }
            else if(_loc12_ is §'!s§)
            {
               this.§+#K§(_loc12_ as §'!s§,_loc8_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,param6,_loc11_,param4,param5);
            }
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      protected function §9$3§(param1:§4"F§, param2:BitmapData, param3:BitmapData, param4:Matrix, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Number) : void
      {
         var _loc12_:Number = param1.getWidth() / §!6§.§[#v§ * param9;
         var _loc13_:Number = param1.getHeight() / §!6§.§[#v§ * param9;
         param4.scale(_loc12_,_loc13_);
         param4.translate(-_loc12_ / 2,-_loc13_ / 2);
         param4.rotate(param7);
         param4.translate(param5 * param8 - param10,param6 * param8 - param11);
         param2.draw(param3,param4);
      }
      
      protected function §36§(param1:§4!d§, param2:BitmapData, param3:Matrix, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number) : void
      {
         var _loc14_:b2Vec2 = null;
         var _loc11_:flash.display.Sprite;
         (_loc11_ = new flash.display.Sprite()).graphics.beginFill(16777215);
         var _loc12_:Vector.<Number> = new Vector.<Number>();
         var _loc13_:int = 0;
         while(_loc13_ < param1.vertices.length)
         {
            _loc14_ = param1.vertices[_loc13_];
            _loc12_.push(_loc14_.x / §!6§.§[#v§ * param8,_loc14_.y / §!6§.§[#v§ * param8);
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
      
      protected function §+#K§(param1:§'!s§, param2:BitmapData, param3:Matrix, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number) : void
      {
         var _loc10_:Number;
         var _loc11_:Number = (_loc10_ = param1.radius) / §!6§.§[#v§ * param7;
         var _loc12_:flash.display.Sprite;
         (_loc12_ = new flash.display.Sprite()).graphics.beginFill(16777215);
         _loc12_.graphics.drawCircle(_loc11_,_loc11_,_loc11_);
         _loc12_.graphics.endFill();
         param3.translate(param4 * param6 - param8 - _loc11_,param5 * param6 - param9 - _loc11_);
         param2.draw(_loc12_,param3);
         _loc12_.graphics.clear();
         _loc12_ = null;
      }
      
      protected function §&"L§() : String
      {
         return this.§5#0§.background.§,#I§();
      }
      
      protected function §2! §() : String
      {
         return this.§5#0§.background.§4!G§();
      }
      
      protected function getLevelTextureScale() : Number
      {
         return 1;
      }
      
      private function §1S§(param1:Rectangle, param2:BitmapData, param3:Number, param4:String) : void
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
         var _loc5_:§3$B§;
         if(_loc5_ = this.§5#0§.backgroundTextureManager.getTexture(param4))
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
      
      protected function §!Q§(param1:§,!B§, param2:§6#H§.Sprite, param3:§;D§, param4:§?$>§, param5:Number = 1.0, param6:Boolean = true) : §,s§
      {
         var _loc11_:§,s§ = null;
         var _loc7_:String = param1.type;
         var _loc8_:Number = param1.x;
         var _loc9_:Number = param1.y;
         var _loc10_:Number = param1.angle;
         switch(_loc7_)
         {
            case "BIRD_BLACK":
               _loc11_ = new §?#g§(param2,param3,this.§5#0§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_BLUE":
               _loc11_ = new §-#h§(param2,param3,this.§5#0§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_GREEN":
               _loc11_ = new §#"c§(param2,param3,this.§5#0§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_WHITE":
               _loc11_ = new §6!w§(param2,param3,this.§5#0§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_YELLOW":
               _loc11_ = new §&##§(param2,param3,this.§5#0§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_RED":
               _loc11_ = new §8#_§(param2,param3,this.§5#0§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_REDBIG":
               _loc11_ = new §6"d§(param2,param3,this.§5#0§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_ORANGE":
               _loc11_ = new §""h§(param2,param3,this.§5#0§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_SARDINE":
               _loc11_ = new §5K§(param2,param3,this.§5#0§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_MIGHTY_EAGLE":
               _loc11_ = new §<"V§(param2,param3,this.§5#0§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            default:
               _loc11_ = new §,s§(param2,param3,this.§5#0§.mLevelEngine.mWorld,param4,param1,param5,param6);
         }
         return _loc11_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§8u§ > 0;
      }
      
      protected function addObjectPig(param1:§,!B§, param2:§6#H§.Sprite, param3:§;D§, param4:§?$>§, param5:Number = 1.0) : §>#p§
      {
         return new §>#p§(param2,param3,this.§5#0§.mLevelEngine.mWorld,param4,param1,param5);
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number, param5:int, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0, param10:Boolean = false, param11:Boolean = false, param12:Number = 0.0, param13:b2Vec2 = null, param14:Number = 0.0, param15:Number = 0.0, param16:Boolean = true, param17:Number = 1.0) : §!y§
      {
         this.§6!V§ = new §,!B§();
         this.§6!V§.type = param1;
         this.§6!V§.x = param2;
         this.§6!V§.y = param3;
         this.§6!V§.angle = param4;
         this.§6!V§.§=#j§ = 0;
         this.§6!V§.§1]§ = 0;
         this.§6!V§.angularVelocity = param12;
         this.§6!V§.angularDamping = param14;
         this.§6!V§.linearDamping = param15;
         this.§6!V§.awake = param16;
         this.§6!V§.health = param17;
         return this.addObjectFromModel(this.§6!V§,param5,param6,param7,param8,param9,param10,param11);
      }
      
      public function §3P§(param1:String, param2:Number, param3:Number, param4:Number, param5:int, param6:Number = 0.0, param7:Number = 0.0, param8:Number = 1.0, param9:Boolean = false, param10:Boolean = false) : §!y§
      {
         this.§6!V§ = new §,!B§();
         this.§6!V§.type = param1;
         this.§6!V§.x = param2;
         this.§6!V§.y = param3;
         this.§6!V§.angle = param4;
         this.§6!V§.§=#j§ = param6;
         this.§6!V§.§1]§ = param7;
         return this.addObjectFromModel(this.§6!V§,param5,false,false,false,param8,param9,param10);
      }
      
      protected function addObjectFromModel(param1:§,!B§, param2:int, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true, param6:Number = 1.0, param7:Boolean = false, param8:Boolean = false) : §!y§
      {
         if(this.isFoundEasterEgg(param1.type))
         {
            return null;
         }
         var _loc9_:§6#H§.Sprite = new §6#H§.Sprite();
         var _loc10_:§!y§;
         if((_loc10_ = this.§'!c§(param1,param2,_loc9_,param5,param6)) == null)
         {
            return null;
         }
         if(_loc10_ is §;!U§ && (_loc10_ as §;!U§).§4"v§())
         {
            _loc9_.visible = !this.§ !6§;
         }
         if(_loc10_ is §,s§ && !(_loc10_ is §<"V§))
         {
            ++this.§8u§;
         }
         if(!param7)
         {
            if(param8)
            {
               this.§8"j§.§!c§(_loc9_);
            }
            else
            {
               this.§]#5§.§!c§(_loc9_);
            }
         }
         else
         {
            this.§`!%§.§!c§(_loc9_);
         }
         if(param3)
         {
            this.§5#0§.§-"W§(_loc10_);
         }
         if(param4)
         {
            this.§1!K§ = §;!U§(_loc10_);
         }
         return _loc10_;
      }
      
      protected function isFoundEasterEgg(param1:String) : Boolean
      {
         return false;
      }
      
      private function §'!c§(param1:§,!B§, param2:int, param3:§6#H§.Sprite, param4:Boolean = true, param5:Number = 1.0) : §!y§
      {
         var _loc7_:Vector.<§2"7§> = null;
         var _loc8_:§2"7§ = null;
         var _loc9_:Boolean = false;
         var _loc10_:§;!U§ = null;
         if(param2 == ID_NEXT_FREE)
         {
            param2 = this.§7#M§;
            ++this.§7#M§;
         }
         else
         {
            if(param2 >= §-$%§)
            {
               throw new Error("Invalid object id: " + param2 + ". Has to be less than " + §-$%§);
            }
            if(this.§]#w§(param2))
            {
               throw new Error("Object with id: " + param2 + " already added!");
            }
         }
         var _loc6_:§!y§;
         if((_loc6_ = this.createObjectInstance(param1,param3,param4,param5)) is §;!U§)
         {
            if((_loc6_ as §;!U§).hasSpecialBehavior)
            {
               _loc7_ = (_loc6_ as §;!U§).§&#r§.getBehaviorsData();
               for each(_loc8_ in _loc7_)
               {
                  if(!(_loc9_ = this.§5#0§.§=R§(_loc8_.type,_loc8_.event)))
                  {
                     (_loc6_ as §;!U§).§?"W§(this.§5#0§,_loc8_);
                  }
               }
            }
         }
         if(_loc6_ is §,s§)
         {
            ++this.§ S§;
         }
         if(_loc6_)
         {
            _loc10_ = _loc6_ as §;!U§;
            if(_loc6_ is §[!f§)
            {
               this.§^U§.push(_loc6_);
            }
            else
            {
               if(_loc10_)
               {
                  _loc10_.§&!6§(param2);
                  this.§[$'§[param1.instanceName] = _loc6_;
               }
               this.§,N§.push(_loc6_);
               if(_loc6_ is §@#v§)
               {
                  this.§`!4§.push(_loc6_);
               }
            }
            if(this.§@w§)
            {
               this.§@w§.§9%§(_loc6_);
            }
         }
         return _loc6_;
      }
      
      protected function §'#q§() : String
      {
         return "INGAME_TEXTURE_SAND_1";
      }
      
      protected function createBombBlockInstance(param1:§,!B§, param2:§6#H§.Sprite, param3:§;D§, param4:§?$>§, param5:int, param6:Number = 1.0) : §!y§
      {
         return new §@#H§(param2,param3,this.§5#0§.mLevelEngine.mWorld,param4,param1,param6,param5);
      }
      
      protected function §%!L§(param1:§,!B§, param2:§6#H§.Sprite, param3:§;D§, param4:§?$>§, param5:int, param6:Number = 1.0) : §!y§
      {
         return new §2!z§(param2,param3,this.§5#0§.mLevelEngine.mWorld,param4,param1,param6,param5);
      }
      
      protected function createObjectInstance(param1:§,!B§, param2:§6#H§.Sprite, param3:Boolean = true, param4:Number = 1.0) : §!y§
      {
         var _loc5_:§?$>§;
         if(!(_loc5_ = this.§5#0§.levelItemManager.getItem(param1.type)))
         {
            return null;
         }
         var _loc6_:String;
         if((_loc6_ = _loc5_.itemName).substr(0,13) == "BLOCK_STATIC_")
         {
            _loc6_ = this.§'#q§();
         }
         var _loc7_:§;D§ = this.§5#0§.animationManager.getAnimation(_loc6_);
         var _loc8_:§!y§ = null;
         if(param1.type.indexOf("BIRD") == 0)
         {
            _loc8_ = this.§!Q§(param1,param2,_loc7_,_loc5_,param4,param3);
         }
         else if(_loc5_.itemType == §?$>§.§1!f§)
         {
            (_loc8_ = this.addObjectPig(param1,param2,_loc7_,_loc5_,param4)).§9v§ = true;
         }
         else if(_loc5_.itemType == §?$>§.§0#Q§ || _loc5_.itemType == §?$>§.§3!B§)
         {
            if(_loc5_.itemName.indexOf("TNT") >= 0)
            {
               _loc8_ = this.createBombBlockInstance(param1,param2,_loc7_,_loc5_,§>#x§.§]" §,param4);
            }
            else if(_loc5_.itemName == §6!w§.§="4§)
            {
               _loc8_ = this.§%!L§(param1,param2,_loc7_,_loc5_,§>#x§.§1$,§,param4);
            }
            else
            {
               _loc8_ = new §^#x§(param2,_loc7_,this.§5#0§.mLevelEngine.mWorld,_loc5_,param1,param4,_loc5_.particleJSONId,_loc5_.particleVariationCount);
            }
         }
         else
         {
            _loc8_ = new §;!U§(param2,_loc7_,this.§5#0§.mLevelEngine.mWorld,_loc5_,param1,param4);
         }
         return _loc8_;
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean, param4:Number, param5:Number, param6:int, param7:String) : void
      {
         this.§5#0§.addScore(param1,§ $,§.§ ";§,param3,param4,param5,param6,param7);
      }
      
      public function addParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : void
      {
         this.§5#0§.particles.addParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function addSimpleParticle(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         this.§5#0§.particles.addSimpleParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16);
      }
      
      public function §9!_§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:Number, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : void
      {
         this.§5#0§.particles.§9!_§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function §3h§(param1:§;!U§) : void
      {
         var _loc4_:§9#J§ = null;
         var _loc5_:§9#J§ = null;
         var _loc6_:§!y§ = null;
         var _loc7_:§!y§ = null;
         var _loc2_:int = param1.id;
         var _loc3_:int = this.§&!y§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§&!y§[_loc3_];
            if(this.§&!y§[_loc3_].id1 == _loc2_ || this.§&!y§[_loc3_].id2 == _loc2_)
            {
               if(_loc4_.§ !§)
               {
                  _loc6_ = _loc4_.§ !§.§"#2§().GetUserData() as §!y§;
                  _loc7_ = _loc4_.§ !§.§1"z§().GetUserData() as §!y§;
                  if(_loc6_)
                  {
                     _loc6_.attachedJointRemoved(_loc7_);
                  }
                  if(_loc7_)
                  {
                     _loc7_.attachedJointRemoved(_loc6_);
                  }
               }
               _loc5_ = this.§&!y§.pop();
               if(_loc3_ < this.§&!y§.length)
               {
                  this.§&!y§[_loc3_] = _loc5_;
               }
               this.§7#D§(_loc4_);
            }
            _loc3_--;
         }
      }
      
      protected function §>""§(param1:§0!H§, param2:Boolean = false) : §9#J§
      {
         var _loc3_:int = param1.id1;
         var _loc4_:int = param1.id2;
         var _loc5_:§9#J§;
         (_loc5_ = §9#J§.§>""§(param1)).§>&§ = param2;
         this.§&!y§.push(_loc5_);
         var _loc6_:§!y§ = this.§]#w§(_loc3_);
         var _loc7_:§!y§ = this.§]#w§(_loc4_);
         if(_loc6_ && _loc7_)
         {
            if(_loc5_.type != §0!H§.§7$'§)
            {
               _loc5_.§ !§ = this.§5#0§.mLevelEngine.mWorld.§8"u§(_loc5_.§<$D§(_loc6_,_loc7_));
               if(_loc5_.type == §0!H§.§,"!§ && _loc5_.destroyChild)
               {
                  this.§;!b§.push(new §^"B§(_loc3_,_loc4_,_loc5_.annihilationTime,param1.isOneWayDestroyed,param1.distanceToDestroyChild));
               }
            }
            else
            {
               this.§;!b§.push(new §^"B§(_loc3_,_loc4_,_loc5_.annihilationTime,param1.isOneWayDestroyed,param1.distanceToDestroyChild));
            }
            _loc6_.attachedJointCreated(_loc7_);
            _loc7_.attachedJointCreated(_loc6_);
         }
         return _loc5_;
      }
      
      protected function §7#D§(param1:§9#J§) : void
      {
         if(param1.§ !§)
         {
            this.§5#0§.mLevelEngine.mWorld.§>"Q§(param1.§ !§);
         }
         if(param1.§@#j§)
         {
            if(this.§]#5§.contains(param1.§@#j§))
            {
               this.§]#5§.removeChild(param1.§@#j§,true);
            }
         }
      }
      
      public function addExplosion(param1:int, param2:Number, param3:Number, param4:int = -1) : void
      {
         this.§>`§.push(§>#x§.createExplosion(param1,param2,param3,param4));
         this.playExplosionSound(param1);
      }
      
      protected function playExplosionSound(param1:int) : void
      {
         §3Z§.playSound("tnt_box_explodes","ChannelExplosions");
      }
      
      public function §;"8§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = -1, param8:Boolean = true, param9:Boolean = true) : void
      {
         this.§>`§.push(§>#x§.§^!x§(param1,param2,param3,param4,param5,param6,param7,param8));
         if(param9)
         {
            §3Z§.playSound("tnt_box_explodes","ChannelExplosions");
         }
      }
      
      public function getForceAtPoint(param1:Number, param2:Number, param3:Number, param4:b2Vec2) : b2Vec2
      {
         if(!param4)
         {
            param4 = new b2Vec2();
         }
         param4.SetV(this.§5#0§.mLevelEngine.mWorld.GetGravity());
         return param4;
      }
      
      public function get §!x§() : Number
      {
         return this.§5#0§.§!x§;
      }
      
      public function §-?§(param1:Number, param2:Number) : int
      {
         var _loc4_:§;!U§ = null;
         var _loc3_:int = this.§,N§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§,N§[_loc3_] as §;!U§) && _loc4_.isInCoordinates(param1,param2))
            {
               return _loc3_;
            }
            _loc3_--;
         }
         return -1;
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §;!U§
      {
         var _loc4_:§;!U§ = null;
         var _loc3_:int = this.§,N§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§,N§[_loc3_] as §;!U§)
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
      
      public function §'@§(param1:Number, param2:Number) : Vector.<§;!U§>
      {
         var _loc5_:§;!U§ = null;
         var _loc3_:Vector.<§;!U§> = new Vector.<§;!U§>();
         var _loc4_:int = this.§,N§.length - 1;
         while(_loc4_ >= 0)
         {
            if((_loc5_ = this.§,N§[_loc4_] as §;!U§) && _loc5_.isInCoordinates(param1,param2))
            {
               _loc3_.push(_loc5_);
            }
            _loc4_--;
         }
         return _loc3_;
      }
      
      public function getObject(param1:int) : §!y§
      {
         return this.§,N§[param1];
      }
      
      public function §]#w§(param1:int) : §;!U§
      {
         var _loc2_:§!y§ = null;
         var _loc3_:§;!U§ = null;
         for each(_loc2_ in this.§,N§)
         {
            _loc3_ = _loc2_ as §;!U§;
            if(_loc3_ && _loc3_.id == param1)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function §3"I§(param1:String) : §;!U§
      {
         return this.§[$'§[param1];
      }
      
      public function renderObjects(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:int = this.§,N§.length - 1;
         while(_loc4_ >= 0)
         {
            this.§,N§[_loc4_].render(param1,param2,param3);
            _loc4_--;
         }
         this.updateParticles(param1);
         _loc4_ = this.§^U§.length - 1;
         while(_loc4_ >= 0)
         {
            this.§^U§[_loc4_].render(param1,param2,param3);
            _loc4_--;
         }
      }
      
      protected function getExplosionDamageMultiplier(param1:Number, param2:Number) : Number
      {
         return 1 / param1;
      }
      
      protected function getExplosionDistanceToObject(param1:Number, param2:Number, param3:§;!U§) : §,"6§
      {
         var _loc4_:b2Vec2;
         var _loc5_:Number = (_loc4_ = param3.getBody().GetPosition()).x - param1;
         var _loc6_:Number = _loc4_.y - param2;
         var _loc7_:Number = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         var _loc8_:§,"6§;
         (_loc8_ = §,"6§.getObject()).§9J§ = _loc7_;
         _loc8_.§4E§.x = _loc4_.x;
         _loc8_.§4E§.y = _loc4_.y;
         return _loc8_;
      }
      
      protected function applyExplosionDamage(param1:§;!U§, param2:Number, param3:Boolean = false) : void
      {
         param1.applyDamage(param2,this,null,param3);
      }
      
      protected function ignoreExplosion(param1:§;!U§, param2:int) : Boolean
      {
         return false;
      }
      
      protected function §3#-§() : void
      {
         var _loc2_:§>#x§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:§!y§ = null;
         var _loc8_:§;!U§ = null;
         var _loc9_:§,"6§ = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         if(!this.§4"+§)
         {
            return;
         }
         var _loc1_:Point = new Point();
         while(this.§>`§.length > 0)
         {
            _loc2_ = this.§>`§.shift();
            _loc3_ = _loc2_.§;C§;
            _loc4_ = _loc2_.x;
            _loc5_ = _loc2_.y;
            _loc6_ = _loc2_.damage;
            this.shakeCameraOnExplosion(_loc2_.push);
            for each(_loc7_ in this.§,N§)
            {
               if((_loc8_ = _loc7_ as §;!U§) && !this.ignoreExplosion(_loc8_,_loc2_.type))
               {
                  if((_loc9_ = this.getExplosionDistanceToObject(_loc4_,_loc5_,_loc8_)).§9J§ <= _loc2_.§;C§)
                  {
                     _loc10_ = _loc2_.push * this.getExplosionDamageMultiplier(_loc9_.§9J§,_loc2_.§;C§);
                     if(_loc9_.§9J§ > 0)
                     {
                        _loc1_.x = _loc9_.§4E§.x - _loc4_;
                        _loc1_.y = _loc9_.§4E§.y - _loc5_;
                        _loc1_.normalize(1);
                        _loc11_ = _loc10_ * _loc1_.x;
                        _loc12_ = _loc10_ * _loc1_.y;
                        _loc8_.getBody().ApplyImpulse(new b2Vec2(_loc11_,_loc12_),new b2Vec2(_loc9_.§4E§.x,_loc9_.§4E§.y));
                     }
                  }
                  if(_loc9_.§9J§ <= _loc2_.damageRadius)
                  {
                     _loc13_ = _loc6_ * this.getExplosionDamageMultiplier(_loc9_.§9J§,_loc2_.damageRadius);
                     if(isNaN(_loc13_))
                     {
                        _loc13_ = 0;
                     }
                     this.applyExplosionDamage(_loc8_,_loc13_);
                  }
                  §,"6§.§#"2§(_loc9_);
               }
            }
            if(_loc2_.§@A§)
            {
               this.updateExplosionEffects(_loc2_,_loc4_,_loc5_,_loc3_);
            }
         }
      }
      
      protected function updateExplosionEffects(param1:§>#x§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         this.§5#0§.particles.addParticle(this.getMainExplosionCoreName(param1.type),§<#]§.PARTICLE_GROUP_GAME_EFFECTS,§6!9§.PARTICLE_TYPE_STATIC_PARTICLE,param2,param3,600,"",§6!9§.§^!+§,0,0,0,0,1,20,true);
         var _loc5_:int = 30;
         while(_loc5_ < 150)
         {
            _loc6_ = 0.75 * param4 + Math.random() * param4;
            _loc7_ = 1250 + Math.random() * 750;
            _loc8_ = _loc5_ / (180 / Math.PI);
            this.§5#0§.particles.addParticle(§6!9§.§2!w§,§<#]§.PARTICLE_GROUP_GAME_EFFECTS,§6!9§.PARTICLE_TYPE_KINETIC_PARTICLE,param2,param3,_loc7_,"",§6!9§.§^!+§,_loc6_ * Math.cos(_loc8_),-_loc6_ * Math.sin(_loc8_),20,0);
            _loc5_ += 5;
         }
      }
      
      protected function getMainExplosionCoreName(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(0)
         {
         }
         return §6!9§.§]!a§;
      }
      
      public function updateObjects(param1:Number) : void
      {
         var _loc4_:§;!U§ = null;
         var _loc2_:§!y§ = null;
         var _loc3_:int = this.§,N§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§,N§[_loc3_];
            if(_loc2_.removeOnNextUpdate)
            {
               this.§>#S§(_loc3_,true);
            }
            else
            {
               this.§;!%§(_loc2_,param1);
               _loc4_ = _loc2_ as §;!U§;
               if(this.§;#b§(_loc2_))
               {
                  this.§>#S§(_loc3_,!(_loc4_ is §,s§));
               }
               else if(_loc4_ && _loc4_.isReadyToBeRemoved(param1))
               {
                  this.§>#S§(_loc3_,false);
               }
            }
            _loc3_--;
         }
         this.§%!f§(param1);
         this.§3#-§();
         if(this.§@w§)
         {
            this.§@w§.update(param1);
         }
      }
      
      protected function §;!%§(param1:§!y§, param2:Number) : void
      {
         param1.update(param2,this);
      }
      
      protected function updateParticles(param1:Number) : void
      {
         var _loc2_:§[!f§ = null;
         var _loc3_:int = this.§^U§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§^U§[_loc3_];
            if(_loc2_.removeOnNextUpdate)
            {
               this.§!"t§(_loc3_);
            }
            else
            {
               _loc2_.update(param1,this);
            }
            _loc3_--;
         }
      }
      
      protected function §%!f§(param1:Number) : void
      {
         this.§##S§(param1);
         this.§6"f§();
      }
      
      protected function §##S§(param1:Number) : void
      {
         var _loc3_:§^"B§ = null;
         var _loc4_:§!y§ = null;
         var _loc5_:§!y§ = null;
         var _loc6_:b2Vec2 = null;
         var _loc7_:b2Vec2 = null;
         var _loc8_:Number = NaN;
         var _loc2_:int = this.§;!b§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§;!b§[_loc2_];
            if(_loc3_.§'"Z§)
            {
               if(!_loc3_.update(param1))
               {
                  if(!_loc3_.isOneWayDestroyed)
                  {
                     _loc4_ = this.§]#w§(_loc3_.objectId1);
                     this.removeObject(_loc4_,true);
                  }
                  if(_loc4_ = this.§]#w§(_loc3_.objectId2))
                  {
                     this.removeObject(_loc4_,true);
                  }
                  this.§;!b§.splice(_loc2_,1);
               }
            }
            else if(_loc3_.distanceToDestroyChild > 0)
            {
               if((_loc4_ = this.§]#w§(_loc3_.objectId1)) && (_loc4_.getBody().GetLinearVelocity().x > 0 || _loc4_.getBody().GetLinearVelocity().y > 0))
               {
                  if(_loc5_ = this.§]#w§(_loc3_.objectId2))
                  {
                     _loc6_ = _loc4_.getBody().GetPosition();
                     _loc7_ = _loc5_.getBody().GetPosition();
                     if((_loc8_ = Math.sqrt((_loc6_.x - _loc7_.x) * (_loc6_.x - _loc7_.x) + (_loc6_.y - _loc7_.y) * (_loc6_.y - _loc7_.y))) > _loc3_.distanceToDestroyChild)
                     {
                        _loc3_.§'"Z§ = true;
                     }
                  }
               }
            }
            _loc2_--;
         }
      }
      
      private function §?#v§(param1:§9#J§) : void
      {
         var _loc2_:§;!U§ = param1.debug_object_1;
         var _loc3_:§;!U§ = param1.debug_object_2;
         if(!_loc2_)
         {
            _loc2_ = this.§]#w§(param1.id1);
            param1.debug_object_1 = _loc2_;
         }
         if(!_loc3_)
         {
            _loc3_ = this.§]#w§(param1.id2);
            param1.debug_object_2 = _loc3_;
         }
         var _loc4_:Number = _loc2_.sprite.x;
         var _loc5_:Number = _loc2_.sprite.y;
         var _loc6_:Number = _loc3_.sprite.x;
         var _loc7_:Number = _loc3_.sprite.y;
         var _loc8_:Number = Math.sqrt((_loc6_ - _loc4_) * (_loc6_ - _loc4_) + (_loc7_ - _loc5_) * (_loc7_ - _loc5_));
         var _loc9_:Number = Math.atan2(_loc7_ - _loc5_,_loc6_ - _loc4_);
         if(param1.§@#j§ == null)
         {
            param1.§@#j§ = new §,"$§(4,4,4294901760);
            this.§]#5§.addChild(param1.§@#j§);
         }
         param1.§@#j§.x = _loc4_;
         param1.§@#j§.y = _loc5_;
         param1.§@#j§.width = _loc8_;
         param1.§@#j§.rotation = _loc9_;
      }
      
      protected function §>"y§(param1:Number, param2:Number, param3:Number) : Number
      {
         return 0.01;
      }
      
      private function §6"f§() : void
      {
         var _loc1_:§9#J§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         for each(_loc1_ in this.§&!y§)
         {
            if(§-$"§)
            {
               this.§?#v§(_loc1_);
            }
            if(_loc1_.§<$A§ && _loc1_.§-$§ && _loc1_.§?"]§)
            {
               _loc2_ = _loc1_.lowerLimit;
               _loc3_ = _loc1_.upperLimit;
               if(_loc1_.type == §0!H§.§in§)
               {
                  _loc4_ = (_loc1_.§ !§ as b2PrismaticJoint).§"#@§();
                  _loc5_ = (_loc1_.§ !§ as b2PrismaticJoint).§1#f§();
                  _loc6_ = this.§>"y§(_loc3_,_loc2_,_loc5_);
                  if(_loc5_ > 0 && _loc4_ >= _loc3_ - _loc6_ || _loc5_ < 0 && _loc4_ <= _loc2_ + _loc6_)
                  {
                     (_loc1_.§ !§ as b2PrismaticJoint).§[$4§(-_loc5_);
                  }
               }
               else if(_loc1_.type == §0!H§.§9"V§)
               {
                  _loc7_ = (_loc1_.§ !§ as b2RevoluteJoint).§;"p§();
                  if((_loc5_ = (_loc1_.§ !§ as b2RevoluteJoint).§1#f§()) > 0 && _loc7_ >= _loc3_ || _loc5_ < 0 && _loc7_ <= _loc2_)
                  {
                     (_loc1_.§ !§ as b2RevoluteJoint).§[$4§(-_loc5_);
                  }
               }
            }
         }
      }
      
      public function destroyAllJoints() : void
      {
         var _loc1_:§9#J§ = null;
         while(this.§&!y§.length > 0)
         {
            _loc1_ = this.§&!y§.pop();
            this.§7#D§(_loc1_);
         }
      }
      
      public function §;#b§(param1:§!y§) : Boolean
      {
         this.§4$D§(param1);
         if(param1 && (!param1.levelItem || param1.levelItem.getItemBodyType() != §;<§.BODY_TYPE_STATIC) && param1.getBody() && this.§`"=§(param1.getBody().GetPosition().x,param1.getBody().GetPosition().y))
         {
            if(param1 is §;!U§)
            {
               §;!U§(param1).updateOutOfBounds(this);
            }
            return true;
         }
         return false;
      }
      
      protected function §4$D§(param1:§!y§) : void
      {
      }
      
      public function §0#D§(param1:Number, param2:Number) : Boolean
      {
         return this.§5#0§.camera.§3#R§(param1,param2);
      }
      
      public function §`"=§(param1:Number, param2:Number) : Boolean
      {
         return this.§5#0§.§;$5§.§<i§(param1,param2);
      }
      
      public function §!"t§(param1:int) : void
      {
         if(param1 < 0)
         {
            return;
         }
         var _loc2_:§[!f§ = this.§^U§[param1];
         this.§="t§(_loc2_.sprite);
         this.§^U§[param1] = null;
         this.§^U§.splice(param1,1);
         _loc2_.dispose();
         _loc2_ = null;
      }
      
      protected function shouldShowScoreText(param1:§;!U§) : Boolean
      {
         return true;
      }
      
      protected function getScoreTextPosition(param1:§;!U§) : Point
      {
         var _loc2_:Number = param1.getBody().GetPosition().x;
         var _loc3_:Number = param1.getBody().GetPosition().y - 3;
         return new Point(_loc2_,_loc3_);
      }
      
      public function §>#S§(param1:int, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc5_:§;!U§ = null;
         var _loc6_:Point = null;
         var _loc7_:int = 0;
         var _loc8_:Boolean = false;
         var _loc9_:int = 0;
         if(param1 < 0)
         {
            return;
         }
         var _loc4_:§!y§;
         if((_loc4_ = this.§,N§[param1]) is §>#p§)
         {
            ++this.§["w§;
         }
         else if(_loc4_ is §,s§)
         {
            --this.§8u§;
         }
         if(_loc4_ == this.§1!K§)
         {
            this.§1!K§ = null;
         }
         if(_loc4_ is §;!U§)
         {
            _loc5_ = _loc4_ as §;!U§;
            if(param2)
            {
               _loc6_ = this.getScoreTextPosition(_loc5_);
               _loc7_ = §6!9§.§[T§(_loc5_.itemName,_loc5_.§9v§);
               _loc8_ = this.shouldShowScoreText(_loc5_);
               if(_loc5_.levelItem.destroyedScoreInc > 0)
               {
                  this.§5#0§.addScore(_loc5_.levelItem.destroyedScoreInc,§ $,§.§!"2§,_loc8_,_loc6_.x,_loc6_.y,_loc7_,_loc5_.levelItem.floatingScoreFont);
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
            this.§3h§(_loc5_);
            this.removeDestroyedAttachedJoints(_loc5_);
            delete this.§[$'§[_loc5_.§&#r§.instanceName];
         }
         this.§="t§(_loc4_.sprite);
         this.§,N§[param1] = null;
         this.§,N§.splice(param1,1);
         if(_loc4_ is §@#v§)
         {
            if((_loc9_ = this.§`!4§.indexOf(§@#v§(_loc4_))) >= 0)
            {
               this.§`!4§.splice(_loc9_,1);
            }
         }
         if(this.§@w§)
         {
            this.§@w§.§=r§(_loc4_);
         }
         if(!param3)
         {
            this.§=r§(_loc4_);
         }
         _loc4_.dispose();
         _loc4_ = null;
      }
      
      protected function removeDestroyedAttachedJoints(param1:§;!U§) : void
      {
         var _loc2_:§^"B§ = null;
         for each(_loc2_ in this.§;!b§)
         {
            if(_loc2_.objectId1 == param1.id || _loc2_.objectId2 == param1.id)
            {
               _loc2_.§'"Z§ = true;
            }
         }
      }
      
      protected function §=r§(param1:§!y§) : void
      {
         var _loc2_:§;!U§ = null;
         var _loc3_:§,!B§ = null;
         var _loc4_:Vector.<§4"3§> = null;
         var _loc5_:int = 0;
         var _loc6_:§4"3§ = null;
         if(param1 is §;!U§)
         {
            _loc2_ = param1 as §;!U§;
            _loc3_ = _loc2_.§&#r§;
            if(_loc3_)
            {
               if(_loc4_ = _loc3_.getEvents())
               {
                  _loc5_ = 0;
                  while(_loc5_ < _loc4_.length)
                  {
                     if((_loc6_ = _loc4_[_loc5_]).§^"v§ == §?H§)
                     {
                        this.§5#0§.§[!q§(_loc6_);
                     }
                     _loc5_++;
                  }
               }
            }
         }
      }
      
      protected function §&"X§(param1:§;!U§, param2:String, param3:String) : void
      {
         if(param1)
         {
            param1.§2#>§(param2,param3,this);
         }
      }
      
      protected function §="t§(param1:§6#H§.Sprite) : void
      {
         if(param1 && param1.parent)
         {
            param1.parent.removeChild(param1);
         }
      }
      
      public function removeObject(param1:§!y§, param2:Boolean = false, param3:Boolean = false) : void
      {
         if(param1)
         {
            this.§>#S§(this.§,N§.indexOf(param1),param2,param3);
         }
      }
      
      public function §7"M§(param1:§!y§, param2:String) : §!y§
      {
         var _loc7_:§;!U§ = null;
         var _loc8_:int = 0;
         var _loc3_:int = this.§,N§.indexOf(param1);
         if(_loc3_ < 0)
         {
            return null;
         }
         var _loc4_:§!y§;
         var _loc5_:b2Body = (_loc4_ = this.§,N§[_loc3_]).getBody();
         var _loc6_:§!y§;
         ((_loc6_ = this.addObject(param2,_loc5_.GetPosition().x,_loc5_.GetPosition().y,_loc5_.GetAngle() / Math.PI * 180,§'!§.ID_NEXT_FREE,false,false,false,1,false)) as §;!U§).§%!N§(_loc4_.getBody());
         (_loc6_ as §;!U§).§9"&§(_loc4_.getBody().GetAngularVelocity());
         if(_loc4_ == this.§1!K§)
         {
            this.§1!K§ = null;
         }
         if(_loc4_ is §;!U§)
         {
            (_loc7_ = _loc4_ as §;!U§).updateBeforeRemoving(null,true);
            this.§3h§(_loc7_);
            this.removeDestroyedAttachedJoints(_loc7_);
            delete this.§[$'§[_loc7_.§&#r§.instanceName];
         }
         this.§="t§(_loc4_.sprite);
         this.§,N§[_loc3_] = null;
         this.§,N§.splice(_loc3_,1);
         if(_loc4_ is §@#v§)
         {
            if((_loc8_ = this.§`!4§.indexOf(§@#v§(_loc4_))) >= 0)
            {
               this.§`!4§.splice(_loc8_,1);
            }
         }
         if(this.§@w§)
         {
            this.§@w§.§=r§(_loc4_);
         }
         _loc4_.dispose(false);
         _loc4_ = null;
         return _loc6_;
      }
      
      public function §&$8§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§5#0§.§9"H§();
         }
      }
      
      public function §&"!§(param1:Boolean, param2:Number = 0, param3:Number = 0, param4:Number = 0) : void
      {
         this.§5#0§.§&"!§(param1,param2,param3,param4);
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         this.§=!k§.x = -param1;
         this.§=!k§.y = -param2;
         this.§`!%§.x = -param1;
         this.§`!%§.y = -param2;
         this.§8"j§.x = -param1;
         this.§8"j§.y = -param2;
         this.§!#H§.x = -param1;
         this.§!#H§.y = -param2;
      }
      
      public function isLevelGoalObjectsAlive() : Boolean
      {
         var _loc2_:§!y§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§,N§.length)
         {
            _loc2_ = this.§,N§[_loc1_];
            if(_loc2_)
            {
               if(_loc2_.§9v§)
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
         var _loc2_:§!y§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§,N§.length)
         {
            _loc2_ = this.§,N§[_loc1_];
            if(_loc2_ && _loc2_ is §>#p§ && (_loc2_ as §>#p§).health > 0)
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function getPigCount(param1:Boolean = false) : int
      {
         var _loc4_:§>#p§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§,N§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§,N§[_loc3_] as §>#p§) && _loc4_.health > 0)
            {
               if(!param1 || !_loc4_.§]"R§ && !_loc4_.§2&§)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §9"s§() : Array
      {
         var _loc2_:§;!U§ = null;
         this.§-#%§.length = 0;
         var _loc1_:int = this.§,N§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§,N§[_loc1_] as §;!U§;
            if(_loc2_ && _loc2_.health > 0)
            {
               if(_loc2_.§5#+§())
               {
                  this.§-#%§.push(_loc1_);
               }
            }
            _loc1_--;
         }
         return this.§-#%§;
      }
      
      public function §"!X§() : int
      {
         var _loc2_:§;!U§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§,N§)
         {
            if(_loc2_ is §^#x§)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §"#a§() : int
      {
         var _loc2_:§;!U§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§,N§)
         {
            if(_loc2_ && _loc2_.§4"v§())
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function makePigsSmile(param1:Number = 1) : void
      {
         var _loc3_:§>#p§ = null;
         var _loc2_:int = this.§,N§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§,N§[_loc2_] as §>#p§;
            if(_loc3_ && _loc3_.health > 0)
            {
               _loc3_.scream();
            }
            _loc2_--;
         }
      }
      
      public function §6@§() : Boolean
      {
         var _loc2_:§,s§ = null;
         var _loc1_:int = this.§,N§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§,N§[_loc1_] as §,s§;
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
         var _loc2_:§;!U§ = null;
         var _loc1_:int = this.§,N§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§,N§[_loc1_] as §;!U§;
            if(_loc2_ != null && _loc2_.health > 0 && !_loc2_.§5!u§())
            {
               if(_loc2_.isDamageAwardingScore() && !_loc2_.§>"@§())
               {
                  return false;
               }
               if(_loc2_ is §,s§ && _loc2_.health > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §##_§(param1:Boolean = false) : §>#p§
      {
         var _loc7_:§>#p§ = null;
         var _loc2_:int = this.§,N§.length;
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
            if((_loc7_ = this.§,N§[_loc6_] as §>#p§) && _loc7_.health > 0)
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
      
      public function §%"i§() : §;!U§
      {
         var _loc3_:§;!U§ = null;
         var _loc4_:int = 0;
         var _loc1_:§;!U§ = null;
         if(this.§ "k§ == null)
         {
            this.§ "k§ = [];
         }
         this.§ "k§.length = 0;
         var _loc2_:int = this.§,N§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§,N§[_loc2_] as §;!U§;
            if(_loc3_)
            {
               if(_loc3_.health > 0 && _loc3_.§13§)
               {
                  this.§ "k§.push(_loc3_);
               }
            }
            _loc2_--;
         }
         if(this.§ "k§.length > 0)
         {
            _loc4_ = Math.random() * this.§ "k§.length;
            _loc1_ = this.§ "k§[_loc4_];
         }
         return _loc1_;
      }
      
      public function §%!c§() : int
      {
         var _loc3_:§;!U§ = null;
         var _loc1_:int = 0;
         var _loc2_:int = this.§,N§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§,N§[_loc2_] as §;!U§;
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
         return int(_loc1_ + this.§5#0§.slingshot.§%!c§());
      }
      
      protected function §[!a§(param1:§!y§, param2:§!y§) : Boolean
      {
         if(param1 is §;!U§ && param2 is §;!U§ && !(param1 as §;!U§).§'"<§() && !(param2 as §;!U§).§'"<§())
         {
            return false;
         }
         return true;
      }
      
      protected function hasMinimumCollisionSpeed(param1:§!y§, param2:§!y§) : Boolean
      {
         return this.§[!a§(param1,param2);
      }
      
      public function §=!0§() : void
      {
         this.§8u§ = 0;
      }
      
      protected function shakeCameraOnCollision(param1:Number, param2:Number, param3:Number) : void
      {
      }
      
      protected function shakeCameraOnExplosion(param1:Number) : void
      {
      }
      
      protected function getCollisionDamageFactor(param1:§;!U§, param2:§;!U§) : Number
      {
         var _loc3_:Number = NaN;
         if(param2 is §,s§)
         {
            return 1;
         }
         if(param1 is §,s§)
         {
            return Number(param1.§%!5§(param2.§5"1§()));
         }
         return 1;
      }
      
      protected function getCollisionForceFactor(param1:§;!U§, param2:§;!U§) : Number
      {
         if(param2 is §,s§)
         {
            return 0;
         }
         return 1;
      }
      
      protected function §5?§(param1:§;!U§, param2:§;!U§) : Number
      {
         var _loc4_:Number = this.getCollisionForceFactor(param1,param2);
         var _loc5_:Number = this.getCollisionForceFactor(param2,param1);
         var _loc6_:Number = param1.getBody().GetMass();
         var _loc7_:Number = param2.getBody().GetMass();
         var _loc8_:b2Vec2 = param1.§]#y§();
         var _loc9_:b2Vec2 = param2.§]#y§();
         var _loc10_:Number = _loc4_ * _loc6_ * _loc8_.x - _loc5_ * _loc7_ * _loc9_.x;
         var _loc11_:Number = _loc4_ * _loc6_ * _loc8_.y - _loc5_ * _loc7_ * _loc9_.y;
         return Number(Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_) / 10);
      }
      
      public function §#J§(param1:§;!U§, param2:§;!U§) : Boolean
      {
         if(param2 is §-#h§ && param1 is §-#h§)
         {
            return true;
         }
         return false;
      }
      
      public function objectCollision(param1:§!y§, param2:§!y§, param3:b2Contact) : Boolean
      {
         var _loc15_:§9#J§ = null;
         var _loc16_:b2JointEdge = null;
         var _loc17_:b2JointEdge = null;
         var _loc18_:b2Joint = null;
         var _loc19_:b2JointEdge = null;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         if(!this.§4"+§)
         {
            return false;
         }
         param1.collidedWith(param2);
         param2.collidedWith(param1);
         var _loc4_:§;!U§ = param1 as §;!U§;
         var _loc5_:§;!U§ = param2 as §;!U§;
         if(!_loc4_ || !_loc5_)
         {
            return true;
         }
         if(_loc4_.destroysCollidingObjects || _loc5_.§+$-§)
         {
            _loc5_.applyDamage(_loc5_.§6"k§ * 2,this,_loc4_,true);
            _loc4_.causedDamageToObjects();
            return true;
         }
         if(_loc5_.destroysCollidingObjects || _loc4_.§+$-§)
         {
            _loc4_.applyDamage(_loc4_.§6"k§ * 2,this,_loc5_,true);
            _loc5_.causedDamageToObjects();
            return true;
         }
         if(!this.hasMinimumCollisionSpeed(_loc4_,_loc5_))
         {
            return false;
         }
         if(this.§#J§(_loc4_,_loc5_))
         {
            return false;
         }
         var _loc6_:Number = this.§5?§(_loc4_,_loc5_);
         var _loc7_:Number = Math.max(0,_loc4_.health);
         var _loc8_:Number = Math.max(0,_loc5_.health);
         if(!_loc4_.§9#4§ && !_loc5_.§9#4§)
         {
            this.shakeCameraOnCollision(_loc6_,_loc7_,_loc8_);
         }
         var _loc9_:Number = this.getCollisionDamageFactor(_loc4_,_loc5_);
         var _loc10_:Number = this.getCollisionDamageFactor(_loc5_,_loc4_);
         var _loc11_:Number = _loc6_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc9_;
         var _loc13_:Number = _loc11_ > 0 ? Number(_loc4_.applyDamage(_loc11_,this,_loc5_,true)) : Number(_loc4_.health);
         var _loc14_:Number = _loc12_ > 0 ? Number(_loc5_.applyDamage(_loc12_,this,_loc4_,true)) : Number(_loc5_.health);
         for each(_loc15_ in this.§&!y§)
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
                     if(_loc18_ == _loc15_.§ !§)
                     {
                        this.§7#D§(_loc15_);
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
                     if(_loc18_ == _loc15_.§ !§)
                     {
                        this.§7#D§(_loc15_);
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
         if(_loc4_ is §,s§)
         {
            if(_loc14_ <= 0)
            {
               if(!_loc5_.disableBirdPassThrough)
               {
                  _loc20_ = _loc4_.§1!J§(_loc5_.§5"1§());
                  this.§ #f§(_loc4_ as §,s§,_loc6_ * _loc9_,_loc8_,_loc20_);
               }
               return false;
            }
         }
         if(_loc5_ is §,s§)
         {
            if(_loc13_ <= 0)
            {
               if(!_loc4_.disableBirdPassThrough)
               {
                  _loc21_ = _loc5_.§1!J§(_loc4_.§5"1§());
                  this.§ #f§(_loc5_ as §,s§,_loc6_ * _loc10_,_loc7_,_loc21_);
               }
               return false;
            }
         }
         return _loc13_ <= 0 && _loc14_ <= 0;
      }
      
      public function objectCollisionEnded(param1:§!y§, param2:§!y§) : void
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
      
      protected function § #f§(param1:§,s§, param2:Number, param3:Number, param4:Number) : void
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
         var _loc6_:b2Vec2 = param1.§]#y§();
         param1.§1!j§(new b2Vec2(_loc6_.x * _loc5_,_loc6_.y * _loc5_));
      }
      
      public function §[$@§() : void
      {
         var _loc2_:§;!U§ = null;
         var _loc1_:int = this.§,N§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§,N§[_loc1_] as §;!U§;
            if(_loc2_ && _loc2_.§9v§)
            {
               this.§>#S§(_loc1_,true);
            }
            _loc1_--;
         }
      }
      
      public function § "b§() : void
      {
         var _loc2_:§;!U§ = null;
         var _loc1_:int = this.§,N§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§,N§[_loc1_] as §;!U§;
            if(_loc2_ != null && _loc2_.isTnt())
            {
               this.§>#S§(_loc1_,true);
            }
            _loc1_--;
         }
      }
      
      public function §&P§() : int
      {
         return this.§,N§.length;
      }
      
      public function §1#R§(param1:§7!J§) : void
      {
         var _loc4_:§;!U§ = null;
         var _loc5_:§,!B§ = null;
         var _loc6_:Vector.<§4"3§> = null;
         var _loc7_:§0!H§ = null;
         var _loc8_:§9#J§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§,N§.length)
         {
            if(_loc4_ = this.§,N§[_loc2_] as §;!U§)
            {
               if(_loc4_.§`!R§)
               {
                  if(!_loc4_.§5!u§())
                  {
                     (_loc5_ = new §,!B§()).angle = _loc4_.§%#4§() / (Math.PI / 180);
                     _loc5_.id = _loc4_.id;
                     _loc5_.type = _loc4_.itemName;
                     if(_loc4_.itemName == §+$+§.§ !V§)
                     {
                        _loc5_.type = (_loc4_ as §+$+§).§8!L§;
                     }
                     _loc5_.x = _loc4_.getBody().GetPosition().x;
                     _loc5_.y = _loc4_.getBody().GetPosition().y;
                     if(!_loc4_.§4"v§())
                     {
                        _loc5_.z = _loc4_.§>![§();
                     }
                     if(_loc4_.§;",§())
                     {
                        _loc5_.linearForce = _loc4_.§;",§();
                     }
                     if(_loc4_.§&#r§.hasSpecialBehavior)
                     {
                        _loc5_.§9"%§(_loc4_.§&#r§.getBehaviorsData());
                     }
                     if(_loc6_ = _loc4_.§&#r§.getEvents())
                     {
                        _loc5_.§1"&§(_loc6_);
                     }
                     param1.addObject(_loc5_);
                  }
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§&!y§.length)
         {
            _loc8_ = this.§&!y§[_loc3_];
            (_loc7_ = new §0!H§(_loc8_.type,_loc8_.id1,_loc8_.id2,_loc8_.point1,_loc8_.point2,_loc8_.§8w§,_loc8_.§-$§,_loc8_.lowerLimit,_loc8_.upperLimit,_loc8_.§?"]§,_loc8_.motorSpeed,_loc8_.§<$A§,_loc8_.maxTorque,_loc8_.breakable,_loc8_.breakForce,_loc8_.isOneWayDestroyed)).annihilationTime = _loc8_.annihilationTime;
            _loc7_.distanceToDestroyChild = _loc8_.distanceToDestroyChild;
            _loc7_.axisX = _loc8_.axisX;
            _loc7_.axisY = _loc8_.axisY;
            _loc7_.breakable = _loc8_.breakable;
            _loc7_.breakForce = _loc8_.breakForce;
            _loc7_.destroyChild = _loc8_.destroyChild;
            param1.§9!2§(_loc7_);
            _loc3_++;
         }
      }
      
      public function §?"9§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = [];
         var _loc4_:Number = 0;
         while(_loc4_ < this.§,N§.length)
         {
            if(this.§,N§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§,N§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         var _loc3_:§;!U§ = null;
         this.§ !6§ = param1;
         this.setTexture(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§,N§.length)
         {
            _loc3_ = this.§,N§[_loc2_] as §;!U§;
            if(_loc3_ && _loc3_.§4"v§())
            {
               _loc3_.sprite.visible = !this.§ !6§;
            }
            _loc2_++;
         }
      }
      
      public function setCollisionsEnabled(param1:Boolean) : void
      {
         this.§4"+§ = param1;
      }
      
      public function §;$&§() : int
      {
         return this.§ S§;
      }
      
      public function §!$A§() : int
      {
         return this.§["w§;
      }
      
      public function §[=§(param1:§!y§) : Boolean
      {
         var _loc2_:int = this.§,N§.indexOf(param1);
         return _loc2_ >= 0;
      }
   }
}
