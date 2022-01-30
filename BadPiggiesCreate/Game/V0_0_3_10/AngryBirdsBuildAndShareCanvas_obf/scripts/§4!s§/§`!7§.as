package §4!s§
{
   import §%t§.§#B§;
   import §%t§.§2!D§;
   import §&!s§.§!m§;
   import §&!s§.§+!O§;
   import §&!s§.§,!c§;
   import §4!S§.Texture;
   import §9!G§.§%s§;
   import §="§.§`T§;
   import §?!h§.b2Vec2;
   import §^I§.§=!+§;
   import §^I§.Sprite;
   
   public class §`!7§
   {
      
      public static const §[!C§:String = "ChannelSlingshot";
      
      public static const §'E§:Number = 900;
      
      public static const §[",§:Number = 200;
      
      public static const §2-§:Number = 200;
      
      public static const §2o§:Number = 1500;
      
      public static const §7U§:Number = 5000;
      
      public static const §?Y§:Number = 1000;
      
      public static const §>!M§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var mX:Number;
      
      protected var mY:Number;
      
      protected var §5"$§:Number;
      
      protected var §^y§:Number;
      
      private var §!Z§:§!m§;
      
      protected var § get§:Number;
      
      protected var §>!b§:Number = 1;
      
      private var §;!E§:Sprite;
      
      protected var §7f§:§2!D§;
      
      private var § !t§:§=!+§;
      
      protected var §<!U§:§4^§;
      
      private var §@!"§:Number;
      
      private var §2!'§:Boolean = false;
      
      private var §]!z§:Boolean = false;
      
      protected var §^b§:Boolean = false;
      
      private var §#v§:Number;
      
      private var §4P§:Number = 0;
      
      private var §!!i§:Number = 0;
      
      private var §!!Z§:Number = 0;
      
      private var §^E§:Number = 1000;
      
      private var §9Y§:Number;
      
      private var §8!W§:Number;
      
      private var §7]§:int;
      
      private var §^!e§:Number = 0;
      
      protected var §@N§:Number;
      
      protected var §<r§:Number;
      
      private var §6u§:Number = 1;
      
      private var §]y§:Number = 0;
      
      private var §5V§:b2Vec2;
      
      private var §5N§:Number = 1;
      
      public function §`!7§(param1:§4^§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§<!U§ = param1;
         this.§;!E§ = param2;
         this.mName = param3;
         this.§!Z§ = §+!O§.§?!b§(this.mName).§%!m§;
         this.mX = param4;
         this.mY = param5;
         this.§5"$§ = param4;
         this.§^y§ = param5;
         this.§ get§ = 0;
         this.§2!'§ = false;
         this.§]!z§ = false;
         this.§4P§ = 0;
         this.§#!_§();
         this.§@N§ = 0;
      }
      
      public function §+V§() : void
      {
         this.§2!'§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§;!E§)
         {
            this.§;!E§.dispose();
            this.§;!E§ = null;
         }
      }
      
      public function §>!8§(param1:Number) : void
      {
         if(!this.§]!z§ || this.§2!'§)
         {
            return;
         }
         if(this.§>!b§ != 0)
         {
            this.§!!Z§ = 0;
            this.§^!e§ = 0;
            this.§ get§ = 0;
            this.§8!W§ = 0;
            this.§>!b§ = 0;
         }
         param1 = Math.min(param1,this.§#v§);
         this.mX += param1 * (this.§<!U§.mX - this.mX) / this.§#v§;
         this.mY += param1 * (this.§<!U§.mY - this.mY) / this.§#v§;
         this.mY -= param1 / 50 * (this.§#v§ / §'E§);
         this.§ get§ += param1 * (360 - this.§ get§) / this.§#v§;
         this.§#v§ -= param1;
         if(this.§#v§ <= 0)
         {
            this.mX = this.§<!U§.mX;
            this.mY = this.§<!U§.mY;
            this.§]!z§ = false;
            this.§2!'§ = true;
            this.§ get§ = 0;
         }
         this.§8!t§();
      }
      
      public function §7"§() : void
      {
         this.§]!z§ = true;
         this.§#v§ = §'E§;
         this.§37§(§!m§.§1B§);
         if(this.§^!e§ != 0)
         {
            this.mY += this.§^!e§;
            this.§^!e§ = 0;
         }
      }
      
      public function §`=§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§2!'§ && this.§@N§ >= 0)
         {
            if(this.§<r§ > this.§<!U§.§,!T§.borders.mBorderGround_B2)
            {
               this.§5P§(this.§<!U§.§,!T§.borders.mBorderGround_B2 - this.§<r§);
               this.§@N§ = -1;
            }
            this.§@N§ -= param1;
            if(this.§@N§ <= 0)
            {
               if(this.§!!Z§ > 0)
               {
                  this.§@N§ = this.§!!Z§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§<r§))
               {
                  _loc2_ = this.§<!U§.§,!T§.objects.§5!e§(this.mX,this.§<r§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§5P§(param1 / 100))
                  {
                     this.§@N§ = -1;
                  }
                  else
                  {
                     this.§@N§ = 0;
                  }
               }
               else if(!this.§<!U§.§,!T§.objects.getObject(_loc2_).§%f§)
               {
                  this.§^b§ = false;
                  this.§@N§ = -1;
               }
               else if(this.§<!U§.§,!T§.objects.getObject(_loc2_).§!!`§())
               {
                  this.§^b§ = false;
                  this.§@N§ = 2000;
               }
               else
               {
                  this.§@N§ = 500;
               }
            }
         }
      }
      
      public function §5P§(param1:Number) : Boolean
      {
         this.mY += param1;
         this.§<r§ += param1;
         if(this.§<r§ > this.§<!U§.§,!T§.borders.mBorderGround_B2)
         {
            param1 = this.§<r§ - this.§<!U§.§,!T§.borders.mBorderGround_B2;
            this.mY -= param1;
            this.§<r§ -= param1;
            this.§8!t§();
            return true;
         }
         this.§8!t§();
         return false;
      }
      
      public function §#!_§() : void
      {
         var _loc1_:§,!c§ = §+!O§.§?!b§(this.mName).shape;
         if(_loc1_.§>!!§() == §,!c§.§6!+§)
         {
            this.§5V§ = _loc1_.§8R§()[0];
            this.§@!"§ = _loc1_.§4!z§;
         }
         else if(_loc1_.§>!!§() == §,!c§.§'!'§)
         {
            this.§5V§ = new b2Vec2(0,0);
            this.§@!"§ = 1.5;
         }
         this.§7f§ = this.§<!U§.§,!T§.§^d§.§5!7§(this.mName);
         if(!this.§7f§)
         {
            this.§'7§(null);
         }
         else
         {
            this.§'7§(this.§7f§.getFrame(0));
         }
      }
      
      public function §'7§(param1:§#B§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§<!U§.§^"'§.§>=§.§`!E§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§ !t§ == null)
         {
            this.§ !t§ = new §=!+§(_loc2_);
            this.§;!E§.addChild(this.§ !t§);
         }
         else
         {
            this.§ !t§.texture = _loc2_;
         }
         if(param1)
         {
            this.§ !t§.x = -param1.pivotX - this.§5V§.x / §%I§.§9"4§;
            this.§ !t§.y = -param1.pivotY - this.§5V§.y / §%I§.§9"4§;
         }
         else
         {
            this.§ !t§.x = -this.§ !t§.width / 2;
            this.§ !t§.y = -this.§ !t§.height / 2;
         }
         this.§ !t§.scaleX = _loc3_;
         this.§ !t§.scaleY = _loc3_;
         this.§8!t§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§`=§(param1);
         if(this.§]!z§)
         {
            this.§!!Z§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§>$§(param1);
            this.§2!F§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§=!J§(param1,param2);
            }
         }
      }
      
      public function §>$§(param1:Number) : void
      {
         if(this.§4P§ > 0)
         {
            this.§4P§ -= param1;
            if(this.§4P§ <= 0)
            {
               this.§7O§();
            }
         }
         else if(this.§!!i§ <= 0 && Math.random() * §2o§ < param1 && this.§<!U§.mSlingShotState)
         {
            this.§`!;§();
         }
      }
      
      public function §7O§() : void
      {
         this.§4P§ = 0;
         this.§'7§(this.§7f§.getFrame(0));
      }
      
      public function §`!;§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§4P§ = §[",§;
         this.§'7§(this.§7f§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §2!F§(param1:Number) : void
      {
         if(this.§!!i§ > 0)
         {
            this.§!!i§ -= param1;
            if(this.§!!i§ <= 0)
            {
               this.§-"§();
            }
         }
         else if(this.§4P§ <= 0 && Math.random() * §7U§ < param1)
         {
            this.§37§();
         }
      }
      
      public function §-"§() : void
      {
         this.§!!i§ = 0;
         this.§'7§(this.§7f§.getFrame(0));
      }
      
      public function §37§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§!!i§ > 0)
         {
            this.§-"§();
         }
         if(this.§4P§ > 0)
         {
            this.§7O§();
         }
         if(param1 < 0)
         {
            param1 = §!m§.§0!%§;
         }
         this.§!!i§ = §2-§;
         this.§'7§(this.§7f§.getSubAnimation("yell").getFrame(0));
         if(this.§2!'§ || this.§]!z§ || param2)
         {
            §`T§.§=!I§(param1,this.§!Z§);
         }
         else
         {
            §`T§.§=!I§(param1,this.§!Z§,§[!C§);
         }
      }
      
      public function §=!J§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§!!Z§ > 0)
         {
            this.§!!Z§ -= param1;
            if(this.§!!Z§ <= 0)
            {
               ++this.§7]§;
               this.§8!W§ *= 0.4;
               if(!this.§2!'§ && this.§7]§ < 2)
               {
                  if(this.§7]§ > 1 && this.§8!W§ < -1)
                  {
                     this.§8!W§ = -1;
                  }
                  this.§9Y§ = this.§8!W§;
                  this.§!!Z§ = §>!M§;
                  this.§!!Z§ *= Math.abs(this.§9Y§) / 2;
                  this.§^E§ = this.§!!Z§;
                  this.§ get§ = 0;
                  this.§>!b§ = 0;
               }
               else if(!this.§2!'§ && param2)
               {
                  this.§7!M§(2.25);
               }
               else
               {
                  this.§!!Z§ = 0;
                  this.§^!e§ = 0;
                  this.§ get§ = 0;
                  this.§8!W§ = 0;
               }
            }
            else
            {
               if(this.§!!Z§ >= this.§^E§ / 2)
               {
                  _loc3_ = (this.§^E§ - this.§!!Z§) / (this.§^E§ / 2);
                  _loc3_ = §%s§.§2!N§(_loc3_);
                  this.§^!e§ = _loc3_ * this.§9Y§;
               }
               else
               {
                  _loc3_ = (this.§^E§ / 2 - this.§!!Z§) / (this.§^E§ / 2);
                  _loc3_ = §%s§.§2!N§(_loc3_,false);
                  this.§^!e§ = this.§9Y§ + _loc3_ * -this.§9Y§;
               }
               this.§ get§ = 360 * §%s§.§2!N§((this.§^E§ - this.§!!Z§) / this.§^E§) * this.§>!b§;
            }
            this.§8!t§();
         }
         else if(Math.random() * §?Y§ < param1 && !this.§2!'§ && !this.§]!z§ && !this.§^b§)
         {
            this.§7!M§();
         }
      }
      
      public function §7!M§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§7]§ = 0;
         this.§!!Z§ = §>!M§;
         this.§^!e§ = 0;
         this.§9Y§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§8!W§ = this.§9Y§;
         this.§!!Z§ *= Math.abs(this.§9Y§) / 3;
         this.§^E§ = this.§!!Z§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§>!b§ = 0;
         }
         else if(this.§!!Z§ < 350)
         {
            this.§>!b§ = 0;
         }
         else
         {
            this.§>!b§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§>!b§ = Math.random() > 0.5 ? Number(this.§>!b§) : Number(0);
         }
      }
      
      public function §8!t§() : void
      {
         this.§;!E§.x = this.mX / §%I§.§9"4§;
         this.§;!E§.y = (this.mY + this.§^!e§) / §%I§.§9"4§;
         this.§;!E§.rotation = this.§ get§ / 180 * Math.PI;
      }
      
      public function §&![§() : void
      {
         this.§^b§ = true;
         this.§2!'§ = false;
         this.§]!z§ = false;
         this.§7]§ = 0;
         this.§@N§ = 0;
         this.§!!Z§ = 0;
         this.§!!Z§ = 0;
         this.§^!e§ = 0;
         this.§ get§ = 0;
         this.§8!W§ = 0;
         this.§>!b§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.mX) * (param1 - this.mX) + (param2 - this.mY) * (param2 - this.mY));
         if(_loc3_ <= this.§@!"§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.mX >= param3 && this.mX <= param4 && this.mY >= param1 && this.mY <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.mX != param1 || this.mY != param2)
         {
            _loc3_ = true;
         }
         this.mX = param1;
         this.mY = param2;
         this.§@N§ = 100;
         this.§8!t§();
         if(_loc3_)
         {
            this.§<!U§.§,!y§();
         }
      }
      
      public function §[!@§() : §=!+§
      {
         return this.§ !t§;
      }
      
      public function get § case§() : Number
      {
         return this.§!!Z§;
      }
      
      public function get §6x§() : Number
      {
         return this.§@N§;
      }
      
      public function set §6x§(param1:Number) : void
      {
         this.§@N§ = param1;
      }
      
      public function get §@r§() : Number
      {
         return this.§6u§;
      }
      
      public function get §<"6§() : Boolean
      {
         return this.§2!'§;
      }
      
      public function get radius() : Number
      {
         return this.§@!"§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§;!E§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §@r§(param1:Number) : void
      {
         this.§6u§ = param1;
      }
      
      public function get §#a§() : Number
      {
         return this.§]y§;
      }
      
      public function set §#a§(param1:Number) : void
      {
         this.§]y§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§5N§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§5N§ = param1;
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function get §8"1§() : Number
      {
         return this.§5"$§;
      }
      
      public function get §2N§() : Number
      {
         return this.§^y§;
      }
   }
}
