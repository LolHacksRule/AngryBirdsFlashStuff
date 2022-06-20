package §^0§
{
   import § "v§.§4$4§;
   import §""4§.Texture;
   import §#Z§.§6J§;
   import §#Z§.Image;
   import §#Z§.Sprite;
   import §%$0§.§1c§;
   import §%$0§.§2#Z§;
   import §%$0§.§`#I§;
   import §-!j§.§%!a§;
   import §-!j§.§'#u§;
   import §-!j§.§+T§;
   import §-!j§.§,#V§;
   import §-!j§.§-"8§;
   import §-!j§.§5!,§;
   import §0#I§.§3s§;
   import §2E§.§&#a§;
   import §3#h§.b2Body;
   import §5#K§.§,!9§;
   import §5v§.b2Joint;
   import §5v§.b2JointEdge;
   import §5v§.b2PrismaticJoint;
   import §5v§.b2RevoluteJoint;
   import §6!R§.b2Vec2;
   import §6"0§.b2Contact;
   import §9#M§.§'!-§;
   import §9#M§.§,`§;
   import §="o§.§>"f§;
   import §?$#§.§-V§;
   import §?$#§.§<d§;
   import §?$#§.§]#>§;
   import §?o§.§ ^§;
   import §@"v§.§0$=§;
   import §@"v§.§5#>§;
   import §@"v§.§6$D§;
   import §@"v§.§@$<§;
   import §@"v§.§^"B§;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §%"^§ implements §>"T§
   {
      
      private static const §3"w§:Boolean = false;
      
      public static const § "j§:int = 1000000000;
      
      public static const §'i§:int = -1;
      
      public static const ID_NEXT_FREE:int = -2;
      
      public static const §?q§:String = "onDestroy";
       
      
      protected var §!#4§:Vector.<§4!t§>;
      
      protected var §]$<§:Vector.<§5;§>;
      
      protected var §5#N§:Vector.<§1c§>;
      
      protected var §7"N§:§&#a§;
      
      private var §&P§:int = 1000000000;
      
      public var § 6§:§<d§;
      
      protected var §]#&§:Vector.<§0#;§>;
      
      protected var §]A§:§#Z§.Sprite;
      
      protected var §^"b§:§#Z§.Sprite;
      
      protected var §]#s§:§#Z§.Sprite;
      
      protected var §5"Z§:§#Z§.Sprite;
      
      protected var §6u§:§#Z§.Sprite;
      
      protected var §3"'§:§#Z§.Sprite;
      
      protected var §!#0§:Vector.<Texture>;
      
      protected var §&$D§:Vector.<§6$D§>;
      
      protected var §]!I§:int = 1;
      
      protected var §0!W§:Vector.<§5#>§>;
      
      protected var §!u§:int = 0;
      
      protected var § x§:int = 0;
      
      private var §<H§:int = 0;
      
      private var §^q§:§@$<§;
      
      protected var §]!A§:§=Q§;
      
      private var §7#c§:Boolean = true;
      
      private var §4V§:Boolean = true;
      
      protected var §,n§:§,!9§;
      
      private var §+"1§:Boolean = false;
      
      private var §0"!§:Array;
      
      private var §,#n§:Array;
      
      public function §%"^§(param1:§<d§, param2:§ ^§, param3:§#Z§.Sprite, param4:String)
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:int = 0;
         this.§!#4§ = new Vector.<§4!t§>();
         this.§]$<§ = new Vector.<§5;§>();
         this.§5#N§ = new Vector.<§1c§>();
         this.§7"N§ = new §&#a§();
         this.§]#&§ = new Vector.<§0#;§>();
         this.§!#0§ = new Vector.<Texture>();
         this.§0!W§ = new Vector.<§5#>§>();
         this.§^q§ = new §@$<§();
         super();
         this.§ 6§ = param1;
         this.§]A§ = param3;
         this.§]A§.§^"$§ = false;
         this.§4V§ = true;
         this.§7#c§ = true;
         this.§^"b§ = new §#Z§.Sprite();
         this.§]#s§ = new §#Z§.Sprite();
         this.§5"Z§ = new §#Z§.Sprite();
         this.§3"'§ = new §#Z§.Sprite();
         this.§6u§ = new §#Z§.Sprite();
         this.§]A§.addChild(this.§^"b§);
         this.§]A§.addChild(this.§]#s§);
         this.§]A§.addChild(this.§5"Z§);
         §>"f§.init(4,2);
         this.§,#n§ = [];
         this.addLevelObjects(param2);
         if(param2.hasGround)
         {
            _loc5_ = (this.§ 6§.§%?§.§4$%§ + this.§ 6§.§%?§.§9"<§) / 2;
            _loc6_ = 0 + §]#>§.§@$?§;
            _loc7_ = 0;
            while(_loc7_ < 5)
            {
               if(this.addObject(param4,_loc5_,_loc6_,0,§%"^§.§'i§) != null)
               {
                  break;
               }
               _loc7_++;
            }
         }
      }
      
      public function get §2+§() : §#Z§.Sprite
      {
         return this.§3"'§;
      }
      
      public function get §7#R§() : §#Z§.Sprite
      {
         return this.§5"Z§;
      }
      
      public function get §%!V§() : §#Z§.Sprite
      {
         return this.§]#s§;
      }
      
      public function get backgroundSprite() : §#Z§.Sprite
      {
         return this.§6u§;
      }
      
      public function get §8!k§() : §#Z§.Sprite
      {
         return this.§]A§;
      }
      
      public function get activeObject() : §=Q§
      {
         return this.§]!A§;
      }
      
      public function get objectCount() : int
      {
         return this.§!#4§.length;
      }
      
      public function set §6#3§(param1:§,!9§) : void
      {
         if(param1 != this.§,n§)
         {
            this.§,n§ = param1;
            if(this.§+"1§ && this.§,n§)
            {
               this.§,n§.levelStarted();
            }
         }
      }
      
      public function levelInitialized() : void
      {
         if(!this.§+"1§)
         {
            this.§+"1§ = true;
            if(this.§,n§)
            {
               this.§,n§.levelStarted();
            }
         }
      }
      
      public function §`##§(param1:String) : §-"8§
      {
         return this.§ 6§.levelItemManager.getItem(param1);
      }
      
      public function activateSpecialPower(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         if(this.§]!A§)
         {
            _loc3_ = this.§]!A§.activateSpecialPower(this,param1,param2);
         }
         return _loc3_;
      }
      
      public function §4"$§(param1:§@$<§) : void
      {
         var _loc2_:Number = 1;
         var _loc3_:§-"8§ = this.§ 6§.levelItemManager.getItem(param1.type);
         if(_loc3_)
         {
            _loc2_ = _loc3_.scale;
         }
         this.addObjectFromModel(param1,param1.id,false,false,false,_loc2_);
      }
      
      protected function addLevelObjects(param1:§ ^§) : void
      {
         var _loc3_:§@$<§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:§-"8§ = null;
         var _loc6_:§0$=§ = null;
         var _loc2_:int = 0;
         _loc2_ = 0;
         while(_loc2_ < param1.objectCount)
         {
            _loc3_ = param1.getObject(_loc2_);
            _loc4_ = 1;
            if(_loc5_ = this.§ 6§.levelItemManager.getItem(_loc3_.type))
            {
               _loc4_ = _loc5_.scale;
            }
            this.addObjectFromModel(_loc3_,_loc3_.id,false,false,false,_loc4_);
            _loc2_++;
         }
         this.generateTerrainTexture();
         this.setTexture(true);
         this.§&$D§ = new Vector.<§6$D§>();
         _loc2_ = 0;
         while(_loc2_ < param1.§7#e§)
         {
            _loc6_ = param1.§1!6§(_loc2_);
            this.§0#t§(_loc6_);
            _loc2_++;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Texture = null;
         §>"f§.dispose();
         while(this.§!#4§.length > 0)
         {
            this.§4"O§(0,false,true);
         }
         while(this.§5#N§.length > 0)
         {
            this.§]"!§(0);
         }
         this.§!#4§ = null;
         this.§]$<§ = null;
         this.§5#N§ = null;
         this.§7"N§ = null;
         this.§0!W§ = null;
         this.§,#n§ = null;
         if(this.§]A§)
         {
            this.§]A§.dispose();
            this.§]A§ = null;
         }
         this.§^"b§ = null;
         this.§]#s§ = null;
         if(this.§5"Z§)
         {
            this.§5"Z§.dispose();
            this.§5"Z§ = null;
         }
         if(this.§3"'§)
         {
            this.§3"'§.dispose();
            this.§3"'§ = null;
         }
         if(this.§6u§)
         {
            this.§6u§.dispose();
            this.§6u§ = null;
         }
         while(this.§!#0§.length > 0)
         {
            _loc1_ = this.§!#0§.pop();
            this.§ 6§.textureManager.unregisterBitmapDataTexture(_loc1_);
         }
      }
      
      public function setTexture(param1:Boolean) : void
      {
         this.§^"b§.visible = param1;
         this.§6u§.visible = param1;
      }
      
      public function generateTerrainTexture() : void
      {
         var _loc5_:§4!t§ = null;
         var _loc6_:Rectangle = null;
         var _loc7_:§=Q§ = null;
         var _loc9_:Number = NaN;
         var _loc1_:Rectangle = null;
         var _loc2_:Rectangle = null;
         var _loc3_:Vector.<§=Q§> = new Vector.<§=Q§>();
         var _loc4_:Vector.<§=Q§> = new Vector.<§=Q§>();
         for each(_loc5_ in this.§!#4§)
         {
            if((_loc7_ = _loc5_ as §=Q§) && _loc7_.§[#o§())
            {
               _loc9_ = _loc7_.levelItem.shape.getDimension() / §<d§.§6@§;
               _loc6_ = new Rectangle(_loc5_.sprite.x - _loc9_ / 2,_loc5_.sprite.y - _loc9_ / 2,_loc9_,_loc9_);
               if(_loc7_.§ "0§() == §-"8§.§,V§)
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
            this.§>!Z§(_loc1_,_loc3_,this.§4#>§(),this.§^"b§);
         }
         if(_loc2_)
         {
            this.§>!Z§(_loc2_,_loc4_,this.§9"Z§(),this.§6u§);
         }
      }
      
      private function §>!Z§(param1:Rectangle, param2:Vector.<§=Q§>, param3:String, param4:§#Z§.Sprite) : void
      {
         var _loc5_:Number = this.§ 6§.camera.borderLeft / §<d§.§6@§;
         var _loc6_:Number = this.§ 6§.camera.borderRight / §<d§.§6@§;
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
         this.§!a§(_loc14_.rect,_loc14_,_loc9_ * _loc15_,param3);
         var _loc16_:BitmapData = this.§@!>§(param2,_loc10_,_loc11_,_loc12_,_loc13_,_loc9_);
         _loc14_.copyChannel(_loc16_,_loc16_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
         var _loc17_:Texture = this.§ 6§.textureManager.getTextureFromBitmapData(_loc14_);
         this.§!#0§.push(_loc17_);
         var _loc18_:Image;
         (_loc18_ = new Image(_loc17_)).x = _loc12_ / _loc9_;
         _loc18_.y = _loc13_ / _loc9_;
         _loc18_.scaleX = 1 / _loc9_;
         _loc18_.scaleY = 1 / _loc9_;
         param4.addChild(_loc18_);
         _loc16_.dispose();
      }
      
      private function §@!>§(param1:Vector.<§=Q§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc7_:§=Q§ = null;
         var _loc11_:Number = NaN;
         var _loc12_:§%!a§ = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            _loc10_.identity();
            _loc11_ = param6;
            if((_loc12_ = _loc7_.levelItem.shape) is §+T§)
            {
               this.§8##§(_loc12_,_loc8_,_loc9_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§<!C§(),param6,_loc11_,param4,param5);
            }
            else if(_loc12_ is §'#u§)
            {
               if((_loc12_ as §'#u§).vertices.length == 4)
               {
                  this.§8##§(_loc12_,_loc8_,_loc9_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§<!C§(),param6,_loc11_,param4,param5);
               }
               else if((_loc12_ as §'#u§).vertices.length == 3)
               {
                  this.§+#B§(_loc12_ as §'#u§,_loc8_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§<!C§(),param6,_loc11_,param4,param5);
               }
            }
            else if(_loc12_ is §,#V§)
            {
               this.§5N§(_loc12_ as §,#V§,_loc8_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,param6,_loc11_,param4,param5);
            }
         }
         _loc9_.dispose();
         return _loc8_;
      }
      
      protected function §8##§(param1:§%!a§, param2:BitmapData, param3:BitmapData, param4:Matrix, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Number) : void
      {
         var _loc12_:Number = param1.getWidth() / §<d§.§6@§ * param9;
         var _loc13_:Number = param1.getHeight() / §<d§.§6@§ * param9;
         param4.scale(_loc12_,_loc13_);
         param4.translate(-_loc12_ / 2,-_loc13_ / 2);
         param4.rotate(param7);
         param4.translate(param5 * param8 - param10,param6 * param8 - param11);
         param2.draw(param3,param4);
      }
      
      protected function §+#B§(param1:§'#u§, param2:BitmapData, param3:Matrix, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number) : void
      {
         var _loc14_:b2Vec2 = null;
         var _loc11_:flash.display.Sprite;
         (_loc11_ = new flash.display.Sprite()).graphics.beginFill(16777215);
         var _loc12_:Vector.<Number> = new Vector.<Number>();
         var _loc13_:int = 0;
         while(_loc13_ < param1.vertices.length)
         {
            _loc14_ = param1.vertices[_loc13_];
            _loc12_.push(_loc14_.x / §<d§.§6@§ * param8,_loc14_.y / §<d§.§6@§ * param8);
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
      
      protected function §5N§(param1:§,#V§, param2:BitmapData, param3:Matrix, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number) : void
      {
         var _loc11_:Number = param1.radius / §<d§.§6@§ * param7;
         var _loc12_:flash.display.Sprite;
         (_loc12_ = new flash.display.Sprite()).graphics.beginFill(16777215);
         _loc12_.graphics.drawCircle(_loc11_,_loc11_,_loc11_);
         _loc12_.graphics.endFill();
         param3.translate(param4 * param6 - param8 - _loc11_,param5 * param6 - param9 - _loc11_);
         param2.draw(_loc12_,param3);
         _loc12_.graphics.clear();
         _loc12_ = null;
      }
      
      protected function §4#>§() : String
      {
         return this.§ 6§.background.§&$;§();
      }
      
      protected function §9"Z§() : String
      {
         return this.§ 6§.background.§]2§();
      }
      
      protected function getLevelTextureScale() : Number
      {
         return 1;
      }
      
      private function §!a§(param1:Rectangle, param2:BitmapData, param3:Number, param4:String) : void
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
         var _loc5_:§'!-§;
         if(_loc5_ = this.§ 6§.backgroundTextureManager.getTexture(param4))
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
      
      protected function §"s§(param1:§@$<§, param2:§#Z§.Sprite, param3:§,`§, param4:§-"8§, param5:Number = 1.0, param6:Boolean = true) : §[# §
      {
         var _loc11_:§[# § = null;
         var _loc7_:String = param1.type;
         Number(param1.x);
         Number(param1.y);
         Number(param1.angle);
         switch(_loc7_)
         {
            case "BIRD_BLACK":
               _loc11_ = new §`"=§(param2,param3,this.§ 6§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_BLUE":
               _loc11_ = new §##$§(param2,param3,this.§ 6§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_GREEN":
               _loc11_ = new §5!8§(param2,param3,this.§ 6§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_WHITE":
               _loc11_ = new §>#U§(param2,param3,this.§ 6§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_YELLOW":
               _loc11_ = new §"$6§(param2,param3,this.§ 6§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_RED":
               _loc11_ = new §]"L§(param2,param3,this.§ 6§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_REDBIG":
               _loc11_ = new §%"u§(param2,param3,this.§ 6§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_ORANGE":
               _loc11_ = new §-"!§(param2,param3,this.§ 6§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_SARDINE":
               _loc11_ = new § var§(param2,param3,this.§ 6§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            case "BIRD_MIGHTY_EAGLE":
               _loc11_ = new §]#m§(param2,param3,this.§ 6§.mLevelEngine.mWorld,param4,param1,param5,param6);
               break;
            default:
               _loc11_ = new §[# §(param2,param3,this.§ 6§.mLevelEngine.mWorld,param4,param1,param5,param6);
         }
         return _loc11_;
      }
      
      public function hasBirds() : Boolean
      {
         return this.§!u§ > 0;
      }
      
      protected function addObjectPig(param1:§@$<§, param2:§#Z§.Sprite, param3:§,`§, param4:§-"8§, param5:Number = 1.0) : §&"e§
      {
         return new §&"e§(param2,param3,this.§ 6§.mLevelEngine.mWorld,param4,param1,param5);
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number, param5:int, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0, param10:Boolean = false, param11:Boolean = false, param12:Number = 0.0, param13:b2Vec2 = null, param14:Number = 0.0, param15:Number = 0.0, param16:Boolean = true, param17:Number = 1.0) : §4!t§
      {
         this.§^q§ = new §@$<§();
         this.§^q§.type = param1;
         this.§^q§.x = param2;
         this.§^q§.y = param3;
         this.§^q§.angle = param4;
         this.§^q§.§'"u§ = 0;
         this.§^q§.§%"b§ = 0;
         this.§^q§.angularVelocity = param12;
         this.§^q§.angularDamping = param14;
         this.§^q§.linearDamping = param15;
         this.§^q§.awake = param16;
         this.§^q§.health = param17;
         return this.addObjectFromModel(this.§^q§,param5,param6,param7,param8,param9,param10,param11);
      }
      
      public function §;$>§(param1:String, param2:Number, param3:Number, param4:Number, param5:int, param6:Number = 0.0, param7:Number = 0.0, param8:Number = 1.0, param9:Boolean = false, param10:Boolean = false) : §4!t§
      {
         this.§^q§ = new §@$<§();
         this.§^q§.type = param1;
         this.§^q§.x = param2;
         this.§^q§.y = param3;
         this.§^q§.angle = param4;
         this.§^q§.§'"u§ = param6;
         this.§^q§.§%"b§ = param7;
         return this.addObjectFromModel(this.§^q§,param5,false,false,false,param8,param9,param10);
      }
      
      protected function addObjectFromModel(param1:§@$<§, param2:int, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true, param6:Number = 1.0, param7:Boolean = false, param8:Boolean = false) : §4!t§
      {
         if(this.isFoundEasterEgg(param1.type))
         {
            return null;
         }
         var _loc9_:§#Z§.Sprite = new §#Z§.Sprite();
         var _loc10_:§4!t§;
         if((_loc10_ = this.§!#b§(param1,param2,_loc9_,param5,param6)) == null)
         {
            return null;
         }
         if(_loc10_ is §=Q§ && (_loc10_ as §=Q§).§[#o§())
         {
            _loc9_.visible = !this.§7#c§;
         }
         if(_loc10_ is §[# § && !(_loc10_ is §]#m§))
         {
            ++this.§!u§;
         }
         if(!param7)
         {
            if(param8)
            {
               this.§5"Z§.§'!Q§(_loc9_);
            }
            else
            {
               this.§]#s§.§'!Q§(_loc9_);
            }
         }
         else
         {
            this.§3"'§.§'!Q§(_loc9_);
         }
         if(param3)
         {
            this.§ 6§.§8"F§(_loc10_);
         }
         if(param4)
         {
            this.§]!A§ = §=Q§(_loc10_);
         }
         return _loc10_;
      }
      
      protected function isFoundEasterEgg(param1:String) : Boolean
      {
         return false;
      }
      
      private function §!#b§(param1:§@$<§, param2:int, param3:§#Z§.Sprite, param4:Boolean = true, param5:Number = 1.0) : §4!t§
      {
         var _loc7_:Vector.<§^"B§> = null;
         var _loc8_:§^"B§ = null;
         var _loc10_:§=Q§ = null;
         if(param2 == ID_NEXT_FREE)
         {
            param2 = this.§&P§;
            ++this.§&P§;
         }
         else
         {
            if(param2 >= § "j§)
            {
               throw new Error("Invalid object id: " + param2 + ". Has to be less than " + § "j§);
            }
            if(this.§8#L§(param2))
            {
               throw new Error("Object with id: " + param2 + " already added!");
            }
         }
         var _loc6_:§4!t§;
         if((_loc6_ = this.createObjectInstance(param1,param3,param4,param5)) is §=Q§)
         {
            if((_loc6_ as §=Q§).hasSpecialBehavior)
            {
               _loc7_ = (_loc6_ as §=Q§).§0"^§.getBehaviorsData();
               for each(_loc8_ in _loc7_)
               {
                  if(!this.§ 6§.§>#Z§(_loc8_.type,_loc8_.event))
                  {
                     (_loc6_ as §=Q§).§#">§(this.§ 6§,_loc8_);
                  }
               }
            }
         }
         if(_loc6_ is §[# §)
         {
            ++this.§<H§;
         }
         if(_loc6_)
         {
            _loc10_ = _loc6_ as §=Q§;
            if(_loc6_ is §1c§)
            {
               this.§5#N§.push(_loc6_);
            }
            else
            {
               if(_loc10_)
               {
                  _loc10_.§3!8§(param2);
                  this.§7"N§[param1.instanceName] = _loc6_;
               }
               this.§!#4§.push(_loc6_);
               if(_loc6_ is §5;§)
               {
                  this.§]$<§.push(_loc6_);
               }
            }
            if(this.§,n§)
            {
               this.§,n§.§;"p§(_loc6_);
            }
         }
         return _loc6_;
      }
      
      protected function §;#;§() : String
      {
         return "INGAME_TEXTURE_SAND_1";
      }
      
      protected function createBombBlockInstance(param1:§@$<§, param2:§#Z§.Sprite, param3:§,`§, param4:§-"8§, param5:int, param6:Number = 1.0) : §4!t§
      {
         return new § $A§(param2,param3,this.§ 6§.mLevelEngine.mWorld,param4,param1,param6,param5);
      }
      
      protected function §!"z§(param1:§@$<§, param2:§#Z§.Sprite, param3:§,`§, param4:§-"8§, param5:int, param6:Number = 1.0) : §4!t§
      {
         return new §^#O§(param2,param3,this.§ 6§.mLevelEngine.mWorld,param4,param1,param6,param5);
      }
      
      protected function createObjectInstance(param1:§@$<§, param2:§#Z§.Sprite, param3:Boolean = true, param4:Number = 1.0) : §4!t§
      {
         var _loc5_:§-"8§;
         if(!(_loc5_ = this.§ 6§.levelItemManager.getItem(param1.type)))
         {
            return null;
         }
         var _loc6_:String;
         if((_loc6_ = _loc5_.itemName).substr(0,13) == "BLOCK_STATIC_")
         {
            _loc6_ = this.§;#;§();
         }
         var _loc7_:§,`§ = this.§ 6§.animationManager.getAnimation(_loc6_);
         var _loc8_:§4!t§ = null;
         if(param1.type.indexOf("BIRD") == 0)
         {
            _loc8_ = this.§"s§(param1,param2,_loc7_,_loc5_,param4,param3);
         }
         else if(_loc5_.itemType == §-"8§.§3"J§)
         {
            (_loc8_ = this.addObjectPig(param1,param2,_loc7_,_loc5_,param4)).§+"h§ = true;
         }
         else if(_loc5_.itemType == §-"8§.§""O§ || _loc5_.itemType == §-"8§.§]!w§)
         {
            if(_loc5_.itemName.indexOf("TNT") >= 0)
            {
               _loc8_ = this.createBombBlockInstance(param1,param2,_loc7_,_loc5_,§0#;§.§]$ §,param4);
            }
            else if(_loc5_.itemName == §>#U§.§;"l§)
            {
               _loc8_ = this.§!"z§(param1,param2,_loc7_,_loc5_,§0#;§.§`"9§,param4);
            }
            else
            {
               _loc8_ = new §%N§(param2,_loc7_,this.§ 6§.mLevelEngine.mWorld,_loc5_,param1,param4,_loc5_.particleJSONId,_loc5_.particleVariationCount);
            }
         }
         else
         {
            _loc8_ = new §=Q§(param2,_loc7_,this.§ 6§.mLevelEngine.mWorld,_loc5_,param1,param4);
         }
         return _loc8_;
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean, param4:Number, param5:Number, param6:int, param7:String) : void
      {
         this.§ 6§.addScore(param1,§-V§.§5"§,param3,param4,param5,param6,param7);
      }
      
      public function addParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : void
      {
         this.§ 6§.particles.addParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function addSimpleParticle(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         this.§ 6§.particles.addSimpleParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16);
      }
      
      public function §7!`§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:Number, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : void
      {
         this.§ 6§.particles.§7!`§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function §;m§(param1:§=Q§) : void
      {
         var _loc4_:§6$D§ = null;
         var _loc5_:§6$D§ = null;
         var _loc6_:§4!t§ = null;
         var _loc7_:§4!t§ = null;
         var _loc2_:int = param1.id;
         var _loc3_:int = this.§&$D§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§&$D§[_loc3_];
            if(this.§&$D§[_loc3_].id1 == _loc2_ || this.§&$D§[_loc3_].id2 == _loc2_)
            {
               if(_loc4_.§<!"§)
               {
                  _loc6_ = _loc4_.§<!"§.§""V§().GetUserData() as §4!t§;
                  _loc7_ = _loc4_.§<!"§.§""?§().GetUserData() as §4!t§;
                  if(_loc6_)
                  {
                     _loc6_.attachedJointRemoved(_loc7_);
                  }
                  if(_loc7_)
                  {
                     _loc7_.attachedJointRemoved(_loc6_);
                  }
               }
               _loc5_ = this.§&$D§.pop();
               if(_loc3_ < this.§&$D§.length)
               {
                  this.§&$D§[_loc3_] = _loc5_;
               }
               this.§0!#§(_loc4_);
            }
            _loc3_--;
         }
      }
      
      protected function §0#t§(param1:§0$=§, param2:Boolean = false) : §6$D§
      {
         var _loc3_:int = param1.id1;
         var _loc4_:int = param1.id2;
         var _loc5_:§6$D§;
         (_loc5_ = §6$D§.§0#t§(param1)).§6!c§ = param2;
         this.§&$D§.push(_loc5_);
         var _loc6_:§4!t§ = this.§8#L§(_loc3_);
         var _loc7_:§4!t§ = this.§8#L§(_loc4_);
         if(_loc6_ && _loc7_)
         {
            if(_loc5_.type != §0$=§.§6$7§)
            {
               _loc5_.§<!"§ = this.§ 6§.mLevelEngine.mWorld.§@Z§(_loc5_.§'L§(_loc6_,_loc7_));
               if(_loc5_.type == §0$=§.§="s§ && _loc5_.destroyChild)
               {
                  this.§0!W§.push(new §5#>§(_loc3_,_loc4_,_loc5_.annihilationTime,param1.isOneWayDestroyed,param1.distanceToDestroyChild));
               }
            }
            else
            {
               this.§0!W§.push(new §5#>§(_loc3_,_loc4_,_loc5_.annihilationTime,param1.isOneWayDestroyed,param1.distanceToDestroyChild));
            }
            _loc6_.attachedJointCreated(_loc7_);
            _loc7_.attachedJointCreated(_loc6_);
         }
         return _loc5_;
      }
      
      protected function §0!#§(param1:§6$D§) : void
      {
         if(param1.§<!"§)
         {
            this.§ 6§.mLevelEngine.mWorld.§<"<§(param1.§<!"§);
         }
         if(param1.§;#d§)
         {
            if(this.§]#s§.contains(param1.§;#d§))
            {
               this.§]#s§.removeChild(param1.§;#d§,true);
            }
         }
      }
      
      public function addExplosion(param1:int, param2:Number, param3:Number, param4:int = -1) : void
      {
         this.§]#&§.push(§0#;§.createExplosion(param1,param2,param3,param4));
         this.playExplosionSound(param1);
      }
      
      protected function playExplosionSound(param1:int) : void
      {
         §4$4§.playSound("tnt_box_explodes","ChannelExplosions");
      }
      
      public function §]#i§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = -1, param8:Boolean = true, param9:Boolean = true) : void
      {
         this.§]#&§.push(§0#;§.§?=§(param1,param2,param3,param4,param5,param6,param7,param8));
         if(param9)
         {
            §4$4§.playSound("tnt_box_explodes","ChannelExplosions");
         }
      }
      
      public function getForceAtPoint(param1:Number, param2:Number, param3:Number, param4:b2Vec2) : b2Vec2
      {
         if(!param4)
         {
            param4 = new b2Vec2();
         }
         param4.SetV(this.§ 6§.mLevelEngine.mWorld.GetGravity());
         return param4;
      }
      
      public function get §5D§() : Number
      {
         return this.§ 6§.§5D§;
      }
      
      public function §@"q§(param1:Number, param2:Number) : int
      {
         var _loc4_:§=Q§ = null;
         var _loc3_:int = this.§!#4§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§!#4§[_loc3_] as §=Q§) && _loc4_.isInCoordinates(param1,param2))
            {
               return _loc3_;
            }
            _loc3_--;
         }
         return -1;
      }
      
      public function getObjectFromPoint(param1:Number, param2:Number) : §=Q§
      {
         var _loc4_:§=Q§ = null;
         var _loc3_:int = this.§!#4§.length - 1;
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§!#4§[_loc3_] as §=Q§)
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
      
      public function §`"N§(param1:Number, param2:Number) : Vector.<§=Q§>
      {
         var _loc5_:§=Q§ = null;
         var _loc3_:Vector.<§=Q§> = new Vector.<§=Q§>();
         var _loc4_:int = this.§!#4§.length - 1;
         while(_loc4_ >= 0)
         {
            if((_loc5_ = this.§!#4§[_loc4_] as §=Q§) && _loc5_.isInCoordinates(param1,param2))
            {
               _loc3_.push(_loc5_);
            }
            _loc4_--;
         }
         return _loc3_;
      }
      
      public function getObject(param1:int) : §4!t§
      {
         return this.§!#4§[param1];
      }
      
      public function §8#L§(param1:int) : §=Q§
      {
         var _loc2_:§4!t§ = null;
         var _loc3_:§=Q§ = null;
         for each(_loc2_ in this.§!#4§)
         {
            _loc3_ = _loc2_ as §=Q§;
            if(_loc3_ && _loc3_.id == param1)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function §!!U§(param1:String) : §=Q§
      {
         return this.§7"N§[param1];
      }
      
      public function renderObjects(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:int = this.§!#4§.length - 1;
         while(_loc4_ >= 0)
         {
            this.§!#4§[_loc4_].render(param1,param2,param3);
            _loc4_--;
         }
         this.updateParticles(param1);
         _loc4_ = this.§5#N§.length - 1;
         while(_loc4_ >= 0)
         {
            this.§5#N§[_loc4_].render(param1,param2,param3);
            _loc4_--;
         }
      }
      
      protected function getExplosionDamageMultiplier(param1:Number, param2:Number) : Number
      {
         return 1 / param1;
      }
      
      protected function getExplosionDistanceToObject(param1:Number, param2:Number, param3:§=Q§) : §>"f§
      {
         var _loc4_:b2Vec2;
         var _loc5_:Number = (_loc4_ = param3.getBody().GetPosition()).x - param1;
         var _loc6_:Number = _loc4_.y - param2;
         var _loc7_:Number = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         var _loc8_:§>"f§;
         (_loc8_ = §>"f§.getObject()).§6V§ = _loc7_;
         _loc8_.§&$-§.x = _loc4_.x;
         _loc8_.§&$-§.y = _loc4_.y;
         return _loc8_;
      }
      
      protected function applyExplosionDamage(param1:§=Q§, param2:Number, param3:Boolean = false) : void
      {
         param1.applyDamage(param2,this,null,param3);
      }
      
      protected function ignoreExplosion(param1:§=Q§, param2:int) : Boolean
      {
         return false;
      }
      
      protected function §'!K§() : void
      {
         var _loc2_:§0#;§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc8_:§=Q§ = null;
         var _loc9_:§>"f§ = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         if(!this.§4V§)
         {
            return;
         }
         var _loc1_:Point = new Point();
         while(this.§]#&§.length > 0)
         {
            _loc2_ = this.§]#&§.shift();
            _loc3_ = _loc2_.§ "E§;
            _loc4_ = _loc2_.x;
            _loc5_ = _loc2_.y;
            _loc6_ = _loc2_.damage;
            this.shakeCameraOnExplosion(_loc2_.push);
            var _loc14_:int = 0;
            var _loc15_:* = this.§!#4§;
            while(§§hasnext(_loc15_,_loc14_))
            {
               if((_loc8_ = §§nextvalue(_loc14_,_loc15_) as §=Q§) && !this.ignoreExplosion(_loc8_,_loc2_.type))
               {
                  if((_loc9_ = this.getExplosionDistanceToObject(_loc4_,_loc5_,_loc8_)).§6V§ <= _loc2_.§ "E§)
                  {
                     _loc10_ = _loc2_.push * this.getExplosionDamageMultiplier(_loc9_.§6V§,_loc2_.§ "E§);
                     if(_loc9_.§6V§ > 0)
                     {
                        _loc1_.x = _loc9_.§&$-§.x - _loc4_;
                        _loc1_.y = _loc9_.§&$-§.y - _loc5_;
                        _loc1_.normalize(1);
                        _loc11_ = _loc10_ * _loc1_.x;
                        _loc12_ = _loc10_ * _loc1_.y;
                        _loc8_.getBody().ApplyImpulse(new b2Vec2(_loc11_,_loc12_),new b2Vec2(_loc9_.§&$-§.x,_loc9_.§&$-§.y));
                     }
                  }
                  if(_loc9_.§6V§ <= _loc2_.damageRadius)
                  {
                     _loc13_ = _loc6_ * this.getExplosionDamageMultiplier(_loc9_.§6V§,_loc2_.damageRadius);
                     if(isNaN(_loc13_))
                     {
                        _loc13_ = 0;
                     }
                     this.applyExplosionDamage(_loc8_,_loc13_);
                  }
                  §>"f§.§^$'§(_loc9_);
               }
            }
            if(_loc2_.§!#Z§)
            {
               this.updateExplosionEffects(_loc2_,_loc4_,_loc5_,_loc3_);
            }
         }
      }
      
      protected function updateExplosionEffects(param1:§0#;§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         this.§ 6§.particles.addParticle(this.getMainExplosionCoreName(param1.type),§2#Z§.PARTICLE_GROUP_GAME_EFFECTS,§`#I§.PARTICLE_TYPE_STATIC_PARTICLE,param2,param3,600,"",§`#I§.§@!T§,0,0,0,0,1,20,true);
         var _loc5_:int = 30;
         while(_loc5_ < 150)
         {
            _loc6_ = 0.75 * param4 + Math.random() * param4;
            _loc7_ = 1250 + Math.random() * 750;
            _loc8_ = _loc5_ / (180 / Math.PI);
            this.§ 6§.particles.addParticle(§`#I§.§^!+§,§2#Z§.PARTICLE_GROUP_GAME_EFFECTS,§`#I§.PARTICLE_TYPE_KINETIC_PARTICLE,param2,param3,_loc7_,"",§`#I§.§@!T§,_loc6_ * Math.cos(_loc8_),-_loc6_ * Math.sin(_loc8_),20,0);
            _loc5_ += 5;
         }
      }
      
      protected function getMainExplosionCoreName(param1:int) : String
      {
         switch(0)
         {
         }
         return §`#I§.§"#1§;
      }
      
      public function updateObjects(param1:Number) : void
      {
         var _loc4_:§=Q§ = null;
         var _loc2_:§4!t§ = null;
         var _loc3_:int = this.§!#4§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§!#4§[_loc3_];
            if(_loc2_.removeOnNextUpdate)
            {
               this.§4"O§(_loc3_,true);
            }
            else
            {
               this.§<"i§(_loc2_,param1);
               _loc4_ = _loc2_ as §=Q§;
               if(this.§!"p§(_loc2_))
               {
                  this.§4"O§(_loc3_,!(_loc4_ is §[# §));
               }
               else if(_loc4_ && _loc4_.isReadyToBeRemoved(param1))
               {
                  this.§4"O§(_loc3_,false);
               }
            }
            _loc3_--;
         }
         this.§-!1§(param1);
         this.§'!K§();
         if(this.§,n§)
         {
            this.§,n§.update(param1);
         }
      }
      
      protected function §<"i§(param1:§4!t§, param2:Number) : void
      {
         param1.update(param2,this);
      }
      
      protected function updateParticles(param1:Number) : void
      {
         var _loc2_:§1c§ = null;
         var _loc3_:int = this.§5#N§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§5#N§[_loc3_];
            if(_loc2_.removeOnNextUpdate)
            {
               this.§]"!§(_loc3_);
            }
            else
            {
               _loc2_.update(param1,this);
            }
            _loc3_--;
         }
      }
      
      protected function §-!1§(param1:Number) : void
      {
         this.§4"&§(param1);
         this.§<!#§();
      }
      
      protected function §4"&§(param1:Number) : void
      {
         var _loc3_:§5#>§ = null;
         var _loc4_:§4!t§ = null;
         var _loc5_:§4!t§ = null;
         var _loc6_:b2Vec2 = null;
         var _loc7_:b2Vec2 = null;
         var _loc2_:int = this.§0!W§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§0!W§[_loc2_];
            if(_loc3_.§]"`§)
            {
               if(!_loc3_.update(param1))
               {
                  if(!_loc3_.isOneWayDestroyed)
                  {
                     _loc4_ = this.§8#L§(_loc3_.objectId1);
                     this.removeObject(_loc4_,true);
                  }
                  if(_loc4_ = this.§8#L§(_loc3_.objectId2))
                  {
                     this.removeObject(_loc4_,true);
                  }
                  this.§0!W§.splice(_loc2_,1);
               }
            }
            else if(_loc3_.distanceToDestroyChild > 0)
            {
               if((_loc4_ = this.§8#L§(_loc3_.objectId1)) && (_loc4_.getBody().GetLinearVelocity().x > 0 || _loc4_.getBody().GetLinearVelocity().y > 0))
               {
                  if(_loc5_ = this.§8#L§(_loc3_.objectId2))
                  {
                     _loc6_ = _loc4_.getBody().GetPosition();
                     _loc7_ = _loc5_.getBody().GetPosition();
                     if(Number(Math.sqrt((_loc6_.x - _loc7_.x) * (_loc6_.x - _loc7_.x) + (_loc6_.y - _loc7_.y) * (_loc6_.y - _loc7_.y))) > _loc3_.distanceToDestroyChild)
                     {
                        _loc3_.§]"`§ = true;
                     }
                  }
               }
            }
            _loc2_--;
         }
      }
      
      private function §"!,§(param1:§6$D§) : void
      {
         var _loc2_:§=Q§ = param1.debug_object_1;
         var _loc3_:§=Q§ = param1.debug_object_2;
         if(!_loc2_)
         {
            _loc2_ = this.§8#L§(param1.id1);
            param1.debug_object_1 = _loc2_;
         }
         if(!_loc3_)
         {
            _loc3_ = this.§8#L§(param1.id2);
            param1.debug_object_2 = _loc3_;
         }
         var _loc4_:Number = _loc2_.sprite.x;
         var _loc5_:Number = _loc2_.sprite.y;
         var _loc6_:Number = _loc3_.sprite.x;
         var _loc7_:Number = _loc3_.sprite.y;
         var _loc8_:Number = Math.sqrt((_loc6_ - _loc4_) * (_loc6_ - _loc4_) + (_loc7_ - _loc5_) * (_loc7_ - _loc5_));
         var _loc9_:Number = Math.atan2(_loc7_ - _loc5_,_loc6_ - _loc4_);
         if(param1.§;#d§ == null)
         {
            param1.§;#d§ = new §6J§(4,4,4294901760);
            this.§]#s§.addChild(param1.§;#d§);
         }
         param1.§;#d§.x = _loc4_;
         param1.§;#d§.y = _loc5_;
         param1.§;#d§.width = _loc8_;
         param1.§;#d§.rotation = _loc9_;
      }
      
      protected function §4#7§(param1:Number, param2:Number, param3:Number) : Number
      {
         return 0.01;
      }
      
      private function §<!#§() : void
      {
         var _loc1_:§6$D§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         for each(_loc1_ in this.§&$D§)
         {
            if(§3"w§)
            {
               this.§"!,§(_loc1_);
            }
            if(_loc1_.§1#y§ && _loc1_.§4"H§ && _loc1_.§`#`§)
            {
               _loc2_ = _loc1_.lowerLimit;
               _loc3_ = _loc1_.upperLimit;
               if(_loc1_.type == §0$=§.§<"'§)
               {
                  _loc4_ = (_loc1_.§<!"§ as b2PrismaticJoint).§-#k§();
                  _loc5_ = (_loc1_.§<!"§ as b2PrismaticJoint).§`#l§();
                  _loc6_ = this.§4#7§(_loc3_,_loc2_,_loc5_);
                  if(_loc5_ > 0 && _loc4_ >= _loc3_ - _loc6_ || _loc5_ < 0 && _loc4_ <= _loc2_ + _loc6_)
                  {
                     (_loc1_.§<!"§ as b2PrismaticJoint).§6#"§(-_loc5_);
                  }
               }
               else if(_loc1_.type == §0$=§.§%!A§)
               {
                  _loc7_ = (_loc1_.§<!"§ as b2RevoluteJoint).§<U§();
                  if((_loc5_ = (_loc1_.§<!"§ as b2RevoluteJoint).§`#l§()) > 0 && _loc7_ >= _loc3_ || _loc5_ < 0 && _loc7_ <= _loc2_)
                  {
                     (_loc1_.§<!"§ as b2RevoluteJoint).§6#"§(-_loc5_);
                  }
               }
            }
         }
      }
      
      public function destroyAllJoints() : void
      {
         var _loc1_:§6$D§ = null;
         while(this.§&$D§.length > 0)
         {
            _loc1_ = this.§&$D§.pop();
            this.§0!#§(_loc1_);
         }
      }
      
      public function §!"p§(param1:§4!t§) : Boolean
      {
         this.§`#f§(param1);
         if(param1 && (!param1.levelItem || param1.levelItem.getItemBodyType() != §5!,§.BODY_TYPE_STATIC) && param1.getBody() && this.§3#Y§(param1.getBody().GetPosition().x,param1.getBody().GetPosition().y))
         {
            if(param1 is §=Q§)
            {
               §=Q§(param1).updateOutOfBounds(this);
            }
            return true;
         }
         return false;
      }
      
      protected function §`#f§(param1:§4!t§) : void
      {
      }
      
      public function §'§(param1:Number, param2:Number) : Boolean
      {
         return this.§ 6§.camera.§!!l§(param1,param2);
      }
      
      public function §3#Y§(param1:Number, param2:Number) : Boolean
      {
         return this.§ 6§.§%?§.§^#,§(param1,param2);
      }
      
      public function §]"!§(param1:int) : void
      {
         if(param1 < 0)
         {
            return;
         }
         var _loc2_:§1c§ = this.§5#N§[param1];
         this.§4$!§(_loc2_.sprite);
         this.§5#N§[param1] = null;
         this.§5#N§.splice(param1,1);
         _loc2_.dispose();
         _loc2_ = null;
      }
      
      protected function shouldShowScoreText(param1:§=Q§) : Boolean
      {
         return true;
      }
      
      protected function getScoreTextPosition(param1:§=Q§) : Point
      {
         var _loc2_:Number = param1.getBody().GetPosition().x;
         var _loc3_:Number = param1.getBody().GetPosition().y - 3;
         return new Point(_loc2_,_loc3_);
      }
      
      public function §4"O§(param1:int, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc5_:§=Q§ = null;
         var _loc6_:Point = null;
         var _loc7_:int = 0;
         var _loc8_:Boolean = false;
         var _loc9_:int = 0;
         if(param1 < 0)
         {
            return;
         }
         var _loc4_:§4!t§;
         if((_loc4_ = this.§!#4§[param1]) is §&"e§)
         {
            ++this.§ x§;
         }
         else if(_loc4_ is §[# §)
         {
            --this.§!u§;
         }
         if(_loc4_ == this.§]!A§)
         {
            this.§]!A§ = null;
         }
         if(_loc4_ is §=Q§)
         {
            _loc5_ = _loc4_ as §=Q§;
            if(param2)
            {
               _loc6_ = this.getScoreTextPosition(_loc5_);
               _loc7_ = §`#I§.§`#i§(_loc5_.itemName,_loc5_.§+"h§);
               _loc8_ = this.shouldShowScoreText(_loc5_);
               if(_loc5_.levelItem.destroyedScoreInc > 0)
               {
                  this.§ 6§.addScore(_loc5_.levelItem.destroyedScoreInc,§-V§.§34§,_loc8_,_loc6_.x,_loc6_.y,_loc7_,_loc5_.levelItem.floatingScoreFont);
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
            this.§;m§(_loc5_);
            this.removeDestroyedAttachedJoints(_loc5_);
            delete this.§7"N§[_loc5_.§0"^§.instanceName];
         }
         this.§4$!§(_loc4_.sprite);
         this.§!#4§[param1] = null;
         this.§!#4§.splice(param1,1);
         if(_loc4_ is §5;§)
         {
            if((_loc9_ = this.§]$<§.indexOf(§5;§(_loc4_))) >= 0)
            {
               this.§]$<§.splice(_loc9_,1);
            }
         }
         if(this.§,n§)
         {
            this.§,n§.§@R§(_loc4_);
         }
         if(!param3)
         {
            this.§@R§(_loc4_);
         }
         _loc4_.dispose();
         _loc4_ = null;
      }
      
      protected function removeDestroyedAttachedJoints(param1:§=Q§) : void
      {
         var _loc2_:§5#>§ = null;
         for each(_loc2_ in this.§0!W§)
         {
            if(_loc2_.objectId1 == param1.id || _loc2_.objectId2 == param1.id)
            {
               _loc2_.§]"`§ = true;
            }
         }
      }
      
      protected function §@R§(param1:§4!t§) : void
      {
         var _loc2_:§=Q§ = null;
         var _loc3_:§@$<§ = null;
         var _loc4_:Vector.<§3s§> = null;
         var _loc5_:int = 0;
         var _loc6_:§3s§ = null;
         if(param1 is §=Q§)
         {
            _loc2_ = param1 as §=Q§;
            _loc3_ = _loc2_.§0"^§;
            if(_loc3_)
            {
               if(_loc4_ = _loc3_.getEvents())
               {
                  _loc5_ = 0;
                  while(_loc5_ < _loc4_.length)
                  {
                     if((_loc6_ = _loc4_[_loc5_]).§>!X§ == §?q§)
                     {
                        this.§ 6§.§'"a§(_loc6_);
                     }
                     _loc5_++;
                  }
               }
            }
         }
      }
      
      protected function §%$8§(param1:§=Q§, param2:String, param3:String) : void
      {
         if(param1)
         {
            param1.§=!]§(param2,param3,this);
         }
      }
      
      protected function §4$!§(param1:§#Z§.Sprite) : void
      {
         if(param1 && param1.parent)
         {
            param1.parent.removeChild(param1);
         }
      }
      
      public function removeObject(param1:§4!t§, param2:Boolean = false, param3:Boolean = false) : void
      {
         if(param1)
         {
            this.§4"O§(this.§!#4§.indexOf(param1),param2,param3);
         }
      }
      
      public function §'D§(param1:§4!t§, param2:String) : §4!t§
      {
         var _loc7_:§=Q§ = null;
         var _loc8_:int = 0;
         var _loc3_:int = this.§!#4§.indexOf(param1);
         if(_loc3_ < 0)
         {
            return null;
         }
         var _loc4_:§4!t§;
         var _loc5_:b2Body = (_loc4_ = this.§!#4§[_loc3_]).getBody();
         var _loc6_:§4!t§;
         ((_loc6_ = this.addObject(param2,_loc5_.GetPosition().x,_loc5_.GetPosition().y,_loc5_.GetAngle() / Math.PI * 180,§%"^§.ID_NEXT_FREE,false,false,false,1,false)) as §=Q§).§^!2§(_loc4_.getBody());
         (_loc6_ as §=Q§).§^l§(_loc4_.getBody().GetAngularVelocity());
         if(_loc4_ == this.§]!A§)
         {
            this.§]!A§ = null;
         }
         if(_loc4_ is §=Q§)
         {
            (_loc7_ = _loc4_ as §=Q§).updateBeforeRemoving(null,true);
            this.§;m§(_loc7_);
            this.removeDestroyedAttachedJoints(_loc7_);
            delete this.§7"N§[_loc7_.§0"^§.instanceName];
         }
         this.§4$!§(_loc4_.sprite);
         this.§!#4§[_loc3_] = null;
         this.§!#4§.splice(_loc3_,1);
         if(_loc4_ is §5;§)
         {
            if((_loc8_ = this.§]$<§.indexOf(§5;§(_loc4_))) >= 0)
            {
               this.§]$<§.splice(_loc8_,1);
            }
         }
         if(this.§,n§)
         {
            this.§,n§.§@R§(_loc4_);
         }
         _loc4_.dispose(false);
         _loc4_ = null;
         return _loc6_;
      }
      
      public function §9n§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§ 6§.§6$#§();
         }
      }
      
      public function §7"f§(param1:Boolean, param2:Number = 0, param3:Number = 0, param4:Number = 0) : void
      {
         this.§ 6§.§7"f§(param1,param2,param3,param4);
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         this.§]A§.x = -param1;
         this.§]A§.y = -param2;
         this.§3"'§.x = -param1;
         this.§3"'§.y = -param2;
         this.§5"Z§.x = -param1;
         this.§5"Z§.y = -param2;
         this.§6u§.x = -param1;
         this.§6u§.y = -param2;
      }
      
      public function isLevelGoalObjectsAlive() : Boolean
      {
         var _loc2_:§4!t§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§!#4§.length)
         {
            _loc2_ = this.§!#4§[_loc1_];
            if(_loc2_)
            {
               if(_loc2_.§+"h§)
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
         var _loc2_:§4!t§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§!#4§.length)
         {
            _loc2_ = this.§!#4§[_loc1_];
            if(_loc2_ && _loc2_ is §&"e§ && (_loc2_ as §&"e§).health > 0)
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      public function getPigCount(param1:Boolean = false) : int
      {
         var _loc4_:§&"e§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = this.§!#4§.length - 1;
         while(_loc3_ >= 0)
         {
            if((_loc4_ = this.§!#4§[_loc3_] as §&"e§) && _loc4_.health > 0)
            {
               if(!param1 || !_loc4_.§-#8§ && !_loc4_.§#$8§)
               {
                  _loc2_++;
               }
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function §"!7§() : Array
      {
         var _loc2_:§=Q§ = null;
         this.§,#n§.length = 0;
         var _loc1_:int = this.§!#4§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§!#4§[_loc1_] as §=Q§;
            if(_loc2_ && _loc2_.health > 0)
            {
               if(_loc2_.§#!W§())
               {
                  this.§,#n§.push(_loc1_);
               }
            }
            _loc1_--;
         }
         return this.§,#n§;
      }
      
      public function §!i§() : int
      {
         var _loc2_:§=Q§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§!#4§)
         {
            if(_loc2_ is §%N§)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §'#3§() : int
      {
         var _loc2_:§=Q§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§!#4§)
         {
            if(_loc2_ && _loc2_.§[#o§())
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function makePigsSmile(param1:Number = 1) : void
      {
         var _loc3_:§&"e§ = null;
         var _loc2_:int = this.§!#4§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§!#4§[_loc2_] as §&"e§;
            if(_loc3_ && _loc3_.health > 0)
            {
               _loc3_.scream();
            }
            _loc2_--;
         }
      }
      
      public function §'!J§() : Boolean
      {
         var _loc2_:§[# § = null;
         var _loc1_:int = this.§!#4§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§!#4§[_loc1_] as §[# §;
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
         var _loc2_:§=Q§ = null;
         var _loc1_:int = this.§!#4§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§!#4§[_loc1_] as §=Q§;
            if(_loc2_ != null && _loc2_.health > 0 && !_loc2_.§0#o§())
            {
               if(_loc2_.isDamageAwardingScore() && !_loc2_.§ A§())
               {
                  return false;
               }
               if(_loc2_ is §[# § && _loc2_.health > 0)
               {
                  return false;
               }
            }
            _loc1_--;
         }
         return true;
      }
      
      public function §3$&§(param1:Boolean = false) : §&"e§
      {
         var _loc7_:§&"e§ = null;
         var _loc2_:int = this.§!#4§.length;
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
            if((_loc7_ = this.§!#4§[_loc6_] as §&"e§) && _loc7_.health > 0)
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
      
      public function §,Q§() : §=Q§
      {
         var _loc3_:§=Q§ = null;
         var _loc4_:int = 0;
         var _loc1_:§=Q§ = null;
         if(this.§0"!§ == null)
         {
            this.§0"!§ = [];
         }
         this.§0"!§.length = 0;
         var _loc2_:int = this.§!#4§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§!#4§[_loc2_] as §=Q§;
            if(_loc3_)
            {
               if(_loc3_.health > 0 && _loc3_.§&#"§)
               {
                  this.§0"!§.push(_loc3_);
               }
            }
            _loc2_--;
         }
         if(this.§0"!§.length > 0)
         {
            _loc4_ = Math.random() * this.§0"!§.length;
            _loc1_ = this.§0"!§[_loc4_];
         }
         return _loc1_;
      }
      
      public function §&!t§() : int
      {
         var _loc3_:§=Q§ = null;
         var _loc1_:int = 0;
         var _loc2_:int = this.§!#4§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§!#4§[_loc2_] as §=Q§;
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
         return int(_loc1_ + this.§ 6§.slingshot.§&!t§());
      }
      
      protected function §?"L§(param1:§4!t§, param2:§4!t§) : Boolean
      {
         if(param1 is §=Q§ && param2 is §=Q§ && !(param1 as §=Q§).§%!^§() && !(param2 as §=Q§).§%!^§())
         {
            return false;
         }
         return true;
      }
      
      protected function hasMinimumCollisionSpeed(param1:§4!t§, param2:§4!t§) : Boolean
      {
         return this.§?"L§(param1,param2);
      }
      
      public function §!#W§() : void
      {
         this.§!u§ = 0;
      }
      
      protected function shakeCameraOnCollision(param1:Number, param2:Number, param3:Number) : void
      {
      }
      
      protected function shakeCameraOnExplosion(param1:Number) : void
      {
      }
      
      protected function getCollisionDamageFactor(param1:§=Q§, param2:§=Q§) : Number
      {
         var _loc3_:Number = NaN;
         if(param2 is §[# §)
         {
            return 1;
         }
         if(param1 is §[# §)
         {
            return Number(param1.§7p§(param2.§!#'§()));
         }
         return 1;
      }
      
      protected function getCollisionForceFactor(param1:§=Q§, param2:§=Q§) : Number
      {
         if(param2 is §[# §)
         {
            return 0;
         }
         return 1;
      }
      
      protected function §0$2§(param1:§=Q§, param2:§=Q§) : Number
      {
         var _loc4_:Number = this.getCollisionForceFactor(param1,param2);
         var _loc5_:Number = this.getCollisionForceFactor(param2,param1);
         var _loc6_:Number = param1.getBody().GetMass();
         var _loc7_:Number = param2.getBody().GetMass();
         var _loc8_:b2Vec2 = param1.§%!8§();
         var _loc9_:b2Vec2 = param2.§%!8§();
         var _loc10_:Number = _loc4_ * _loc6_ * _loc8_.x - _loc5_ * _loc7_ * _loc9_.x;
         var _loc11_:Number = _loc4_ * _loc6_ * _loc8_.y - _loc5_ * _loc7_ * _loc9_.y;
         return Number(Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_) / 10);
      }
      
      public function §2!W§(param1:§=Q§, param2:§=Q§) : Boolean
      {
         if(param2 is §##$§ && param1 is §##$§)
         {
            return true;
         }
         return false;
      }
      
      public function objectCollision(param1:§4!t§, param2:§4!t§, param3:b2Contact) : Boolean
      {
         var _loc15_:§6$D§ = null;
         var _loc16_:b2JointEdge = null;
         var _loc17_:b2JointEdge = null;
         var _loc18_:b2Joint = null;
         var _loc19_:b2JointEdge = null;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         if(!this.§4V§)
         {
            return false;
         }
         param1.collidedWith(param2);
         param2.collidedWith(param1);
         var _loc4_:§=Q§ = param1 as §=Q§;
         var _loc5_:§=Q§ = param2 as §=Q§;
         if(!_loc4_ || !_loc5_)
         {
            return true;
         }
         if(_loc4_.destroysCollidingObjects || _loc5_.§`"Q§)
         {
            _loc5_.applyDamage(_loc5_.§,D§ * 2,this,_loc4_,true);
            _loc4_.causedDamageToObjects();
            return true;
         }
         if(_loc5_.destroysCollidingObjects || _loc4_.§`"Q§)
         {
            _loc4_.applyDamage(_loc4_.§,D§ * 2,this,_loc5_,true);
            _loc5_.causedDamageToObjects();
            return true;
         }
         if(!this.hasMinimumCollisionSpeed(_loc4_,_loc5_))
         {
            return false;
         }
         if(this.§2!W§(_loc4_,_loc5_))
         {
            return false;
         }
         var _loc6_:Number = this.§0$2§(_loc4_,_loc5_);
         var _loc7_:Number = Math.max(0,_loc4_.health);
         var _loc8_:Number = Math.max(0,_loc5_.health);
         if(!_loc4_.§!"B§ && !_loc5_.§!"B§)
         {
            this.shakeCameraOnCollision(_loc6_,_loc7_,_loc8_);
         }
         var _loc9_:Number = this.getCollisionDamageFactor(_loc4_,_loc5_);
         var _loc10_:Number = this.getCollisionDamageFactor(_loc5_,_loc4_);
         var _loc11_:Number = _loc6_ * _loc10_;
         var _loc12_:Number = _loc6_ * _loc9_;
         var _loc13_:Number = _loc11_ > 0 ? Number(_loc4_.applyDamage(_loc11_,this,_loc5_,true)) : Number(_loc4_.health);
         var _loc14_:Number = _loc12_ > 0 ? Number(_loc5_.applyDamage(_loc12_,this,_loc4_,true)) : Number(_loc5_.health);
         loop0:
         for each(_loc15_ in this.§&$D§)
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
                     if(_loc18_ == _loc15_.§<!"§)
                     {
                        this.§0!#§(_loc15_);
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
                  while(true)
                  {
                     if(_loc18_ && _loc19_)
                     {
                        if(_loc18_ == _loc15_.§<!"§)
                        {
                           break;
                        }
                        if(_loc19_)
                        {
                           continue;
                        }
                     }
                     continue loop0;
                  }
                  this.§0!#§(_loc15_);
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
         if(_loc4_ is §[# §)
         {
            if(_loc14_ <= 0)
            {
               if(!_loc5_.disableBirdPassThrough)
               {
                  _loc20_ = _loc4_.§9!`§(_loc5_.§!#'§());
                  this.§4C§(_loc4_ as §[# §,_loc6_ * _loc9_,_loc8_,_loc20_);
               }
               return false;
            }
         }
         if(_loc5_ is §[# §)
         {
            if(_loc13_ <= 0)
            {
               if(!_loc4_.disableBirdPassThrough)
               {
                  _loc21_ = _loc5_.§9!`§(_loc4_.§!#'§());
                  this.§4C§(_loc5_ as §[# §,_loc6_ * _loc10_,_loc7_,_loc21_);
               }
               return false;
            }
         }
         return _loc13_ <= 0 && _loc14_ <= 0;
      }
      
      public function objectCollisionEnded(param1:§4!t§, param2:§4!t§) : void
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
      
      protected function §4C§(param1:§[# §, param2:Number, param3:Number, param4:Number) : void
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
         var _loc6_:b2Vec2 = param1.§%!8§();
         param1.§;"c§(new b2Vec2(_loc6_.x * _loc5_,_loc6_.y * _loc5_));
      }
      
      public function §06§() : void
      {
         var _loc2_:§=Q§ = null;
         var _loc1_:int = this.§!#4§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§!#4§[_loc1_] as §=Q§;
            if(_loc2_ && _loc2_.§+"h§)
            {
               this.§4"O§(_loc1_,true);
            }
            _loc1_--;
         }
      }
      
      public function §;"d§() : void
      {
         var _loc2_:§=Q§ = null;
         var _loc1_:int = this.§!#4§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§!#4§[_loc1_] as §=Q§;
            if(_loc2_ != null && _loc2_.isTnt())
            {
               this.§4"O§(_loc1_,true);
            }
            _loc1_--;
         }
      }
      
      public function §,=§() : int
      {
         return this.§!#4§.length;
      }
      
      public function §,$-§(param1:§ ^§) : void
      {
         var _loc4_:§=Q§ = null;
         var _loc5_:§@$<§ = null;
         var _loc6_:Vector.<§3s§> = null;
         var _loc7_:§0$=§ = null;
         var _loc8_:§6$D§ = null;
         var _loc2_:Number = 0;
         while(_loc2_ < this.§!#4§.length)
         {
            if(_loc4_ = this.§!#4§[_loc2_] as §=Q§)
            {
               if(_loc4_.§#!4§)
               {
                  if(!_loc4_.§0#o§())
                  {
                     (_loc5_ = new §@$<§()).angle = _loc4_.§<!C§() / (Math.PI / 180);
                     _loc5_.id = _loc4_.id;
                     _loc5_.type = _loc4_.itemName;
                     if(_loc4_.itemName == §?#6§.§&";§)
                     {
                        _loc5_.type = (_loc4_ as §?#6§).§`"Z§;
                     }
                     _loc5_.x = _loc4_.getBody().GetPosition().x;
                     _loc5_.y = _loc4_.getBody().GetPosition().y;
                     if(!_loc4_.§[#o§())
                     {
                        _loc5_.z = _loc4_.§,"L§();
                     }
                     if(_loc4_.§>w§())
                     {
                        _loc5_.linearForce = _loc4_.§>w§();
                     }
                     if(_loc4_.§0"^§.hasSpecialBehavior)
                     {
                        _loc5_.§ 9§(_loc4_.§0"^§.getBehaviorsData());
                     }
                     if(_loc6_ = _loc4_.§0"^§.getEvents())
                     {
                        _loc5_.§9"-§(_loc6_);
                     }
                     param1.addObject(_loc5_);
                  }
               }
            }
            _loc2_++;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < this.§&$D§.length)
         {
            _loc8_ = this.§&$D§[_loc3_];
            (_loc7_ = new §0$=§(_loc8_.type,_loc8_.id1,_loc8_.id2,_loc8_.point1,_loc8_.point2,_loc8_.§1"P§,_loc8_.§4"H§,_loc8_.lowerLimit,_loc8_.upperLimit,_loc8_.§`#`§,_loc8_.motorSpeed,_loc8_.§1#y§,_loc8_.maxTorque,_loc8_.breakable,_loc8_.breakForce,_loc8_.isOneWayDestroyed)).annihilationTime = _loc8_.annihilationTime;
            _loc7_.distanceToDestroyChild = _loc8_.distanceToDestroyChild;
            _loc7_.axisX = _loc8_.axisX;
            _loc7_.axisY = _loc8_.axisY;
            _loc7_.breakable = _loc8_.breakable;
            _loc7_.breakForce = _loc8_.breakForce;
            _loc7_.destroyChild = _loc8_.destroyChild;
            param1.§%=§(_loc7_);
            _loc3_++;
         }
      }
      
      public function §'#l§(param1:Point, param2:Point) : Array
      {
         var _loc3_:Array = [];
         var _loc4_:Number = 0;
         while(_loc4_ < this.§!#4§.length)
         {
            if(this.§!#4§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
            {
               _loc3_.push(this.§!#4§[_loc4_]);
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         var _loc3_:§=Q§ = null;
         this.§7#c§ = param1;
         this.setTexture(param1);
         var _loc2_:Number = 0;
         while(_loc2_ < this.§!#4§.length)
         {
            _loc3_ = this.§!#4§[_loc2_] as §=Q§;
            if(_loc3_ && _loc3_.§[#o§())
            {
               _loc3_.sprite.visible = !this.§7#c§;
            }
            _loc2_++;
         }
      }
      
      public function setCollisionsEnabled(param1:Boolean) : void
      {
         this.§4V§ = param1;
      }
      
      public function §3"e§() : int
      {
         return this.§<H§;
      }
      
      public function §4i§() : int
      {
         return this.§ x§;
      }
      
      public function §'"d§(param1:§4!t§) : Boolean
      {
         var _loc2_:int = this.§!#4§.indexOf(param1);
         return _loc2_ >= 0;
      }
   }
}
