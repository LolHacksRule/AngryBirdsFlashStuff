package §3"#§
{
   import §&!]§.DisplayObject;
   import §&!]§.Sprite;
   import §3>§.§,!^§;
   import §3>§.§-"8§;
   import §3>§.§1!'§;
   import §3>§.§=!Z§;
   import §6!n§.b2Vec2;
   import §9!v§.§1!_§;
   import §9"!§.§^"3§;
   import §`!w§.§`T§;
   
   public class §'"&§
   {
      
      public static const §%!=§:String = "ChannelSlingshot";
      
      public static const §5q§:Number = 900;
      
      public static const §3"?§:Number = 200;
      
      public static const §5!=§:Number = 200;
      
      public static const §7!1§:Number = 1500;
      
      public static const §;!o§:Number = 5000;
      
      public static const §[!'§:Number = 1000;
      
      public static const §>!?§:Number = 1000;
      
      public static const § O§:Number = 46.25;
      
      public static const §!!T§:Number = 52.5;
       
      
      protected var mName:String;
      
      protected var §''§:Number;
      
      protected var §3"<§:Number;
      
      protected var §,!a§:Number;
      
      protected var §=Q§:Number;
      
      protected var §%l§:Number;
      
      protected var §@!V§:Number;
      
      private var §<K§:§=!Z§;
      
      protected var § "F§:Number;
      
      protected var §"!@§:Number = 1;
      
      private var §5"'§:Sprite;
      
      protected var §?^§:§1!_§;
      
      private var §9!1§:DisplayObject;
      
      protected var §2"F§:§0k§;
      
      private var §="0§:Number;
      
      protected var §<"-§:Boolean = false;
      
      private var §^h§:Boolean = false;
      
      protected var §4!$§:Boolean = false;
      
      private var §<"3§:Number;
      
      private var §@",§:Number = 0;
      
      private var §0m§:Number = 0;
      
      private var §0!<§:Number = 0;
      
      private var §7"7§:Number = 1000;
      
      private var §;w§:Number;
      
      private var §!!R§:Number;
      
      private var §0R§:int;
      
      private var §;"&§:Number = 0;
      
      protected var §1!=§:Number;
      
      protected var §2[§:Number;
      
      private var §@&§:Number = 1;
      
      private var §`<§:Number = 0;
      
      private var §+@§:b2Vec2;
      
      private var §&!A§:Number = 1;
      
      private var §<!I§:§1!'§;
      
      protected var § N§:§-"8§;
      
      protected var §,!@§:Boolean = true;
      
      public function §'"&§(param1:§0k§, param2:Sprite, param3:String, param4:§-"8§, param5:Number, param6:Number, param7:Number = 0.0)
      {
         super();
         this.§ N§ = param4;
         this.§2"F§ = param1;
         this.§5"'§ = param2;
         this.mName = param3;
         this.§<!I§ = param4.shape;
         this.§<K§ = param4.soundResource;
         this.§''§ = param5;
         this.§3"<§ = param6;
         this.§,!a§ = param7 / Math.PI * 180;
         this.§@!V§ = this.§,!a§;
         this.§=Q§ = param5;
         this.§%l§ = param6;
         this.§<"-§ = false;
         this.§^h§ = false;
         this.§ "F§ = 0;
         this.§@",§ = 0;
         this.§1!=§ = 0;
         this.§9!B§();
         this.§2"$§();
      }
      
      public function dispose() : void
      {
         if(this.§5"'§)
         {
            this.§5"'§.dispose();
            this.§5"'§ = null;
         }
      }
      
      public function get levelItem() : §-"8§
      {
         return this.§ N§;
      }
      
      public function §%R§(param1:Boolean) : void
      {
         this.§<"-§ = param1;
         if(!this.§]!?§)
         {
            this.§''§ = this.§=Q§;
            this.§3"<§ = this.§%l§;
            this.§ "F§ = this.§,!a§;
            this.updateRenderer();
         }
      }
      
      public function set §`j§(param1:Boolean) : void
      {
         this.§,!@§ = param1;
      }
      
      public function get §9-§() : Number
      {
         if(this.name.toUpperCase() == "BIRD_GREEN")
         {
            return §!!T§;
         }
         return § O§;
      }
      
      public function §8!g§(param1:Number) : void
      {
         if(!this.§^h§ || this.§<"-§)
         {
            return;
         }
         if(this.§"!@§ != 0)
         {
            this.§0!<§ = 0;
            this.§;"&§ = 0;
            this.§ "F§ = 0;
            this.§!!R§ = 0;
            this.§"!@§ = 0;
         }
         param1 = Math.min(param1,this.§<"3§);
         this.§''§ += param1 * (this.§2"F§.x - this.§''§) / this.§<"3§;
         this.§3"<§ += param1 * (this.§2"F§.y - this.§3"<§) / this.§<"3§;
         this.§3"<§ -= param1 / 50 * (this.§<"3§ / §5q§);
         this.§ "F§ += param1 * (360 - this.§ "F§) / this.§<"3§;
         this.§<"3§ -= param1;
         if(this.§<"3§ <= 0)
         {
            this.§''§ = this.§2"F§.x;
            this.§3"<§ = this.§2"F§.y;
            this.§^h§ = false;
            this.§%R§(true);
            this.§ "F§ = 0;
            this.§,!a§ = this.§2"F§.angle / Math.PI * 180;
         }
         this.updateRenderer();
      }
      
      public function §]!k§() : void
      {
         this.§^h§ = true;
         this.§<"3§ = §5q§;
         this.§'!g§(§=!Z§.§]r§);
         if(this.§;"&§ != 0)
         {
            this.§3"<§ += this.§;"&§;
            this.§;"&§ = 0;
         }
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§^"3§ = null;
         if(!this.§<"-§ && this.§1!=§ >= 0)
         {
            if(this.§2[§ > this.§2"F§.§#@§.§?u§.ground)
            {
               this.applyGravity(this.§2"F§.§#@§.§?u§.ground - this.§2[§);
               this.§1!=§ = -1;
            }
            this.§1!=§ -= param1;
            if(this.§1!=§ <= 0)
            {
               if(this.§0!<§ > 0)
               {
                  this.§1!=§ = this.§0!<§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§2[§))
               {
                  _loc2_ = this.§2"F§.§#@§.objects.§^!g§(this.§''§,this.§2[§);
               }
               if(_loc2_ < 0)
               {
                  if(this.applyGravity(param1 / 100))
                  {
                     this.§1!=§ = -1;
                  }
                  else
                  {
                     this.§1!=§ = 0;
                  }
               }
               else
               {
                  _loc3_ = this.§2"F§.§#@§.objects.getObject(_loc2_) as §^"3§;
                  if(_loc3_ && _loc3_.§'"D§)
                  {
                     this.§4!$§ = false;
                     this.§1!=§ = -1;
                  }
                  else if(_loc3_ && _loc3_.§ !W§())
                  {
                     this.§4!$§ = false;
                     this.§1!=§ = 2000;
                  }
                  else
                  {
                     this.§1!=§ = 500;
                  }
               }
            }
         }
      }
      
      public function applyGravity(param1:Number) : Boolean
      {
         this.§3"<§ += param1;
         this.§2[§ += param1;
         if(this.§2[§ > this.§2"F§.§#@§.§?u§.ground)
         {
            param1 = this.§2[§ - this.§2"F§.§#@§.§?u§.ground;
            this.§3"<§ -= param1;
            this.§2[§ -= param1;
            this.updateRenderer();
            return true;
         }
         this.updateRenderer();
         return false;
      }
      
      protected function §9!B§() : void
      {
         var _loc1_:§,!^§ = null;
         if(this.§<!I§ is §,!^§)
         {
            _loc1_ = §,!^§(this.§<!I§);
            this.§+@§ = new b2Vec2(_loc1_.§?O§.x,_loc1_.§?O§.y);
            this.§="0§ = _loc1_.radius;
         }
         else
         {
            this.§+@§ = new b2Vec2(0,0);
            this.§="0§ = 1.5;
         }
      }
      
      protected function §2"$§() : void
      {
         this.§?^§ = this.§2"F§.§#@§.animationManager.getAnimation(this.mName);
         if(!this.§?^§)
         {
            this.§^"@§(null);
         }
         else
         {
            this.§">§();
         }
      }
      
      public function §^"@§(param1:DisplayObject) : void
      {
         this.§9!1§ = param1;
         if(this.§9!1§ && this.§9!1§.parent != this.§5"'§)
         {
            this.§5"'§.addChild(this.§9!1§);
         }
         this.updateRenderer();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.updateGroundControl(param1);
         if(this.§^h§)
         {
            this.§0!<§ = 0;
            _loc4_ = false;
         }
         if(this.§,!@§)
         {
            this.§4L§(param1);
            this.§=B§(param1);
            if(_loc4_ && param3)
            {
               this.§>"§(param1,param2);
            }
         }
      }
      
      public function §4L§(param1:Number) : void
      {
         if(this.§@",§ > 0)
         {
            this.§@",§ -= param1;
            if(this.§@",§ <= 0)
            {
               this.§^!I§();
            }
         }
         else if(this.§0m§ <= 0 && Math.random() * §7!1§ < param1 && this.§2"F§.mSlingShotState)
         {
            this.§7L§();
         }
      }
      
      public function §^!I§() : void
      {
         this.§@",§ = 0;
         this.§">§();
      }
      
      public function §7L§() : void
      {
         if(!this.§,!@§)
         {
            return;
         }
         this.§@",§ = §3"?§;
         this.§9"9§();
      }
      
      protected function §9"9§() : void
      {
         this.§^"@§(this.§?^§.getSubAnimation("blink").getFrame(0,this.§9!1§));
      }
      
      public function §=B§(param1:Number) : void
      {
         if(this.§0m§ > 0)
         {
            this.§0m§ -= param1;
            if(this.§0m§ <= 0)
            {
               this.§-""§();
            }
         }
         else if(this.§@",§ <= 0 && Math.random() * §;!o§ < param1)
         {
            this.§'!g§();
         }
      }
      
      public function §-""§() : void
      {
         this.§0m§ = 0;
         this.§">§();
      }
      
      protected function §">§() : void
      {
         this.§^"@§(this.§?^§.getFrame(0,this.§9!1§));
      }
      
      public function §'!g§(param1:int = -1, param2:Boolean = false) : void
      {
         if(!this.§,!@§)
         {
            return;
         }
         if(this.§0m§ > 0)
         {
            this.§-""§();
         }
         if(this.§@",§ > 0)
         {
            this.§^!I§();
         }
         if(param1 < 0)
         {
            param1 = §=!Z§.§@v§;
         }
         this.§0m§ = §5!=§;
         this.§6"$§();
         if(this.§<"-§ || this.§^h§ || param2)
         {
            §^"3§.§?E§(param1,this.§<K§);
         }
         else
         {
            §^"3§.§?E§(param1,this.§<K§,§%!=§);
         }
      }
      
      protected function §6"$§() : void
      {
         this.§^"@§(this.§?^§.getSubAnimation("yell").getFrame(0,this.§9!1§));
      }
      
      public function §>"§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§0!<§ > 0)
         {
            this.§0!<§ -= param1;
            if(this.§0!<§ <= 0)
            {
               ++this.§0R§;
               this.§!!R§ *= 0.4;
               if(!this.§<"-§ && this.§0R§ < 2)
               {
                  if(this.§0R§ > 1 && this.§!!R§ < -1)
                  {
                     this.§!!R§ = -1;
                  }
                  this.§;w§ = this.§!!R§;
                  this.§0!<§ = §>!?§;
                  this.§0!<§ *= Math.abs(this.§;w§) / 2;
                  this.§7"7§ = this.§0!<§;
                  this.§ "F§ = 0;
                  this.§"!@§ = 0;
               }
               else if(!this.§<"-§ && param2)
               {
                  this.§1!2§(1.5);
               }
               else
               {
                  this.§0!<§ = 0;
                  this.§;"&§ = 0;
                  this.§ "F§ = 0;
                  this.§!!R§ = 0;
               }
            }
            else
            {
               if(this.§0!<§ >= this.§7"7§ / 2)
               {
                  _loc3_ = (this.§7"7§ - this.§0!<§) / (this.§7"7§ / 2);
                  _loc3_ = §`T§.§@!s§(_loc3_);
                  this.§;"&§ = _loc3_ * this.§;w§;
               }
               else
               {
                  _loc3_ = (this.§7"7§ / 2 - this.§0!<§) / (this.§7"7§ / 2);
                  _loc3_ = §`T§.§@!s§(_loc3_,false);
                  this.§;"&§ = this.§;w§ + _loc3_ * -this.§;w§;
               }
               this.§ "F§ = 360 * §`T§.§@!s§((this.§7"7§ - this.§0!<§) / this.§7"7§) * this.§"!@§;
            }
            this.updateRenderer();
         }
         else if(Math.random() * §[!'§ < param1 && !this.§<"-§ && !this.§^h§ && !this.§4!$§)
         {
            this.§1!2§();
         }
      }
      
      public function §1!2§(param1:Number = 1) : void
      {
         if(!this.§,!@§)
         {
            return;
         }
         this.§0R§ = 0;
         this.§0!<§ = §>!?§;
         this.§;"&§ = 0;
         this.§;w§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§!!R§ = this.§;w§;
         this.§0!<§ *= Math.abs(this.§;w§) / 3;
         this.§7"7§ = this.§0!<§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§"!@§ = 0;
         }
         else if(this.§0!<§ < 350)
         {
            this.§"!@§ = 0;
         }
         else
         {
            this.§"!@§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§"!@§ = Math.random() > 0.5 ? Number(this.§"!@§) : Number(0);
         }
      }
      
      public function updateRenderer() : void
      {
         if(this.§2"F§.§"3§)
         {
            this.§5"'§.x = this.§''§ / §`"8§.§3!=§;
            this.§5"'§.y = (this.§3"<§ + this.§;"&§) / §`"8§.§3!=§;
         }
         else
         {
            this.§5"'§.x = (this.§''§ + this.§;"&§ * Math.cos((this.§,!a§ + 90) / 180 * Math.PI)) / §`"8§.§3!=§;
            this.§5"'§.y = (this.§3"<§ + this.§;"&§ * Math.sin((this.§,!a§ + 90) / 180 * Math.PI)) / §`"8§.§3!=§;
         }
         this.§5"'§.rotation = (this.§ "F§ + this.§,!a§) / 180 * Math.PI;
      }
      
      public function §`v§() : void
      {
         this.§4!$§ = true;
         this.§<"-§ = false;
         this.§^h§ = false;
         this.§0R§ = 0;
         this.§1!=§ = 0;
         this.§0!<§ = 0;
         this.§0!<§ = 0;
         this.§;"&§ = 0;
         this.§ "F§ = 0;
         this.§!!R§ = 0;
         this.§"!@§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§''§) * (param1 - this.§''§) + (param2 - this.§3"<§) * (param2 - this.§3"<§));
         if(_loc3_ <= this.§="0§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§''§ >= param3 && this.§''§ <= param4 && this.§3"<§ >= param1 && this.§3"<§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = false;
         if(this.§''§ != param1 || this.§3"<§ != param2)
         {
            _loc4_ = true;
         }
         this.§''§ = param1;
         this.§3"<§ = param2;
         this.§ "F§ = param3;
         this.§1!=§ = 100;
         this.updateRenderer();
         if(_loc4_)
         {
            this.§2"F§.§2!f§();
         }
      }
      
      public function get §-!4§() : Number
      {
         return this.§0!<§;
      }
      
      public function get §!!M§() : Number
      {
         return this.§1!=§;
      }
      
      public function set §!!M§(param1:Number) : void
      {
         this.§1!=§ = param1;
      }
      
      public function get §'_§() : Number
      {
         return this.§@&§;
      }
      
      public function get §]!?§() : Boolean
      {
         return this.§<"-§;
      }
      
      public function get radius() : Number
      {
         return this.§="0§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§5"'§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §'_§(param1:Number) : void
      {
         this.§@&§ = param1;
      }
      
      public function get §3!+§() : Number
      {
         return this.§`<§;
      }
      
      public function set §3!+§(param1:Number) : void
      {
         this.§`<§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§&!A§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§&!A§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§''§;
      }
      
      public function get y() : Number
      {
         return this.§3"<§;
      }
      
      public function get §0!N§() : Number
      {
         return this.§=Q§;
      }
      
      public function get §7O§() : Number
      {
         return this.§%l§;
      }
   }
}
