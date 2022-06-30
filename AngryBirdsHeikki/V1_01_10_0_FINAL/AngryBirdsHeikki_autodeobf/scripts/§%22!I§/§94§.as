package §"!I§
{
   import §+!8§.§,_§;
   import §2Y§.§7!f§;
   import §2Y§.Sprite;
   import §6A§.b2Vec2;
   import §=!<§.§!x§;
   import §=!<§.§8!!§;
   import §@0§.§!k§;
   import §@0§.§3U§;
   import §@0§.§`>§;
   import §@R§.§;U§;
   
   public class §94§
   {
      
      public static const §?A§:String = "ChannelSlingshot";
      
      public static const §^^§:Number = 900;
      
      public static const §`I§:Number = 200;
      
      public static const §5a§:Number = 200;
      
      public static const §7d§:Number = 1500;
      
      public static const §#!$§:Number = 5000;
      
      public static const §<!3§:Number = 1000;
      
      public static const §+!Q§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var §"!d§:Number;
      
      protected var §,!W§:Number;
      
      protected var §7!=§:Number;
      
      protected var §9!'§:Number;
      
      private var §-b§:§!k§;
      
      protected var §^Y§:Number;
      
      protected var §#4§:Number = 1;
      
      private var §;=§:Sprite;
      
      protected var §&!e§:§!x§;
      
      private var §@!!§:§7!f§;
      
      protected var §5Z§:§9§;
      
      private var §]u§:Number;
      
      private var §1u§:Boolean = false;
      
      private var §5q§:Boolean = false;
      
      protected var §3+§:Boolean = false;
      
      private var §'[§:Number;
      
      private var §@!F§:Number = 0;
      
      private var §<8§:Number = 0;
      
      private var §0!+§:Number = 0;
      
      private var §1z§:Number = 1000;
      
      private var §9F§:Number;
      
      private var §0B§:Number;
      
      private var §^S§:int;
      
      private var §"!B§:Number = 0;
      
      protected var §3`§:Number;
      
      protected var §0P§:Number;
      
      private var §^!O§:Number = 1;
      
      private var §]!C§:Number = 0;
      
      private var §5`§:b2Vec2;
      
      private var get:Number = 1;
      
      public function §94§(param1:§9§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§5Z§ = param1;
         this.§;=§ = param2;
         this.mName = param3;
         this.§-b§ = §`>§.§<!>§(this.mName).§[v§;
         this.§"!d§ = param4;
         this.§,!W§ = param5;
         this.§7!=§ = param4;
         this.§9!'§ = param5;
         this.§^Y§ = 0;
         this.§1u§ = false;
         this.§5q§ = false;
         this.§@!F§ = 0;
         this.§`!3§();
         this.§3`§ = 0;
      }
      
      public function §>!'§() : void
      {
         this.§1u§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§;=§)
         {
            this.§;=§.dispose();
            this.§;=§ = null;
         }
      }
      
      public function §'!,§(param1:Number) : void
      {
         if(!this.§5q§ || this.§1u§)
         {
            return;
         }
         if(this.§#4§ != 0)
         {
            this.§0!+§ = 0;
            this.§"!B§ = 0;
            this.§^Y§ = 0;
            this.§0B§ = 0;
            this.§#4§ = 0;
         }
         param1 = Math.min(param1,this.§'[§);
         this.§"!d§ += param1 * (this.§5Z§.§"!d§ - this.§"!d§) / this.§'[§;
         this.§,!W§ += param1 * (this.§5Z§.§,!W§ - this.§,!W§) / this.§'[§;
         this.§,!W§ -= param1 / 50 * (this.§'[§ / §^^§);
         this.§^Y§ += param1 * (360 - this.§^Y§) / this.§'[§;
         this.§'[§ -= param1;
         if(this.§'[§ <= 0)
         {
            this.§"!d§ = this.§5Z§.§"!d§;
            this.§,!W§ = this.§5Z§.§,!W§;
            this.§5q§ = false;
            this.§1u§ = true;
            this.§^Y§ = 0;
         }
         this.§1![§();
      }
      
      public function §<!<§() : void
      {
         this.§5q§ = true;
         this.§'[§ = §^^§;
         this.§6_§(§!k§.§4!'§);
         if(this.§"!B§ != 0)
         {
            this.§,!W§ += this.§"!B§;
            this.§"!B§ = 0;
         }
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§1u§ && this.§3`§ >= 0)
         {
            if(this.§0P§ > this.§5Z§.§=!V§.§8z§.§"N§)
            {
               this.applyGravity(this.§5Z§.§=!V§.§8z§.§"N§ - this.§0P§);
               this.§3`§ = -1;
            }
            this.§3`§ -= param1;
            if(this.§3`§ <= 0)
            {
               if(this.§0!+§ > 0)
               {
                  this.§3`§ = this.§0!+§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§0P§))
               {
                  _loc2_ = this.§5Z§.§=!V§.objects.§7J§(this.§"!d§,this.§0P§);
               }
               if(_loc2_ < 0)
               {
                  if(this.applyGravity(param1 / 100))
                  {
                     this.§3`§ = -1;
                  }
                  else
                  {
                     this.§3`§ = 0;
                  }
               }
               else if(!this.§5Z§.§=!V§.objects.§@r§(_loc2_).§4>§)
               {
                  this.§3+§ = false;
                  this.§3`§ = -1;
               }
               else if(this.§5Z§.§=!V§.objects.§@r§(_loc2_).§[b§())
               {
                  this.§3+§ = false;
                  this.§3`§ = 2000;
               }
               else
               {
                  this.§3`§ = 500;
               }
            }
         }
      }
      
      public function applyGravity(param1:Number) : Boolean
      {
         this.§,!W§ += param1;
         this.§0P§ += param1;
         if(this.§0P§ > this.§5Z§.§=!V§.§8z§.§"N§)
         {
            param1 = this.§0P§ - this.§5Z§.§=!V§.§8z§.§"N§;
            this.§,!W§ -= param1;
            this.§0P§ -= param1;
            this.§1![§();
            return true;
         }
         this.§1![§();
         return false;
      }
      
      public function §`!3§() : void
      {
         var _loc1_:§3U§ = §`>§.§<!>§(this.mName).shape;
         if(_loc1_.§7!P§() == §3U§.§=P§)
         {
            this.§5`§ = _loc1_.§^!;§()[0];
            this.§]u§ = _loc1_.§@!-§;
         }
         else if(_loc1_.§7!P§() == §3U§.§?t§)
         {
            this.§5`§ = new b2Vec2(0,0);
            this.§]u§ = 1.5;
         }
         this.§&!e§ = this.§5Z§.§=!V§.§?!O§.§!5§(this.mName);
         if(!this.§&!e§)
         {
            this.setPivotTexture(null);
         }
         else
         {
            this.setPivotTexture(this.§&!e§.getFrame(0));
         }
      }
      
      public function setPivotTexture(param1:§8!!§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§5Z§.§<!6§.textureManager.§,!A§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§@!!§ == null)
         {
            this.§@!!§ = new §7!f§(_loc2_);
            this.§;=§.addChild(this.§@!!§);
         }
         else
         {
            this.§@!!§.texture = _loc2_;
         }
         if(param1)
         {
            this.§@!!§.x = -param1.pivotX - this.§5`§.x / §^!2§.§3!S§;
            this.§@!!§.y = -param1.pivotY - this.§5`§.y / §^!2§.§3!S§;
         }
         else
         {
            this.§@!!§.x = -this.§@!!§.width / 2;
            this.§@!!§.y = -this.§@!!§.height / 2;
         }
         this.§@!!§.scaleX = _loc3_;
         this.§@!!§.scaleY = _loc3_;
         this.§1![§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.updateGroundControl(param1);
         if(this.§5q§)
         {
            this.§0!+§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§[!1§(param1);
            this.§"<§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§1f§(param1,param2);
            }
         }
      }
      
      public function §[!1§(param1:Number) : void
      {
         if(this.§@!F§ > 0)
         {
            this.§@!F§ -= param1;
            if(this.§@!F§ <= 0)
            {
               this.§,!S§();
            }
         }
         else if(this.§<8§ <= 0 && Math.random() * §7d§ < param1 && this.§5Z§.mSlingShotState)
         {
            this.§?!I§();
         }
      }
      
      public function §,!S§() : void
      {
         this.§@!F§ = 0;
         this.setPivotTexture(this.§&!e§.getFrame(0));
      }
      
      public function §?!I§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§@!F§ = §`I§;
         this.setPivotTexture(this.§&!e§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §"<§(param1:Number) : void
      {
         if(this.§<8§ > 0)
         {
            this.§<8§ -= param1;
            if(this.§<8§ <= 0)
            {
               this.§]!V§();
            }
         }
         else if(this.§@!F§ <= 0 && Math.random() * §#!$§ < param1)
         {
            this.§6_§();
         }
      }
      
      public function §]!V§() : void
      {
         this.§<8§ = 0;
         this.setPivotTexture(this.§&!e§.getFrame(0));
      }
      
      public function §6_§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§<8§ > 0)
         {
            this.§]!V§();
         }
         if(this.§@!F§ > 0)
         {
            this.§,!S§();
         }
         if(param1 < 0)
         {
            param1 = §!k§.§4!b§;
         }
         this.§<8§ = §5a§;
         this.setPivotTexture(this.§&!e§.getSubAnimation("yell").getFrame(0));
         if(this.§1u§ || this.§5q§ || param2)
         {
            §,_§.§>!C§(param1,this.§-b§);
         }
         else
         {
            §,_§.§>!C§(param1,this.§-b§,§?A§);
         }
      }
      
      public function §1f§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§0!+§ > 0)
         {
            this.§0!+§ -= param1;
            if(this.§0!+§ <= 0)
            {
               ++this.§^S§;
               this.§0B§ *= 0.4;
               if(!this.§1u§ && this.§^S§ < 2)
               {
                  if(this.§^S§ > 1 && this.§0B§ < -1)
                  {
                     this.§0B§ = -1;
                  }
                  this.§9F§ = this.§0B§;
                  this.§0!+§ = §+!Q§;
                  this.§0!+§ *= Math.abs(this.§9F§) / 2;
                  this.§1z§ = this.§0!+§;
                  this.§^Y§ = 0;
                  this.§#4§ = 0;
               }
               else if(!this.§1u§ && param2)
               {
                  this.§%V§(2.25);
               }
               else
               {
                  this.§0!+§ = 0;
                  this.§"!B§ = 0;
                  this.§^Y§ = 0;
                  this.§0B§ = 0;
               }
            }
            else
            {
               if(this.§0!+§ >= this.§1z§ / 2)
               {
                  _loc3_ = (this.§1z§ - this.§0!+§) / (this.§1z§ / 2);
                  _loc3_ = §;U§.§+r§(_loc3_);
                  this.§"!B§ = _loc3_ * this.§9F§;
               }
               else
               {
                  _loc3_ = (this.§1z§ / 2 - this.§0!+§) / (this.§1z§ / 2);
                  _loc3_ = §;U§.§+r§(_loc3_,false);
                  this.§"!B§ = this.§9F§ + _loc3_ * -this.§9F§;
               }
               this.§^Y§ = 360 * §;U§.§+r§((this.§1z§ - this.§0!+§) / this.§1z§) * this.§#4§;
            }
            this.§1![§();
         }
         else if(Math.random() * §<!3§ < param1 && !this.§1u§ && !this.§5q§ && !this.§3+§)
         {
            this.§%V§();
         }
      }
      
      public function §%V§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§^S§ = 0;
         this.§0!+§ = §+!Q§;
         this.§"!B§ = 0;
         this.§9F§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§0B§ = this.§9F§;
         this.§0!+§ *= Math.abs(this.§9F§) / 3;
         this.§1z§ = this.§0!+§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§#4§ = 0;
         }
         else if(this.§0!+§ < 350)
         {
            this.§#4§ = 0;
         }
         else
         {
            this.§#4§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§#4§ = Math.random() > 0.5 ? Number(this.§#4§) : Number(0);
         }
      }
      
      public function §1![§() : void
      {
         this.§;=§.x = this.§"!d§ / §^!2§.§3!S§;
         this.§;=§.y = (this.§,!W§ + this.§"!B§) / §^!2§.§3!S§;
         this.§;=§.rotation = this.§^Y§ / 180 * Math.PI;
      }
      
      public function §<"§() : void
      {
         this.§3+§ = true;
         this.§1u§ = false;
         this.§5q§ = false;
         this.§^S§ = 0;
         this.§3`§ = 0;
         this.§0!+§ = 0;
         this.§0!+§ = 0;
         this.§"!B§ = 0;
         this.§^Y§ = 0;
         this.§0B§ = 0;
         this.§#4§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§"!d§) * (param1 - this.§"!d§) + (param2 - this.§,!W§) * (param2 - this.§,!W§));
         if(_loc3_ <= this.§]u§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§"!d§ >= param3 && this.§"!d§ <= param4 && this.§,!W§ >= param1 && this.§,!W§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.§"!d§ != param1 || this.§,!W§ != param2)
         {
            _loc3_ = true;
         }
         this.§"!d§ = param1;
         this.§,!W§ = param2;
         this.§3`§ = 100;
         this.§1![§();
         if(_loc3_)
         {
            this.§5Z§.§^!K§();
         }
      }
      
      public function §3F§() : §7!f§
      {
         return this.§@!!§;
      }
      
      public function get §96§() : Number
      {
         return this.§0!+§;
      }
      
      public function get §#D§() : Number
      {
         return this.§3`§;
      }
      
      public function set §#D§(param1:Number) : void
      {
         this.§3`§ = param1;
      }
      
      public function get §+!^§() : Number
      {
         return this.§^!O§;
      }
      
      public function get §]]§() : Boolean
      {
         return this.§1u§;
      }
      
      public function get radius() : Number
      {
         return this.§]u§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§;=§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §+!^§(param1:Number) : void
      {
         this.§^!O§ = param1;
      }
      
      public function get §;1§() : Number
      {
         return this.§]!C§;
      }
      
      public function set §;1§(param1:Number) : void
      {
         this.§]!C§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.get;
      }
      
      public function set scale(param1:Number) : void
      {
         this.get = param1;
      }
      
      public function get x() : Number
      {
         return this.§"!d§;
      }
      
      public function get y() : Number
      {
         return this.§,!W§;
      }
      
      public function get §6%§() : Number
      {
         return this.§7!=§;
      }
      
      public function get §8_§() : Number
      {
         return this.§9!'§;
      }
   }
}
