package § !J§
{
   import §&7§.Texture;
   import §'+§.§<!%§;
   import §+S§.b2Vec2;
   import §4j§.§9M§;
   import §9!§.§,!l§;
   import §9!§.§4!j§;
   import §9!§.§9'§;
   import §9`§.§+!D§;
   import §9`§.§8!P§;
   import §`!n§.§+i§;
   import §`!n§.Sprite;
   
   public class §5u§
   {
      
      public static const §;+§:String = "ChannelSlingshot";
      
      public static const §+b§:Number = 900;
      
      public static const §=$§:Number = 200;
      
      public static const §9!1§:Number = 200;
      
      public static const §1!S§:Number = 1500;
      
      public static const §^^§:Number = 5000;
      
      public static const §<M§:Number = 1000;
      
      public static const §-!R§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var §=y§:Number;
      
      protected var §#J§:Number;
      
      protected var §+6§:Number;
      
      protected var §[G§:Number;
      
      private var §'P§:§9'§;
      
      protected var §#!g§:Number;
      
      protected var §9t§:Number = 1;
      
      private var §]!M§:Sprite;
      
      protected var §"!"§:§+!D§;
      
      private var §+!d§:§+i§;
      
      protected var §>!-§:§`+§;
      
      private var §%!@§:Number;
      
      private var §@!m§:Boolean = false;
      
      private var §`y§:Boolean = false;
      
      protected var §&!Y§:Boolean = false;
      
      private var §'I§:Number;
      
      private var §!`§:Number = 0;
      
      private var §>z§:Number = 0;
      
      private var § !X§:Number = 0;
      
      private var §#k§:Number = 1000;
      
      private var §8,§:Number;
      
      private var §9!4§:Number;
      
      private var §?$§:int;
      
      private var §9!Q§:Number = 0;
      
      protected var §9I§:Number;
      
      protected var §`!B§:Number;
      
      private var §@!U§:Number = 1;
      
      private var §'!-§:Number = 0;
      
      private var §][§:b2Vec2;
      
      private var §'W§:Number = 1;
      
      public function §5u§(param1:§`+§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§>!-§ = param1;
         this.§]!M§ = param2;
         this.mName = param3;
         this.§'P§ = §,!l§.§<!<§(this.mName).§6!@§;
         this.§=y§ = param4;
         this.§#J§ = param5;
         this.§+6§ = param4;
         this.§[G§ = param5;
         this.§#!g§ = 0;
         this.§@!m§ = false;
         this.§`y§ = false;
         this.§!`§ = 0;
         this.§0C§();
         this.§9I§ = 0;
      }
      
      public function §=i§() : void
      {
         this.§@!m§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§]!M§)
         {
            this.§]!M§.dispose();
            this.§]!M§ = null;
         }
      }
      
      public function §]W§(param1:Number) : void
      {
         if(!this.§`y§ || this.§@!m§)
         {
            return;
         }
         if(this.§9t§ != 0)
         {
            this.§ !X§ = 0;
            this.§9!Q§ = 0;
            this.§#!g§ = 0;
            this.§9!4§ = 0;
            this.§9t§ = 0;
         }
         param1 = Math.min(param1,this.§'I§);
         this.§=y§ += param1 * (this.§>!-§.§=y§ - this.§=y§) / this.§'I§;
         this.§#J§ += param1 * (this.§>!-§.§#J§ - this.§#J§) / this.§'I§;
         this.§#J§ -= param1 / 50 * (this.§'I§ / §+b§);
         this.§#!g§ += param1 * (360 - this.§#!g§) / this.§'I§;
         this.§'I§ -= param1;
         if(this.§'I§ <= 0)
         {
            this.§=y§ = this.§>!-§.§=y§;
            this.§#J§ = this.§>!-§.§#J§;
            this.§`y§ = false;
            this.§@!m§ = true;
            this.§#!g§ = 0;
         }
         this.§`[§();
      }
      
      public function §]E§() : void
      {
         this.§`y§ = true;
         this.§'I§ = §+b§;
         this.§5b§(§9'§.§,r§);
         if(this.§9!Q§ != 0)
         {
            this.§#J§ += this.§9!Q§;
            this.§9!Q§ = 0;
         }
      }
      
      public function §#s§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§@!m§ && this.§9I§ >= 0)
         {
            if(this.§`!B§ > this.§>!-§.mLevelMain.§"6§.§[! §)
            {
               this.§,!W§(this.§>!-§.mLevelMain.§"6§.§[! § - this.§`!B§);
               this.§9I§ = -1;
            }
            this.§9I§ -= param1;
            if(this.§9I§ <= 0)
            {
               if(this.§ !X§ > 0)
               {
                  this.§9I§ = this.§ !X§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§`!B§))
               {
                  _loc2_ = this.§>!-§.mLevelMain.objects.§[!o§(this.§=y§,this.§`!B§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§,!W§(param1 / 100))
                  {
                     this.§9I§ = -1;
                  }
                  else
                  {
                     this.§9I§ = 0;
                  }
               }
               else if(!this.§>!-§.mLevelMain.objects.§=!&§(_loc2_).§3!2§)
               {
                  this.§&!Y§ = false;
                  this.§9I§ = -1;
               }
               else if(this.§>!-§.mLevelMain.objects.§=!&§(_loc2_).§7!;§())
               {
                  this.§&!Y§ = false;
                  this.§9I§ = 2000;
               }
               else
               {
                  this.§9I§ = 500;
               }
            }
         }
      }
      
      public function §,!W§(param1:Number) : Boolean
      {
         this.§#J§ += param1;
         this.§`!B§ += param1;
         if(this.§`!B§ > this.§>!-§.mLevelMain.§"6§.§[! §)
         {
            param1 = this.§`!B§ - this.§>!-§.mLevelMain.§"6§.§[! §;
            this.§#J§ -= param1;
            this.§`!B§ -= param1;
            this.§`[§();
            return true;
         }
         this.§`[§();
         return false;
      }
      
      public function §0C§() : void
      {
         var _loc1_:§4!j§ = §,!l§.§<!<§(this.mName).shape;
         if(_loc1_.§[!!§() == §4!j§.§'!Q§)
         {
            this.§][§ = _loc1_.§3!<§()[0];
            this.§%!@§ = _loc1_.§9E§;
         }
         else if(_loc1_.§[!!§() == §4!j§.§<P§)
         {
            this.§][§ = new b2Vec2(0,0);
            this.§%!@§ = 1.5;
         }
         this.§"!"§ = this.§>!-§.mLevelMain.animationManager.getAnimation(this.mName);
         if(!this.§"!"§)
         {
            this.§6!]§(null);
         }
         else
         {
            this.§6!]§(this.§"!"§.getFrame(0));
         }
      }
      
      public function §6!]§(param1:§8!P§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§>!-§.§;@§.textureManager.§`G§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§+!d§ == null)
         {
            this.§+!d§ = new §+i§(_loc2_);
            this.§]!M§.addChild(this.§+!d§);
         }
         else
         {
            this.§+!d§.texture = _loc2_;
         }
         if(param1)
         {
            this.§+!d§.x = -param1.pivotX - this.§][§.x / §%M§.§'!Y§;
            this.§+!d§.y = -param1.pivotY - this.§][§.y / §%M§.§'!Y§;
         }
         else
         {
            this.§+!d§.x = -this.§+!d§.width / 2;
            this.§+!d§.y = -this.§+!d§.height / 2;
         }
         this.§+!d§.scaleX = _loc3_;
         this.§+!d§.scaleY = _loc3_;
         this.§`[§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§#s§(param1);
         if(this.§`y§)
         {
            this.§ !X§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§!!9§(param1);
            this.§0S§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§`!b§(param1,param2);
            }
         }
      }
      
      public function §!!9§(param1:Number) : void
      {
         if(this.§!`§ > 0)
         {
            this.§!`§ -= param1;
            if(this.§!`§ <= 0)
            {
               this.§;!n§();
            }
         }
         else if(this.§>z§ <= 0 && Math.random() * §1!S§ < param1 && this.§>!-§.mSlingShotState)
         {
            this.§8! §();
         }
      }
      
      public function §;!n§() : void
      {
         this.§!`§ = 0;
         this.§6!]§(this.§"!"§.getFrame(0));
      }
      
      public function §8! §() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§!`§ = §=$§;
         this.§6!]§(this.§"!"§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §0S§(param1:Number) : void
      {
         if(this.§>z§ > 0)
         {
            this.§>z§ -= param1;
            if(this.§>z§ <= 0)
            {
               this.§>7§();
            }
         }
         else if(this.§!`§ <= 0 && Math.random() * §^^§ < param1)
         {
            this.§5b§();
         }
      }
      
      public function §>7§() : void
      {
         this.§>z§ = 0;
         this.§6!]§(this.§"!"§.getFrame(0));
      }
      
      public function §5b§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§>z§ > 0)
         {
            this.§>7§();
         }
         if(this.§!`§ > 0)
         {
            this.§;!n§();
         }
         if(param1 < 0)
         {
            param1 = §9'§.§]+§;
         }
         this.§>z§ = §9!1§;
         this.§6!]§(this.§"!"§.getSubAnimation("yell").getFrame(0));
         if(this.§@!m§ || this.§`y§ || param2)
         {
            §9M§.§=!B§(param1,this.§'P§);
         }
         else
         {
            §9M§.§=!B§(param1,this.§'P§,§;+§);
         }
      }
      
      public function §`!b§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§ !X§ > 0)
         {
            this.§ !X§ -= param1;
            if(this.§ !X§ <= 0)
            {
               ++this.§?$§;
               this.§9!4§ *= 0.4;
               if(!this.§@!m§ && this.§?$§ < 2)
               {
                  if(this.§?$§ > 1 && this.§9!4§ < -1)
                  {
                     this.§9!4§ = -1;
                  }
                  this.§8,§ = this.§9!4§;
                  this.§ !X§ = §-!R§;
                  this.§ !X§ *= Math.abs(this.§8,§) / 2;
                  this.§#k§ = this.§ !X§;
                  this.§#!g§ = 0;
                  this.§9t§ = 0;
               }
               else if(!this.§@!m§ && param2)
               {
                  this.§7U§(2.25);
               }
               else
               {
                  this.§ !X§ = 0;
                  this.§9!Q§ = 0;
                  this.§#!g§ = 0;
                  this.§9!4§ = 0;
               }
            }
            else
            {
               if(this.§ !X§ >= this.§#k§ / 2)
               {
                  _loc3_ = (this.§#k§ - this.§ !X§) / (this.§#k§ / 2);
                  _loc3_ = §<!%§.§6!o§(_loc3_);
                  this.§9!Q§ = _loc3_ * this.§8,§;
               }
               else
               {
                  _loc3_ = (this.§#k§ / 2 - this.§ !X§) / (this.§#k§ / 2);
                  _loc3_ = §<!%§.§6!o§(_loc3_,false);
                  this.§9!Q§ = this.§8,§ + _loc3_ * -this.§8,§;
               }
               this.§#!g§ = 360 * §<!%§.§6!o§((this.§#k§ - this.§ !X§) / this.§#k§) * this.§9t§;
            }
            this.§`[§();
         }
         else if(Math.random() * §<M§ < param1 && !this.§@!m§ && !this.§`y§ && !this.§&!Y§)
         {
            this.§7U§();
         }
      }
      
      public function §7U§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§?$§ = 0;
         this.§ !X§ = §-!R§;
         this.§9!Q§ = 0;
         this.§8,§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§9!4§ = this.§8,§;
         this.§ !X§ *= Math.abs(this.§8,§) / 3;
         this.§#k§ = this.§ !X§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§9t§ = 0;
         }
         else if(this.§ !X§ < 350)
         {
            this.§9t§ = 0;
         }
         else
         {
            this.§9t§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§9t§ = Math.random() > 0.5 ? Number(this.§9t§) : Number(0);
         }
      }
      
      public function §`[§() : void
      {
         this.§]!M§.x = this.§=y§ / §%M§.§'!Y§;
         this.§]!M§.y = (this.§#J§ + this.§9!Q§) / §%M§.§'!Y§;
         this.§]!M§.rotation = this.§#!g§ / 180 * Math.PI;
      }
      
      public function §]l§() : void
      {
         this.§&!Y§ = true;
         this.§@!m§ = false;
         this.§`y§ = false;
         this.§?$§ = 0;
         this.§9I§ = 0;
         this.§ !X§ = 0;
         this.§ !X§ = 0;
         this.§9!Q§ = 0;
         this.§#!g§ = 0;
         this.§9!4§ = 0;
         this.§9t§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§=y§) * (param1 - this.§=y§) + (param2 - this.§#J§) * (param2 - this.§#J§));
         if(_loc3_ <= this.§%!@§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§=y§ >= param3 && this.§=y§ <= param4 && this.§#J§ >= param1 && this.§#J§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.§=y§ != param1 || this.§#J§ != param2)
         {
            _loc3_ = true;
         }
         this.§=y§ = param1;
         this.§#J§ = param2;
         this.§9I§ = 100;
         this.§`[§();
         if(_loc3_)
         {
            this.§>!-§.§@!f§();
         }
      }
      
      public function §;I§() : §+i§
      {
         return this.§+!d§;
      }
      
      public function get §#!h§() : Number
      {
         return this.§ !X§;
      }
      
      public function get §8!U§() : Number
      {
         return this.§9I§;
      }
      
      public function set §8!U§(param1:Number) : void
      {
         this.§9I§ = param1;
      }
      
      public function get §,!p§() : Number
      {
         return this.§@!U§;
      }
      
      public function get §45§() : Boolean
      {
         return this.§@!m§;
      }
      
      public function get radius() : Number
      {
         return this.§%!@§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§]!M§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §,!p§(param1:Number) : void
      {
         this.§@!U§ = param1;
      }
      
      public function get §5h§() : Number
      {
         return this.§'!-§;
      }
      
      public function set §5h§(param1:Number) : void
      {
         this.§'!-§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§'W§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§'W§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§=y§;
      }
      
      public function get y() : Number
      {
         return this.§#J§;
      }
      
      public function get §+!$§() : Number
      {
         return this.§+6§;
      }
      
      public function get §=m§() : Number
      {
         return this.§[G§;
      }
   }
}
