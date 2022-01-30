package §@"1§
{
   import §!!<§.§29§;
   import §!!<§.§>"4§;
   import §!!<§.§[!L§;
   import §!!<§.§`!J§;
   import §"!-§.§[-§;
   import §,!k§.b2Vec2;
   import §0!Y§.DisplayObject;
   import §0!Y§.Sprite;
   import §6!?§.§7!t§;
   import §=!7§.§-!S§;
   
   public class §8L§
   {
      
      public static const §]!a§:String = "ChannelSlingshot";
      
      public static const §+!]§:Number = 900;
      
      public static const §@!$§:Number = 200;
      
      public static const §@!E§:Number = 200;
      
      public static const §,!6§:Number = 1500;
      
      public static const §6!$§:Number = 5000;
      
      public static const §>!l§:Number = 1000;
      
      public static const §"9§:Number = 1000;
      
      public static const §-;§:Number = 46.25;
      
      public static const §!_§:Number = 52.5;
       
      
      protected var mName:String;
      
      protected var §%!H§:Number;
      
      protected var §^<§:Number;
      
      protected var §"!W§:Number;
      
      protected var §`a§:Number;
      
      protected var §7!6§:Number;
      
      protected var §8>§:Number;
      
      private var §!J§:§[!L§;
      
      protected var §#!C§:Number;
      
      protected var §5!+§:Number = 1;
      
      private var §<q§:Sprite;
      
      protected var §0"§:§7!t§;
      
      private var §%n§:DisplayObject;
      
      protected var §1<§:§`!j§;
      
      private var §1""§:Number;
      
      protected var §]!v§:Boolean = false;
      
      private var §`]§:Boolean = false;
      
      protected var §=!p§:Boolean = false;
      
      private var §!!b§:Number;
      
      private var §]r§:Number = 0;
      
      private var §#Q§:Number = 0;
      
      private var §=!O§:Number = 0;
      
      private var §[9§:Number = 1000;
      
      private var §8!t§:Number;
      
      private var §[5§:Number;
      
      private var §=!U§:int;
      
      private var §^"'§:Number = 0;
      
      protected var §6z§:Number;
      
      protected var §6"4§:Number;
      
      private var §<!C§:Number = 1;
      
      private var §;C§:Number = 0;
      
      private var §@e§:b2Vec2;
      
      private var §>s§:Number = 1;
      
      private var §=B§:§`!J§;
      
      protected var §1!0§:§>"4§;
      
      protected var §6!'§:Boolean = true;
      
      public function §8L§(param1:§`!j§, param2:Sprite, param3:String, param4:§>"4§, param5:Number, param6:Number, param7:Number = 0.0)
      {
         super();
         this.§1!0§ = param4;
         this.§1<§ = param1;
         this.§<q§ = param2;
         this.mName = param3;
         this.§=B§ = param4.shape;
         this.§!J§ = param4.soundResource;
         this.§%!H§ = param5;
         this.§^<§ = param6;
         this.§"!W§ = param7 / Math.PI * 180;
         this.§8>§ = this.§"!W§;
         this.§`a§ = param5;
         this.§7!6§ = param6;
         this.§]!v§ = false;
         this.§`]§ = false;
         this.§#!C§ = 0;
         this.§]r§ = 0;
         this.§6z§ = 0;
         this.§]t§();
         this.§%!;§();
      }
      
      public function dispose() : void
      {
         if(this.§<q§)
         {
            this.§<q§.dispose();
            this.§<q§ = null;
         }
      }
      
      public function get levelItem() : §>"4§
      {
         return this.§1!0§;
      }
      
      public function §2S§(param1:Boolean) : void
      {
         this.§]!v§ = param1;
         if(!this.§%"1§)
         {
            this.§%!H§ = this.§`a§;
            this.§^<§ = this.§7!6§;
            this.§#!C§ = this.§"!W§;
            this.updateRenderer();
         }
      }
      
      public function set §'!S§(param1:Boolean) : void
      {
         this.§6!'§ = param1;
      }
      
      public function get §9[§() : Number
      {
         if(this.name.toUpperCase() == "BIRD_GREEN")
         {
            return §!_§;
         }
         return §-;§;
      }
      
      public function §for §(param1:Number) : void
      {
         if(!this.§`]§ || this.§]!v§)
         {
            return;
         }
         if(this.§5!+§ != 0)
         {
            this.§=!O§ = 0;
            this.§^"'§ = 0;
            this.§#!C§ = 0;
            this.§[5§ = 0;
            this.§5!+§ = 0;
         }
         param1 = Math.min(param1,this.§!!b§);
         this.§%!H§ += param1 * (this.§1<§.x - this.§%!H§) / this.§!!b§;
         this.§^<§ += param1 * (this.§1<§.y - this.§^<§) / this.§!!b§;
         this.§^<§ -= param1 / 50 * (this.§!!b§ / §+!]§);
         this.§#!C§ += param1 * (360 - this.§#!C§) / this.§!!b§;
         this.§!!b§ -= param1;
         if(this.§!!b§ <= 0)
         {
            this.§%!H§ = this.§1<§.x;
            this.§^<§ = this.§1<§.y;
            this.§`]§ = false;
            this.§2S§(true);
            this.§#!C§ = 0;
            this.§"!W§ = this.§1<§.angle / Math.PI * 180;
         }
         this.updateRenderer();
      }
      
      public function §3F§() : void
      {
         this.§`]§ = true;
         this.§!!b§ = §+!]§;
         this.§4!r§(§[!L§.§1!j§);
         if(this.§^"'§ != 0)
         {
            this.§^<§ += this.§^"'§;
            this.§^"'§ = 0;
         }
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§[-§ = null;
         if(!this.§]!v§ && this.§6z§ >= 0)
         {
            if(this.§6"4§ > this.§1<§.§9v§.§7!p§.ground)
            {
               this.applyGravity(this.§1<§.§9v§.§7!p§.ground - this.§6"4§);
               this.§6z§ = -1;
            }
            this.§6z§ -= param1;
            if(this.§6z§ <= 0)
            {
               if(this.§=!O§ > 0)
               {
                  this.§6z§ = this.§=!O§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§6"4§))
               {
                  _loc2_ = this.§1<§.§9v§.objects.§?"4§(this.§%!H§,this.§6"4§);
               }
               if(_loc2_ < 0)
               {
                  if(this.applyGravity(param1 / 100))
                  {
                     this.§6z§ = -1;
                  }
                  else
                  {
                     this.§6z§ = 0;
                  }
               }
               else
               {
                  _loc3_ = this.§1<§.§9v§.objects.getObject(_loc2_) as §[-§;
                  if(_loc3_ && _loc3_.§@!e§)
                  {
                     this.§=!p§ = false;
                     this.§6z§ = -1;
                  }
                  else if(_loc3_ && _loc3_.§]!<§())
                  {
                     this.§=!p§ = false;
                     this.§6z§ = 2000;
                  }
                  else
                  {
                     this.§6z§ = 500;
                  }
               }
            }
         }
      }
      
      public function applyGravity(param1:Number) : Boolean
      {
         this.§^<§ += param1;
         this.§6"4§ += param1;
         if(this.§6"4§ > this.§1<§.§9v§.§7!p§.ground)
         {
            param1 = this.§6"4§ - this.§1<§.§9v§.§7!p§.ground;
            this.§^<§ -= param1;
            this.§6"4§ -= param1;
            this.updateRenderer();
            return true;
         }
         this.updateRenderer();
         return false;
      }
      
      protected function §]t§() : void
      {
         var _loc1_:§29§ = null;
         if(this.§=B§ is §29§)
         {
            _loc1_ = §29§(this.§=B§);
            this.§@e§ = new b2Vec2(_loc1_.§0!+§.x,_loc1_.§0!+§.y);
            this.§1""§ = _loc1_.radius;
         }
         else
         {
            this.§@e§ = new b2Vec2(0,0);
            this.§1""§ = 1.5;
         }
      }
      
      protected function §%!;§() : void
      {
         this.§0"§ = this.§1<§.§9v§.§[!c§.§[!q§(this.mName);
         if(!this.§0"§)
         {
            this.§<!J§(null);
         }
         else
         {
            this.§+[§();
         }
      }
      
      public function §<!J§(param1:DisplayObject) : void
      {
         this.§%n§ = param1;
         if(this.§%n§ && this.§%n§.parent != this.§<q§)
         {
            this.§<q§.addChild(this.§%n§);
         }
         if(this.§%n§)
         {
            this.§%n§.pivotX -= this.§@e§.x / §"h§.§4<§;
            this.§%n§.pivotY -= this.§@e§.y / §"h§.§4<§;
         }
         this.updateRenderer();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.updateGroundControl(param1);
         if(this.§`]§)
         {
            this.§=!O§ = 0;
            _loc4_ = false;
         }
         if(this.§6!'§)
         {
            this.§?Z§(param1);
            this.§"W§(param1);
            if(_loc4_ && param3)
            {
               this.§?h§(param1,param2);
            }
         }
      }
      
      public function §?Z§(param1:Number) : void
      {
         if(this.§]r§ > 0)
         {
            this.§]r§ -= param1;
            if(this.§]r§ <= 0)
            {
               this.§ >§();
            }
         }
         else if(this.§#Q§ <= 0 && Math.random() * §,!6§ < param1 && this.§1<§.mSlingShotState)
         {
            this.§16§();
         }
      }
      
      public function § >§() : void
      {
         this.§]r§ = 0;
         this.§+[§();
      }
      
      public function §16§() : void
      {
         if(!this.§6!'§)
         {
            return;
         }
         this.§]r§ = §@!$§;
         this.§^!l§();
      }
      
      protected function §^!l§() : void
      {
         this.§<!J§(this.§0"§.getSubAnimation("blink").getFrame(0,this.§%n§));
      }
      
      public function §"W§(param1:Number) : void
      {
         if(this.§#Q§ > 0)
         {
            this.§#Q§ -= param1;
            if(this.§#Q§ <= 0)
            {
               this.§5W§();
            }
         }
         else if(this.§]r§ <= 0 && Math.random() * §6!$§ < param1)
         {
            this.§4!r§();
         }
      }
      
      public function §5W§() : void
      {
         this.§#Q§ = 0;
         this.§+[§();
      }
      
      protected function §+[§() : void
      {
         this.§<!J§(this.§0"§.getFrame(0,this.§%n§));
      }
      
      public function §4!r§(param1:int = -1, param2:Boolean = false) : void
      {
         if(!this.§6!'§)
         {
            return;
         }
         if(this.§#Q§ > 0)
         {
            this.§5W§();
         }
         if(this.§]r§ > 0)
         {
            this.§ >§();
         }
         if(param1 < 0)
         {
            param1 = §[!L§.§`!`§;
         }
         this.§#Q§ = §@!E§;
         this.§&!6§();
         if(this.§]!v§ || this.§`]§ || param2)
         {
            §[-§.§%!I§(param1,this.§!J§);
         }
         else
         {
            §[-§.§%!I§(param1,this.§!J§,§]!a§);
         }
      }
      
      protected function §&!6§() : void
      {
         this.§<!J§(this.§0"§.getSubAnimation("yell").getFrame(0,this.§%n§));
      }
      
      public function §?h§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§=!O§ > 0)
         {
            this.§=!O§ -= param1;
            if(this.§=!O§ <= 0)
            {
               ++this.§=!U§;
               this.§[5§ *= 0.4;
               if(!this.§]!v§ && this.§=!U§ < 2)
               {
                  if(this.§=!U§ > 1 && this.§[5§ < -1)
                  {
                     this.§[5§ = -1;
                  }
                  this.§8!t§ = this.§[5§;
                  this.§=!O§ = §"9§;
                  this.§=!O§ *= Math.abs(this.§8!t§) / 2;
                  this.§[9§ = this.§=!O§;
                  this.§#!C§ = 0;
                  this.§5!+§ = 0;
               }
               else if(!this.§]!v§ && param2)
               {
                  this.§"!x§(1.5);
               }
               else
               {
                  this.§=!O§ = 0;
                  this.§^"'§ = 0;
                  this.§#!C§ = 0;
                  this.§[5§ = 0;
               }
            }
            else
            {
               if(this.§=!O§ >= this.§[9§ / 2)
               {
                  _loc3_ = (this.§[9§ - this.§=!O§) / (this.§[9§ / 2);
                  _loc3_ = §-!S§.§5D§(_loc3_);
                  this.§^"'§ = _loc3_ * this.§8!t§;
               }
               else
               {
                  _loc3_ = (this.§[9§ / 2 - this.§=!O§) / (this.§[9§ / 2);
                  _loc3_ = §-!S§.§5D§(_loc3_,false);
                  this.§^"'§ = this.§8!t§ + _loc3_ * -this.§8!t§;
               }
               this.§#!C§ = 360 * §-!S§.§5D§((this.§[9§ - this.§=!O§) / this.§[9§) * this.§5!+§;
            }
            this.updateRenderer();
         }
         else if(Math.random() * §>!l§ < param1 && !this.§]!v§ && !this.§`]§ && !this.§=!p§)
         {
            this.§"!x§();
         }
      }
      
      public function §"!x§(param1:Number = 1) : void
      {
         if(!this.§6!'§)
         {
            return;
         }
         this.§=!U§ = 0;
         this.§=!O§ = §"9§;
         this.§^"'§ = 0;
         this.§8!t§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§[5§ = this.§8!t§;
         this.§=!O§ *= Math.abs(this.§8!t§) / 3;
         this.§[9§ = this.§=!O§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§5!+§ = 0;
         }
         else if(this.§=!O§ < 350)
         {
            this.§5!+§ = 0;
         }
         else
         {
            this.§5!+§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§5!+§ = Math.random() > 0.5 ? Number(this.§5!+§) : Number(0);
         }
      }
      
      public function updateRenderer() : void
      {
         if(this.§1<§.§`!V§)
         {
            this.§<q§.x = this.§%!H§ / §"h§.§4<§;
            this.§<q§.y = (this.§^<§ + this.§^"'§) / §"h§.§4<§;
         }
         else
         {
            this.§<q§.x = (this.§%!H§ + this.§^"'§ * Math.cos((this.§"!W§ + 90) / 180 * Math.PI)) / §"h§.§4<§;
            this.§<q§.y = (this.§^<§ + this.§^"'§ * Math.sin((this.§"!W§ + 90) / 180 * Math.PI)) / §"h§.§4<§;
         }
         this.§<q§.rotation = (this.§#!C§ + this.§"!W§) / 180 * Math.PI;
      }
      
      public function §9!,§() : void
      {
         this.§=!p§ = true;
         this.§]!v§ = false;
         this.§`]§ = false;
         this.§=!U§ = 0;
         this.§6z§ = 0;
         this.§=!O§ = 0;
         this.§=!O§ = 0;
         this.§^"'§ = 0;
         this.§#!C§ = 0;
         this.§[5§ = 0;
         this.§5!+§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§%!H§) * (param1 - this.§%!H§) + (param2 - this.§^<§) * (param2 - this.§^<§));
         if(_loc3_ <= this.§1""§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§%!H§ >= param3 && this.§%!H§ <= param4 && this.§^<§ >= param1 && this.§^<§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = false;
         if(this.§%!H§ != param1 || this.§^<§ != param2)
         {
            _loc4_ = true;
         }
         this.§%!H§ = param1;
         this.§^<§ = param2;
         this.§#!C§ = param3;
         this.§6z§ = 100;
         this.updateRenderer();
         if(_loc4_)
         {
            this.§1<§.§0g§();
         }
      }
      
      public function get §#!9§() : Number
      {
         return this.§=!O§;
      }
      
      public function get §1L§() : Number
      {
         return this.§6z§;
      }
      
      public function set §1L§(param1:Number) : void
      {
         this.§6z§ = param1;
      }
      
      public function get §?!A§() : Number
      {
         return this.§<!C§;
      }
      
      public function get §%"1§() : Boolean
      {
         return this.§]!v§;
      }
      
      public function get radius() : Number
      {
         return this.§1""§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§<q§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §?!A§(param1:Number) : void
      {
         this.§<!C§ = param1;
      }
      
      public function get § !n§() : Number
      {
         return this.§;C§;
      }
      
      public function set § !n§(param1:Number) : void
      {
         this.§;C§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§>s§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§>s§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§%!H§;
      }
      
      public function get y() : Number
      {
         return this.§^<§;
      }
      
      public function get §+!s§() : Number
      {
         return this.§`a§;
      }
      
      public function get §+!K§() : Number
      {
         return this.§7!6§;
      }
   }
}
