package §]!@§
{
   import §#!,§.§0!b§;
   import §#!,§.Sprite;
   import §,!7§.§ H§;
   import §,!7§.Animation;
   import §6!!§.LevelObject;
   import §6!J§.Texture;
   import §<u§.§!t§;
   import §>!8§.b2Vec2;
   import §package§.LevelItemManager;
   import §package§.LevelItemShape;
   import §package§.LevelItemSoundResource;
   
   public class LevelSlingshotObject
   {
      
      public static const §@!R§:String = "ChannelSlingshot";
      
      public static const §4!d§:Number = 900;
      
      public static const §;B§:Number = 200;
      
      public static const §!%§:Number = 200;
      
      public static const §0G§:Number = 1500;
      
      public static const §@+§:Number = 5000;
      
      public static const §?!6§:Number = 1000;
      
      public static const §`"§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var §1X§:Number;
      
      protected var §`J§:Number;
      
      protected var §;f§:Number;
      
      protected var §7>§:Number;
      
      private var §=K§:LevelItemSoundResource;
      
      protected var §&Z§:Number;
      
      protected var §6&§:Number = 1;
      
      private var §"!,§:Sprite;
      
      protected var §;]§:Animation;
      
      private var §'!Q§:§0!b§;
      
      protected var §%!c§:LevelSlingshot;
      
      private var §2J§:Number;
      
      private var §?!D§:Boolean = false;
      
      private var §'u§:Boolean = false;
      
      protected var §4L§:Boolean = false;
      
      private var §7O§:Number;
      
      private var §@f§:Number = 0;
      
      private var §!!8§:Number = 0;
      
      private var §&!Q§:Number = 0;
      
      private var §+,§:Number = 1000;
      
      private var §3!#§:Number;
      
      private var §5!0§:Number;
      
      private var §`!1§:int;
      
      private var §@!Z§:Number = 0;
      
      protected var §5`§:Number;
      
      protected var §?!K§:Number;
      
      private var §?!9§:Number = 1;
      
      private var §]v§:Number = 0;
      
      private var §6,§:b2Vec2;
      
      private var §?C§:Number = 1;
      
      public function LevelSlingshotObject(param1:LevelSlingshot, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§%!c§ = param1;
         this.§"!,§ = param2;
         this.mName = param3;
         this.§=K§ = LevelItemManager.§-`§(this.mName).§%!K§;
         this.§1X§ = param4;
         this.§`J§ = param5;
         this.§;f§ = param4;
         this.§7>§ = param5;
         this.§&Z§ = 0;
         this.§?!D§ = false;
         this.§'u§ = false;
         this.§@f§ = 0;
         this.§&`§();
         this.§5`§ = 0;
      }
      
      public function §3g§() : void
      {
         this.§?!D§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§"!,§)
         {
            this.§"!,§.dispose();
            this.§"!,§ = null;
         }
      }
      
      public function §,!S§(param1:Number) : void
      {
         if(!this.§'u§ || this.§?!D§)
         {
            return;
         }
         if(this.§6&§ != 0)
         {
            this.§&!Q§ = 0;
            this.§@!Z§ = 0;
            this.§&Z§ = 0;
            this.§5!0§ = 0;
            this.§6&§ = 0;
         }
         param1 = Math.min(param1,this.§7O§);
         this.§1X§ += param1 * (this.§%!c§.§1X§ - this.§1X§) / this.§7O§;
         this.§`J§ += param1 * (this.§%!c§.§`J§ - this.§`J§) / this.§7O§;
         this.§`J§ -= param1 / 50 * (this.§7O§ / §4!d§);
         this.§&Z§ += param1 * (360 - this.§&Z§) / this.§7O§;
         this.§7O§ -= param1;
         if(this.§7O§ <= 0)
         {
            this.§1X§ = this.§%!c§.§1X§;
            this.§`J§ = this.§%!c§.§`J§;
            this.§'u§ = false;
            this.§?!D§ = true;
            this.§&Z§ = 0;
         }
         this.§@!F§();
      }
      
      public function §?8§() : void
      {
         this.§'u§ = true;
         this.§7O§ = §4!d§;
         this.§!!;§(LevelItemSoundResource.§<!>§);
         if(this.§@!Z§ != 0)
         {
            this.§`J§ += this.§@!Z§;
            this.§@!Z§ = 0;
         }
      }
      
      public function §5k§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§?!D§ && this.§5`§ >= 0)
         {
            if(this.§?!K§ > this.§%!c§.§`s§.§!![§.§-!J§)
            {
               this.§3;§(this.§%!c§.§`s§.§!![§.§-!J§ - this.§?!K§);
               this.§5`§ = -1;
            }
            this.§5`§ -= param1;
            if(this.§5`§ <= 0)
            {
               if(this.§&!Q§ > 0)
               {
                  this.§5`§ = this.§&!Q§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§?!K§))
               {
                  _loc2_ = this.§%!c§.§`s§.objects.§[&§(this.§1X§,this.§?!K§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§3;§(param1 / 100))
                  {
                     this.§5`§ = -1;
                  }
                  else
                  {
                     this.§5`§ = 0;
                  }
               }
               else if(!this.§%!c§.§`s§.objects.§98§(_loc2_).§9!]§)
               {
                  this.§4L§ = false;
                  this.§5`§ = -1;
               }
               else if(this.§%!c§.§`s§.objects.§98§(_loc2_).§5_§())
               {
                  this.§4L§ = false;
                  this.§5`§ = 2000;
               }
               else
               {
                  this.§5`§ = 500;
               }
            }
         }
      }
      
      public function §3;§(param1:Number) : Boolean
      {
         this.§`J§ += param1;
         this.§?!K§ += param1;
         if(this.§?!K§ > this.§%!c§.§`s§.§!![§.§-!J§)
         {
            param1 = this.§?!K§ - this.§%!c§.§`s§.§!![§.§-!J§;
            this.§`J§ -= param1;
            this.§?!K§ -= param1;
            this.§@!F§();
            return true;
         }
         this.§@!F§();
         return false;
      }
      
      public function §&`§() : void
      {
         var _loc1_:LevelItemShape = LevelItemManager.§-`§(this.mName).shape;
         if(_loc1_.§1]§() == LevelItemShape.§1<§)
         {
            this.§6,§ = _loc1_.§?!0§()[0];
            this.§2J§ = _loc1_.§,<§;
         }
         else if(_loc1_.§1]§() == LevelItemShape.§!!&§)
         {
            this.§6,§ = new b2Vec2(0,0);
            this.§2J§ = 1.5;
         }
         this.§;]§ = this.§%!c§.§`s§.animationManager.getAnimation(this.mName);
         if(!this.§;]§)
         {
            this.§[5§(null);
         }
         else
         {
            this.§[5§(this.§;]§.getFrame(0));
         }
      }
      
      public function §[5§(param1:§ H§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§%!c§.levelMain.textureManager.§&R§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§'!Q§ == null)
         {
            this.§'!Q§ = new §0!b§(_loc2_);
            this.§"!,§.addChild(this.§'!Q§);
         }
         else
         {
            this.§'!Q§.texture = _loc2_;
         }
         if(param1)
         {
            this.§'!Q§.x = -param1.pivotX - this.§6,§.x / LevelMain.§@!d§;
            this.§'!Q§.y = -param1.pivotY - this.§6,§.y / LevelMain.§@!d§;
         }
         else
         {
            this.§'!Q§.x = -this.§'!Q§.width / 2;
            this.§'!Q§.y = -this.§'!Q§.height / 2;
         }
         this.§'!Q§.scaleX = _loc3_;
         this.§'!Q§.scaleY = _loc3_;
         this.§@!F§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§5k§(param1);
         if(this.§'u§)
         {
            this.§&!Q§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§8%§(param1);
            this.§^!?§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§7!^§(param1,param2);
            }
         }
      }
      
      public function §8%§(param1:Number) : void
      {
         if(this.§@f§ > 0)
         {
            this.§@f§ -= param1;
            if(this.§@f§ <= 0)
            {
               this.§5!S§();
            }
         }
         else if(this.§!!8§ <= 0 && Math.random() * §0G§ < param1 && this.§%!c§.mSlingShotState)
         {
            this.§^>§();
         }
      }
      
      public function §5!S§() : void
      {
         this.§@f§ = 0;
         this.§[5§(this.§;]§.getFrame(0));
      }
      
      public function §^>§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§@f§ = §;B§;
         this.§[5§(this.§;]§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §^!?§(param1:Number) : void
      {
         if(this.§!!8§ > 0)
         {
            this.§!!8§ -= param1;
            if(this.§!!8§ <= 0)
            {
               this.§#7§();
            }
         }
         else if(this.§@f§ <= 0 && Math.random() * §@+§ < param1)
         {
            this.§!!;§();
         }
      }
      
      public function §#7§() : void
      {
         this.§!!8§ = 0;
         this.§[5§(this.§;]§.getFrame(0));
      }
      
      public function §!!;§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§!!8§ > 0)
         {
            this.§#7§();
         }
         if(this.§@f§ > 0)
         {
            this.§5!S§();
         }
         if(param1 < 0)
         {
            param1 = LevelItemSoundResource.§#1§;
         }
         this.§!!8§ = §!%§;
         this.§[5§(this.§;]§.getSubAnimation("yell").getFrame(0));
         if(this.§?!D§ || this.§'u§ || param2)
         {
            LevelObject.§1!2§(param1,this.§=K§);
         }
         else
         {
            LevelObject.§1!2§(param1,this.§=K§,§@!R§);
         }
      }
      
      public function §7!^§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§&!Q§ > 0)
         {
            this.§&!Q§ -= param1;
            if(this.§&!Q§ <= 0)
            {
               ++this.§`!1§;
               this.§5!0§ *= 0.4;
               if(!this.§?!D§ && this.§`!1§ < 2)
               {
                  if(this.§`!1§ > 1 && this.§5!0§ < -1)
                  {
                     this.§5!0§ = -1;
                  }
                  this.§3!#§ = this.§5!0§;
                  this.§&!Q§ = §`"§;
                  this.§&!Q§ *= Math.abs(this.§3!#§) / 2;
                  this.§+,§ = this.§&!Q§;
                  this.§&Z§ = 0;
                  this.§6&§ = 0;
               }
               else if(!this.§?!D§ && param2)
               {
                  this.§7!"§(2.25);
               }
               else
               {
                  this.§&!Q§ = 0;
                  this.§@!Z§ = 0;
                  this.§&Z§ = 0;
                  this.§5!0§ = 0;
               }
            }
            else
            {
               if(this.§&!Q§ >= this.§+,§ / 2)
               {
                  _loc3_ = (this.§+,§ - this.§&!Q§) / (this.§+,§ / 2);
                  _loc3_ = §!t§.§>j§(_loc3_);
                  this.§@!Z§ = _loc3_ * this.§3!#§;
               }
               else
               {
                  _loc3_ = (this.§+,§ / 2 - this.§&!Q§) / (this.§+,§ / 2);
                  _loc3_ = §!t§.§>j§(_loc3_,false);
                  this.§@!Z§ = this.§3!#§ + _loc3_ * -this.§3!#§;
               }
               this.§&Z§ = 360 * §!t§.§>j§((this.§+,§ - this.§&!Q§) / this.§+,§) * this.§6&§;
            }
            this.§@!F§();
         }
         else if(Math.random() * §?!6§ < param1 && !this.§?!D§ && !this.§'u§ && !this.§4L§)
         {
            this.§7!"§();
         }
      }
      
      public function §7!"§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§`!1§ = 0;
         this.§&!Q§ = §`"§;
         this.§@!Z§ = 0;
         this.§3!#§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§5!0§ = this.§3!#§;
         this.§&!Q§ *= Math.abs(this.§3!#§) / 3;
         this.§+,§ = this.§&!Q§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§6&§ = 0;
         }
         else if(this.§&!Q§ < 350)
         {
            this.§6&§ = 0;
         }
         else
         {
            this.§6&§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§6&§ = Math.random() > 0.5 ? Number(this.§6&§) : Number(0);
         }
      }
      
      public function §@!F§() : void
      {
         this.§"!,§.x = this.§1X§ / LevelMain.§@!d§;
         this.§"!,§.y = (this.§`J§ + this.§@!Z§) / LevelMain.§@!d§;
         this.§"!,§.rotation = this.§&Z§ / 180 * Math.PI;
      }
      
      public function §`W§() : void
      {
         this.§4L§ = true;
         this.§?!D§ = false;
         this.§'u§ = false;
         this.§`!1§ = 0;
         this.§5`§ = 0;
         this.§&!Q§ = 0;
         this.§&!Q§ = 0;
         this.§@!Z§ = 0;
         this.§&Z§ = 0;
         this.§5!0§ = 0;
         this.§6&§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§1X§) * (param1 - this.§1X§) + (param2 - this.§`J§) * (param2 - this.§`J§));
         if(_loc3_ <= this.§2J§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§1X§ >= param3 && this.§1X§ <= param4 && this.§`J§ >= param1 && this.§`J§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.§1X§ != param1 || this.§`J§ != param2)
         {
            _loc3_ = true;
         }
         this.§1X§ = param1;
         this.§`J§ = param2;
         this.§5`§ = 100;
         this.§@!F§();
         if(_loc3_)
         {
            this.§%!c§.§2!B§();
         }
      }
      
      public function §>!a§() : §0!b§
      {
         return this.§'!Q§;
      }
      
      public function get §-Y§() : Number
      {
         return this.§&!Q§;
      }
      
      public function get §?!C§() : Number
      {
         return this.§5`§;
      }
      
      public function set §?!C§(param1:Number) : void
      {
         this.§5`§ = param1;
      }
      
      public function get §1F§() : Number
      {
         return this.§?!9§;
      }
      
      public function get §'i§() : Boolean
      {
         return this.§?!D§;
      }
      
      public function get radius() : Number
      {
         return this.§2J§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§"!,§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §1F§(param1:Number) : void
      {
         this.§?!9§ = param1;
      }
      
      public function get §>#§() : Number
      {
         return this.§]v§;
      }
      
      public function set §>#§(param1:Number) : void
      {
         this.§]v§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§?C§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§?C§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§1X§;
      }
      
      public function get y() : Number
      {
         return this.§`J§;
      }
      
      public function get §7[§() : Number
      {
         return this.§;f§;
      }
      
      public function get §#!F§() : Number
      {
         return this.§7>§;
      }
   }
}
