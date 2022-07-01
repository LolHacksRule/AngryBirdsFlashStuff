package §]A§
{
   import § !=§.DisplayObject;
   import § !=§.Sprite;
   import § !Q§.§=!9§;
   import §-!2§.b2Vec2;
   import §2!k§.§;;§;
   import §;L§.§=l§;
   import §[^§.§"!>§;
   import §[^§.§#!?§;
   import §[^§.§>"§;
   import §[^§.§`!M§;
   
   public class §0n§
   {
      
      public static const §^i§:String = "ChannelSlingshot";
      
      public static const §"!G§:Number = 900;
      
      public static const §=!X§:Number = 200;
      
      public static const §<"5§:Number = 200;
      
      public static const §['§:Number = 1500;
      
      public static const §4!?§:Number = 5000;
      
      public static const §[G§:Number = 1000;
      
      public static const §5!Y§:Number = 1000;
      
      public static const §9B§:Number = 46.25;
      
      public static const §`B§:Number = 52.5;
       
      
      protected var mName:String;
      
      protected var §'!a§:Number;
      
      protected var §[6§:Number;
      
      protected var §6H§:Number;
      
      protected var §-!'§:Number;
      
      protected var §!e§:Number;
      
      protected var §2!]§:Number;
      
      private var §0"3§:§>"§;
      
      protected var §;f§:Number;
      
      protected var §69§:Number = 1;
      
      private var §%!D§:Sprite;
      
      protected var §,<§:§=l§;
      
      private var §9!]§:DisplayObject;
      
      protected var §4k§:§]"!§;
      
      private var § <§:Number;
      
      protected var §4!0§:Boolean = false;
      
      private var §3J§:Boolean = false;
      
      protected var §-!7§:Boolean = false;
      
      private var §'!L§:Number;
      
      private var §>A§:Number = 0;
      
      private var §=I§:Number = 0;
      
      private var §&H§:Number = 0;
      
      private var §?n§:Number = 1000;
      
      private var §?!u§:Number;
      
      private var §`!Q§:Number;
      
      private var §0!]§:int;
      
      private var §"a§:Number = 0;
      
      protected var §`!C§:Number;
      
      protected var §6$§:Number;
      
      private var §3!V§:Number = 1;
      
      private var §,Y§:Number = 0;
      
      private var §>!$§:b2Vec2;
      
      private var §6!p§:Number = 1;
      
      private var §0!9§:§#!?§;
      
      protected var §>!A§:§`!M§;
      
      protected var §3#§:Boolean = true;
      
      public function §0n§(param1:§]"!§, param2:Sprite, param3:String, param4:§`!M§, param5:Number, param6:Number, param7:Number = 0.0)
      {
         super();
         this.§>!A§ = param4;
         this.§4k§ = param1;
         this.§%!D§ = param2;
         this.mName = param3;
         this.§0!9§ = param4.shape;
         this.§0"3§ = param4.soundResource;
         this.§'!a§ = param5;
         this.§[6§ = param6;
         this.§6H§ = param7 / Math.PI * 180;
         this.§2!]§ = this.§6H§;
         this.§-!'§ = param5;
         this.§!e§ = param6;
         this.§4!0§ = false;
         this.§3J§ = false;
         this.§;f§ = 0;
         this.§>A§ = 0;
         this.§`!C§ = 0;
         this.§0!Z§();
         this.§?4§();
      }
      
      public function dispose() : void
      {
         if(this.§%!D§)
         {
            this.§%!D§.dispose();
            this.§%!D§ = null;
         }
      }
      
      public function get levelItem() : §`!M§
      {
         return this.§>!A§;
      }
      
      public function §6!9§(param1:Boolean) : void
      {
         this.§4!0§ = param1;
         if(!this.§?V§)
         {
            this.§'!a§ = this.§-!'§;
            this.§[6§ = this.§!e§;
            this.§;f§ = this.§6H§;
            this.updateRenderer();
         }
      }
      
      public function set §7h§(param1:Boolean) : void
      {
         this.§3#§ = param1;
      }
      
      public function get §!9§() : Number
      {
         if(this.name.toUpperCase() == "BIRD_GREEN")
         {
            return §`B§;
         }
         return §9B§;
      }
      
      public function §5!U§(param1:Number) : void
      {
         if(!this.§3J§ || this.§4!0§)
         {
            return;
         }
         if(this.§69§ != 0)
         {
            this.§&H§ = 0;
            this.§"a§ = 0;
            this.§;f§ = 0;
            this.§`!Q§ = 0;
            this.§69§ = 0;
         }
         param1 = Math.min(param1,this.§'!L§);
         this.§'!a§ += param1 * (this.§4k§.x - this.§'!a§) / this.§'!L§;
         this.§[6§ += param1 * (this.§4k§.y - this.§[6§) / this.§'!L§;
         this.§[6§ -= param1 / 50 * (this.§'!L§ / §"!G§);
         this.§;f§ += param1 * (360 - this.§;f§) / this.§'!L§;
         this.§'!L§ -= param1;
         if(this.§'!L§ <= 0)
         {
            this.§'!a§ = this.§4k§.x;
            this.§[6§ = this.§4k§.y;
            this.§3J§ = false;
            this.§6!9§(true);
            this.§;f§ = 0;
            this.§6H§ = this.§4k§.angle / Math.PI * 180;
         }
         this.updateRenderer();
      }
      
      public function §@"§() : void
      {
         this.§3J§ = true;
         this.§'!L§ = §"!G§;
         this.§6!b§(§>"§.§5b§);
         if(this.§"a§ != 0)
         {
            this.§[6§ += this.§"a§;
            this.§"a§ = 0;
         }
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§;;§ = null;
         if(!this.§4!0§ && this.§`!C§ >= 0)
         {
            if(this.§6$§ > this.§4k§.§ "+§.§+$§.ground)
            {
               this.applyGravity(this.§4k§.§ "+§.§+$§.ground - this.§6$§);
               this.§`!C§ = -1;
            }
            this.§`!C§ -= param1;
            if(this.§`!C§ <= 0)
            {
               if(this.§&H§ > 0)
               {
                  this.§`!C§ = this.§&H§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§6$§))
               {
                  _loc2_ = this.§4k§.§ "+§.objects.§=f§(this.§'!a§,this.§6$§);
               }
               if(_loc2_ < 0)
               {
                  if(this.applyGravity(param1 / 100))
                  {
                     this.§`!C§ = -1;
                  }
                  else
                  {
                     this.§`!C§ = 0;
                  }
               }
               else
               {
                  _loc3_ = this.§4k§.§ "+§.objects.getObject(_loc2_) as §;;§;
                  if(_loc3_ && _loc3_.§]_§)
                  {
                     this.§-!7§ = false;
                     this.§`!C§ = -1;
                  }
                  else if(_loc3_ && _loc3_.§>!m§())
                  {
                     this.§-!7§ = false;
                     this.§`!C§ = 2000;
                  }
                  else
                  {
                     this.§`!C§ = 500;
                  }
               }
            }
         }
      }
      
      public function applyGravity(param1:Number) : Boolean
      {
         this.§[6§ += param1;
         this.§6$§ += param1;
         if(this.§6$§ > this.§4k§.§ "+§.§+$§.ground)
         {
            param1 = this.§6$§ - this.§4k§.§ "+§.§+$§.ground;
            this.§[6§ -= param1;
            this.§6$§ -= param1;
            this.updateRenderer();
            return true;
         }
         this.updateRenderer();
         return false;
      }
      
      protected function §0!Z§() : void
      {
         var _loc1_:§"!>§ = null;
         if(this.§0!9§ is §"!>§)
         {
            _loc1_ = §"!>§(this.§0!9§);
            this.§>!$§ = new b2Vec2(_loc1_.§@`§.x,_loc1_.§@`§.y);
            this.§ <§ = _loc1_.radius;
         }
         else
         {
            this.§>!$§ = new b2Vec2(0,0);
            this.§ <§ = 1.5;
         }
      }
      
      protected function §?4§() : void
      {
         this.§,<§ = this.§4k§.§ "+§.§%B§.§[!R§(this.mName);
         if(!this.§,<§)
         {
            this.§1!8§(null);
         }
         else
         {
            this.§ b§();
         }
      }
      
      public function §1!8§(param1:DisplayObject) : void
      {
         this.§9!]§ = param1;
         if(this.§9!]§ && this.§9!]§.parent != this.§%!D§)
         {
            this.§%!D§.addChild(this.§9!]§);
         }
         if(this.§9!]§)
         {
            this.§9!]§.pivotX -= this.§>!$§.x / §[d§.§]!U§;
            this.§9!]§.pivotY -= this.§>!$§.y / §[d§.§]!U§;
         }
         this.updateRenderer();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.updateGroundControl(param1);
         if(this.§3J§)
         {
            this.§&H§ = 0;
            _loc4_ = false;
         }
         if(this.§3#§)
         {
            this.§`Y§(param1);
            this.§return§(param1);
            if(_loc4_ && param3)
            {
               this.§;!n§(param1,param2);
            }
         }
      }
      
      public function §`Y§(param1:Number) : void
      {
         if(this.§>A§ > 0)
         {
            this.§>A§ -= param1;
            if(this.§>A§ <= 0)
            {
               this.§6"$§();
            }
         }
         else if(this.§=I§ <= 0 && Math.random() * §['§ < param1 && this.§4k§.mSlingShotState)
         {
            this.§^!1§();
         }
      }
      
      public function §6"$§() : void
      {
         this.§>A§ = 0;
         this.§ b§();
      }
      
      public function §^!1§() : void
      {
         if(!this.§3#§)
         {
            return;
         }
         this.§>A§ = §=!X§;
         this.§4"4§();
      }
      
      protected function §4"4§() : void
      {
         this.§1!8§(this.§,<§.getSubAnimation("blink").getFrame(0,this.§9!]§));
      }
      
      public function §return§(param1:Number) : void
      {
         if(this.§=I§ > 0)
         {
            this.§=I§ -= param1;
            if(this.§=I§ <= 0)
            {
               this.§7^§();
            }
         }
         else if(this.§>A§ <= 0 && Math.random() * §4!?§ < param1)
         {
            this.§6!b§();
         }
      }
      
      public function §7^§() : void
      {
         this.§=I§ = 0;
         this.§ b§();
      }
      
      protected function § b§() : void
      {
         this.§1!8§(this.§,<§.getFrame(0,this.§9!]§));
      }
      
      public function §6!b§(param1:int = -1, param2:Boolean = false) : void
      {
         if(!this.§3#§)
         {
            return;
         }
         if(this.§=I§ > 0)
         {
            this.§7^§();
         }
         if(this.§>A§ > 0)
         {
            this.§6"$§();
         }
         if(param1 < 0)
         {
            param1 = §>"§.§5!X§;
         }
         this.§=I§ = §<"5§;
         this.§#1§();
         if(this.§4!0§ || this.§3J§ || param2)
         {
            §;;§.§%!2§(param1,this.§0"3§);
         }
         else
         {
            §;;§.§%!2§(param1,this.§0"3§,§^i§);
         }
      }
      
      protected function §#1§() : void
      {
         this.§1!8§(this.§,<§.getSubAnimation("yell").getFrame(0,this.§9!]§));
      }
      
      public function §;!n§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§&H§ > 0)
         {
            this.§&H§ -= param1;
            if(this.§&H§ <= 0)
            {
               ++this.§0!]§;
               this.§`!Q§ *= 0.4;
               if(!this.§4!0§ && this.§0!]§ < 2)
               {
                  if(this.§0!]§ > 1 && this.§`!Q§ < -1)
                  {
                     this.§`!Q§ = -1;
                  }
                  this.§?!u§ = this.§`!Q§;
                  this.§&H§ = §5!Y§;
                  this.§&H§ *= Math.abs(this.§?!u§) / 2;
                  this.§?n§ = this.§&H§;
                  this.§;f§ = 0;
                  this.§69§ = 0;
               }
               else if(!this.§4!0§ && param2)
               {
                  this.§7!§(1.5);
               }
               else
               {
                  this.§&H§ = 0;
                  this.§"a§ = 0;
                  this.§;f§ = 0;
                  this.§`!Q§ = 0;
               }
            }
            else
            {
               if(this.§&H§ >= this.§?n§ / 2)
               {
                  _loc3_ = (this.§?n§ - this.§&H§) / (this.§?n§ / 2);
                  _loc3_ = §=!9§.§2!P§(_loc3_);
                  this.§"a§ = _loc3_ * this.§?!u§;
               }
               else
               {
                  _loc3_ = (this.§?n§ / 2 - this.§&H§) / (this.§?n§ / 2);
                  _loc3_ = §=!9§.§2!P§(_loc3_,false);
                  this.§"a§ = this.§?!u§ + _loc3_ * -this.§?!u§;
               }
               this.§;f§ = 360 * §=!9§.§2!P§((this.§?n§ - this.§&H§) / this.§?n§) * this.§69§;
            }
            this.updateRenderer();
         }
         else if(Math.random() * §[G§ < param1 && !this.§4!0§ && !this.§3J§ && !this.§-!7§)
         {
            this.§7!§();
         }
      }
      
      public function §7!§(param1:Number = 1) : void
      {
         if(!this.§3#§)
         {
            return;
         }
         this.§0!]§ = 0;
         this.§&H§ = §5!Y§;
         this.§"a§ = 0;
         this.§?!u§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§`!Q§ = this.§?!u§;
         this.§&H§ *= Math.abs(this.§?!u§) / 3;
         this.§?n§ = this.§&H§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§69§ = 0;
         }
         else if(this.§&H§ < 350)
         {
            this.§69§ = 0;
         }
         else
         {
            this.§69§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§69§ = Math.random() > 0.5 ? Number(this.§69§) : Number(0);
         }
      }
      
      public function updateRenderer() : void
      {
         if(this.§4k§.§7!N§)
         {
            this.§%!D§.x = this.§'!a§ / §[d§.§]!U§;
            this.§%!D§.y = (this.§[6§ + this.§"a§) / §[d§.§]!U§;
         }
         else
         {
            this.§%!D§.x = (this.§'!a§ + this.§"a§ * Math.cos((this.§6H§ + 90) / 180 * Math.PI)) / §[d§.§]!U§;
            this.§%!D§.y = (this.§[6§ + this.§"a§ * Math.sin((this.§6H§ + 90) / 180 * Math.PI)) / §[d§.§]!U§;
         }
         this.§%!D§.rotation = (this.§;f§ + this.§6H§) / 180 * Math.PI;
      }
      
      public function §-!+§() : void
      {
         this.§-!7§ = true;
         this.§4!0§ = false;
         this.§3J§ = false;
         this.§0!]§ = 0;
         this.§`!C§ = 0;
         this.§&H§ = 0;
         this.§&H§ = 0;
         this.§"a§ = 0;
         this.§;f§ = 0;
         this.§`!Q§ = 0;
         this.§69§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§'!a§) * (param1 - this.§'!a§) + (param2 - this.§[6§) * (param2 - this.§[6§));
         if(_loc3_ <= this.§ <§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§'!a§ >= param3 && this.§'!a§ <= param4 && this.§[6§ >= param1 && this.§[6§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = false;
         if(this.§'!a§ != param1 || this.§[6§ != param2)
         {
            _loc4_ = true;
         }
         this.§'!a§ = param1;
         this.§[6§ = param2;
         this.§;f§ = param3;
         this.§`!C§ = 100;
         this.updateRenderer();
         if(_loc4_)
         {
            this.§4k§.§]"&§();
         }
      }
      
      public function get §`d§() : Number
      {
         return this.§&H§;
      }
      
      public function get §#]§() : Number
      {
         return this.§`!C§;
      }
      
      public function set §#]§(param1:Number) : void
      {
         this.§`!C§ = param1;
      }
      
      public function get §5" §() : Number
      {
         return this.§3!V§;
      }
      
      public function get §?V§() : Boolean
      {
         return this.§4!0§;
      }
      
      public function get radius() : Number
      {
         return this.§ <§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§%!D§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §5" §(param1:Number) : void
      {
         this.§3!V§ = param1;
      }
      
      public function get §<P§() : Number
      {
         return this.§,Y§;
      }
      
      public function set §<P§(param1:Number) : void
      {
         this.§,Y§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§6!p§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§6!p§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§'!a§;
      }
      
      public function get y() : Number
      {
         return this.§[6§;
      }
      
      public function get §-A§() : Number
      {
         return this.§-!'§;
      }
      
      public function get §?_§() : Number
      {
         return this.§!e§;
      }
   }
}
