package §3R§
{
   import §4"@§.DisplayObject;
   import §4"@§.Sprite;
   import §5"D§.§6!!§;
   import §6!C§.§]!A§;
   import §6!M§.§3!@§;
   import §6!M§.§7r§;
   import §6!M§.§<!r§;
   import §6!M§.§=!P§;
   import §[!f§.b2Vec2;
   import §^e§.§^5§;
   
   public class §;!h§
   {
      
      public static const §,I§:String = "ChannelSlingshot";
      
      public static const §8`§:Number = 900;
      
      public static const §6r§:Number = 200;
      
      public static const §"!p§:Number = 200;
      
      public static const §=!L§:Number = 1500;
      
      public static const §#!Y§:Number = 5000;
      
      public static const §5'§:Number = 1000;
      
      public static const §7!6§:Number = 1000;
      
      public static const §=o§:Number = 46.25;
      
      public static const §5S§:Number = 52.5;
       
      
      protected var mName:String;
      
      protected var §1!`§:Number;
      
      protected var §<2§:Number;
      
      protected var §^E§:Number;
      
      protected var §+x§:Number;
      
      protected var §3"G§:Number;
      
      protected var §'C§:Number;
      
      private var §,!2§:§=!P§;
      
      protected var §4X§:Number;
      
      protected var §&!2§:Number = 1;
      
      private var §9A§:Sprite;
      
      protected var §=O§:§^5§;
      
      private var § +§:DisplayObject;
      
      protected var §?!1§:§,@§;
      
      private var §1o§:Number;
      
      protected var §;@§:Boolean = false;
      
      private var § D§:Boolean = false;
      
      protected var §<!@§:Boolean = false;
      
      private var §0!>§:Number;
      
      private var §3"!§:Number = 0;
      
      private var §@"C§:Number = 0;
      
      private var §?!?§:Number = 0;
      
      private var §;h§:Number = 1000;
      
      private var §^L§:Number;
      
      private var §;B§:Number;
      
      private var §@!X§:int;
      
      private var §+!y§:Number = 0;
      
      protected var §<h§:Number;
      
      protected var §'"F§:Number;
      
      private var §;!C§:Number = 1;
      
      private var §0!%§:Number = 0;
      
      private var §9"+§:b2Vec2;
      
      private var §1!k§:Number = 1;
      
      private var §]!0§:§7r§;
      
      protected var §!!9§:§<!r§;
      
      protected var §-"H§:Boolean = true;
      
      public function §;!h§(param1:§,@§, param2:Sprite, param3:String, param4:§<!r§, param5:Number, param6:Number, param7:Number = 0.0)
      {
         super();
         this.§!!9§ = param4;
         this.§?!1§ = param1;
         this.§9A§ = param2;
         this.mName = param3;
         this.§]!0§ = param4.shape;
         this.§,!2§ = param4.soundResource;
         this.§1!`§ = param5;
         this.§<2§ = param6;
         this.§^E§ = param7 / Math.PI * 180;
         this.§'C§ = this.§^E§;
         this.§+x§ = param5;
         this.§3"G§ = param6;
         this.§;@§ = false;
         this.§ D§ = false;
         this.§4X§ = 0;
         this.§3"!§ = 0;
         this.§<h§ = 0;
         this.§"W§();
         this.§5y§();
      }
      
      public function dispose() : void
      {
         if(this.§9A§)
         {
            this.§9A§.dispose();
            this.§9A§ = null;
         }
      }
      
      public function get levelItem() : §<!r§
      {
         return this.§!!9§;
      }
      
      public function §!!I§(param1:Boolean) : void
      {
         this.§;@§ = param1;
         if(!this.§5"4§)
         {
            this.§1!`§ = this.§+x§;
            this.§<2§ = this.§3"G§;
            this.§4X§ = this.§^E§;
            this.updateRenderer();
         }
      }
      
      public function set §'!d§(param1:Boolean) : void
      {
         this.§-"H§ = param1;
      }
      
      public function get §]"#§() : Number
      {
         if(this.name.toUpperCase() == "BIRD_GREEN")
         {
            return §5S§;
         }
         return §=o§;
      }
      
      public function §7">§(param1:Number) : void
      {
         if(!this.§ D§ || this.§;@§)
         {
            return;
         }
         if(this.§&!2§ != 0)
         {
            this.§?!?§ = 0;
            this.§+!y§ = 0;
            this.§4X§ = 0;
            this.§;B§ = 0;
            this.§&!2§ = 0;
         }
         param1 = Math.min(param1,this.§0!>§);
         this.§1!`§ += param1 * (this.§?!1§.x - this.§1!`§) / this.§0!>§;
         this.§<2§ += param1 * (this.§?!1§.y - this.§<2§) / this.§0!>§;
         this.§<2§ -= param1 / 50 * (this.§0!>§ / §8`§);
         this.§4X§ += param1 * (360 - this.§4X§) / this.§0!>§;
         this.§0!>§ -= param1;
         if(this.§0!>§ <= 0)
         {
            this.§1!`§ = this.§?!1§.x;
            this.§<2§ = this.§?!1§.y;
            this.§ D§ = false;
            this.§!!I§(true);
            this.§4X§ = 0;
            this.§^E§ = this.§?!1§.angle / Math.PI * 180;
         }
         this.updateRenderer();
      }
      
      public function §!!N§() : void
      {
         this.§ D§ = true;
         this.§0!>§ = §8`§;
         this.§&'§(§=!P§.§2!E§);
         if(this.§+!y§ != 0)
         {
            this.§<2§ += this.§+!y§;
            this.§+!y§ = 0;
         }
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§6!!§ = null;
         if(!this.§;@§ && this.§<h§ >= 0)
         {
            if(this.§'"F§ > this.§?!1§.§@0§.§`!s§.ground)
            {
               this.applyGravity(this.§?!1§.§@0§.§`!s§.ground - this.§'"F§);
               this.§<h§ = -1;
            }
            this.§<h§ -= param1;
            if(this.§<h§ <= 0)
            {
               if(this.§?!?§ > 0)
               {
                  this.§<h§ = this.§?!?§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§'"F§))
               {
                  _loc2_ = this.§?!1§.§@0§.objects.§3!X§(this.§1!`§,this.§'"F§);
               }
               if(_loc2_ < 0)
               {
                  if(this.applyGravity(param1 / 100))
                  {
                     this.§<h§ = -1;
                  }
                  else
                  {
                     this.§<h§ = 0;
                  }
               }
               else
               {
                  _loc3_ = this.§?!1§.§@0§.objects.getObject(_loc2_) as §6!!§;
                  if(_loc3_ && _loc3_.§3!G§)
                  {
                     this.§<!@§ = false;
                     this.§<h§ = -1;
                  }
                  else if(_loc3_ && _loc3_.§8!Y§())
                  {
                     this.§<!@§ = false;
                     this.§<h§ = 2000;
                  }
                  else
                  {
                     this.§<h§ = 500;
                  }
               }
            }
         }
      }
      
      public function applyGravity(param1:Number) : Boolean
      {
         this.§<2§ += param1;
         this.§'"F§ += param1;
         if(this.§'"F§ > this.§?!1§.§@0§.§`!s§.ground)
         {
            param1 = this.§'"F§ - this.§?!1§.§@0§.§`!s§.ground;
            this.§<2§ -= param1;
            this.§'"F§ -= param1;
            this.updateRenderer();
            return true;
         }
         this.updateRenderer();
         return false;
      }
      
      protected function §"W§() : void
      {
         var _loc1_:§3!@§ = null;
         if(this.§]!0§ is §3!@§)
         {
            _loc1_ = §3!@§(this.§]!0§);
            this.§9"+§ = new b2Vec2(_loc1_.§?"3§.x,_loc1_.§?"3§.y);
            this.§1o§ = _loc1_.radius;
         }
         else
         {
            this.§9"+§ = new b2Vec2(0,0);
            this.§1o§ = 1.5;
         }
      }
      
      protected function §5y§() : void
      {
         this.§=O§ = this.§?!1§.§@0§.animationManager.getAnimation(this.mName);
         if(!this.§=O§)
         {
            this.§<!E§(null);
         }
         else
         {
            this.§=!J§();
         }
      }
      
      public function §<!E§(param1:DisplayObject) : void
      {
         this.§ +§ = param1;
         if(this.§ +§ && this.§ +§.parent != this.§9A§)
         {
            this.§9A§.addChild(this.§ +§);
         }
         this.updateRenderer();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.updateGroundControl(param1);
         if(this.§ D§)
         {
            this.§?!?§ = 0;
            _loc4_ = false;
         }
         if(this.§-"H§)
         {
            this.§=!e§(param1);
            this.§0!Z§(param1);
            if(_loc4_ && param3)
            {
               this.§1W§(param1,param2);
            }
         }
      }
      
      public function §=!e§(param1:Number) : void
      {
         if(this.§3"!§ > 0)
         {
            this.§3"!§ -= param1;
            if(this.§3"!§ <= 0)
            {
               this.§%!"§();
            }
         }
         else if(this.§@"C§ <= 0 && Math.random() * §=!L§ < param1 && this.§?!1§.mSlingShotState)
         {
            this.§;!G§();
         }
      }
      
      public function §%!"§() : void
      {
         this.§3"!§ = 0;
         this.§=!J§();
      }
      
      public function §;!G§() : void
      {
         if(!this.§-"H§)
         {
            return;
         }
         this.§3"!§ = §6r§;
         this.§9a§();
      }
      
      protected function §9a§() : void
      {
         this.§<!E§(this.§=O§.getSubAnimation("blink").getFrame(0,this.§ +§));
      }
      
      public function §0!Z§(param1:Number) : void
      {
         if(this.§@"C§ > 0)
         {
            this.§@"C§ -= param1;
            if(this.§@"C§ <= 0)
            {
               this.§6"1§();
            }
         }
         else if(this.§3"!§ <= 0 && Math.random() * §#!Y§ < param1)
         {
            this.§&'§();
         }
      }
      
      public function §6"1§() : void
      {
         this.§@"C§ = 0;
         this.§=!J§();
      }
      
      protected function §=!J§() : void
      {
         this.§<!E§(this.§=O§.getFrame(0,this.§ +§));
      }
      
      public function §&'§(param1:int = -1, param2:Boolean = false) : void
      {
         if(!this.§-"H§)
         {
            return;
         }
         if(this.§@"C§ > 0)
         {
            this.§6"1§();
         }
         if(this.§3"!§ > 0)
         {
            this.§%!"§();
         }
         if(param1 < 0)
         {
            param1 = §=!P§.§ ;§;
         }
         this.§@"C§ = §"!p§;
         this.§#!0§();
         if(this.§;@§ || this.§ D§ || param2)
         {
            §6!!§.§+c§(param1,this.§,!2§);
         }
         else
         {
            §6!!§.§+c§(param1,this.§,!2§,§,I§);
         }
      }
      
      protected function §#!0§() : void
      {
         this.§<!E§(this.§=O§.getSubAnimation("yell").getFrame(0,this.§ +§));
      }
      
      public function §1W§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§?!?§ > 0)
         {
            this.§?!?§ -= param1;
            if(this.§?!?§ <= 0)
            {
               ++this.§@!X§;
               this.§;B§ *= 0.4;
               if(!this.§;@§ && this.§@!X§ < 2)
               {
                  if(this.§@!X§ > 1 && this.§;B§ < -1)
                  {
                     this.§;B§ = -1;
                  }
                  this.§^L§ = this.§;B§;
                  this.§?!?§ = §7!6§;
                  this.§?!?§ *= Math.abs(this.§^L§) / 2;
                  this.§;h§ = this.§?!?§;
                  this.§4X§ = 0;
                  this.§&!2§ = 0;
               }
               else if(!this.§;@§ && param2)
               {
                  this.§7S§(1.5);
               }
               else
               {
                  this.§?!?§ = 0;
                  this.§+!y§ = 0;
                  this.§4X§ = 0;
                  this.§;B§ = 0;
               }
            }
            else
            {
               if(this.§?!?§ >= this.§;h§ / 2)
               {
                  _loc3_ = (this.§;h§ - this.§?!?§) / (this.§;h§ / 2);
                  _loc3_ = §]!A§.§5L§(_loc3_);
                  this.§+!y§ = _loc3_ * this.§^L§;
               }
               else
               {
                  _loc3_ = (this.§;h§ / 2 - this.§?!?§) / (this.§;h§ / 2);
                  _loc3_ = §]!A§.§5L§(_loc3_,false);
                  this.§+!y§ = this.§^L§ + _loc3_ * -this.§^L§;
               }
               this.§4X§ = 360 * §]!A§.§5L§((this.§;h§ - this.§?!?§) / this.§;h§) * this.§&!2§;
            }
            this.updateRenderer();
         }
         else if(Math.random() * §5'§ < param1 && !this.§;@§ && !this.§ D§ && !this.§<!@§)
         {
            this.§7S§();
         }
      }
      
      public function §7S§(param1:Number = 1) : void
      {
         if(!this.§-"H§)
         {
            return;
         }
         this.§@!X§ = 0;
         this.§?!?§ = §7!6§;
         this.§+!y§ = 0;
         this.§^L§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§;B§ = this.§^L§;
         this.§?!?§ *= Math.abs(this.§^L§) / 3;
         this.§;h§ = this.§?!?§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§&!2§ = 0;
         }
         else if(this.§?!?§ < 350)
         {
            this.§&!2§ = 0;
         }
         else
         {
            this.§&!2§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§&!2§ = Math.random() > 0.5 ? Number(this.§&!2§) : Number(0);
         }
      }
      
      public function updateRenderer() : void
      {
         if(this.§?!1§.§3E§)
         {
            this.§9A§.x = this.§1!`§ / §1!R§.§00§;
            this.§9A§.y = (this.§<2§ + this.§+!y§) / §1!R§.§00§;
         }
         else
         {
            this.§9A§.x = (this.§1!`§ + this.§+!y§ * Math.cos((this.§^E§ + 90) / 180 * Math.PI)) / §1!R§.§00§;
            this.§9A§.y = (this.§<2§ + this.§+!y§ * Math.sin((this.§^E§ + 90) / 180 * Math.PI)) / §1!R§.§00§;
         }
         this.§9A§.rotation = (this.§4X§ + this.§^E§) / 180 * Math.PI;
      }
      
      public function §2!C§() : void
      {
         this.§<!@§ = true;
         this.§;@§ = false;
         this.§ D§ = false;
         this.§@!X§ = 0;
         this.§<h§ = 0;
         this.§?!?§ = 0;
         this.§?!?§ = 0;
         this.§+!y§ = 0;
         this.§4X§ = 0;
         this.§;B§ = 0;
         this.§&!2§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§1!`§) * (param1 - this.§1!`§) + (param2 - this.§<2§) * (param2 - this.§<2§));
         if(_loc3_ <= this.§1o§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§1!`§ >= param3 && this.§1!`§ <= param4 && this.§<2§ >= param1 && this.§<2§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = false;
         if(this.§1!`§ != param1 || this.§<2§ != param2)
         {
            _loc4_ = true;
         }
         this.§1!`§ = param1;
         this.§<2§ = param2;
         this.§4X§ = param3;
         this.§<h§ = 100;
         this.updateRenderer();
         if(_loc4_)
         {
            this.§?!1§.§8!&§();
         }
      }
      
      public function get §7"H§() : Number
      {
         return this.§?!?§;
      }
      
      public function get §9"$§() : Number
      {
         return this.§<h§;
      }
      
      public function set §9"$§(param1:Number) : void
      {
         this.§<h§ = param1;
      }
      
      public function get § ",§() : Number
      {
         return this.§;!C§;
      }
      
      public function get §5"4§() : Boolean
      {
         return this.§;@§;
      }
      
      public function get radius() : Number
      {
         return this.§1o§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§9A§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set § ",§(param1:Number) : void
      {
         this.§;!C§ = param1;
      }
      
      public function get §="E§() : Number
      {
         return this.§0!%§;
      }
      
      public function set §="E§(param1:Number) : void
      {
         this.§0!%§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§1!k§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§1!k§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§1!`§;
      }
      
      public function get y() : Number
      {
         return this.§<2§;
      }
      
      public function get §3H§() : Number
      {
         return this.§+x§;
      }
      
      public function get §,!;§() : Number
      {
         return this.§3"G§;
      }
   }
}
