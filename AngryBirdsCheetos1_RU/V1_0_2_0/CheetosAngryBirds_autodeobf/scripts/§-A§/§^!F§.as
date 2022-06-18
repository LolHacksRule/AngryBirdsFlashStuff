package §-A§
{
   import §"P§.§%w§;
   import §"P§.§9!L§;
   import §"P§.§^s§;
   import §&!+§.b2Vec2;
   import §,H§.§;!9§;
   import §,H§.Sprite;
   import §,Y§.Texture;
   import §2!4§.§>5§;
   import §2!4§.§`!7§;
   import §;z§.§!+§;
   import §=g§.§#;§;
   
   public class §^!F§
   {
      
      public static const §;!K§:String = "ChannelSlingshot";
      
      public static const §9=§:Number = 900;
      
      public static const §"w§:Number = 200;
      
      public static const §&D§:Number = 200;
      
      public static const §[!X§:Number = 1500;
      
      public static const §,#§:Number = 5000;
      
      public static const §69§:Number = 1000;
      
      public static const §@'§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var §,!_§:Number;
      
      protected var §4b§:Number;
      
      protected var §%!`§:Number;
      
      protected var §%!<§:Number;
      
      private var §4§:§%w§;
      
      protected var §7e§:Number;
      
      protected var §>O§:Number = 1;
      
      private var §=#§:Sprite;
      
      protected var §8K§:§`!7§;
      
      private var §#o§:§;!9§;
      
      protected var §"!Q§:§ '§;
      
      private var §]W§:Number;
      
      private var §@"§:Boolean = false;
      
      private var §5=§:Boolean = false;
      
      protected var §1!"§:Boolean = false;
      
      private var §;2§:Number;
      
      private var §&a§:Number = 0;
      
      private var §'!G§:Number = 0;
      
      private var §[m§:Number = 0;
      
      private var §7y§:Number = 1000;
      
      private var §;&§:Number;
      
      private var §;e§:Number;
      
      private var §>M§:int;
      
      private var §]r§:Number = 0;
      
      protected var §`t§:Number;
      
      protected var §&j§:Number;
      
      private var §>!?§:Number = 1;
      
      private var §8D§:Number = 0;
      
      private var §@!V§:b2Vec2;
      
      private var §case §:Number = 1;
      
      public function §^!F§(param1:§ '§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§"!Q§ = param1;
         this.§=#§ = param2;
         this.mName = param3;
         this.§4§ = §9!L§.§=C§(this.mName).§`!0§;
         this.§,!_§ = param4;
         this.§4b§ = param5;
         this.§%!`§ = param4;
         this.§%!<§ = param5;
         this.§7e§ = 0;
         this.§@"§ = false;
         this.§5=§ = false;
         this.§&a§ = 0;
         this.§0!"§();
         this.§`t§ = 0;
      }
      
      public function §5H§() : void
      {
         this.§@"§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§=#§)
         {
            this.§=#§.dispose();
            this.§=#§ = null;
         }
      }
      
      public function §&N§(param1:Number) : void
      {
         if(!this.§5=§ || this.§@"§)
         {
            return;
         }
         if(this.§>O§ != 0)
         {
            this.§[m§ = 0;
            this.§]r§ = 0;
            this.§7e§ = 0;
            this.§;e§ = 0;
            this.§>O§ = 0;
         }
         param1 = Math.min(param1,this.§;2§);
         this.§,!_§ += param1 * (this.§"!Q§.§,!_§ - this.§,!_§) / this.§;2§;
         this.§4b§ += param1 * (this.§"!Q§.§4b§ - this.§4b§) / this.§;2§;
         this.§4b§ -= param1 / 50 * (this.§;2§ / §9=§);
         this.§7e§ += param1 * (360 - this.§7e§) / this.§;2§;
         this.§;2§ -= param1;
         if(this.§;2§ <= 0)
         {
            this.§,!_§ = this.§"!Q§.§,!_§;
            this.§4b§ = this.§"!Q§.§4b§;
            this.§5=§ = false;
            this.§@"§ = true;
            this.§7e§ = 0;
         }
         this.§4I§();
      }
      
      public function §"k§() : void
      {
         this.§5=§ = true;
         this.§;2§ = §9=§;
         this.§;!`§(§%w§.§%c§);
         if(this.§]r§ != 0)
         {
            this.§4b§ += this.§]r§;
            this.§]r§ = 0;
         }
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§@"§ && this.§`t§ >= 0)
         {
            if(this.§&j§ > this.§"!Q§.§return§.§#!a§.§>6§)
            {
               this.applyGravity(this.§"!Q§.§return§.§#!a§.§>6§ - this.§&j§);
               this.§`t§ = -1;
            }
            this.§`t§ -= param1;
            if(this.§`t§ <= 0)
            {
               if(this.§[m§ > 0)
               {
                  this.§`t§ = this.§[m§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§&j§))
               {
                  _loc2_ = this.§"!Q§.§return§.objects.§8!"§(this.§,!_§,this.§&j§);
               }
               if(_loc2_ < 0)
               {
                  if(this.applyGravity(param1 / 100))
                  {
                     this.§`t§ = -1;
                  }
                  else
                  {
                     this.§`t§ = 0;
                  }
               }
               else if(!this.§"!Q§.§return§.objects.§"!B§(_loc2_).§2e§)
               {
                  this.§1!"§ = false;
                  this.§`t§ = -1;
               }
               else if(this.§"!Q§.§return§.objects.§"!B§(_loc2_).§ !3§())
               {
                  this.§1!"§ = false;
                  this.§`t§ = 2000;
               }
               else
               {
                  this.§`t§ = 500;
               }
            }
         }
      }
      
      public function applyGravity(param1:Number) : Boolean
      {
         this.§4b§ += param1;
         this.§&j§ += param1;
         if(this.§&j§ > this.§"!Q§.§return§.§#!a§.§>6§)
         {
            param1 = this.§&j§ - this.§"!Q§.§return§.§#!a§.§>6§;
            this.§4b§ -= param1;
            this.§&j§ -= param1;
            this.§4I§();
            return true;
         }
         this.§4I§();
         return false;
      }
      
      public function §0!"§() : void
      {
         var _loc1_:§^s§ = §9!L§.§=C§(this.mName).shape;
         if(_loc1_.§&U§() == §^s§.§=4§)
         {
            this.§@!V§ = _loc1_.§7z§()[0];
            this.§]W§ = _loc1_.§,!E§;
         }
         else if(_loc1_.§&U§() == §^s§.§2K§)
         {
            this.§@!V§ = new b2Vec2(0,0);
            this.§]W§ = 1.5;
         }
         this.§8K§ = this.§"!Q§.§return§.§"y§.§ !2§(this.mName);
         if(!this.§8K§)
         {
            this.§@j§(null);
         }
         else
         {
            this.§@j§(this.§8K§.getFrame(0));
         }
      }
      
      public function §@j§(param1:§>5§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§"!Q§.§<!C§.§&w§.§[!D§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§#o§ == null)
         {
            this.§#o§ = new §;!9§(_loc2_);
            this.§=#§.addChild(this.§#o§);
         }
         else
         {
            this.§#o§.texture = _loc2_;
         }
         if(param1)
         {
            this.§#o§.x = -param1.pivotX - this.§@!V§.x / §%9§.§1[§;
            this.§#o§.y = -param1.pivotY - this.§@!V§.y / §%9§.§1[§;
         }
         else
         {
            this.§#o§.x = -this.§#o§.width / 2;
            this.§#o§.y = -this.§#o§.height / 2;
         }
         this.§#o§.scaleX = _loc3_;
         this.§#o§.scaleY = _loc3_;
         this.§4I§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.updateGroundControl(param1);
         if(this.§5=§)
         {
            this.§[m§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§%!=§(param1);
            this.native(param1);
            if(_loc4_ && param3 == true)
            {
               this.§>!+§(param1,param2);
            }
         }
      }
      
      public function §%!=§(param1:Number) : void
      {
         if(this.§&a§ > 0)
         {
            this.§&a§ -= param1;
            if(this.§&a§ <= 0)
            {
               this.§`#§();
            }
         }
         else if(this.§'!G§ <= 0 && Math.random() * §[!X§ < param1 && this.§"!Q§.mSlingShotState)
         {
            this.§2R§();
         }
      }
      
      public function §`#§() : void
      {
         this.§&a§ = 0;
         this.§@j§(this.§8K§.getFrame(0));
      }
      
      public function §2R§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§&a§ = §"w§;
         this.§@j§(this.§8K§.getSubAnimation("blink").getFrame(0));
      }
      
      public function native(param1:Number) : void
      {
         if(this.§'!G§ > 0)
         {
            this.§'!G§ -= param1;
            if(this.§'!G§ <= 0)
            {
               this.§3!M§();
            }
         }
         else if(this.§&a§ <= 0 && Math.random() * §,#§ < param1)
         {
            this.§;!`§();
         }
      }
      
      public function §3!M§() : void
      {
         this.§'!G§ = 0;
         this.§@j§(this.§8K§.getFrame(0));
      }
      
      public function §;!`§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§'!G§ > 0)
         {
            this.§3!M§();
         }
         if(this.§&a§ > 0)
         {
            this.§`#§();
         }
         if(param1 < 0)
         {
            param1 = §%w§.§['§;
         }
         this.§'!G§ = §&D§;
         this.§@j§(this.§8K§.getSubAnimation("yell").getFrame(0));
         if(this.§@"§ || this.§5=§ || param2)
         {
            §!+§.§[a§(param1,this.§4§);
         }
         else
         {
            §!+§.§[a§(param1,this.§4§,§;!K§);
         }
      }
      
      public function §>!+§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§[m§ > 0)
         {
            this.§[m§ -= param1;
            if(this.§[m§ <= 0)
            {
               ++this.§>M§;
               this.§;e§ *= 0.4;
               if(!this.§@"§ && this.§>M§ < 2)
               {
                  if(this.§>M§ > 1 && this.§;e§ < -1)
                  {
                     this.§;e§ = -1;
                  }
                  this.§;&§ = this.§;e§;
                  this.§[m§ = §@'§;
                  this.§[m§ *= Math.abs(this.§;&§) / 2;
                  this.§7y§ = this.§[m§;
                  this.§7e§ = 0;
                  this.§>O§ = 0;
               }
               else if(!this.§@"§ && param2)
               {
                  this.§-!a§(2.25);
               }
               else
               {
                  this.§[m§ = 0;
                  this.§]r§ = 0;
                  this.§7e§ = 0;
                  this.§;e§ = 0;
               }
            }
            else
            {
               if(this.§[m§ >= this.§7y§ / 2)
               {
                  _loc3_ = (this.§7y§ - this.§[m§) / (this.§7y§ / 2);
                  _loc3_ = §#;§.§5!^§(_loc3_);
                  this.§]r§ = _loc3_ * this.§;&§;
               }
               else
               {
                  _loc3_ = (this.§7y§ / 2 - this.§[m§) / (this.§7y§ / 2);
                  _loc3_ = §#;§.§5!^§(_loc3_,false);
                  this.§]r§ = this.§;&§ + _loc3_ * -this.§;&§;
               }
               this.§7e§ = 360 * §#;§.§5!^§((this.§7y§ - this.§[m§) / this.§7y§) * this.§>O§;
            }
            this.§4I§();
         }
         else if(Math.random() * §69§ < param1 && !this.§@"§ && !this.§5=§ && !this.§1!"§)
         {
            this.§-!a§();
         }
      }
      
      public function §-!a§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§>M§ = 0;
         this.§[m§ = §@'§;
         this.§]r§ = 0;
         this.§;&§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§;e§ = this.§;&§;
         this.§[m§ *= Math.abs(this.§;&§) / 3;
         this.§7y§ = this.§[m§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§>O§ = 0;
         }
         else if(this.§[m§ < 350)
         {
            this.§>O§ = 0;
         }
         else
         {
            this.§>O§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§>O§ = Math.random() > 0.5 ? Number(this.§>O§) : Number(0);
         }
      }
      
      public function §4I§() : void
      {
         this.§=#§.x = this.§,!_§ / §%9§.§1[§;
         this.§=#§.y = (this.§4b§ + this.§]r§) / §%9§.§1[§;
         this.§=#§.rotation = this.§7e§ / 180 * Math.PI;
      }
      
      public function §`!G§() : void
      {
         this.§1!"§ = true;
         this.§@"§ = false;
         this.§5=§ = false;
         this.§>M§ = 0;
         this.§`t§ = 0;
         this.§[m§ = 0;
         this.§[m§ = 0;
         this.§]r§ = 0;
         this.§7e§ = 0;
         this.§;e§ = 0;
         this.§>O§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§,!_§) * (param1 - this.§,!_§) + (param2 - this.§4b§) * (param2 - this.§4b§));
         if(_loc3_ <= this.§]W§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§,!_§ >= param3 && this.§,!_§ <= param4 && this.§4b§ >= param1 && this.§4b§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.§,!_§ != param1 || this.§4b§ != param2)
         {
            _loc3_ = true;
         }
         this.§,!_§ = param1;
         this.§4b§ = param2;
         this.§`t§ = 100;
         this.§4I§();
         if(_loc3_)
         {
            this.§"!Q§.§;Y§();
         }
      }
      
      public function §?8§() : §;!9§
      {
         return this.§#o§;
      }
      
      public function get §;;§() : Number
      {
         return this.§[m§;
      }
      
      public function get §;'§() : Number
      {
         return this.§`t§;
      }
      
      public function set §;'§(param1:Number) : void
      {
         this.§`t§ = param1;
      }
      
      public function get §?i§() : Number
      {
         return this.§>!?§;
      }
      
      public function get §^!<§() : Boolean
      {
         return this.§@"§;
      }
      
      public function get radius() : Number
      {
         return this.§]W§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§=#§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §?i§(param1:Number) : void
      {
         this.§>!?§ = param1;
      }
      
      public function get §+H§() : Number
      {
         return this.§8D§;
      }
      
      public function set §+H§(param1:Number) : void
      {
         this.§8D§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§case §;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§case § = param1;
      }
      
      public function get x() : Number
      {
         return this.§,!_§;
      }
      
      public function get y() : Number
      {
         return this.§4b§;
      }
      
      public function get §92§() : Number
      {
         return this.§%!`§;
      }
      
      public function get §&>§() : Number
      {
         return this.§%!<§;
      }
   }
}
