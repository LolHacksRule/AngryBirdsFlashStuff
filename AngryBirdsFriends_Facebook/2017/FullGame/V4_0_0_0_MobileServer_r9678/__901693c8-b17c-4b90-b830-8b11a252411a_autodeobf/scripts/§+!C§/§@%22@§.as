package §+!C§
{
   import §%!9§.b2Vec2;
   import §&!v§.DisplayObject;
   import §&!v§.Sprite;
   import §1#W§.§!#&§;
   import §7!j§.§8#B§;
   import §7"&§.§!"v§;
   import §7"&§.§>"f§;
   import §7"&§.§>#H§;
   import §7"&§.§]"k§;
   import §<"p§.§;8§;
   import §>!5§.§^"9§;
   
   public class §@"@§
   {
      
      public static const §#"N§:String = "ChannelSlingshot";
      
      public static const §6u§:Number = 900;
      
      public static const §#!H§:Number = 200;
      
      public static const §3"y§:Number = 200;
      
      public static const §[#"§:Number = 1500;
      
      public static const §>#o§:Number = 5000;
      
      public static const §"!c§:Number = 1000;
      
      public static const §?"?§:Number = 1000;
      
      public static const §7"y§:Number = 46.25;
      
      public static const §,"g§:Number = 52.5;
      
      private static const §5"S§:Array = ["bird_misc_a1","bird_misc_a2","bird_misc_a3","bird_misc_a4","bird_misc_a5","bird_misc_a6","bird_misc_a7","bird_misc_a8","bird_misc_a9","bird_misc_a10","bird_misc_a11","bird_misc_a12"];
       
      
      protected var §;!p§:String;
      
      protected var §?!l§:Number;
      
      protected var §`"T§:Number;
      
      protected var §1#E§:Number;
      
      protected var §[!@§:Number;
      
      protected var §<"s§:Number;
      
      protected var §<$,§:Number;
      
      private var §'"@§:§>"f§;
      
      protected var §,!H§:Number;
      
      protected var §""h§:Number = 1;
      
      private var §'$&§:Sprite;
      
      private var §&"f§:Sprite;
      
      protected var § @§:§8#B§;
      
      private var §9"s§:DisplayObject;
      
      protected var §#"5§:§]#b§;
      
      private var §7!@§:Number;
      
      protected var §0$&§:Boolean = false;
      
      private var §0"D§:Boolean = false;
      
      protected var §=_§:Boolean = false;
      
      private var §+#y§:Number;
      
      private var §'"N§:Number = 0;
      
      private var §"#N§:Number = 0;
      
      private var §[#e§:Number = 0;
      
      private var §6#W§:Number = 1000;
      
      private var §,#u§:Number;
      
      private var §-!y§:Number;
      
      private var §=#[§:int;
      
      private var §=J§:Number = 0;
      
      protected var §@#>§:Number;
      
      protected var §7h§:Number;
      
      private var §3#M§:Object;
      
      private var §%!D§:Object;
      
      private var §8"x§:Number = 0;
      
      private var §%"F§:b2Vec2;
      
      private var § "A§:Number = 1;
      
      private var §4";§:§]"k§;
      
      protected var §8"3§:§!"v§;
      
      protected var §9!!§:Boolean = true;
      
      private var §`o§:int;
      
      protected var yOffset:Number = 0;
      
      protected var xOffset:Number = 0;
      
      public var scoreCounted:Boolean;
      
      public function §@"@§(param1:§]#b§, param2:Sprite, param3:String, param4:§!"v§, param5:Number, param6:Number, param7:Number, param8:int)
      {
         super();
         this.§8"3§ = param4;
         this.§`o§ = param8;
         this.§#"5§ = param1;
         this.§'$&§ = param2;
         this.§;!p§ = param3;
         this.§4";§ = param4.shape;
         this.§'"@§ = param4.soundResource;
         this.§?!l§ = param5;
         this.§`"T§ = param6;
         this.§1#E§ = param7 / Math.PI * 180;
         this.§<$,§ = this.§1#E§;
         this.§[!@§ = param5;
         this.§<"s§ = param6;
         this.§0$&§ = false;
         this.§0"D§ = false;
         this.§,!H§ = 0;
         this.§'"N§ = 0;
         this.§@#>§ = 0;
         this.§3#]§();
         this.§0""§();
      }
      
      public function get launchIndex() : int
      {
         return this.§`o§;
      }
      
      public function set launchIndex(param1:int) : void
      {
         this.§`o§ = param1;
      }
      
      public function get backgroundSprite() : Sprite
      {
         return this.§&"f§;
      }
      
      public function dispose() : void
      {
         if(this.§'$&§)
         {
            this.§'$&§.dispose();
            this.§'$&§ = null;
         }
         if(this.§&"f§)
         {
            this.§&"f§.dispose();
            this.§&"f§ = null;
         }
      }
      
      public function §`#d§() : void
      {
         if(!this.§&"f§)
         {
            this.§&"f§ = new Sprite();
            this.backgroundSprite.x = this.§'$&§.x;
            this.backgroundSprite.y = this.§'$&§.y;
            this.backgroundSprite.rotation = this.§'$&§.rotation;
         }
      }
      
      public function set color(param1:uint) : void
      {
         if(this.§9"s§)
         {
            this.§9"s§.color = param1;
         }
      }
      
      public function get levelItem() : §!"v§
      {
         return this.§8"3§;
      }
      
      public function §'!N§(param1:Boolean) : void
      {
         this.§0$&§ = param1;
         if(!this.§[!9§)
         {
            this.§?!l§ = this.§[!@§;
            this.§`"T§ = this.§<"s§;
            this.§,!H§ = this.§1#E§;
            this.updateRenderer();
         }
      }
      
      public function set animationsEnabled(param1:Boolean) : void
      {
         this.§9!!§ = param1;
      }
      
      public function get §6i§() : Number
      {
         if(this.name.toUpperCase() == "BIRD_GREEN")
         {
            return §,"g§;
         }
         return §7"y§;
      }
      
      public function approachSlingshot(param1:Number) : void
      {
         if(!this.§0"D§ || this.§0$&§)
         {
            return;
         }
         if(this.§""h§ != 0)
         {
            this.§[#e§ = 0;
            this.§=J§ = 0;
            this.§,!H§ = 0;
            this.§-!y§ = 0;
            this.§""h§ = 0;
         }
         param1 = Math.min(param1,this.§+#y§);
         this.§?!l§ += param1 * (this.§#"5§.x - this.§?!l§ + this.xOffset) / this.§+#y§;
         this.§`"T§ += param1 * (this.§#"5§.y - this.§`"T§ + this.yOffset) / this.§+#y§;
         this.§`"T§ -= param1 / 50 * (this.§+#y§ / §6u§);
         this.§,!H§ += param1 * (360 - this.§,!H§) / this.§+#y§;
         this.§+#y§ -= param1;
         if(this.§+#y§ <= 0)
         {
            this.§?!l§ = this.§#"5§.x;
            this.§`"T§ = this.§#"5§.y;
            this.§0"D§ = false;
            this.§'!N§(true);
            this.§,!H§ = 0;
            this.§1#E§ = this.§#"5§.angle / Math.PI * 180;
         }
         this.updateRenderer();
      }
      
      public function §!![§() : void
      {
         this.§0"D§ = true;
         this.§+#y§ = §6u§;
         §!#&§.playSound(this.§'"@§.§`#9§(),this.§'"@§.channelName);
         if(this.§=J§ != 0)
         {
            this.§`"T§ += this.§=J§;
            this.§=J§ = 0;
         }
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§^"9§ = null;
         if(!this.§0$&§ && this.§@#>§ >= 0)
         {
            if(this.§7h§ > this.§#"5§.§"!!§.§>$$§.ground)
            {
               this.applyGravity(this.§#"5§.§"!!§.§>$$§.ground - this.§7h§);
               this.§@#>§ = -1;
            }
            this.§@#>§ -= param1;
            if(this.§@#>§ <= 0)
            {
               if(this.§[#e§ > 0)
               {
                  this.§@#>§ = this.§[#e§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§7h§))
               {
                  _loc2_ = this.§#"5§.§"!!§.objects.§%$7§(this.§?!l§,this.§7h§);
               }
               if(_loc2_ < 0)
               {
                  if(this.applyGravity(param1 / 100))
                  {
                     this.§@#>§ = -1;
                  }
                  else
                  {
                     this.§@#>§ = 0;
                  }
               }
               else
               {
                  _loc3_ = this.§#"5§.§"!!§.objects.getObject(_loc2_) as §^"9§;
                  if(_loc3_ && _loc3_.§'!§)
                  {
                     this.§=_§ = false;
                     this.§@#>§ = -1;
                  }
                  else if(_loc3_ && _loc3_.§6#&§())
                  {
                     this.§=_§ = false;
                     this.§@#>§ = 2000;
                  }
                  else
                  {
                     this.§@#>§ = 500;
                  }
               }
            }
         }
      }
      
      public function applyGravity(param1:Number) : Boolean
      {
         this.§`"T§ += param1;
         this.§7h§ += param1;
         if(this.§7h§ > this.§#"5§.§"!!§.§>$$§.ground)
         {
            param1 = this.§7h§ - this.§#"5§.§"!!§.§>$$§.ground;
            this.§`"T§ -= param1;
            this.§7h§ -= param1;
            this.updateRenderer();
            return true;
         }
         this.updateRenderer();
         return false;
      }
      
      protected function §3#]§() : void
      {
         var _loc1_:§>#H§ = null;
         if(this.§4";§ is §>#H§)
         {
            _loc1_ = §>#H§(this.§4";§);
            this.§%"F§ = new b2Vec2(_loc1_.pivot.x,_loc1_.pivot.y);
            this.§7!@§ = _loc1_.radius;
         }
         else
         {
            this.§%"F§ = new b2Vec2(0,0);
            this.§7!@§ = 1.5;
         }
      }
      
      protected function §0""§() : void
      {
         this.§ @§ = this.§#"5§.§"!!§.animationManager.getAnimation(this.§;!p§);
         if(!this.§ @§)
         {
            this.§6"m§(null);
         }
         else
         {
            this.§0d§();
         }
      }
      
      public function §6"m§(param1:DisplayObject) : void
      {
         this.§9"s§ = param1;
         if(this.§9"s§ && this.§9"s§.parent != this.§'$&§)
         {
            this.§'$&§.addChild(this.§9"s§);
         }
         if(this.§9"s§)
         {
            this.§9"s§.pivotX -= this.§%"F§.x / §!!S§.§,"3§;
            this.§9"s§.pivotY -= this.§%"F§.y / §!!S§.§,"3§;
         }
         this.updateRenderer();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.updateGroundControl(param1);
         if(this.§0"D§)
         {
            this.§[#e§ = 0;
            _loc4_ = false;
         }
         if(this.§9!!§)
         {
            this.§+"6§(param1);
            this.§[s§(param1);
            if(_loc4_ && param3)
            {
               this.§'F§(param1,param2);
            }
         }
      }
      
      public function §+"6§(param1:Number) : void
      {
         if(this.§'"N§ > 0)
         {
            this.§'"N§ -= param1;
            if(this.§'"N§ <= 0)
            {
               this.§!f§();
            }
         }
         else if(this.§"#N§ <= 0 && Math.random() * §[#"§ < param1 && this.§#"5§.mSlingShotState)
         {
            this.§;!R§();
         }
      }
      
      public function §!f§() : void
      {
         this.§'"N§ = 0;
         this.§0d§();
      }
      
      public function §;!R§() : void
      {
         if(!this.§9!!§)
         {
            return;
         }
         this.§'"N§ = §#!H§;
         this.§]#f§();
      }
      
      protected function §]#f§() : void
      {
         this.§6"m§(this.§ @§.getSubAnimation("blink").getFrame(0,this.§9"s§));
      }
      
      public function §[s§(param1:Number) : void
      {
         if(this.§"#N§ > 0)
         {
            this.§"#N§ -= param1;
            if(this.§"#N§ <= 0)
            {
               this.§7!Q§();
            }
         }
         else if(this.§'"N§ <= 0 && Math.random() * §>#o§ < param1)
         {
            this.§"#g§();
         }
      }
      
      public function §7!Q§() : void
      {
         this.§"#N§ = 0;
         this.§0d§();
      }
      
      protected function §0d§() : void
      {
         this.§6"m§(this.§ @§.getFrame(0,this.§9"s§));
      }
      
      public function §"#g§(param1:Boolean = false) : void
      {
         if(!this.§9!!§)
         {
            return;
         }
         if(this.§"#N§ > 0)
         {
            this.§7!Q§();
         }
         if(this.§'"N§ > 0)
         {
            this.§!f§();
         }
         this.§"#N§ = §3"y§;
         this.§^!C§();
         var _loc2_:String = this.§'"@§.getIdleSounds();
         if(!_loc2_)
         {
            _loc2_ = §5"S§[int(Math.random() * §5"S§.length)];
         }
         if(this.§0$&§ || this.§0"D§ || param1)
         {
            §!#&§.playSound(_loc2_,this.§'"@§.channelName);
         }
         else
         {
            §!#&§.playSound(_loc2_,§#"N§);
         }
      }
      
      protected function §^!C§() : void
      {
         this.§6"m§(this.§ @§.getSubAnimation("yell").getFrame(0,this.§9"s§));
      }
      
      public function §'F§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§[#e§ > 0)
         {
            this.§[#e§ -= param1;
            if(this.§[#e§ <= 0)
            {
               ++this.§=#[§;
               this.§-!y§ *= 0.4;
               if(!this.§0$&§ && this.§=#[§ < 2)
               {
                  if(this.§=#[§ > 1 && this.§-!y§ < -1)
                  {
                     this.§-!y§ = -1;
                  }
                  this.§,#u§ = this.§-!y§;
                  this.§[#e§ = §?"?§;
                  this.§[#e§ *= Math.abs(this.§,#u§) / 2;
                  this.§6#W§ = this.§[#e§;
                  this.§,!H§ = 0;
                  this.§""h§ = 0;
               }
               else if(!this.§0$&§ && param2)
               {
                  this.§%#"§(1.5);
               }
               else
               {
                  this.§[#e§ = 0;
                  this.§=J§ = 0;
                  this.§,!H§ = 0;
                  this.§-!y§ = 0;
               }
            }
            else
            {
               if(this.§[#e§ >= this.§6#W§ / 2)
               {
                  _loc3_ = (this.§6#W§ - this.§[#e§) / (this.§6#W§ / 2);
                  _loc3_ = §;8§.§5!C§(_loc3_);
                  this.§=J§ = _loc3_ * this.§,#u§;
               }
               else
               {
                  _loc3_ = (this.§6#W§ / 2 - this.§[#e§) / (this.§6#W§ / 2);
                  _loc3_ = §;8§.§5!C§(_loc3_,false);
                  this.§=J§ = this.§,#u§ + _loc3_ * -this.§,#u§;
               }
               this.§,!H§ = 360 * §;8§.§5!C§((this.§6#W§ - this.§[#e§) / this.§6#W§) * this.§""h§;
            }
            this.updateRenderer();
         }
         else if(Math.random() * §"!c§ < param1 && !this.§0$&§ && !this.§0"D§ && !this.§=_§)
         {
            this.§%#"§();
         }
      }
      
      public function §%#"§(param1:Number = 1) : void
      {
         if(!this.§9!!§)
         {
            return;
         }
         this.§=#[§ = 0;
         this.§[#e§ = §?"?§;
         this.§=J§ = 0;
         this.§,#u§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§-!y§ = this.§,#u§;
         this.§[#e§ *= Math.abs(this.§,#u§) / 3;
         this.§6#W§ = this.§[#e§;
         if(this.§;!p§ == "BIRD_WHITE" || this.§;!p§ == "BIRD_BLACK" || this.§;!p§ == "RED_BIG")
         {
            this.§""h§ = 0;
         }
         else if(this.§[#e§ < 350)
         {
            this.§""h§ = 0;
         }
         else
         {
            this.§""h§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§""h§ = Math.random() > 0.5 ? Number(this.§""h§) : Number(0);
         }
      }
      
      public function updateRenderer() : void
      {
         if(this.§#"5§.§'$#§)
         {
            this.§'$&§.x = this.§?!l§ / §!!S§.§,"3§;
            this.§'$&§.y = (this.§`"T§ + this.§=J§) / §!!S§.§,"3§;
         }
         else
         {
            this.§'$&§.x = (this.§?!l§ + this.§=J§ * Math.cos((this.§1#E§ + 90) / 180 * Math.PI)) / §!!S§.§,"3§;
            this.§'$&§.y = (this.§`"T§ + this.§=J§ * Math.sin((this.§1#E§ + 90) / 180 * Math.PI)) / §!!S§.§,"3§;
         }
         if(this.§#"5§.§@#u§)
         {
            this.§'$&§.rotation = (this.§,!H§ + this.§1#E§) / 180 * Math.PI;
         }
         if(this.backgroundSprite)
         {
            this.backgroundSprite.x = this.§'$&§.x;
            this.backgroundSprite.y = this.§'$&§.y;
            this.backgroundSprite.rotation = this.§'$&§.rotation;
         }
      }
      
      public function §&!e§() : void
      {
         this.§=_§ = true;
         this.§0$&§ = false;
         this.§0"D§ = false;
         this.§=#[§ = 0;
         this.§@#>§ = 0;
         this.§[#e§ = 0;
         this.§[#e§ = 0;
         this.§=J§ = 0;
         this.§,!H§ = 0;
         this.§-!y§ = 0;
         this.§""h§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§?!l§) * (param1 - this.§?!l§) + (param2 - this.§`"T§) * (param2 - this.§`"T§));
         if(_loc3_ <= this.§7!@§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§?!l§ >= param3 && this.§?!l§ <= param4 && this.§`"T§ >= param1 && this.§`"T§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = false;
         if(this.§?!l§ != param1 || this.§`"T§ != param2)
         {
            _loc4_ = true;
         }
         this.§?!l§ = param1;
         this.§`"T§ = param2;
         this.§,!H§ = param3;
         this.§@#>§ = 100;
         this.updateRenderer();
         if(_loc4_)
         {
            this.§#"5§.§1C§();
         }
      }
      
      public function get §5!l§() : Number
      {
         return this.§[#e§;
      }
      
      public function get §%"r§() : Number
      {
         return this.§@#>§;
      }
      
      public function set §%"r§(param1:Number) : void
      {
         this.§@#>§ = param1;
      }
      
      public function get §^!&§() : Object
      {
         return this.§3#M§;
      }
      
      public function get §=$-§() : Object
      {
         return this.§%!D§;
      }
      
      public function get §[!9§() : Boolean
      {
         return this.§0$&§;
      }
      
      public function get radius() : Number
      {
         return this.§7!@§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§'$&§;
      }
      
      public function get name() : String
      {
         return this.§;!p§;
      }
      
      public function set §^!&§(param1:Object) : void
      {
         this.§3#M§ = param1;
      }
      
      public function set §=$-§(param1:Object) : void
      {
         this.§%!D§ = param1;
      }
      
      public function get §%"n§() : Number
      {
         return this.§8"x§;
      }
      
      public function set §%"n§(param1:Number) : void
      {
         this.§8"x§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§ "A§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§ "A§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§?!l§;
      }
      
      public function get y() : Number
      {
         return this.§`"T§;
      }
      
      public function get §>#%§() : Number
      {
         return this.§[!@§;
      }
      
      public function get §6#u§() : Number
      {
         return this.§<"s§;
      }
   }
}
