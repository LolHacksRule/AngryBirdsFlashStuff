package §8!`§
{
   import §"k§.§5!7§;
   import §"k§.§;!Z§;
   import §%n§.§"!;§;
   import §%n§.§3!A§;
   import §%n§.§5!6§;
   import §'D§.§6q§;
   import §3q§.b2Vec2;
   import §;!Q§.§%o§;
   import §;!Q§.Sprite;
   import §]!D§.§@!]§;
   import §]p§.Texture;
   
   public class §3!Q§
   {
      
      public static const §-!K§:String = "ChannelSlingshot";
      
      public static const §1!U§:Number = 900;
      
      public static const §<'§:Number = 200;
      
      public static const §0I§:Number = 200;
      
      public static const §^?§:Number = 1500;
      
      public static const §<`§:Number = 5000;
      
      public static const §'!E§:Number = 1000;
      
      public static const §0B§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var §"9§:Number;
      
      protected var §[g§:Number;
      
      protected var § y§:Number;
      
      protected var §%@§:Number;
      
      private var §[!G§:§3!A§;
      
      protected var §-w§:Number;
      
      protected var §4@§:Number = 1;
      
      private var §`K§:Sprite;
      
      protected var § !7§:§;!Z§;
      
      private var §6d§:§%o§;
      
      protected var §,%§:§%t§;
      
      private var §?t§:Number;
      
      private var §<!S§:Boolean = false;
      
      private var §4!F§:Boolean = false;
      
      protected var §@?§:Boolean = false;
      
      private var §5J§:Number;
      
      private var §#!8§:Number = 0;
      
      private var §7!^§:Number = 0;
      
      private var §"%§:Number = 0;
      
      private var §;;§:Number = 1000;
      
      private var §#p§:Number;
      
      private var §"b§:Number;
      
      private var §2J§:int;
      
      private var §8I§:Number = 0;
      
      protected var §'%§:Number;
      
      protected var §1!?§:Number;
      
      private var §?-§:Number = 1;
      
      private var §21§:Number = 0;
      
      private var §2![§:b2Vec2;
      
      private var §-b§:Number = 1;
      
      public function §3!Q§(param1:§%t§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§,%§ = param1;
         this.§`K§ = param2;
         this.mName = param3;
         this.§[!G§ = §5!6§.§,Q§(this.mName).§76§;
         this.§"9§ = param4;
         this.§[g§ = param5;
         this.§ y§ = param4;
         this.§%@§ = param5;
         this.§-w§ = 0;
         this.§<!S§ = false;
         this.§4!F§ = false;
         this.§#!8§ = 0;
         this.§7!W§();
         this.§'%§ = 0;
      }
      
      public function §1H§() : void
      {
         this.§<!S§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§`K§)
         {
            this.§`K§.dispose();
            this.§`K§ = null;
         }
      }
      
      public function §6!#§(param1:Number) : void
      {
         if(!this.§4!F§ || this.§<!S§)
         {
            return;
         }
         if(this.§4@§ != 0)
         {
            this.§"%§ = 0;
            this.§8I§ = 0;
            this.§-w§ = 0;
            this.§"b§ = 0;
            this.§4@§ = 0;
         }
         param1 = Math.min(param1,this.§5J§);
         this.§"9§ += param1 * (this.§,%§.§"9§ - this.§"9§) / this.§5J§;
         this.§[g§ += param1 * (this.§,%§.§[g§ - this.§[g§) / this.§5J§;
         this.§[g§ -= param1 / 50 * (this.§5J§ / §1!U§);
         this.§-w§ += param1 * (360 - this.§-w§) / this.§5J§;
         this.§5J§ -= param1;
         if(this.§5J§ <= 0)
         {
            this.§"9§ = this.§,%§.§"9§;
            this.§[g§ = this.§,%§.§[g§;
            this.§4!F§ = false;
            this.§<!S§ = true;
            this.§-w§ = 0;
         }
         this.§;!+§();
      }
      
      public function §,!K§() : void
      {
         this.§4!F§ = true;
         this.§5J§ = §1!U§;
         this.§?!<§(§3!A§.§64§);
         if(this.§8I§ != 0)
         {
            this.§[g§ += this.§8I§;
            this.§8I§ = 0;
         }
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§<!S§ && this.§'%§ >= 0)
         {
            if(this.§1!?§ > this.§,%§.§'N§.§[!_§.§,!3§)
            {
               this.applyGravity(this.§,%§.§'N§.§[!_§.§,!3§ - this.§1!?§);
               this.§'%§ = -1;
            }
            this.§'%§ -= param1;
            if(this.§'%§ <= 0)
            {
               if(this.§"%§ > 0)
               {
                  this.§'%§ = this.§"%§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§1!?§))
               {
                  _loc2_ = this.§,%§.§'N§.objects.§#!?§(this.§"9§,this.§1!?§);
               }
               if(_loc2_ < 0)
               {
                  if(this.applyGravity(param1 / 100))
                  {
                     this.§'%§ = -1;
                  }
                  else
                  {
                     this.§'%§ = 0;
                  }
               }
               else if(!this.§,%§.§'N§.objects.§,S§(_loc2_).§'i§)
               {
                  this.§@?§ = false;
                  this.§'%§ = -1;
               }
               else if(this.§,%§.§'N§.objects.§,S§(_loc2_).§>8§())
               {
                  this.§@?§ = false;
                  this.§'%§ = 2000;
               }
               else
               {
                  this.§'%§ = 500;
               }
            }
         }
      }
      
      public function applyGravity(param1:Number) : Boolean
      {
         this.§[g§ += param1;
         this.§1!?§ += param1;
         if(this.§1!?§ > this.§,%§.§'N§.§[!_§.§,!3§)
         {
            param1 = this.§1!?§ - this.§,%§.§'N§.§[!_§.§,!3§;
            this.§[g§ -= param1;
            this.§1!?§ -= param1;
            this.§;!+§();
            return true;
         }
         this.§;!+§();
         return false;
      }
      
      public function §7!W§() : void
      {
         var _loc1_:§"!;§ = §5!6§.§,Q§(this.mName).shape;
         if(_loc1_.§"!-§() == §"!;§.§+H§)
         {
            this.§2![§ = _loc1_.§4<§()[0];
            this.§?t§ = _loc1_.§<!&§;
         }
         else if(_loc1_.§"!-§() == §"!;§.§6!§)
         {
            this.§2![§ = new b2Vec2(0,0);
            this.§?t§ = 1.5;
         }
         this.§ !7§ = this.§,%§.§'N§.§+!a§.§-!J§(this.mName);
         if(!this.§ !7§)
         {
            this.§const§(null);
         }
         else
         {
            this.§const§(this.§ !7§.getFrame(0));
         }
      }
      
      public function §const§(param1:§5!7§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§,%§.§48§.§>?§.§7!&§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§6d§ == null)
         {
            this.§6d§ = new §%o§(_loc2_);
            this.§`K§.addChild(this.§6d§);
         }
         else
         {
            this.§6d§.texture = _loc2_;
         }
         if(param1)
         {
            this.§6d§.x = -param1.pivotX - this.§2![§.x / §4J§.§<W§;
            this.§6d§.y = -param1.pivotY - this.§2![§.y / §4J§.§<W§;
         }
         else
         {
            this.§6d§.x = -this.§6d§.width / 2;
            this.§6d§.y = -this.§6d§.height / 2;
         }
         this.§6d§.scaleX = _loc3_;
         this.§6d§.scaleY = _loc3_;
         this.§;!+§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.updateGroundControl(param1);
         if(this.§4!F§)
         {
            this.§"%§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§'!T§(param1);
            this.§>I§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§?B§(param1,param2);
            }
         }
      }
      
      public function §'!T§(param1:Number) : void
      {
         if(this.§#!8§ > 0)
         {
            this.§#!8§ -= param1;
            if(this.§#!8§ <= 0)
            {
               this.§?!§();
            }
         }
         else if(this.§7!^§ <= 0 && Math.random() * §^?§ < param1 && this.§,%§.mSlingShotState)
         {
            this.§#%§();
         }
      }
      
      public function §?!§() : void
      {
         this.§#!8§ = 0;
         this.§const§(this.§ !7§.getFrame(0));
      }
      
      public function §#%§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§#!8§ = §<'§;
         this.§const§(this.§ !7§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §>I§(param1:Number) : void
      {
         if(this.§7!^§ > 0)
         {
            this.§7!^§ -= param1;
            if(this.§7!^§ <= 0)
            {
               this.§'!W§();
            }
         }
         else if(this.§#!8§ <= 0 && Math.random() * §<`§ < param1)
         {
            this.§?!<§();
         }
      }
      
      public function §'!W§() : void
      {
         this.§7!^§ = 0;
         this.§const§(this.§ !7§.getFrame(0));
      }
      
      public function §?!<§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§7!^§ > 0)
         {
            this.§'!W§();
         }
         if(this.§#!8§ > 0)
         {
            this.§?!§();
         }
         if(param1 < 0)
         {
            param1 = §3!A§.§>M§;
         }
         this.§7!^§ = §0I§;
         this.§const§(this.§ !7§.getSubAnimation("yell").getFrame(0));
         if(this.§<!S§ || this.§4!F§ || param2)
         {
            §@!]§.§&+§(param1,this.§[!G§);
         }
         else
         {
            §@!]§.§&+§(param1,this.§[!G§,§-!K§);
         }
      }
      
      public function §?B§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§"%§ > 0)
         {
            this.§"%§ -= param1;
            if(this.§"%§ <= 0)
            {
               ++this.§2J§;
               this.§"b§ *= 0.4;
               if(!this.§<!S§ && this.§2J§ < 2)
               {
                  if(this.§2J§ > 1 && this.§"b§ < -1)
                  {
                     this.§"b§ = -1;
                  }
                  this.§#p§ = this.§"b§;
                  this.§"%§ = §0B§;
                  this.§"%§ *= Math.abs(this.§#p§) / 2;
                  this.§;;§ = this.§"%§;
                  this.§-w§ = 0;
                  this.§4@§ = 0;
               }
               else if(!this.§<!S§ && param2)
               {
                  this.§@!,§(2.25);
               }
               else
               {
                  this.§"%§ = 0;
                  this.§8I§ = 0;
                  this.§-w§ = 0;
                  this.§"b§ = 0;
               }
            }
            else
            {
               if(this.§"%§ >= this.§;;§ / 2)
               {
                  _loc3_ = (this.§;;§ - this.§"%§) / (this.§;;§ / 2);
                  _loc3_ = §6q§.§=<§(_loc3_);
                  this.§8I§ = _loc3_ * this.§#p§;
               }
               else
               {
                  _loc3_ = (this.§;;§ / 2 - this.§"%§) / (this.§;;§ / 2);
                  _loc3_ = §6q§.§=<§(_loc3_,false);
                  this.§8I§ = this.§#p§ + _loc3_ * -this.§#p§;
               }
               this.§-w§ = 360 * §6q§.§=<§((this.§;;§ - this.§"%§) / this.§;;§) * this.§4@§;
            }
            this.§;!+§();
         }
         else if(Math.random() * §'!E§ < param1 && !this.§<!S§ && !this.§4!F§ && !this.§@?§)
         {
            this.§@!,§();
         }
      }
      
      public function §@!,§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§2J§ = 0;
         this.§"%§ = §0B§;
         this.§8I§ = 0;
         this.§#p§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§"b§ = this.§#p§;
         this.§"%§ *= Math.abs(this.§#p§) / 3;
         this.§;;§ = this.§"%§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§4@§ = 0;
         }
         else if(this.§"%§ < 350)
         {
            this.§4@§ = 0;
         }
         else
         {
            this.§4@§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§4@§ = Math.random() > 0.5 ? Number(this.§4@§) : Number(0);
         }
      }
      
      public function §;!+§() : void
      {
         this.§`K§.x = this.§"9§ / §4J§.§<W§;
         this.§`K§.y = (this.§[g§ + this.§8I§) / §4J§.§<W§;
         this.§`K§.rotation = this.§-w§ / 180 * Math.PI;
      }
      
      public function §]!F§() : void
      {
         this.§@?§ = true;
         this.§<!S§ = false;
         this.§4!F§ = false;
         this.§2J§ = 0;
         this.§'%§ = 0;
         this.§"%§ = 0;
         this.§"%§ = 0;
         this.§8I§ = 0;
         this.§-w§ = 0;
         this.§"b§ = 0;
         this.§4@§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§"9§) * (param1 - this.§"9§) + (param2 - this.§[g§) * (param2 - this.§[g§));
         if(_loc3_ <= this.§?t§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§"9§ >= param3 && this.§"9§ <= param4 && this.§[g§ >= param1 && this.§[g§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.§"9§ != param1 || this.§[g§ != param2)
         {
            _loc3_ = true;
         }
         this.§"9§ = param1;
         this.§[g§ = param2;
         this.§'%§ = 100;
         this.§;!+§();
         if(_loc3_)
         {
            this.§,%§.§'`§();
         }
      }
      
      public function §,!8§() : §%o§
      {
         return this.§6d§;
      }
      
      public function get §+!2§() : Number
      {
         return this.§"%§;
      }
      
      public function get §!,§() : Number
      {
         return this.§'%§;
      }
      
      public function set §!,§(param1:Number) : void
      {
         this.§'%§ = param1;
      }
      
      public function get §3!G§() : Number
      {
         return this.§?-§;
      }
      
      public function get §#+§() : Boolean
      {
         return this.§<!S§;
      }
      
      public function get radius() : Number
      {
         return this.§?t§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§`K§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §3!G§(param1:Number) : void
      {
         this.§?-§ = param1;
      }
      
      public function get §,g§() : Number
      {
         return this.§21§;
      }
      
      public function set §,g§(param1:Number) : void
      {
         this.§21§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§-b§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§-b§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§"9§;
      }
      
      public function get y() : Number
      {
         return this.§[g§;
      }
      
      public function get §1%§() : Number
      {
         return this.§ y§;
      }
      
      public function get §0L§() : Number
      {
         return this.§%@§;
      }
   }
}
