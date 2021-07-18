package §'4§
{
   import §"!&§.§8X§;
   import §"!&§.§="A§;
   import §"!&§.§=C§;
   import §"!&§.set;
   import §0N§.§8!z§;
   import §4&§.§#r§;
   import §7!8§.DisplayObject;
   import §7!8§.Sprite;
   import §9t§.b2Vec2;
   import §]">§.§1!0§;
   
   public class §-T§
   {
      
      public static const §7!D§:String = "ChannelSlingshot";
      
      public static const §8!g§:Number = 900;
      
      public static const §%!d§:Number = 200;
      
      public static const §4!6§:Number = 200;
      
      public static const §=x§:Number = 1500;
      
      public static const §9+§:Number = 5000;
      
      public static const §8N§:Number = 1000;
      
      public static const §[t§:Number = 1000;
      
      public static const §;x§:Number = 46.25;
      
      public static const §@!z§:Number = 52.5;
       
      
      protected var mName:String;
      
      protected var §""4§:Number;
      
      protected var §%W§:Number;
      
      protected var §#!O§:Number;
      
      protected var §0!j§:Number;
      
      protected var §%!Y§:Number;
      
      protected var §0!$§:Number;
      
      private var §'!%§:§=C§;
      
      protected var §1"3§:Number;
      
      protected var §6!<§:Number = 1;
      
      private var §]!$§:Sprite;
      
      protected var §]!k§:§#r§;
      
      private var §]"E§:DisplayObject;
      
      protected var §42§:§3!n§;
      
      private var §?!1§:Number;
      
      protected var §&"G§:Boolean = false;
      
      private var §87§:Boolean = false;
      
      protected var §@!J§:Boolean = false;
      
      private var §`![§:Number;
      
      private var §"F§:Number = 0;
      
      private var §>+§:Number = 0;
      
      private var §?"F§:Number = 0;
      
      private var §,!7§:Number = 1000;
      
      private var §!!Y§:Number;
      
      private var §+!&§:Number;
      
      private var §,_§:int;
      
      private var §40§:Number = 0;
      
      protected var §5d§:Number;
      
      protected var §9]§:Number;
      
      private var §[" §:Number = 1;
      
      private var §4;§:Number = 0;
      
      private var §0L§:b2Vec2;
      
      private var §=T§:Number = 1;
      
      private var §!!8§:set;
      
      protected var §7!h§:§8X§;
      
      protected var §6!x§:Boolean = true;
      
      public function §-T§(param1:§3!n§, param2:Sprite, param3:String, param4:§8X§, param5:Number, param6:Number, param7:Number = 0.0)
      {
         super();
         this.§7!h§ = param4;
         this.§42§ = param1;
         this.§]!$§ = param2;
         this.mName = param3;
         this.§!!8§ = param4.shape;
         this.§'!%§ = param4.soundResource;
         this.§""4§ = param5;
         this.§%W§ = param6;
         this.§#!O§ = param7 / Math.PI * 180;
         this.§0!$§ = this.§#!O§;
         this.§0!j§ = param5;
         this.§%!Y§ = param6;
         this.§&"G§ = false;
         this.§87§ = false;
         this.§1"3§ = 0;
         this.§"F§ = 0;
         this.§5d§ = 0;
         this.§>y§();
         this.§-g§();
      }
      
      public function dispose() : void
      {
         if(this.§]!$§)
         {
            this.§]!$§.dispose();
            this.§]!$§ = null;
         }
      }
      
      public function get levelItem() : §8X§
      {
         return this.§7!h§;
      }
      
      public function §[k§(param1:Boolean) : void
      {
         this.§&"G§ = param1;
         if(!this.§#!D§)
         {
            this.§""4§ = this.§0!j§;
            this.§%W§ = this.§%!Y§;
            this.§1"3§ = this.§#!O§;
            this.updateRenderer();
         }
      }
      
      public function set §6!q§(param1:Boolean) : void
      {
         this.§6!x§ = param1;
      }
      
      public function get §`!$§() : Number
      {
         if(this.name.toUpperCase() == "BIRD_GREEN")
         {
            return §@!z§;
         }
         return §;x§;
      }
      
      public function § !S§(param1:Number) : void
      {
         if(!this.§87§ || this.§&"G§)
         {
            return;
         }
         if(this.§6!<§ != 0)
         {
            this.§?"F§ = 0;
            this.§40§ = 0;
            this.§1"3§ = 0;
            this.§+!&§ = 0;
            this.§6!<§ = 0;
         }
         param1 = Math.min(param1,this.§`![§);
         this.§""4§ += param1 * (this.§42§.x - this.§""4§) / this.§`![§;
         this.§%W§ += param1 * (this.§42§.y - this.§%W§) / this.§`![§;
         this.§%W§ -= param1 / 50 * (this.§`![§ / §8!g§);
         this.§1"3§ += param1 * (360 - this.§1"3§) / this.§`![§;
         this.§`![§ -= param1;
         if(this.§`![§ <= 0)
         {
            this.§""4§ = this.§42§.x;
            this.§%W§ = this.§42§.y;
            this.§87§ = false;
            this.§[k§(true);
            this.§1"3§ = 0;
            this.§#!O§ = this.§42§.angle / Math.PI * 180;
         }
         this.updateRenderer();
      }
      
      public function §8I§() : void
      {
         this.§87§ = true;
         this.§`![§ = §8!g§;
         this.§ @§(§=C§.§6!4§);
         if(this.§40§ != 0)
         {
            this.§%W§ += this.§40§;
            this.§40§ = 0;
         }
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§1!0§ = null;
         if(!this.§&"G§ && this.§5d§ >= 0)
         {
            if(this.§9]§ > this.§42§.§-d§.§&+§.ground)
            {
               this.applyGravity(this.§42§.§-d§.§&+§.ground - this.§9]§);
               this.§5d§ = -1;
            }
            this.§5d§ -= param1;
            if(this.§5d§ <= 0)
            {
               if(this.§?"F§ > 0)
               {
                  this.§5d§ = this.§?"F§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§9]§))
               {
                  _loc2_ = this.§42§.§-d§.objects.§+!F§(this.§""4§,this.§9]§);
               }
               if(_loc2_ < 0)
               {
                  if(this.applyGravity(param1 / 100))
                  {
                     this.§5d§ = -1;
                  }
                  else
                  {
                     this.§5d§ = 0;
                  }
               }
               else
               {
                  _loc3_ = this.§42§.§-d§.objects.getObject(_loc2_) as §1!0§;
                  if(_loc3_ && _loc3_.§8Z§)
                  {
                     this.§@!J§ = false;
                     this.§5d§ = -1;
                  }
                  else if(_loc3_ && _loc3_.§%!8§())
                  {
                     this.§@!J§ = false;
                     this.§5d§ = 2000;
                  }
                  else
                  {
                     this.§5d§ = 500;
                  }
               }
            }
         }
      }
      
      public function applyGravity(param1:Number) : Boolean
      {
         this.§%W§ += param1;
         this.§9]§ += param1;
         if(this.§9]§ > this.§42§.§-d§.§&+§.ground)
         {
            param1 = this.§9]§ - this.§42§.§-d§.§&+§.ground;
            this.§%W§ -= param1;
            this.§9]§ -= param1;
            this.updateRenderer();
            return true;
         }
         this.updateRenderer();
         return false;
      }
      
      protected function §>y§() : void
      {
         var _loc1_:§="A§ = null;
         if(this.§!!8§ is §="A§)
         {
            _loc1_ = §="A§(this.§!!8§);
            this.§0L§ = new b2Vec2(_loc1_.§="+§.x,_loc1_.§="+§.y);
            this.§?!1§ = _loc1_.radius;
         }
         else
         {
            this.§0L§ = new b2Vec2(0,0);
            this.§?!1§ = 1.5;
         }
      }
      
      protected function §-g§() : void
      {
         this.§]!k§ = this.§42§.§-d§.animationManager.getAnimation(this.mName);
         if(!this.§]!k§)
         {
            this.§?k§(null);
         }
         else
         {
            this.§="F§();
         }
      }
      
      public function §?k§(param1:DisplayObject) : void
      {
         this.§]"E§ = param1;
         if(this.§]"E§ && this.§]"E§.parent != this.§]!$§)
         {
            this.§]!$§.addChild(this.§]"E§);
         }
         this.updateRenderer();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.updateGroundControl(param1);
         if(this.§87§)
         {
            this.§?"F§ = 0;
            _loc4_ = false;
         }
         if(this.§6!x§)
         {
            this.§^!,§(param1);
            this.§""#§(param1);
            if(_loc4_ && param3)
            {
               this.§?!]§(param1,param2);
            }
         }
      }
      
      public function §^!,§(param1:Number) : void
      {
         if(this.§"F§ > 0)
         {
            this.§"F§ -= param1;
            if(this.§"F§ <= 0)
            {
               this.§5",§();
            }
         }
         else if(this.§>+§ <= 0 && Math.random() * §=x§ < param1 && this.§42§.mSlingShotState)
         {
            this.§-!G§();
         }
      }
      
      public function §5",§() : void
      {
         this.§"F§ = 0;
         this.§="F§();
      }
      
      public function §-!G§() : void
      {
         if(!this.§6!x§)
         {
            return;
         }
         this.§"F§ = §%!d§;
         this.§'?§();
      }
      
      protected function §'?§() : void
      {
         this.§?k§(this.§]!k§.getSubAnimation("blink").getFrame(0,this.§]"E§));
      }
      
      public function §""#§(param1:Number) : void
      {
         if(this.§>+§ > 0)
         {
            this.§>+§ -= param1;
            if(this.§>+§ <= 0)
            {
               this.§1$§();
            }
         }
         else if(this.§"F§ <= 0 && Math.random() * §9+§ < param1)
         {
            this.§ @§();
         }
      }
      
      public function §1$§() : void
      {
         this.§>+§ = 0;
         this.§="F§();
      }
      
      protected function §="F§() : void
      {
         this.§?k§(this.§]!k§.getFrame(0,this.§]"E§));
      }
      
      public function § @§(param1:int = -1, param2:Boolean = false) : void
      {
         if(!this.§6!x§)
         {
            return;
         }
         if(this.§>+§ > 0)
         {
            this.§1$§();
         }
         if(this.§"F§ > 0)
         {
            this.§5",§();
         }
         if(param1 < 0)
         {
            param1 = §=C§.§=v§;
         }
         this.§>+§ = §4!6§;
         this.§[!;§();
         if(this.§&"G§ || this.§87§ || param2)
         {
            §1!0§.§3!V§(param1,this.§'!%§);
         }
         else
         {
            §1!0§.§3!V§(param1,this.§'!%§,§7!D§);
         }
      }
      
      protected function §[!;§() : void
      {
         this.§?k§(this.§]!k§.getSubAnimation("yell").getFrame(0,this.§]"E§));
      }
      
      public function §?!]§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§?"F§ > 0)
         {
            this.§?"F§ -= param1;
            if(this.§?"F§ <= 0)
            {
               ++this.§,_§;
               this.§+!&§ *= 0.4;
               if(!this.§&"G§ && this.§,_§ < 2)
               {
                  if(this.§,_§ > 1 && this.§+!&§ < -1)
                  {
                     this.§+!&§ = -1;
                  }
                  this.§!!Y§ = this.§+!&§;
                  this.§?"F§ = §[t§;
                  this.§?"F§ *= Math.abs(this.§!!Y§) / 2;
                  this.§,!7§ = this.§?"F§;
                  this.§1"3§ = 0;
                  this.§6!<§ = 0;
               }
               else if(!this.§&"G§ && param2)
               {
                  this.§@G§(1.5);
               }
               else
               {
                  this.§?"F§ = 0;
                  this.§40§ = 0;
                  this.§1"3§ = 0;
                  this.§+!&§ = 0;
               }
            }
            else
            {
               if(this.§?"F§ >= this.§,!7§ / 2)
               {
                  _loc3_ = (this.§,!7§ - this.§?"F§) / (this.§,!7§ / 2);
                  _loc3_ = §8!z§.§@!I§(_loc3_);
                  this.§40§ = _loc3_ * this.§!!Y§;
               }
               else
               {
                  _loc3_ = (this.§,!7§ / 2 - this.§?"F§) / (this.§,!7§ / 2);
                  _loc3_ = §8!z§.§@!I§(_loc3_,false);
                  this.§40§ = this.§!!Y§ + _loc3_ * -this.§!!Y§;
               }
               this.§1"3§ = 360 * §8!z§.§@!I§((this.§,!7§ - this.§?"F§) / this.§,!7§) * this.§6!<§;
            }
            this.updateRenderer();
         }
         else if(Math.random() * §8N§ < param1 && !this.§&"G§ && !this.§87§ && !this.§@!J§)
         {
            this.§@G§();
         }
      }
      
      public function §@G§(param1:Number = 1) : void
      {
         if(!this.§6!x§)
         {
            return;
         }
         this.§,_§ = 0;
         this.§?"F§ = §[t§;
         this.§40§ = 0;
         this.§!!Y§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§+!&§ = this.§!!Y§;
         this.§?"F§ *= Math.abs(this.§!!Y§) / 3;
         this.§,!7§ = this.§?"F§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§6!<§ = 0;
         }
         else if(this.§?"F§ < 350)
         {
            this.§6!<§ = 0;
         }
         else
         {
            this.§6!<§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§6!<§ = Math.random() > 0.5 ? Number(this.§6!<§) : Number(0);
         }
      }
      
      public function updateRenderer() : void
      {
         if(this.§42§.§7=§)
         {
            this.§]!$§.x = this.§""4§ / §^g§.§5!-§;
            this.§]!$§.y = (this.§%W§ + this.§40§) / §^g§.§5!-§;
         }
         else
         {
            this.§]!$§.x = (this.§""4§ + this.§40§ * Math.cos((this.§#!O§ + 90) / 180 * Math.PI)) / §^g§.§5!-§;
            this.§]!$§.y = (this.§%W§ + this.§40§ * Math.sin((this.§#!O§ + 90) / 180 * Math.PI)) / §^g§.§5!-§;
         }
         this.§]!$§.rotation = (this.§1"3§ + this.§#!O§) / 180 * Math.PI;
      }
      
      public function §[!n§() : void
      {
         this.§@!J§ = true;
         this.§&"G§ = false;
         this.§87§ = false;
         this.§,_§ = 0;
         this.§5d§ = 0;
         this.§?"F§ = 0;
         this.§?"F§ = 0;
         this.§40§ = 0;
         this.§1"3§ = 0;
         this.§+!&§ = 0;
         this.§6!<§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§""4§) * (param1 - this.§""4§) + (param2 - this.§%W§) * (param2 - this.§%W§));
         if(_loc3_ <= this.§?!1§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§""4§ >= param3 && this.§""4§ <= param4 && this.§%W§ >= param1 && this.§%W§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = false;
         if(this.§""4§ != param1 || this.§%W§ != param2)
         {
            _loc4_ = true;
         }
         this.§""4§ = param1;
         this.§%W§ = param2;
         this.§1"3§ = param3;
         this.§5d§ = 100;
         this.updateRenderer();
         if(_loc4_)
         {
            this.§42§.§`k§();
         }
      }
      
      public function get §8!4§() : Number
      {
         return this.§?"F§;
      }
      
      public function get §&"3§() : Number
      {
         return this.§5d§;
      }
      
      public function set §&"3§(param1:Number) : void
      {
         this.§5d§ = param1;
      }
      
      public function get § !K§() : Number
      {
         return this.§[" §;
      }
      
      public function get §#!D§() : Boolean
      {
         return this.§&"G§;
      }
      
      public function get radius() : Number
      {
         return this.§?!1§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§]!$§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set § !K§(param1:Number) : void
      {
         this.§[" § = param1;
      }
      
      public function get §@!Y§() : Number
      {
         return this.§4;§;
      }
      
      public function set §@!Y§(param1:Number) : void
      {
         this.§4;§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§=T§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§=T§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§""4§;
      }
      
      public function get y() : Number
      {
         return this.§%W§;
      }
      
      public function get § "'§() : Number
      {
         return this.§0!j§;
      }
      
      public function get §=!q§() : Number
      {
         return this.§%!Y§;
      }
   }
}
