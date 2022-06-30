package §^!7§
{
   import §"!<§.Texture;
   import §%!$§.§3,§;
   import §%O§.§6?§;
   import §%O§.§=I§;
   import §<!-§.Sprite;
   import §<!-§.§^B§;
   import §=i§.b2Vec2;
   import §`!X§.§5&§;
   import §`Y§.§3!M§;
   import §`Y§.§[!'§;
   import §`Y§.§]!%§;
   
   public class §]!N§
   {
      
      public static const §!W§:String = "ChannelSlingshot";
      
      public static const §<W§:Number = 900;
      
      public static const §&R§:Number = 200;
      
      public static const § ;§:Number = 200;
      
      public static const §0O§:Number = 1500;
      
      public static const §4+§:Number = 5000;
      
      public static const §2!N§:Number = 1000;
      
      public static const §70§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var §-!c§:Number;
      
      protected var §3![§:Number;
      
      protected var §?%§:Number;
      
      protected var §"!U§:Number;
      
      private var §3!;§:§3!M§;
      
      protected var §9!#§:Number;
      
      protected var §-!W§:Number = 1;
      
      private var §0b§:Sprite;
      
      protected var §"!`§:§6?§;
      
      private var §7!§:§^B§;
      
      protected var §7Y§:§]H§;
      
      private var §4H§:Number;
      
      private var §'B§:Boolean = false;
      
      private var §3!O§:Boolean = false;
      
      protected var §[d§:Boolean = false;
      
      private var §"s§:Number;
      
      private var §;!H§:Number = 0;
      
      private var §!!U§:Number = 0;
      
      private var §,6§:Number = 0;
      
      private var § 5§:Number = 1000;
      
      private var §'!V§:Number;
      
      private var §>![§:Number;
      
      private var §[,§:int;
      
      private var §2L§:Number = 0;
      
      protected var §=K§:Number;
      
      protected var §?<§:Number;
      
      private var §'!#§:Number = 1;
      
      private var §#2§:Number = 0;
      
      private var §'!U§:b2Vec2;
      
      private var §0!^§:Number = 1;
      
      public function §]!N§(param1:§]H§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§7Y§ = param1;
         this.§0b§ = param2;
         this.mName = param3;
         this.§3!;§ = §]!%§.§=!>§(this.mName).§6;§;
         this.§-!c§ = param4;
         this.§3![§ = param5;
         this.§?%§ = param4;
         this.§"!U§ = param5;
         this.§9!#§ = 0;
         this.§'B§ = false;
         this.§3!O§ = false;
         this.§;!H§ = 0;
         this.§6n§();
         this.§=K§ = 0;
      }
      
      public function §5M§() : void
      {
         this.§'B§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§0b§)
         {
            this.§0b§.dispose();
            this.§0b§ = null;
         }
      }
      
      public function §<-§(param1:Number) : void
      {
         if(!this.§3!O§ || this.§'B§)
         {
            return;
         }
         if(this.§-!W§ != 0)
         {
            this.§,6§ = 0;
            this.§2L§ = 0;
            this.§9!#§ = 0;
            this.§>![§ = 0;
            this.§-!W§ = 0;
         }
         param1 = Math.min(param1,this.§"s§);
         this.§-!c§ += param1 * (this.§7Y§.§-!c§ - this.§-!c§) / this.§"s§;
         this.§3![§ += param1 * (this.§7Y§.§3![§ - this.§3![§) / this.§"s§;
         this.§3![§ -= param1 / 50 * (this.§"s§ / §<W§);
         this.§9!#§ += param1 * (360 - this.§9!#§) / this.§"s§;
         this.§"s§ -= param1;
         if(this.§"s§ <= 0)
         {
            this.§-!c§ = this.§7Y§.§-!c§;
            this.§3![§ = this.§7Y§.§3![§;
            this.§3!O§ = false;
            this.§'B§ = true;
            this.§9!#§ = 0;
         }
         this.§#G§();
      }
      
      public function §>A§() : void
      {
         this.§3!O§ = true;
         this.§"s§ = §<W§;
         this.§>!F§(§3!M§.§^!L§);
         if(this.§2L§ != 0)
         {
            this.§3![§ += this.§2L§;
            this.§2L§ = 0;
         }
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§'B§ && this.§=K§ >= 0)
         {
            if(this.§?<§ > this.§7Y§.§<&§.§9§.§72§)
            {
               this.applyGravity(this.§7Y§.§<&§.§9§.§72§ - this.§?<§);
               this.§=K§ = -1;
            }
            this.§=K§ -= param1;
            if(this.§=K§ <= 0)
            {
               if(this.§,6§ > 0)
               {
                  this.§=K§ = this.§,6§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§?<§))
               {
                  _loc2_ = this.§7Y§.§<&§.objects.§"y§(this.§-!c§,this.§?<§);
               }
               if(_loc2_ < 0)
               {
                  if(this.applyGravity(param1 / 100))
                  {
                     this.§=K§ = -1;
                  }
                  else
                  {
                     this.§=K§ = 0;
                  }
               }
               else if(!this.§7Y§.§<&§.objects.§[o§(_loc2_).§"%§)
               {
                  this.§[d§ = false;
                  this.§=K§ = -1;
               }
               else if(this.§7Y§.§<&§.objects.§[o§(_loc2_).§9!E§())
               {
                  this.§[d§ = false;
                  this.§=K§ = 2000;
               }
               else
               {
                  this.§=K§ = 500;
               }
            }
         }
      }
      
      public function applyGravity(param1:Number) : Boolean
      {
         this.§3![§ += param1;
         this.§?<§ += param1;
         if(this.§?<§ > this.§7Y§.§<&§.§9§.§72§)
         {
            param1 = this.§?<§ - this.§7Y§.§<&§.§9§.§72§;
            this.§3![§ -= param1;
            this.§?<§ -= param1;
            this.§#G§();
            return true;
         }
         this.§#G§();
         return false;
      }
      
      public function §6n§() : void
      {
         var _loc1_:§[!'§ = §]!%§.§=!>§(this.mName).shape;
         if(_loc1_.§&!`§() == §[!'§.§@![§)
         {
            this.§'!U§ = _loc1_.§+w§()[0];
            this.§4H§ = _loc1_.§]2§;
         }
         else if(_loc1_.§&!`§() == §[!'§.§>1§)
         {
            this.§'!U§ = new b2Vec2(0,0);
            this.§4H§ = 1.5;
         }
         this.§"!`§ = this.§7Y§.§<&§.§7p§.§=!B§(this.mName);
         if(!this.§"!`§)
         {
            this.setPivotTexture(null);
         }
         else
         {
            this.setPivotTexture(this.§"!`§.getFrame(0));
         }
      }
      
      public function setPivotTexture(param1:§=I§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§7Y§.§-!,§.textureManager.§';§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§7!§ == null)
         {
            this.§7!§ = new §^B§(_loc2_);
            this.§0b§.addChild(this.§7!§);
         }
         else
         {
            this.§7!§.texture = _loc2_;
         }
         if(param1)
         {
            this.§7!§.x = -param1.pivotX - this.§'!U§.x / §^A§.§<U§;
            this.§7!§.y = -param1.pivotY - this.§'!U§.y / §^A§.§<U§;
         }
         else
         {
            this.§7!§.x = -this.§7!§.width / 2;
            this.§7!§.y = -this.§7!§.height / 2;
         }
         this.§7!§.scaleX = _loc3_;
         this.§7!§.scaleY = _loc3_;
         this.§#G§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.updateGroundControl(param1);
         if(this.§3!O§)
         {
            this.§,6§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§ !^§(param1);
            this.§;U§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§-!5§(param1,param2);
            }
         }
      }
      
      public function § !^§(param1:Number) : void
      {
         if(this.§;!H§ > 0)
         {
            this.§;!H§ -= param1;
            if(this.§;!H§ <= 0)
            {
               this.§-![§();
            }
         }
         else if(this.§!!U§ <= 0 && Math.random() * §0O§ < param1 && this.§7Y§.mSlingShotState)
         {
            this.§'!?§();
         }
      }
      
      public function §-![§() : void
      {
         this.§;!H§ = 0;
         this.setPivotTexture(this.§"!`§.getFrame(0));
      }
      
      public function §'!?§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§;!H§ = §&R§;
         this.setPivotTexture(this.§"!`§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §;U§(param1:Number) : void
      {
         if(this.§!!U§ > 0)
         {
            this.§!!U§ -= param1;
            if(this.§!!U§ <= 0)
            {
               this.§@0§();
            }
         }
         else if(this.§;!H§ <= 0 && Math.random() * §4+§ < param1)
         {
            this.§>!F§();
         }
      }
      
      public function §@0§() : void
      {
         this.§!!U§ = 0;
         this.setPivotTexture(this.§"!`§.getFrame(0));
      }
      
      public function §>!F§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§!!U§ > 0)
         {
            this.§@0§();
         }
         if(this.§;!H§ > 0)
         {
            this.§-![§();
         }
         if(param1 < 0)
         {
            param1 = §3!M§.§!!Q§;
         }
         this.§!!U§ = § ;§;
         this.setPivotTexture(this.§"!`§.getSubAnimation("yell").getFrame(0));
         if(this.§'B§ || this.§3!O§ || param2)
         {
            §5&§.§7!D§(param1,this.§3!;§);
         }
         else
         {
            §5&§.§7!D§(param1,this.§3!;§,§!W§);
         }
      }
      
      public function §-!5§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§,6§ > 0)
         {
            this.§,6§ -= param1;
            if(this.§,6§ <= 0)
            {
               ++this.§[,§;
               this.§>![§ *= 0.4;
               if(!this.§'B§ && this.§[,§ < 2)
               {
                  if(this.§[,§ > 1 && this.§>![§ < -1)
                  {
                     this.§>![§ = -1;
                  }
                  this.§'!V§ = this.§>![§;
                  this.§,6§ = §70§;
                  this.§,6§ *= Math.abs(this.§'!V§) / 2;
                  this.§ 5§ = this.§,6§;
                  this.§9!#§ = 0;
                  this.§-!W§ = 0;
               }
               else if(!this.§'B§ && param2)
               {
                  this.§&P§(2.25);
               }
               else
               {
                  this.§,6§ = 0;
                  this.§2L§ = 0;
                  this.§9!#§ = 0;
                  this.§>![§ = 0;
               }
            }
            else
            {
               if(this.§,6§ >= this.§ 5§ / 2)
               {
                  _loc3_ = (this.§ 5§ - this.§,6§) / (this.§ 5§ / 2);
                  _loc3_ = §3,§.§0P§(_loc3_);
                  this.§2L§ = _loc3_ * this.§'!V§;
               }
               else
               {
                  _loc3_ = (this.§ 5§ / 2 - this.§,6§) / (this.§ 5§ / 2);
                  _loc3_ = §3,§.§0P§(_loc3_,false);
                  this.§2L§ = this.§'!V§ + _loc3_ * -this.§'!V§;
               }
               this.§9!#§ = 360 * §3,§.§0P§((this.§ 5§ - this.§,6§) / this.§ 5§) * this.§-!W§;
            }
            this.§#G§();
         }
         else if(Math.random() * §2!N§ < param1 && !this.§'B§ && !this.§3!O§ && !this.§[d§)
         {
            this.§&P§();
         }
      }
      
      public function §&P§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§[,§ = 0;
         this.§,6§ = §70§;
         this.§2L§ = 0;
         this.§'!V§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§>![§ = this.§'!V§;
         this.§,6§ *= Math.abs(this.§'!V§) / 3;
         this.§ 5§ = this.§,6§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§-!W§ = 0;
         }
         else if(this.§,6§ < 350)
         {
            this.§-!W§ = 0;
         }
         else
         {
            this.§-!W§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§-!W§ = Math.random() > 0.5 ? Number(this.§-!W§) : Number(0);
         }
      }
      
      public function §#G§() : void
      {
         this.§0b§.x = this.§-!c§ / §^A§.§<U§;
         this.§0b§.y = (this.§3![§ + this.§2L§) / §^A§.§<U§;
         this.§0b§.rotation = this.§9!#§ / 180 * Math.PI;
      }
      
      public function §5!4§() : void
      {
         this.§[d§ = true;
         this.§'B§ = false;
         this.§3!O§ = false;
         this.§[,§ = 0;
         this.§=K§ = 0;
         this.§,6§ = 0;
         this.§,6§ = 0;
         this.§2L§ = 0;
         this.§9!#§ = 0;
         this.§>![§ = 0;
         this.§-!W§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§-!c§) * (param1 - this.§-!c§) + (param2 - this.§3![§) * (param2 - this.§3![§));
         if(_loc3_ <= this.§4H§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§-!c§ >= param3 && this.§-!c§ <= param4 && this.§3![§ >= param1 && this.§3![§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.§-!c§ != param1 || this.§3![§ != param2)
         {
            _loc3_ = true;
         }
         this.§-!c§ = param1;
         this.§3![§ = param2;
         this.§=K§ = 100;
         this.§#G§();
         if(_loc3_)
         {
            this.§7Y§.§9!O§();
         }
      }
      
      public function §2G§() : §^B§
      {
         return this.§7!§;
      }
      
      public function get §-!T§() : Number
      {
         return this.§,6§;
      }
      
      public function get §6O§() : Number
      {
         return this.§=K§;
      }
      
      public function set §6O§(param1:Number) : void
      {
         this.§=K§ = param1;
      }
      
      public function get §5q§() : Number
      {
         return this.§'!#§;
      }
      
      public function get §^H§() : Boolean
      {
         return this.§'B§;
      }
      
      public function get radius() : Number
      {
         return this.§4H§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§0b§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §5q§(param1:Number) : void
      {
         this.§'!#§ = param1;
      }
      
      public function get §^!A§() : Number
      {
         return this.§#2§;
      }
      
      public function set §^!A§(param1:Number) : void
      {
         this.§#2§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§0!^§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§0!^§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§-!c§;
      }
      
      public function get y() : Number
      {
         return this.§3![§;
      }
      
      public function get §@§() : Number
      {
         return this.§?%§;
      }
      
      public function get §?!W§() : Number
      {
         return this.§"!U§;
      }
   }
}
