package §%x§
{
   import §-!0§.§4b§;
   import §-!0§.§9X§;
   import §0!<§.§>!!§;
   import §?^§.§8!?§;
   import §?^§.Sprite;
   import §]!9§.§>2§;
   import §`K§.§0r§;
   import §`K§.§2z§;
   import §`K§.§3n§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import each.Texture;
   
   public class §0Y§
   {
      
      public static const §,]§:String = "ChannelSlingshot";
      
      public static const §,M§:Number = 900;
      
      public static const §&!'§:Number = 200;
      
      public static const §5!$§:Number = 200;
      
      public static const §,8§:Number = 1500;
      
      public static const §[!'§:Number = 5000;
      
      public static const §]T§:Number = 1000;
      
      public static const §"!F§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var §5!>§:Number;
      
      protected var §#!$§:Number;
      
      protected var §2f§:Number;
      
      protected var §#j§:Number;
      
      private var §]`§:§0r§;
      
      protected var §+H§:Number;
      
      protected var §#%§:Number = 1;
      
      private var §0W§:Sprite;
      
      protected var §=!'§:§4b§;
      
      private var §;!G§:§8!?§;
      
      protected var §@3§:§3=§;
      
      private var §,N§:Number;
      
      private var §4Q§:Boolean = false;
      
      private var §9I§:Boolean = false;
      
      protected var §'A§:Boolean = false;
      
      private var §]0§:Number;
      
      private var §@7§:Number = 0;
      
      private var §9m§:Number = 0;
      
      private var §&%§:Number = 0;
      
      private var §%l§:Number = 1000;
      
      private var §0S§:Number;
      
      private var §=J§:Number;
      
      private var §5^§:int;
      
      private var §!!B§:Number = 0;
      
      protected var §7h§:Number;
      
      protected var §!!5§:Number;
      
      private var § V§:Number = 1;
      
      private var §3§:Number = 0;
      
      private var §94§:b2Vec2;
      
      private var §=!%§:Number = 1;
      
      public function §0Y§(param1:§3=§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§@3§ = param1;
         this.§0W§ = param2;
         this.mName = param3;
         this.§]`§ = §3n§.§]B§(this.mName).§6!6§;
         this.§5!>§ = param4;
         this.§#!$§ = param5;
         this.§2f§ = param4;
         this.§#j§ = param5;
         this.§+H§ = 0;
         this.§4Q§ = false;
         this.§9I§ = false;
         this.§@7§ = 0;
         this.§5y§();
         this.§7h§ = 0;
      }
      
      public function §^!,§() : void
      {
         this.§4Q§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§0W§)
         {
            this.§0W§.dispose();
            this.§0W§ = null;
         }
      }
      
      public function §1Q§(param1:Number) : void
      {
         if(!this.§9I§ || this.§4Q§)
         {
            return;
         }
         if(this.§#%§ != 0)
         {
            this.§&%§ = 0;
            this.§!!B§ = 0;
            this.§+H§ = 0;
            this.§=J§ = 0;
            this.§#%§ = 0;
         }
         param1 = Math.min(param1,this.§]0§);
         this.§5!>§ += param1 * (this.§@3§.§5!>§ - this.§5!>§) / this.§]0§;
         this.§#!$§ += param1 * (this.§@3§.§#!$§ - this.§#!$§) / this.§]0§;
         this.§#!$§ -= param1 / 50 * (this.§]0§ / §,M§);
         this.§+H§ += param1 * (360 - this.§+H§) / this.§]0§;
         this.§]0§ -= param1;
         if(this.§]0§ <= 0)
         {
            this.§5!>§ = this.§@3§.§5!>§;
            this.§#!$§ = this.§@3§.§#!$§;
            this.§9I§ = false;
            this.§4Q§ = true;
            this.§+H§ = 0;
         }
         this.§6i§();
      }
      
      public function §[U§() : void
      {
         this.§9I§ = true;
         this.§]0§ = §,M§;
         this.§-X§(§0r§.§"!A§);
         if(this.§!!B§ != 0)
         {
            this.§#!$§ += this.§!!B§;
            this.§!!B§ = 0;
         }
      }
      
      public function §'U§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§4Q§ && this.§7h§ >= 0)
         {
            if(this.§!!5§ > this.§@3§.§7C§.§`,§.§=s§)
            {
               this.§8%§(this.§@3§.§7C§.§`,§.§=s§ - this.§!!5§);
               this.§7h§ = -1;
            }
            this.§7h§ -= param1;
            if(this.§7h§ <= 0)
            {
               if(this.§&%§ > 0)
               {
                  this.§7h§ = this.§&%§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§!!5§))
               {
                  _loc2_ = this.§@3§.§7C§.objects.§2j§(this.§5!>§,this.§!!5§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§8%§(param1 / 100))
                  {
                     this.§7h§ = -1;
                  }
                  else
                  {
                     this.§7h§ = 0;
                  }
               }
               else if(!this.§@3§.§7C§.objects.§!6§(_loc2_).§[&§)
               {
                  this.§'A§ = false;
                  this.§7h§ = -1;
               }
               else if(this.§@3§.§7C§.objects.§!6§(_loc2_).§0!@§())
               {
                  this.§'A§ = false;
                  this.§7h§ = 2000;
               }
               else
               {
                  this.§7h§ = 500;
               }
            }
         }
      }
      
      public function §8%§(param1:Number) : Boolean
      {
         this.§#!$§ += param1;
         this.§!!5§ += param1;
         if(this.§!!5§ > this.§@3§.§7C§.§`,§.§=s§)
         {
            param1 = this.§!!5§ - this.§@3§.§7C§.§`,§.§=s§;
            this.§#!$§ -= param1;
            this.§!!5§ -= param1;
            this.§6i§();
            return true;
         }
         this.§6i§();
         return false;
      }
      
      public function §5y§() : void
      {
         var _loc1_:§2z§ = §3n§.§]B§(this.mName).shape;
         if(_loc1_.§'4§() == §2z§.§,j§)
         {
            this.§94§ = _loc1_.§!!H§()[0];
            this.§,N§ = _loc1_.§9p§;
         }
         else if(_loc1_.§'4§() == §2z§.§#!B§)
         {
            this.§94§ = new b2Vec2(0,0);
            this.§,N§ = 1.5;
         }
         this.§=!'§ = this.§@3§.§7C§.§+!!§.§,V§(this.mName);
         if(!this.§=!'§)
         {
            this.§&<§(null);
         }
         else
         {
            this.§&<§(this.§=!'§.getFrame(0));
         }
      }
      
      public function §&<§(param1:§9X§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§@3§.§!-§.textureManager.§?K§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§;!G§ == null)
         {
            this.§;!G§ = new §8!?§(_loc2_);
            this.§0W§.addChild(this.§;!G§);
         }
         else
         {
            this.§;!G§.texture = _loc2_;
         }
         if(param1)
         {
            this.§;!G§.x = -param1.pivotX - this.§94§.x / §#;§.§`!2§;
            this.§;!G§.y = -param1.pivotY - this.§94§.y / §#;§.§`!2§;
         }
         else
         {
            this.§;!G§.x = -this.§;!G§.width / 2;
            this.§;!G§.y = -this.§;!G§.height / 2;
         }
         this.§;!G§.scaleX = _loc3_;
         this.§;!G§.scaleY = _loc3_;
         this.§6i§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§'U§(param1);
         if(this.§9I§)
         {
            this.§&%§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§'!A§(param1);
            this.§=W§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§9k§(param1,param2);
            }
         }
      }
      
      public function §'!A§(param1:Number) : void
      {
         if(this.§@7§ > 0)
         {
            this.§@7§ -= param1;
            if(this.§@7§ <= 0)
            {
               this.§46§();
            }
         }
         else if(this.§9m§ <= 0 && Math.random() * §,8§ < param1 && this.§@3§.mSlingShotState)
         {
            this.§3O§();
         }
      }
      
      public function §46§() : void
      {
         this.§@7§ = 0;
         this.§&<§(this.§=!'§.getFrame(0));
      }
      
      public function §3O§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§@7§ = §&!'§;
         this.§&<§(this.§=!'§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §=W§(param1:Number) : void
      {
         if(this.§9m§ > 0)
         {
            this.§9m§ -= param1;
            if(this.§9m§ <= 0)
            {
               this.§3e§();
            }
         }
         else if(this.§@7§ <= 0 && Math.random() * §[!'§ < param1)
         {
            this.§-X§();
         }
      }
      
      public function §3e§() : void
      {
         this.§9m§ = 0;
         this.§&<§(this.§=!'§.getFrame(0));
      }
      
      public function §-X§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§9m§ > 0)
         {
            this.§3e§();
         }
         if(this.§@7§ > 0)
         {
            this.§46§();
         }
         if(param1 < 0)
         {
            param1 = §0r§.§7!§;
         }
         this.§9m§ = §5!$§;
         this.§&<§(this.§=!'§.getSubAnimation("yell").getFrame(0));
         if(this.§4Q§ || this.§9I§ || param2)
         {
            §>2§.§51§(param1,this.§]`§);
         }
         else
         {
            §>2§.§51§(param1,this.§]`§,§,]§);
         }
      }
      
      public function §9k§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§&%§ > 0)
         {
            this.§&%§ -= param1;
            if(this.§&%§ <= 0)
            {
               ++this.§5^§;
               this.§=J§ *= 0.4;
               if(!this.§4Q§ && this.§5^§ < 2)
               {
                  if(this.§5^§ > 1 && this.§=J§ < -1)
                  {
                     this.§=J§ = -1;
                  }
                  this.§0S§ = this.§=J§;
                  this.§&%§ = §"!F§;
                  this.§&%§ *= Math.abs(this.§0S§) / 2;
                  this.§%l§ = this.§&%§;
                  this.§+H§ = 0;
                  this.§#%§ = 0;
               }
               else if(!this.§4Q§ && param2)
               {
                  this.§0!'§(2.25);
               }
               else
               {
                  this.§&%§ = 0;
                  this.§!!B§ = 0;
                  this.§+H§ = 0;
                  this.§=J§ = 0;
               }
            }
            else
            {
               if(this.§&%§ >= this.§%l§ / 2)
               {
                  _loc3_ = (this.§%l§ - this.§&%§) / (this.§%l§ / 2);
                  _loc3_ = §>!!§.§1s§(_loc3_);
                  this.§!!B§ = _loc3_ * this.§0S§;
               }
               else
               {
                  _loc3_ = (this.§%l§ / 2 - this.§&%§) / (this.§%l§ / 2);
                  _loc3_ = §>!!§.§1s§(_loc3_,false);
                  this.§!!B§ = this.§0S§ + _loc3_ * -this.§0S§;
               }
               this.§+H§ = 360 * §>!!§.§1s§((this.§%l§ - this.§&%§) / this.§%l§) * this.§#%§;
            }
            this.§6i§();
         }
         else if(Math.random() * §]T§ < param1 && !this.§4Q§ && !this.§9I§ && !this.§'A§)
         {
            this.§0!'§();
         }
      }
      
      public function §0!'§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§5^§ = 0;
         this.§&%§ = §"!F§;
         this.§!!B§ = 0;
         this.§0S§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§=J§ = this.§0S§;
         this.§&%§ *= Math.abs(this.§0S§) / 3;
         this.§%l§ = this.§&%§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§#%§ = 0;
         }
         else if(this.§&%§ < 350)
         {
            this.§#%§ = 0;
         }
         else
         {
            this.§#%§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§#%§ = Math.random() > 0.5 ? Number(this.§#%§) : Number(0);
         }
      }
      
      public function §6i§() : void
      {
         this.§0W§.x = this.§5!>§ / §#;§.§`!2§;
         this.§0W§.y = (this.§#!$§ + this.§!!B§) / §#;§.§`!2§;
         this.§0W§.rotation = this.§+H§ / 180 * Math.PI;
      }
      
      public function §`!5§() : void
      {
         this.§'A§ = true;
         this.§4Q§ = false;
         this.§9I§ = false;
         this.§5^§ = 0;
         this.§7h§ = 0;
         this.§&%§ = 0;
         this.§&%§ = 0;
         this.§!!B§ = 0;
         this.§+H§ = 0;
         this.§=J§ = 0;
         this.§#%§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§5!>§) * (param1 - this.§5!>§) + (param2 - this.§#!$§) * (param2 - this.§#!$§));
         if(_loc3_ <= this.§,N§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§5!>§ >= param3 && this.§5!>§ <= param4 && this.§#!$§ >= param1 && this.§#!$§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.§5!>§ != param1 || this.§#!$§ != param2)
         {
            _loc3_ = true;
         }
         this.§5!>§ = param1;
         this.§#!$§ = param2;
         this.§7h§ = 100;
         this.§6i§();
         if(_loc3_)
         {
            this.§@3§.§=!!§();
         }
      }
      
      public function §&3§() : §8!?§
      {
         return this.§;!G§;
      }
      
      public function get §,0§() : Number
      {
         return this.§&%§;
      }
      
      public function get §9Z§() : Number
      {
         return this.§7h§;
      }
      
      public function set §9Z§(param1:Number) : void
      {
         this.§7h§ = param1;
      }
      
      public function get §^7§() : Number
      {
         return this.§ V§;
      }
      
      public function get §1]§() : Boolean
      {
         return this.§4Q§;
      }
      
      public function get radius() : Number
      {
         return this.§,N§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§0W§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §^7§(param1:Number) : void
      {
         this.§ V§ = param1;
      }
      
      public function get §&!"§() : Number
      {
         return this.§3§;
      }
      
      public function set §&!"§(param1:Number) : void
      {
         this.§3§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§=!%§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§=!%§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§5!>§;
      }
      
      public function get y() : Number
      {
         return this.§#!$§;
      }
      
      public function get §@f§() : Number
      {
         return this.§2f§;
      }
      
      public function get §"+§() : Number
      {
         return this.§#j§;
      }
   }
}
