package § !D§
{
   import §!6§.DisplayObject;
   import §!6§.Sprite;
   import §-!!§.§8"J§;
   import §9#K§.§4P§;
   import §>"9§.§[#%§;
   import §?§.§+#c§;
   import §?§.§,Y§;
   import §?§.§0F§;
   import §?§.§4I§;
   import §^"[§.§4!8§;
   import §`# §.b2Vec2;
   
   public class §;M§
   {
      
      public static const §!"8§:String = "ChannelSlingshot";
      
      public static const §[#-§:Number = 900;
      
      public static const §<#<§:Number = 200;
      
      public static const §4#0§:Number = 200;
      
      public static const §7"I§:Number = 1500;
      
      public static const §1#T§:Number = 5000;
      
      public static const §'!L§:Number = 1000;
      
      public static const §[$+§:Number = 1000;
      
      public static const §7#3§:Number = 46.25;
      
      public static const §&#y§:Number = 55.5;
      
      private static const §]"<§:Array = ["bird_misc_a1","bird_misc_a2","bird_misc_a3","bird_misc_a4","bird_misc_a5","bird_misc_a6","bird_misc_a7","bird_misc_a8","bird_misc_a9","bird_misc_a10","bird_misc_a11","bird_misc_a12"];
       
      
      protected var §-!O§:String;
      
      protected var §-##§:Number;
      
      protected var §0#[§:Number;
      
      protected var §>#h§:Number;
      
      protected var §]"1§:Number;
      
      protected var §"$2§:Number;
      
      protected var §-U§:Number;
      
      private var §>#"§:§4I§;
      
      protected var §%"b§:Number;
      
      protected var §7#F§:Number = 1;
      
      private var § U§:Sprite;
      
      private var §3#l§:Sprite;
      
      protected var §"m§:§4!8§;
      
      private var §?"%§:DisplayObject;
      
      protected var §=#B§:§"b§;
      
      private var § "=§:Number;
      
      protected var §1!F§:Boolean = false;
      
      private var §%v§:Boolean = false;
      
      protected var § "s§:Boolean = false;
      
      private var §>"U§:Number;
      
      private var §%#;§:Number = 0;
      
      private var §`3§:Number = 0;
      
      private var §'!P§:Number = 0;
      
      private var §0E§:Number = 1000;
      
      private var §!"N§:Number;
      
      private var §'T§:Number;
      
      private var §8#Q§:int;
      
      private var §%#z§:Number = 0;
      
      protected var §@#W§:Number;
      
      protected var §2B§:Number;
      
      private var §"!q§:Object;
      
      private var §9$1§:Object;
      
      private var §["n§:Number = 0;
      
      private var §+4§:b2Vec2;
      
      private var §6z§:Number = 1;
      
      private var §@"$§:§+#c§;
      
      protected var §!!H§:§,Y§;
      
      protected var §,!M§:Boolean = true;
      
      private var §0#K§:int;
      
      protected var yOffset:Number = 0;
      
      protected var xOffset:Number = 0;
      
      public var scoreCounted:Boolean;
      
      protected var §^"$§:Boolean;
      
      public function §;M§(param1:§"b§, param2:Sprite, param3:String, param4:§,Y§, param5:Number, param6:Number, param7:Number, param8:int)
      {
         super();
         this.§!!H§ = param4;
         this.§0#K§ = param8;
         this.§=#B§ = param1;
         this.§ U§ = param2;
         this.§-!O§ = param3;
         this.§@"$§ = param4.shape;
         this.§>#"§ = param4.soundResource;
         this.§-##§ = param5;
         this.§0#[§ = param6;
         this.§>#h§ = param7 / Math.PI * 180;
         this.§-U§ = this.§>#h§;
         this.§]"1§ = param5;
         this.§"$2§ = param6;
         this.§1!F§ = false;
         this.§%v§ = false;
         this.§%"b§ = 0;
         this.§%#;§ = 0;
         this.§@#W§ = 0;
         this.§,7§();
         this.§5#i§();
         this.§["N§ = true;
      }
      
      public static function §9"]§() : Number
      {
         return §&#y§ / §7#3§;
      }
      
      public function get launchIndex() : int
      {
         return this.§0#K§;
      }
      
      public function set launchIndex(param1:int) : void
      {
         this.§0#K§ = param1;
      }
      
      public function get backgroundSprite() : Sprite
      {
         return this.§3#l§;
      }
      
      public function dispose() : void
      {
         if(this.§ U§)
         {
            this.§ U§.dispose();
            this.§ U§ = null;
         }
         if(this.§3#l§)
         {
            this.§3#l§.dispose();
            this.§3#l§ = null;
         }
      }
      
      public function §+Q§() : void
      {
         if(!this.§3#l§)
         {
            this.§3#l§ = new Sprite();
            this.backgroundSprite.x = this.§ U§.x;
            this.backgroundSprite.y = this.§ U§.y;
            this.backgroundSprite.rotation = this.§ U§.rotation;
         }
      }
      
      public function set color(param1:uint) : void
      {
         if(this.§?"%§)
         {
            this.§?"%§.color = param1;
         }
      }
      
      public function get levelItem() : §,Y§
      {
         return this.§!!H§;
      }
      
      public function §^![§(param1:Boolean) : void
      {
         this.§1!F§ = param1;
         if(!this.§]"Q§)
         {
            this.§-##§ = this.§]"1§;
            this.§0#[§ = this.§"$2§;
            this.§%"b§ = this.§>#h§;
            this.updateRenderer();
         }
      }
      
      public function set animationsEnabled(param1:Boolean) : void
      {
         this.§,!M§ = param1;
      }
      
      public function get §=@§() : Number
      {
         if(this.name.toUpperCase() == "BIRD_GREEN")
         {
            return §&#y§;
         }
         return §7#3§;
      }
      
      public function approachSlingshot(param1:Number) : void
      {
         if(!this.§%v§ || this.§1!F§)
         {
            return;
         }
         if(this.§7#F§ != 0)
         {
            this.§'!P§ = 0;
            this.§%#z§ = 0;
            this.§%"b§ = 0;
            this.§'T§ = 0;
            this.§7#F§ = 0;
         }
         param1 = Math.min(param1,this.§>"U§);
         this.§-##§ += param1 * (this.§=#B§.x - this.§-##§ + this.xOffset) / this.§>"U§;
         this.§0#[§ += param1 * (this.§=#B§.y - this.§0#[§ + this.yOffset) / this.§>"U§;
         this.§0#[§ -= param1 / 50 * (this.§>"U§ / §[#-§);
         this.§%"b§ += param1 * (360 - this.§%"b§) / this.§>"U§;
         this.§>"U§ -= param1;
         if(this.§>"U§ <= 0)
         {
            this.§-##§ = this.§=#B§.x;
            this.§0#[§ = this.§=#B§.y;
            this.§%v§ = false;
            this.§^![§(true);
            this.§%"b§ = 0;
            this.§>#h§ = this.§=#B§.angle / Math.PI * 180;
         }
         this.updateRenderer();
      }
      
      public function §0#f§() : void
      {
         this.§%v§ = true;
         this.§>"U§ = §[#-§;
         §[#%§.playSound(this.§>#"§.§+!z§(),this.§>#"§.channelName);
         if(this.§%#z§ != 0)
         {
            this.§0#[§ += this.§%#z§;
            this.§%#z§ = 0;
         }
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§8"J§ = null;
         if(!this.§1!F§ && this.§@#W§ >= 0)
         {
            if(this.§2B§ > this.§=#B§.§-a§.§!!,§.ground)
            {
               this.applyGravity(this.§=#B§.§-a§.§!!,§.ground - this.§2B§);
               this.§@#W§ = -1;
            }
            this.§@#W§ -= param1;
            if(this.§@#W§ <= 0)
            {
               if(this.§'!P§ > 0)
               {
                  this.§@#W§ = this.§'!P§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§2B§))
               {
                  _loc2_ = this.§=#B§.§-a§.objects.§+!J§(this.§-##§,this.§2B§);
               }
               if(_loc2_ < 0)
               {
                  if(this.applyGravity(param1 / 100))
                  {
                     this.§@#W§ = -1;
                  }
                  else
                  {
                     this.§@#W§ = 0;
                  }
               }
               else
               {
                  _loc3_ = this.§=#B§.§-a§.objects.getObject(_loc2_) as §8"J§;
                  if(_loc3_ && _loc3_.§""f§)
                  {
                     this.§ "s§ = false;
                     this.§@#W§ = -1;
                  }
                  else if(_loc3_ && _loc3_.§=!a§())
                  {
                     this.§ "s§ = false;
                     this.§@#W§ = 2000;
                  }
                  else
                  {
                     this.§@#W§ = 500;
                  }
               }
            }
         }
      }
      
      public function applyGravity(param1:Number) : Boolean
      {
         this.§0#[§ += param1;
         this.§2B§ += param1;
         if(this.§2B§ > this.§=#B§.§-a§.§!!,§.ground)
         {
            param1 = this.§2B§ - this.§=#B§.§-a§.§!!,§.ground;
            this.§0#[§ -= param1;
            this.§2B§ -= param1;
            this.updateRenderer();
            return true;
         }
         this.updateRenderer();
         return false;
      }
      
      protected function §,7§() : void
      {
         var _loc1_:§0F§ = null;
         if(this.§@"$§ is §0F§)
         {
            _loc1_ = §0F§(this.§@"$§);
            this.§+4§ = new b2Vec2(_loc1_.pivot.x,_loc1_.pivot.y);
            this.§ "=§ = _loc1_.radius;
         }
         else
         {
            this.§+4§ = new b2Vec2(0,0);
            this.§ "=§ = 1.5;
         }
      }
      
      protected function §5#i§() : void
      {
         this.§"m§ = this.§=#B§.§-a§.animationManager.getAnimation(this.§-!O§);
         if(!this.§"m§)
         {
            this.§`"r§(null);
         }
         else
         {
            this.§,"H§();
         }
      }
      
      public function §`"r§(param1:DisplayObject) : void
      {
         this.§?"%§ = param1;
         if(this.§?"%§ && this.§?"%§.parent != this.§ U§)
         {
            this.§ U§.addChild(this.§?"%§);
         }
         if(this.§?"%§)
         {
            this.§?"%§.pivotX -= this.§+4§.x / §'"u§.§'#e§;
            this.§?"%§.pivotY -= this.§+4§.y / §'"u§.§'#e§;
         }
         this.updateRenderer();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.updateGroundControl(param1);
         if(this.§%v§)
         {
            this.§'!P§ = 0;
            _loc4_ = false;
         }
         if(this.§,!M§)
         {
            this.§;q§(param1);
            this.§1!p§(param1);
            if(_loc4_ && param3)
            {
               this.§%!c§(param1,param2);
            }
         }
      }
      
      public function §;q§(param1:Number) : void
      {
         if(this.§%#;§ > 0)
         {
            this.§%#;§ -= param1;
            if(this.§%#;§ <= 0)
            {
               this.§""y§();
            }
         }
         else if(this.§`3§ <= 0 && Math.random() * §7"I§ < param1 && this.§=#B§.mSlingShotState)
         {
            this.§5"0§();
         }
      }
      
      public function §""y§() : void
      {
         this.§%#;§ = 0;
         this.§,"H§();
      }
      
      public function §5"0§() : void
      {
         if(!this.§,!M§)
         {
            return;
         }
         this.§%#;§ = §<#<§;
         this.§%!!§();
      }
      
      protected function §%!!§() : void
      {
         this.§`"r§(this.§"m§.getSubAnimation("blink").getFrame(0,this.§?"%§));
      }
      
      public function §1!p§(param1:Number) : void
      {
         if(this.§`3§ > 0)
         {
            this.§`3§ -= param1;
            if(this.§`3§ <= 0)
            {
               this.§ !r§();
            }
         }
         else if(this.§%#;§ <= 0 && Math.random() * §1#T§ < param1)
         {
            this.§9w§();
         }
      }
      
      public function § !r§() : void
      {
         this.§`3§ = 0;
         this.§,"H§();
      }
      
      protected function §,"H§() : void
      {
         this.§`"r§(this.§"m§.getFrame(0,this.§?"%§));
      }
      
      public function §9w§(param1:Boolean = false) : void
      {
         if(!this.§,!M§)
         {
            return;
         }
         if(this.§`3§ > 0)
         {
            this.§ !r§();
         }
         if(this.§%#;§ > 0)
         {
            this.§""y§();
         }
         this.§`3§ = §4#0§;
         this.§##s§();
         var _loc2_:String = this.§>#"§.getIdleSounds();
         if(!_loc2_)
         {
            _loc2_ = §]"<§[int(Math.random() * §]"<§.length)];
         }
         if(this.§1!F§ || this.§%v§ || param1)
         {
            §[#%§.playSound(_loc2_,this.§>#"§.channelName);
         }
         else
         {
            §[#%§.playSound(_loc2_,§!"8§);
         }
      }
      
      protected function §##s§() : void
      {
         this.§`"r§(this.§"m§.getSubAnimation("yell").getFrame(0,this.§?"%§));
      }
      
      public function §%!c§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§'!P§ > 0)
         {
            this.§'!P§ -= param1;
            if(this.§'!P§ <= 0)
            {
               ++this.§8#Q§;
               this.§'T§ *= 0.4;
               if(!this.§1!F§ && this.§8#Q§ < 2)
               {
                  if(this.§8#Q§ > 1 && this.§'T§ < -1)
                  {
                     this.§'T§ = -1;
                  }
                  this.§!"N§ = this.§'T§;
                  this.§'!P§ = §[$+§;
                  this.§'!P§ *= Math.abs(this.§!"N§) / 2;
                  this.§0E§ = this.§'!P§;
                  this.§%"b§ = 0;
                  this.§7#F§ = 0;
               }
               else if(!this.§1!F§ && param2)
               {
                  this.§3"#§(1.5);
               }
               else
               {
                  this.§'!P§ = 0;
                  this.§%#z§ = 0;
                  this.§%"b§ = 0;
                  this.§'T§ = 0;
               }
            }
            else
            {
               if(this.§'!P§ >= this.§0E§ / 2)
               {
                  _loc3_ = (this.§0E§ - this.§'!P§) / (this.§0E§ / 2);
                  _loc3_ = §4P§.§!#R§(_loc3_);
                  this.§%#z§ = _loc3_ * this.§!"N§;
               }
               else
               {
                  _loc3_ = (this.§0E§ / 2 - this.§'!P§) / (this.§0E§ / 2);
                  _loc3_ = §4P§.§!#R§(_loc3_,false);
                  this.§%#z§ = this.§!"N§ + _loc3_ * -this.§!"N§;
               }
               this.§%"b§ = 360 * §4P§.§!#R§((this.§0E§ - this.§'!P§) / this.§0E§) * this.§7#F§;
            }
            this.updateRenderer();
         }
         else if(Math.random() * §'!L§ < param1 && !this.§1!F§ && !this.§%v§ && !this.§ "s§)
         {
            this.§3"#§();
         }
      }
      
      public function §3"#§(param1:Number = 1) : void
      {
         if(!this.§,!M§)
         {
            return;
         }
         this.§8#Q§ = 0;
         this.§'!P§ = §[$+§;
         this.§%#z§ = 0;
         this.§!"N§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§'T§ = this.§!"N§;
         this.§'!P§ *= Math.abs(this.§!"N§) / 3;
         this.§0E§ = this.§'!P§;
         if(this.§-!O§ == "BIRD_WHITE" || this.§-!O§ == "BIRD_BLACK" || this.§-!O§ == "RED_BIG")
         {
            this.§7#F§ = 0;
         }
         else if(this.§'!P§ < 350)
         {
            this.§7#F§ = 0;
         }
         else
         {
            this.§7#F§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§7#F§ = Math.random() > 0.5 ? Number(this.§7#F§) : Number(0);
         }
      }
      
      public function updateRenderer() : void
      {
         if(this.§=#B§.§;!-§)
         {
            this.§ U§.x = this.§-##§ / §'"u§.§'#e§;
            this.§ U§.y = (this.§0#[§ + this.§%#z§) / §'"u§.§'#e§;
         }
         else
         {
            this.§ U§.x = (this.§-##§ + this.§%#z§ * Math.cos((this.§>#h§ + 90) / 180 * Math.PI)) / §'"u§.§'#e§;
            this.§ U§.y = (this.§0#[§ + this.§%#z§ * Math.sin((this.§>#h§ + 90) / 180 * Math.PI)) / §'"u§.§'#e§;
         }
         if(this.§=#B§.§9"L§)
         {
            this.§ U§.rotation = (this.§%"b§ + this.§>#h§) / 180 * Math.PI;
         }
         if(this.backgroundSprite)
         {
            this.backgroundSprite.x = this.§ U§.x;
            this.backgroundSprite.y = this.§ U§.y;
            this.backgroundSprite.rotation = this.§ U§.rotation;
         }
      }
      
      public function §9"b§() : void
      {
         this.§ "s§ = true;
         this.§1!F§ = false;
         this.§%v§ = false;
         this.§8#Q§ = 0;
         this.§@#W§ = 0;
         this.§'!P§ = 0;
         this.§'!P§ = 0;
         this.§%#z§ = 0;
         this.§%"b§ = 0;
         this.§'T§ = 0;
         this.§7#F§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§-##§) * (param1 - this.§-##§) + (param2 - this.§0#[§) * (param2 - this.§0#[§));
         if(_loc3_ <= this.§ "=§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§-##§ >= param3 && this.§-##§ <= param4 && this.§0#[§ >= param1 && this.§0#[§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = false;
         if(this.§-##§ != param1 || this.§0#[§ != param2)
         {
            _loc4_ = true;
         }
         this.§-##§ = param1;
         this.§0#[§ = param2;
         this.§%"b§ = param3;
         this.§@#W§ = 100;
         this.updateRenderer();
         if(_loc4_)
         {
            this.§=#B§.sortBirds();
         }
      }
      
      public function get §2#4§() : Number
      {
         return this.§'!P§;
      }
      
      public function get set() : Number
      {
         return this.§@#W§;
      }
      
      public function set set(param1:Number) : void
      {
         this.§@#W§ = param1;
      }
      
      public function get §;"R§() : Object
      {
         return this.§"!q§;
      }
      
      public function get §1O§() : Object
      {
         return this.§9$1§;
      }
      
      public function get §]"Q§() : Boolean
      {
         return this.§1!F§;
      }
      
      public function get radius() : Number
      {
         return this.§ "=§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§ U§;
      }
      
      public function set name(param1:String) : void
      {
         this.§-!O§ = param1;
      }
      
      public function get name() : String
      {
         return this.§-!O§;
      }
      
      public function set §;"R§(param1:Object) : void
      {
         this.§"!q§ = param1;
      }
      
      public function set §1O§(param1:Object) : void
      {
         this.§9$1§ = param1;
      }
      
      public function get §5$1§() : Number
      {
         return this.§["n§;
      }
      
      public function set §5$1§(param1:Number) : void
      {
         this.§["n§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§6z§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§6z§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§-##§;
      }
      
      public function get y() : Number
      {
         return this.§0#[§;
      }
      
      public function get originalX() : Number
      {
         return this.§]"1§;
      }
      
      public function get originalY() : Number
      {
         return this.§"$2§;
      }
      
      public function get §["N§() : Boolean
      {
         return this.§^"$§;
      }
      
      public function set §["N§(param1:Boolean) : void
      {
         this.§^"$§ = param1;
      }
   }
}
