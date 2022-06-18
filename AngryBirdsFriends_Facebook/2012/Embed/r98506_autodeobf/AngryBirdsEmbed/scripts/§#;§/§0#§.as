package §#;§
{
   import §"a§.§#c§;
   import §"a§.§^>§;
   import §&c§.§9h§;
   import §-p§.§6!G§;
   import §5@§.Texture;
   import §;q§.Sprite;
   import §;q§.§[E§;
   import §^V§.§4a§;
   import §^V§.§;n§;
   import §^V§.§<e§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class §0#§
   {
      
      public static const §<n§:String = "ChannelSlingshot";
      
      public static const §<!G§:Number = 900;
      
      public static const §'O§:Number = 200;
      
      public static const §@D§:Number = 200;
      
      public static const §super§:Number = 1500;
      
      public static const §%F§:Number = 5000;
      
      public static const §-J§:Number = 1000;
      
      public static const §]!1§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var §9r§:Number;
      
      protected var §!0§:Number;
      
      protected var §[v§:Number;
      
      protected var §'f§:Number;
      
      private var §`7§:§<e§;
      
      protected var §!S§:Number;
      
      protected var §6W§:Number = 1;
      
      private var §]?§:Sprite;
      
      protected var §=>§:§#c§;
      
      private var § T§:§[E§;
      
      protected var §9"§:§!l§;
      
      private var §!B§:Number;
      
      private var §case §:Boolean = false;
      
      private var §;J§:Boolean = false;
      
      protected var §#C§:Boolean = false;
      
      private var §7;§:Number;
      
      private var §!!=§:Number = 0;
      
      private var § V§:Number = 0;
      
      private var §8<§:Number = 0;
      
      private var §<!#§:Number = 1000;
      
      private var §-!4§:Number;
      
      private var §2!-§:Number;
      
      private var §,#§:int;
      
      private var §"!B§:Number = 0;
      
      protected var §;g§:Number;
      
      protected var §8!$§:Number;
      
      private var §;X§:Number = 1;
      
      private var §6l§:Number = 0;
      
      private var §2!#§:b2Vec2;
      
      private var §&p§:Number = 1;
      
      public function §0#§(param1:§!l§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§9"§ = param1;
         this.§]?§ = param2;
         this.mName = param3;
         this.§`7§ = §;n§.§@!G§(this.mName).§9w§;
         this.§9r§ = param4;
         this.§!0§ = param5;
         this.§[v§ = param4;
         this.§'f§ = param5;
         this.§!S§ = 0;
         this.§case § = false;
         this.§;J§ = false;
         this.§!!=§ = 0;
         this.§'!I§();
         this.§;g§ = 0;
      }
      
      public function §=!5§() : void
      {
         this.§case § = true;
      }
      
      public function dispose() : void
      {
         if(this.§]?§)
         {
            this.§]?§.dispose();
            this.§]?§ = null;
         }
      }
      
      public function §>!-§(param1:Number) : void
      {
         if(!this.§;J§ || this.§case §)
         {
            return;
         }
         if(this.§6W§ != 0)
         {
            this.§8<§ = 0;
            this.§"!B§ = 0;
            this.§!S§ = 0;
            this.§2!-§ = 0;
            this.§6W§ = 0;
         }
         param1 = Math.min(param1,this.§7;§);
         this.§9r§ += param1 * (this.§9"§.§9r§ - this.§9r§) / this.§7;§;
         this.§!0§ += param1 * (this.§9"§.§!0§ - this.§!0§) / this.§7;§;
         this.§!0§ -= param1 / 50 * (this.§7;§ / §<!G§);
         this.§!S§ += param1 * (360 - this.§!S§) / this.§7;§;
         this.§7;§ -= param1;
         if(this.§7;§ <= 0)
         {
            this.§9r§ = this.§9"§.§9r§;
            this.§!0§ = this.§9"§.§!0§;
            this.§;J§ = false;
            this.§case § = true;
            this.§!S§ = 0;
         }
         this.§1!"§();
      }
      
      public function §55§() : void
      {
         this.§;J§ = true;
         this.§7;§ = §<!G§;
         this.§<<§(§<e§.§#h§);
         if(this.§"!B§ != 0)
         {
            this.§!0§ += this.§"!B§;
            this.§"!B§ = 0;
         }
      }
      
      public function §>7§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§case § && this.§;g§ >= 0)
         {
            if(this.§8!$§ > this.§9"§.§3!3§.§-x§.§in §)
            {
               this.§`4§(this.§9"§.§3!3§.§-x§.§in § - this.§8!$§);
               this.§;g§ = -1;
            }
            this.§;g§ -= param1;
            if(this.§;g§ <= 0)
            {
               if(this.§8<§ > 0)
               {
                  this.§;g§ = this.§8<§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§8!$§))
               {
                  _loc2_ = this.§9"§.§3!3§.objects.§96§(this.§9r§,this.§8!$§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§`4§(param1 / 100))
                  {
                     this.§;g§ = -1;
                  }
                  else
                  {
                     this.§;g§ = 0;
                  }
               }
               else if(!this.§9"§.§3!3§.objects.§9!#§(_loc2_).§#V§)
               {
                  this.§#C§ = false;
                  this.§;g§ = -1;
               }
               else if(this.§9"§.§3!3§.objects.§9!#§(_loc2_).§"! §())
               {
                  this.§#C§ = false;
                  this.§;g§ = 2000;
               }
               else
               {
                  this.§;g§ = 500;
               }
            }
         }
      }
      
      public function §`4§(param1:Number) : Boolean
      {
         this.§!0§ += param1;
         this.§8!$§ += param1;
         if(this.§8!$§ > this.§9"§.§3!3§.§-x§.§in §)
         {
            param1 = this.§8!$§ - this.§9"§.§3!3§.§-x§.§in §;
            this.§!0§ -= param1;
            this.§8!$§ -= param1;
            this.§1!"§();
            return true;
         }
         this.§1!"§();
         return false;
      }
      
      public function §'!I§() : void
      {
         var _loc1_:§4a§ = §;n§.§@!G§(this.mName).shape;
         if(_loc1_.§2m§() == §4a§.§7!6§)
         {
            this.§2!#§ = _loc1_.§3!§()[0];
            this.§!B§ = _loc1_.§<!3§;
         }
         else if(_loc1_.§2m§() == §4a§.§9!C§)
         {
            this.§2!#§ = new b2Vec2(0,0);
            this.§!B§ = 1.5;
         }
         this.§=>§ = this.§9"§.§3!3§.§`,§.§12§(this.mName);
         if(!this.§=>§)
         {
            this.§`!5§(null);
         }
         else
         {
            this.§`!5§(this.§=>§.getFrame(0));
         }
      }
      
      public function §`!5§(param1:§^>§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§9"§.§>E§.textureManager.§4Y§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§ T§ == null)
         {
            this.§ T§ = new §[E§(_loc2_);
            this.§]?§.addChild(this.§ T§);
         }
         else
         {
            this.§ T§.texture = _loc2_;
         }
         if(param1)
         {
            this.§ T§.x = -param1.pivotX - this.§2!#§.x / §4!8§.§5+§;
            this.§ T§.y = -param1.pivotY - this.§2!#§.y / §4!8§.§5+§;
         }
         else
         {
            this.§ T§.x = -this.§ T§.width / 2;
            this.§ T§.y = -this.§ T§.height / 2;
         }
         this.§ T§.scaleX = _loc3_;
         this.§ T§.scaleY = _loc3_;
         this.§1!"§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§>7§(param1);
         if(this.§;J§)
         {
            this.§8<§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§6!@§(param1);
            this.§6[§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§#y§(param1,param2);
            }
         }
      }
      
      public function §6!@§(param1:Number) : void
      {
         if(this.§!!=§ > 0)
         {
            this.§!!=§ -= param1;
            if(this.§!!=§ <= 0)
            {
               this.§='§();
            }
         }
         else if(this.§ V§ <= 0 && Math.random() * §super§ < param1 && this.§9"§.mSlingShotState)
         {
            this.§-=§();
         }
      }
      
      public function §='§() : void
      {
         this.§!!=§ = 0;
         this.§`!5§(this.§=>§.getFrame(0));
      }
      
      public function §-=§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§!!=§ = §'O§;
         this.§`!5§(this.§=>§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §6[§(param1:Number) : void
      {
         if(this.§ V§ > 0)
         {
            this.§ V§ -= param1;
            if(this.§ V§ <= 0)
            {
               this.§;3§();
            }
         }
         else if(this.§!!=§ <= 0 && Math.random() * §%F§ < param1)
         {
            this.§<<§();
         }
      }
      
      public function §;3§() : void
      {
         this.§ V§ = 0;
         this.§`!5§(this.§=>§.getFrame(0));
      }
      
      public function §<<§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§ V§ > 0)
         {
            this.§;3§();
         }
         if(this.§!!=§ > 0)
         {
            this.§='§();
         }
         if(param1 < 0)
         {
            param1 = §<e§.§>!H§;
         }
         this.§ V§ = §@D§;
         this.§`!5§(this.§=>§.getSubAnimation("yell").getFrame(0));
         if(this.§case § || this.§;J§ || param2)
         {
            §9h§.§0o§(param1,this.§`7§);
         }
         else
         {
            §9h§.§0o§(param1,this.§`7§,§<n§);
         }
      }
      
      public function §#y§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§8<§ > 0)
         {
            this.§8<§ -= param1;
            if(this.§8<§ <= 0)
            {
               ++this.§,#§;
               this.§2!-§ *= 0.4;
               if(!this.§case § && this.§,#§ < 2)
               {
                  if(this.§,#§ > 1 && this.§2!-§ < -1)
                  {
                     this.§2!-§ = -1;
                  }
                  this.§-!4§ = this.§2!-§;
                  this.§8<§ = §]!1§;
                  this.§8<§ *= Math.abs(this.§-!4§) / 2;
                  this.§<!#§ = this.§8<§;
                  this.§!S§ = 0;
                  this.§6W§ = 0;
               }
               else if(!this.§case § && param2)
               {
                  this.§<L§(2.25);
               }
               else
               {
                  this.§8<§ = 0;
                  this.§"!B§ = 0;
                  this.§!S§ = 0;
                  this.§2!-§ = 0;
               }
            }
            else
            {
               if(this.§8<§ >= this.§<!#§ / 2)
               {
                  _loc3_ = (this.§<!#§ - this.§8<§) / (this.§<!#§ / 2);
                  _loc3_ = §6!G§.§,]§(_loc3_);
                  this.§"!B§ = _loc3_ * this.§-!4§;
               }
               else
               {
                  _loc3_ = (this.§<!#§ / 2 - this.§8<§) / (this.§<!#§ / 2);
                  _loc3_ = §6!G§.§,]§(_loc3_,false);
                  this.§"!B§ = this.§-!4§ + _loc3_ * -this.§-!4§;
               }
               this.§!S§ = 360 * §6!G§.§,]§((this.§<!#§ - this.§8<§) / this.§<!#§) * this.§6W§;
            }
            this.§1!"§();
         }
         else if(Math.random() * §-J§ < param1 && !this.§case § && !this.§;J§ && !this.§#C§)
         {
            this.§<L§();
         }
      }
      
      public function §<L§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§,#§ = 0;
         this.§8<§ = §]!1§;
         this.§"!B§ = 0;
         this.§-!4§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§2!-§ = this.§-!4§;
         this.§8<§ *= Math.abs(this.§-!4§) / 3;
         this.§<!#§ = this.§8<§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§6W§ = 0;
         }
         else if(this.§8<§ < 350)
         {
            this.§6W§ = 0;
         }
         else
         {
            this.§6W§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§6W§ = Math.random() > 0.5 ? Number(this.§6W§) : Number(0);
         }
      }
      
      public function §1!"§() : void
      {
         this.§]?§.x = this.§9r§ / §4!8§.§5+§;
         this.§]?§.y = (this.§!0§ + this.§"!B§) / §4!8§.§5+§;
         this.§]?§.rotation = this.§!S§ / 180 * Math.PI;
      }
      
      public function §+$§() : void
      {
         this.§#C§ = true;
         this.§case § = false;
         this.§;J§ = false;
         this.§,#§ = 0;
         this.§;g§ = 0;
         this.§8<§ = 0;
         this.§8<§ = 0;
         this.§"!B§ = 0;
         this.§!S§ = 0;
         this.§2!-§ = 0;
         this.§6W§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§9r§) * (param1 - this.§9r§) + (param2 - this.§!0§) * (param2 - this.§!0§));
         if(_loc3_ <= this.§!B§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§9r§ >= param3 && this.§9r§ <= param4 && this.§!0§ >= param1 && this.§!0§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.§9r§ != param1 || this.§!0§ != param2)
         {
            _loc3_ = true;
         }
         this.§9r§ = param1;
         this.§!0§ = param2;
         this.§;g§ = 100;
         this.§1!"§();
         if(_loc3_)
         {
            this.§9"§.§6!+§();
         }
      }
      
      public function §"D§() : §[E§
      {
         return this.§ T§;
      }
      
      public function get §6r§() : Number
      {
         return this.§8<§;
      }
      
      public function get §%T§() : Number
      {
         return this.§;g§;
      }
      
      public function set §%T§(param1:Number) : void
      {
         this.§;g§ = param1;
      }
      
      public function get §1!@§() : Number
      {
         return this.§;X§;
      }
      
      public function get §2!H§() : Boolean
      {
         return this.§case §;
      }
      
      public function get radius() : Number
      {
         return this.§!B§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§]?§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §1!@§(param1:Number) : void
      {
         this.§;X§ = param1;
      }
      
      public function get §6_§() : Number
      {
         return this.§6l§;
      }
      
      public function set §6_§(param1:Number) : void
      {
         this.§6l§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§&p§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§&p§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§9r§;
      }
      
      public function get y() : Number
      {
         return this.§!0§;
      }
      
      public function get §-2§() : Number
      {
         return this.§[v§;
      }
      
      public function get §5Z§() : Number
      {
         return this.§'f§;
      }
   }
}
