package §+!%§
{
   import §&!7§.Texture;
   import §,Y§.§32§;
   import §,Y§.§5F§;
   import §,Y§.§^!1§;
   import §->§.§2! §;
   import §->§.Sprite;
   import §2x§.§9!9§;
   import §<[§.§>!4§;
   import §[!$§.§2!%§;
   import §[!$§.§89§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class §4;§
   {
      
      public static const §&p§:String = "ChannelSlingshot";
      
      public static const §9+§:Number = 900;
      
      public static const §`!6§:Number = 200;
      
      public static const §#!2§:Number = 200;
      
      public static const §<!;§:Number = 1500;
      
      public static const §4j§:Number = 5000;
      
      public static const §=g§:Number = 1000;
      
      public static const §<W§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var §#d§:Number;
      
      protected var §7^§:Number;
      
      protected var §06§:Number;
      
      protected var §7h§:Number;
      
      private var § 3§:§5F§;
      
      protected var §9a§:Number;
      
      protected var §7o§:Number = 1;
      
      private var §'M§:Sprite;
      
      protected var § d§:§2!%§;
      
      private var §"m§:§2! §;
      
      protected var §`!C§:§-C§;
      
      private var §6Q§:Number;
      
      private var §7@§:Boolean = false;
      
      private var §,6§:Boolean = false;
      
      protected var §9l§:Boolean = false;
      
      private var §7b§:Number;
      
      private var §'z§:Number = 0;
      
      private var §1K§:Number = 0;
      
      private var §,!G§:Number = 0;
      
      private var §0B§:Number = 1000;
      
      private var §8!3§:Number;
      
      private var §"s§:Number;
      
      private var §=r§:int;
      
      private var §%S§:Number = 0;
      
      protected var §+!H§:Number;
      
      protected var §1[§:Number;
      
      private var §-E§:Number = 1;
      
      private var §8n§:Number = 0;
      
      private var §7R§:b2Vec2;
      
      private var §?!C§:Number = 1;
      
      public function §4;§(param1:§-C§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§`!C§ = param1;
         this.§'M§ = param2;
         this.mName = param3;
         this.§ 3§ = §32§.§&V§(this.mName).§9!+§;
         this.§#d§ = param4;
         this.§7^§ = param5;
         this.§06§ = param4;
         this.§7h§ = param5;
         this.§9a§ = 0;
         this.§7@§ = false;
         this.§,6§ = false;
         this.§'z§ = 0;
         this.§6-§();
         this.§+!H§ = 0;
      }
      
      public function §,+§() : void
      {
         this.§7@§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§'M§)
         {
            this.§'M§.dispose();
            this.§'M§ = null;
         }
      }
      
      public function §1P§(param1:Number) : void
      {
         if(!this.§,6§ || this.§7@§)
         {
            return;
         }
         if(this.§7o§ != 0)
         {
            this.§,!G§ = 0;
            this.§%S§ = 0;
            this.§9a§ = 0;
            this.§"s§ = 0;
            this.§7o§ = 0;
         }
         param1 = Math.min(param1,this.§7b§);
         this.§#d§ += param1 * (this.§`!C§.§#d§ - this.§#d§) / this.§7b§;
         this.§7^§ += param1 * (this.§`!C§.§7^§ - this.§7^§) / this.§7b§;
         this.§7^§ -= param1 / 50 * (this.§7b§ / §9+§);
         this.§9a§ += param1 * (360 - this.§9a§) / this.§7b§;
         this.§7b§ -= param1;
         if(this.§7b§ <= 0)
         {
            this.§#d§ = this.§`!C§.§#d§;
            this.§7^§ = this.§`!C§.§7^§;
            this.§,6§ = false;
            this.§7@§ = true;
            this.§9a§ = 0;
         }
         this.§!m§();
      }
      
      public function §'<§() : void
      {
         this.§,6§ = true;
         this.§7b§ = §9+§;
         this.§[g§(§5F§.§3;§);
         if(this.§%S§ != 0)
         {
            this.§7^§ += this.§%S§;
            this.§%S§ = 0;
         }
      }
      
      public function §7;§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§7@§ && this.§+!H§ >= 0)
         {
            if(this.§1[§ > this.§`!C§.§]U§.§6s§.§'>§)
            {
               this.§09§(this.§`!C§.§]U§.§6s§.§'>§ - this.§1[§);
               this.§+!H§ = -1;
            }
            this.§+!H§ -= param1;
            if(this.§+!H§ <= 0)
            {
               if(this.§,!G§ > 0)
               {
                  this.§+!H§ = this.§,!G§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§1[§))
               {
                  _loc2_ = this.§`!C§.§]U§.objects.§,h§(this.§#d§,this.§1[§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§09§(param1 / 100))
                  {
                     this.§+!H§ = -1;
                  }
                  else
                  {
                     this.§+!H§ = 0;
                  }
               }
               else if(!this.§`!C§.§]U§.objects.§ #§(_loc2_).§;!F§)
               {
                  this.§9l§ = false;
                  this.§+!H§ = -1;
               }
               else if(this.§`!C§.§]U§.objects.§ #§(_loc2_).§-§())
               {
                  this.§9l§ = false;
                  this.§+!H§ = 2000;
               }
               else
               {
                  this.§+!H§ = 500;
               }
            }
         }
      }
      
      public function §09§(param1:Number) : Boolean
      {
         this.§7^§ += param1;
         this.§1[§ += param1;
         if(this.§1[§ > this.§`!C§.§]U§.§6s§.§'>§)
         {
            param1 = this.§1[§ - this.§`!C§.§]U§.§6s§.§'>§;
            this.§7^§ -= param1;
            this.§1[§ -= param1;
            this.§!m§();
            return true;
         }
         this.§!m§();
         return false;
      }
      
      public function §6-§() : void
      {
         var _loc1_:§^!1§ = §32§.§&V§(this.mName).shape;
         if(_loc1_.§^u§() == §^!1§.§>V§)
         {
            this.§7R§ = _loc1_.§9>§()[0];
            this.§6Q§ = _loc1_.§ !;§;
         }
         else if(_loc1_.§^u§() == §^!1§.§5!D§)
         {
            this.§7R§ = new b2Vec2(0,0);
            this.§6Q§ = 1.5;
         }
         this.§ d§ = this.§`!C§.§]U§.§@!5§.§`!-§(this.mName);
         if(!this.§ d§)
         {
            this.§-P§(null);
         }
         else
         {
            this.§-P§(this.§ d§.getFrame(0));
         }
      }
      
      public function §-P§(param1:§89§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§`!C§.§^S§.textureManager.§!L§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§"m§ == null)
         {
            this.§"m§ = new §2! §(_loc2_);
            this.§'M§.addChild(this.§"m§);
         }
         else
         {
            this.§"m§.texture = _loc2_;
         }
         if(param1)
         {
            this.§"m§.x = -param1.pivotX - this.§7R§.x / §'!"§.§%!8§;
            this.§"m§.y = -param1.pivotY - this.§7R§.y / §'!"§.§%!8§;
         }
         else
         {
            this.§"m§.x = -this.§"m§.width / 2;
            this.§"m§.y = -this.§"m§.height / 2;
         }
         this.§"m§.scaleX = _loc3_;
         this.§"m§.scaleY = _loc3_;
         this.§!m§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§7;§(param1);
         if(this.§,6§)
         {
            this.§,!G§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§81§(param1);
            this.§5,§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§?p§(param1,param2);
            }
         }
      }
      
      public function §81§(param1:Number) : void
      {
         if(this.§'z§ > 0)
         {
            this.§'z§ -= param1;
            if(this.§'z§ <= 0)
            {
               this.§^!+§();
            }
         }
         else if(this.§1K§ <= 0 && Math.random() * §<!;§ < param1 && this.§`!C§.mSlingShotState)
         {
            this.§;K§();
         }
      }
      
      public function §^!+§() : void
      {
         this.§'z§ = 0;
         this.§-P§(this.§ d§.getFrame(0));
      }
      
      public function §;K§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§'z§ = §`!6§;
         this.§-P§(this.§ d§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §5,§(param1:Number) : void
      {
         if(this.§1K§ > 0)
         {
            this.§1K§ -= param1;
            if(this.§1K§ <= 0)
            {
               this.§]!6§();
            }
         }
         else if(this.§'z§ <= 0 && Math.random() * §4j§ < param1)
         {
            this.§[g§();
         }
      }
      
      public function §]!6§() : void
      {
         this.§1K§ = 0;
         this.§-P§(this.§ d§.getFrame(0));
      }
      
      public function §[g§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§1K§ > 0)
         {
            this.§]!6§();
         }
         if(this.§'z§ > 0)
         {
            this.§^!+§();
         }
         if(param1 < 0)
         {
            param1 = §5F§.§#!0§;
         }
         this.§1K§ = §#!2§;
         this.§-P§(this.§ d§.getSubAnimation("yell").getFrame(0));
         if(this.§7@§ || this.§,6§ || param2)
         {
            §>!4§.§9!D§(param1,this.§ 3§);
         }
         else
         {
            §>!4§.§9!D§(param1,this.§ 3§,§&p§);
         }
      }
      
      public function §?p§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§,!G§ > 0)
         {
            this.§,!G§ -= param1;
            if(this.§,!G§ <= 0)
            {
               ++this.§=r§;
               this.§"s§ *= 0.4;
               if(!this.§7@§ && this.§=r§ < 2)
               {
                  if(this.§=r§ > 1 && this.§"s§ < -1)
                  {
                     this.§"s§ = -1;
                  }
                  this.§8!3§ = this.§"s§;
                  this.§,!G§ = §<W§;
                  this.§,!G§ *= Math.abs(this.§8!3§) / 2;
                  this.§0B§ = this.§,!G§;
                  this.§9a§ = 0;
                  this.§7o§ = 0;
               }
               else if(!this.§7@§ && param2)
               {
                  this.§#I§(2.25);
               }
               else
               {
                  this.§,!G§ = 0;
                  this.§%S§ = 0;
                  this.§9a§ = 0;
                  this.§"s§ = 0;
               }
            }
            else
            {
               if(this.§,!G§ >= this.§0B§ / 2)
               {
                  _loc3_ = (this.§0B§ - this.§,!G§) / (this.§0B§ / 2);
                  _loc3_ = §9!9§.§7r§(_loc3_);
                  this.§%S§ = _loc3_ * this.§8!3§;
               }
               else
               {
                  _loc3_ = (this.§0B§ / 2 - this.§,!G§) / (this.§0B§ / 2);
                  _loc3_ = §9!9§.§7r§(_loc3_,false);
                  this.§%S§ = this.§8!3§ + _loc3_ * -this.§8!3§;
               }
               this.§9a§ = 360 * §9!9§.§7r§((this.§0B§ - this.§,!G§) / this.§0B§) * this.§7o§;
            }
            this.§!m§();
         }
         else if(Math.random() * §=g§ < param1 && !this.§7@§ && !this.§,6§ && !this.§9l§)
         {
            this.§#I§();
         }
      }
      
      public function §#I§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§=r§ = 0;
         this.§,!G§ = §<W§;
         this.§%S§ = 0;
         this.§8!3§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§"s§ = this.§8!3§;
         this.§,!G§ *= Math.abs(this.§8!3§) / 3;
         this.§0B§ = this.§,!G§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§7o§ = 0;
         }
         else if(this.§,!G§ < 350)
         {
            this.§7o§ = 0;
         }
         else
         {
            this.§7o§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§7o§ = Math.random() > 0.5 ? Number(this.§7o§) : Number(0);
         }
      }
      
      public function §!m§() : void
      {
         this.§'M§.x = this.§#d§ / §'!"§.§%!8§;
         this.§'M§.y = (this.§7^§ + this.§%S§) / §'!"§.§%!8§;
         this.§'M§.rotation = this.§9a§ / 180 * Math.PI;
      }
      
      public function §1<§() : void
      {
         this.§9l§ = true;
         this.§7@§ = false;
         this.§,6§ = false;
         this.§=r§ = 0;
         this.§+!H§ = 0;
         this.§,!G§ = 0;
         this.§,!G§ = 0;
         this.§%S§ = 0;
         this.§9a§ = 0;
         this.§"s§ = 0;
         this.§7o§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§#d§) * (param1 - this.§#d§) + (param2 - this.§7^§) * (param2 - this.§7^§));
         if(_loc3_ <= this.§6Q§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§#d§ >= param3 && this.§#d§ <= param4 && this.§7^§ >= param1 && this.§7^§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.§#d§ != param1 || this.§7^§ != param2)
         {
            _loc3_ = true;
         }
         this.§#d§ = param1;
         this.§7^§ = param2;
         this.§+!H§ = 100;
         this.§!m§();
         if(_loc3_)
         {
            this.§`!C§.§%"§();
         }
      }
      
      public function §#0§() : §2! §
      {
         return this.§"m§;
      }
      
      public function get §=B§() : Number
      {
         return this.§,!G§;
      }
      
      public function get §?!,§() : Number
      {
         return this.§+!H§;
      }
      
      public function set §?!,§(param1:Number) : void
      {
         this.§+!H§ = param1;
      }
      
      public function get §=V§() : Number
      {
         return this.§-E§;
      }
      
      public function get §#>§() : Boolean
      {
         return this.§7@§;
      }
      
      public function get radius() : Number
      {
         return this.§6Q§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§'M§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §=V§(param1:Number) : void
      {
         this.§-E§ = param1;
      }
      
      public function get §[!E§() : Number
      {
         return this.§8n§;
      }
      
      public function set §[!E§(param1:Number) : void
      {
         this.§8n§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§?!C§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§?!C§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§#d§;
      }
      
      public function get y() : Number
      {
         return this.§7^§;
      }
      
      public function get §?T§() : Number
      {
         return this.§06§;
      }
      
      public function get §[!G§() : Number
      {
         return this.§7h§;
      }
   }
}
