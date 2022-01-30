package § 2§
{
   import §%Z§.§&!-§;
   import §0!_§.§+!?§;
   import §2!s§.§!e§;
   import §2!s§.§1"'§;
   import §2!s§.§2!_§;
   import §2!s§.§4"1§;
   import §8!$§.§'f§;
   import §?"'§.b2Vec2;
   import §`!B§.DisplayObject;
   import §`!B§.Sprite;
   
   public class §`!d§
   {
      
      public static const §3^§:String = "ChannelSlingshot";
      
      public static const §,!?§:Number = 900;
      
      public static const §+z§:Number = 200;
      
      public static const §-!s§:Number = 200;
      
      public static const §#!M§:Number = 1500;
      
      public static const §^"6§:Number = 5000;
      
      public static const §9q§:Number = 1000;
      
      public static const §5",§:Number = 1000;
      
      public static const §#!z§:Number = 46.25;
      
      public static const §7#§:Number = 52.5;
       
      
      protected var mName:String;
      
      protected var §0O§:Number;
      
      protected var §=!v§:Number;
      
      protected var §!y§:Number;
      
      protected var § =§:Number;
      
      protected var §%6§:Number;
      
      protected var §5>§:Number;
      
      private var §-!Q§:§2!_§;
      
      protected var §2!j§:Number;
      
      protected var §@_§:Number = 1;
      
      private var § C§:Sprite;
      
      private var §65§:Sprite;
      
      protected var §3z§:§+!?§;
      
      private var §"b§:DisplayObject;
      
      protected var §3a§:§<!F§;
      
      private var §&&§:Number;
      
      protected var §'!"§:Boolean = false;
      
      private var §<!b§:Boolean = false;
      
      protected var §1j§:Boolean = false;
      
      private var § "%§:Number;
      
      private var §;!w§:Number = 0;
      
      private var §6!C§:Number = 0;
      
      private var §`1§:Number = 0;
      
      private var §9!Q§:Number = 1000;
      
      private var §,<§:Number;
      
      private var §?&§:Number;
      
      private var §2!9§:int;
      
      private var §3""§:Number = 0;
      
      protected var §[e§:Number;
      
      protected var §4!a§:Number;
      
      private var §4!r§:Number = 1;
      
      private var § L§:Number = 0;
      
      private var §&_§:b2Vec2;
      
      private var §0y§:Number = 1;
      
      private var §<"1§:§4"1§;
      
      protected var §,!$§:§!e§;
      
      protected var §#!D§:Boolean = true;
      
      private var §%I§:int;
      
      public function §`!d§(param1:§<!F§, param2:Sprite, param3:String, param4:§!e§, param5:Number, param6:Number, param7:Number, param8:int)
      {
         super();
         this.§,!$§ = param4;
         this.§%I§ = param8;
         this.§3a§ = param1;
         this.§ C§ = param2;
         this.mName = param3;
         this.§<"1§ = param4.shape;
         this.§-!Q§ = param4.soundResource;
         this.§0O§ = param5;
         this.§=!v§ = param6;
         this.§!y§ = param7 / Math.PI * 180;
         this.§5>§ = this.§!y§;
         this.§ =§ = param5;
         this.§%6§ = param6;
         this.§'!"§ = false;
         this.§<!b§ = false;
         this.§2!j§ = 0;
         this.§;!w§ = 0;
         this.§[e§ = 0;
         this.§5h§();
         this.§"N§();
      }
      
      public function get launchIndex() : int
      {
         return this.§%I§;
      }
      
      public function set launchIndex(param1:int) : void
      {
         this.§%I§ = param1;
      }
      
      public function get §,!&§() : Sprite
      {
         return this.§65§;
      }
      
      public function dispose() : void
      {
         if(this.§ C§)
         {
            this.§ C§.dispose();
            this.§ C§ = null;
         }
         if(this.§65§)
         {
            this.§65§.dispose();
            this.§65§ = null;
         }
      }
      
      public function §>!T§() : void
      {
         if(!this.§65§)
         {
            this.§65§ = new Sprite();
            this.§,!&§.x = this.§ C§.x;
            this.§,!&§.y = this.§ C§.y;
            this.§,!&§.rotation = this.§ C§.rotation;
         }
      }
      
      public function set color(param1:uint) : void
      {
         if(this.§"b§)
         {
            this.§"b§.color = param1;
         }
      }
      
      public function get levelItem() : §!e§
      {
         return this.§,!$§;
      }
      
      public function §0!N§(param1:Boolean) : void
      {
         this.§'!"§ = param1;
         if(!this.§7![§)
         {
            this.§0O§ = this.§ =§;
            this.§=!v§ = this.§%6§;
            this.§2!j§ = this.§!y§;
            this.updateRenderer();
         }
      }
      
      public function set §<J§(param1:Boolean) : void
      {
         this.§#!D§ = param1;
      }
      
      public function get §+!%§() : Number
      {
         if(this.name.toUpperCase() == "BIRD_GREEN")
         {
            return §7#§;
         }
         return §#!z§;
      }
      
      public function §6Q§(param1:Number) : void
      {
         if(!this.§<!b§ || this.§'!"§)
         {
            return;
         }
         if(this.§@_§ != 0)
         {
            this.§`1§ = 0;
            this.§3""§ = 0;
            this.§2!j§ = 0;
            this.§?&§ = 0;
            this.§@_§ = 0;
         }
         param1 = Math.min(param1,this.§ "%§);
         this.§0O§ += param1 * (this.§3a§.x - this.§0O§) / this.§ "%§;
         this.§=!v§ += param1 * (this.§3a§.y - this.§=!v§) / this.§ "%§;
         this.§=!v§ -= param1 / 50 * (this.§ "%§ / §,!?§);
         this.§2!j§ += param1 * (360 - this.§2!j§) / this.§ "%§;
         this.§ "%§ -= param1;
         if(this.§ "%§ <= 0)
         {
            this.§0O§ = this.§3a§.x;
            this.§=!v§ = this.§3a§.y;
            this.§<!b§ = false;
            this.§0!N§(true);
            this.§2!j§ = 0;
            this.§!y§ = this.§3a§.angle / Math.PI * 180;
         }
         this.updateRenderer();
      }
      
      public function §,!R§() : void
      {
         this.§<!b§ = true;
         this.§ "%§ = §,!?§;
         this.§ !G§(§2!_§.§@!f§);
         if(this.§3""§ != 0)
         {
            this.§=!v§ += this.§3""§;
            this.§3""§ = 0;
         }
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§&!-§ = null;
         if(!this.§'!"§ && this.§[e§ >= 0)
         {
            if(this.§4!a§ > this.§3a§.§]s§.§#"3§.ground)
            {
               this.applyGravity(this.§3a§.§]s§.§#"3§.ground - this.§4!a§);
               this.§[e§ = -1;
            }
            this.§[e§ -= param1;
            if(this.§[e§ <= 0)
            {
               if(this.§`1§ > 0)
               {
                  this.§[e§ = this.§`1§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§4!a§))
               {
                  _loc2_ = this.§3a§.§]s§.objects.§`"'§(this.§0O§,this.§4!a§);
               }
               if(_loc2_ < 0)
               {
                  if(this.applyGravity(param1 / 100))
                  {
                     this.§[e§ = -1;
                  }
                  else
                  {
                     this.§[e§ = 0;
                  }
               }
               else
               {
                  _loc3_ = this.§3a§.§]s§.objects.getObject(_loc2_) as §&!-§;
                  if(_loc3_ && _loc3_.§`!_§)
                  {
                     this.§1j§ = false;
                     this.§[e§ = -1;
                  }
                  else if(_loc3_ && _loc3_.§7G§())
                  {
                     this.§1j§ = false;
                     this.§[e§ = 2000;
                  }
                  else
                  {
                     this.§[e§ = 500;
                  }
               }
            }
         }
      }
      
      public function applyGravity(param1:Number) : Boolean
      {
         this.§=!v§ += param1;
         this.§4!a§ += param1;
         if(this.§4!a§ > this.§3a§.§]s§.§#"3§.ground)
         {
            param1 = this.§4!a§ - this.§3a§.§]s§.§#"3§.ground;
            this.§=!v§ -= param1;
            this.§4!a§ -= param1;
            this.updateRenderer();
            return true;
         }
         this.updateRenderer();
         return false;
      }
      
      protected function §5h§() : void
      {
         var _loc1_:§1"'§ = null;
         if(this.§<"1§ is §1"'§)
         {
            _loc1_ = §1"'§(this.§<"1§);
            this.§&_§ = new b2Vec2(_loc1_.§3!-§.x,_loc1_.§3!-§.y);
            this.§&&§ = _loc1_.radius;
         }
         else
         {
            this.§&_§ = new b2Vec2(0,0);
            this.§&&§ = 1.5;
         }
      }
      
      protected function §"N§() : void
      {
         this.§3z§ = this.§3a§.§]s§.§%!E§.§%h§(this.mName);
         if(!this.§3z§)
         {
            this.§>!5§(null);
         }
         else
         {
            this.§9b§();
         }
      }
      
      public function §>!5§(param1:DisplayObject) : void
      {
         this.§"b§ = param1;
         if(this.§"b§ && this.§"b§.parent != this.§ C§)
         {
            this.§ C§.addChild(this.§"b§);
         }
         if(this.§"b§)
         {
            this.§"b§.pivotX -= this.§&_§.x / §=+§.§5!w§;
            this.§"b§.pivotY -= this.§&_§.y / §=+§.§5!w§;
         }
         this.updateRenderer();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.updateGroundControl(param1);
         if(this.§<!b§)
         {
            this.§`1§ = 0;
            _loc4_ = false;
         }
         if(this.§#!D§)
         {
            this.§5!?§(param1);
            this.§%!G§(param1);
            if(_loc4_ && param3)
            {
               this.§3!5§(param1,param2);
            }
         }
      }
      
      public function §5!?§(param1:Number) : void
      {
         if(this.§;!w§ > 0)
         {
            this.§;!w§ -= param1;
            if(this.§;!w§ <= 0)
            {
               this.§>P§();
            }
         }
         else if(this.§6!C§ <= 0 && Math.random() * §#!M§ < param1 && this.§3a§.mSlingShotState)
         {
            this.§+!0§();
         }
      }
      
      public function §>P§() : void
      {
         this.§;!w§ = 0;
         this.§9b§();
      }
      
      public function §+!0§() : void
      {
         if(!this.§#!D§)
         {
            return;
         }
         this.§;!w§ = §+z§;
         this.§"!#§();
      }
      
      protected function §"!#§() : void
      {
         this.§>!5§(this.§3z§.getSubAnimation("blink").getFrame(0,this.§"b§));
      }
      
      public function §%!G§(param1:Number) : void
      {
         if(this.§6!C§ > 0)
         {
            this.§6!C§ -= param1;
            if(this.§6!C§ <= 0)
            {
               this.§>!n§();
            }
         }
         else if(this.§;!w§ <= 0 && Math.random() * §^"6§ < param1)
         {
            this.§ !G§();
         }
      }
      
      public function §>!n§() : void
      {
         this.§6!C§ = 0;
         this.§9b§();
      }
      
      protected function §9b§() : void
      {
         this.§>!5§(this.§3z§.getFrame(0,this.§"b§));
      }
      
      public function § !G§(param1:int = -1, param2:Boolean = false) : void
      {
         if(!this.§#!D§)
         {
            return;
         }
         if(this.§6!C§ > 0)
         {
            this.§>!n§();
         }
         if(this.§;!w§ > 0)
         {
            this.§>P§();
         }
         if(param1 < 0)
         {
            param1 = §2!_§.§`D§;
         }
         this.§6!C§ = §-!s§;
         this.§59§();
         if(this.§'!"§ || this.§<!b§ || param2)
         {
            §&!-§.§ w§(param1,this.§-!Q§);
         }
         else
         {
            §&!-§.§ w§(param1,this.§-!Q§,§3^§);
         }
      }
      
      protected function §59§() : void
      {
         this.§>!5§(this.§3z§.getSubAnimation("yell").getFrame(0,this.§"b§));
      }
      
      public function §3!5§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§`1§ > 0)
         {
            this.§`1§ -= param1;
            if(this.§`1§ <= 0)
            {
               ++this.§2!9§;
               this.§?&§ *= 0.4;
               if(!this.§'!"§ && this.§2!9§ < 2)
               {
                  if(this.§2!9§ > 1 && this.§?&§ < -1)
                  {
                     this.§?&§ = -1;
                  }
                  this.§,<§ = this.§?&§;
                  this.§`1§ = §5",§;
                  this.§`1§ *= Math.abs(this.§,<§) / 2;
                  this.§9!Q§ = this.§`1§;
                  this.§2!j§ = 0;
                  this.§@_§ = 0;
               }
               else if(!this.§'!"§ && param2)
               {
                  this.§`0§(1.5);
               }
               else
               {
                  this.§`1§ = 0;
                  this.§3""§ = 0;
                  this.§2!j§ = 0;
                  this.§?&§ = 0;
               }
            }
            else
            {
               if(this.§`1§ >= this.§9!Q§ / 2)
               {
                  _loc3_ = (this.§9!Q§ - this.§`1§) / (this.§9!Q§ / 2);
                  _loc3_ = §'f§.§`!Z§(_loc3_);
                  this.§3""§ = _loc3_ * this.§,<§;
               }
               else
               {
                  _loc3_ = (this.§9!Q§ / 2 - this.§`1§) / (this.§9!Q§ / 2);
                  _loc3_ = §'f§.§`!Z§(_loc3_,false);
                  this.§3""§ = this.§,<§ + _loc3_ * -this.§,<§;
               }
               this.§2!j§ = 360 * §'f§.§`!Z§((this.§9!Q§ - this.§`1§) / this.§9!Q§) * this.§@_§;
            }
            this.updateRenderer();
         }
         else if(Math.random() * §9q§ < param1 && !this.§'!"§ && !this.§<!b§ && !this.§1j§)
         {
            this.§`0§();
         }
      }
      
      public function §`0§(param1:Number = 1) : void
      {
         if(!this.§#!D§)
         {
            return;
         }
         this.§2!9§ = 0;
         this.§`1§ = §5",§;
         this.§3""§ = 0;
         this.§,<§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§?&§ = this.§,<§;
         this.§`1§ *= Math.abs(this.§,<§) / 3;
         this.§9!Q§ = this.§`1§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§@_§ = 0;
         }
         else if(this.§`1§ < 350)
         {
            this.§@_§ = 0;
         }
         else
         {
            this.§@_§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§@_§ = Math.random() > 0.5 ? Number(this.§@_§) : Number(0);
         }
      }
      
      public function updateRenderer() : void
      {
         if(this.§3a§.§`e§)
         {
            this.§ C§.x = this.§0O§ / §=+§.§5!w§;
            this.§ C§.y = (this.§=!v§ + this.§3""§) / §=+§.§5!w§;
         }
         else
         {
            this.§ C§.x = (this.§0O§ + this.§3""§ * Math.cos((this.§!y§ + 90) / 180 * Math.PI)) / §=+§.§5!w§;
            this.§ C§.y = (this.§=!v§ + this.§3""§ * Math.sin((this.§!y§ + 90) / 180 * Math.PI)) / §=+§.§5!w§;
         }
         if(this.§3a§.§#]§)
         {
            this.§ C§.rotation = (this.§2!j§ + this.§!y§) / 180 * Math.PI;
         }
         if(this.§,!&§)
         {
            this.§,!&§.x = this.§ C§.x;
            this.§,!&§.y = this.§ C§.y;
            this.§,!&§.rotation = this.§ C§.rotation;
         }
      }
      
      public function §0u§() : void
      {
         this.§1j§ = true;
         this.§'!"§ = false;
         this.§<!b§ = false;
         this.§2!9§ = 0;
         this.§[e§ = 0;
         this.§`1§ = 0;
         this.§`1§ = 0;
         this.§3""§ = 0;
         this.§2!j§ = 0;
         this.§?&§ = 0;
         this.§@_§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§0O§) * (param1 - this.§0O§) + (param2 - this.§=!v§) * (param2 - this.§=!v§));
         if(_loc3_ <= this.§&&§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§0O§ >= param3 && this.§0O§ <= param4 && this.§=!v§ >= param1 && this.§=!v§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = false;
         if(this.§0O§ != param1 || this.§=!v§ != param2)
         {
            _loc4_ = true;
         }
         this.§0O§ = param1;
         this.§=!v§ = param2;
         this.§2!j§ = param3;
         this.§[e§ = 100;
         this.updateRenderer();
         if(_loc4_)
         {
            this.§3a§.§;!^§();
         }
      }
      
      public function get §7!Y§() : Number
      {
         return this.§`1§;
      }
      
      public function get §2V§() : Number
      {
         return this.§[e§;
      }
      
      public function set §2V§(param1:Number) : void
      {
         this.§[e§ = param1;
      }
      
      public function get §=",§() : Number
      {
         return this.§4!r§;
      }
      
      public function get §7![§() : Boolean
      {
         return this.§'!"§;
      }
      
      public function get radius() : Number
      {
         return this.§&&§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§ C§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §=",§(param1:Number) : void
      {
         this.§4!r§ = param1;
      }
      
      public function get §+Z§() : Number
      {
         return this.§ L§;
      }
      
      public function set §+Z§(param1:Number) : void
      {
         this.§ L§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§0y§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§0y§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§0O§;
      }
      
      public function get y() : Number
      {
         return this.§=!v§;
      }
      
      public function get §]U§() : Number
      {
         return this.§ =§;
      }
      
      public function get § P§() : Number
      {
         return this.§%6§;
      }
   }
}
