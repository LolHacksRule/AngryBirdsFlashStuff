package §2_§
{
   import §"x§.§+!b§;
   import §-d§.§%d§;
   import §-d§.§-C§;
   import §-d§.§7]§;
   import §4>§.Texture;
   import §7!B§.§-§;
   import §7!B§.Sprite;
   import §;%§.b2Vec2;
   import §=b§.§`!_§;
   import §^!Y§.§1C§;
   import §^!Y§.§4!f§;
   
   public class §>-§
   {
      
      public static const §!B§:String = "ChannelSlingshot";
      
      public static const §<!C§:Number = 900;
      
      public static const §;3§:Number = 200;
      
      public static const § 5§:Number = 200;
      
      public static const §9!n§:Number = 1500;
      
      public static const §3!y§:Number = 5000;
      
      public static const §^e§:Number = 1000;
      
      public static const §<!k§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var §#!u§:Number;
      
      protected var §<h§:Number;
      
      protected var §!j§:Number;
      
      protected var §0!s§:Number;
      
      private var §,-§:§-C§;
      
      protected var §`!j§:Number;
      
      protected var §7!`§:Number = 1;
      
      private var §2O§:Sprite;
      
      protected var §'P§:§4!f§;
      
      private var §7a§:§-§;
      
      protected var dynamic:§8![§;
      
      private var §"v§:Number;
      
      private var §<!$§:Boolean = false;
      
      private var §[!g§:Boolean = false;
      
      protected var §^!&§:Boolean = false;
      
      private var §@J§:Number;
      
      private var §!!'§:Number = 0;
      
      private var §&!h§:Number = 0;
      
      private var §'!l§:Number = 0;
      
      private var §?!w§:Number = 1000;
      
      private var § !<§:Number;
      
      private var §&!P§:Number;
      
      private var § !W§:int;
      
      private var §8p§:Number = 0;
      
      protected var §"O§:Number;
      
      protected var § D§:Number;
      
      private var §9!&§:Number = 1;
      
      private var §3Y§:Number = 0;
      
      private var §1!p§:b2Vec2;
      
      private var §'!I§:Number = 1;
      
      public function §>-§(param1:§8![§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.dynamic = param1;
         this.§2O§ = param2;
         this.mName = param3;
         this.§,-§ = §%d§.§4!^§(this.mName).§;!"§;
         this.§#!u§ = param4;
         this.§<h§ = param5;
         this.§!j§ = param4;
         this.§0!s§ = param5;
         this.§`!j§ = 0;
         this.§<!$§ = false;
         this.§[!g§ = false;
         this.§!!'§ = 0;
         this.§[9§();
         this.§"O§ = 0;
      }
      
      public function §@!t§() : void
      {
         this.§<!$§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§2O§)
         {
            this.§2O§.dispose();
            this.§2O§ = null;
         }
      }
      
      public function §-!c§(param1:Number) : void
      {
         if(!this.§[!g§ || this.§<!$§)
         {
            return;
         }
         if(this.§7!`§ != 0)
         {
            this.§'!l§ = 0;
            this.§8p§ = 0;
            this.§`!j§ = 0;
            this.§&!P§ = 0;
            this.§7!`§ = 0;
         }
         param1 = Math.min(param1,this.§@J§);
         this.§#!u§ += param1 * (this.dynamic.§#!u§ - this.§#!u§) / this.§@J§;
         this.§<h§ += param1 * (this.dynamic.§<h§ - this.§<h§) / this.§@J§;
         this.§<h§ -= param1 / 50 * (this.§@J§ / §<!C§);
         this.§`!j§ += param1 * (360 - this.§`!j§) / this.§@J§;
         this.§@J§ -= param1;
         if(this.§@J§ <= 0)
         {
            this.§#!u§ = this.dynamic.§#!u§;
            this.§<h§ = this.dynamic.§<h§;
            this.§[!g§ = false;
            this.§<!$§ = true;
            this.§`!j§ = 0;
         }
         this.§'!2§();
      }
      
      public function §>!I§() : void
      {
         this.§[!g§ = true;
         this.§@J§ = §<!C§;
         this.§2!M§(§-C§.§6!P§);
         if(this.§8p§ != 0)
         {
            this.§<h§ += this.§8p§;
            this.§8p§ = 0;
         }
      }
      
      public function §+O§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§<!$§ && this.§"O§ >= 0)
         {
            if(this.§ D§ > this.dynamic.§#!3§.§!!"§.§%!^§)
            {
               this.§`!`§(this.dynamic.§#!3§.§!!"§.§%!^§ - this.§ D§);
               this.§"O§ = -1;
            }
            this.§"O§ -= param1;
            if(this.§"O§ <= 0)
            {
               if(this.§'!l§ > 0)
               {
                  this.§"O§ = this.§'!l§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§ D§))
               {
                  _loc2_ = this.dynamic.§#!3§.objects.§;!5§(this.§#!u§,this.§ D§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§`!`§(param1 / 100))
                  {
                     this.§"O§ = -1;
                  }
                  else
                  {
                     this.§"O§ = 0;
                  }
               }
               else if(!this.dynamic.§#!3§.objects.§>J§(_loc2_).§'h§)
               {
                  this.§^!&§ = false;
                  this.§"O§ = -1;
               }
               else if(this.dynamic.§#!3§.objects.§>J§(_loc2_).§^!R§())
               {
                  this.§^!&§ = false;
                  this.§"O§ = 2000;
               }
               else
               {
                  this.§"O§ = 500;
               }
            }
         }
      }
      
      public function §`!`§(param1:Number) : Boolean
      {
         this.§<h§ += param1;
         this.§ D§ += param1;
         if(this.§ D§ > this.dynamic.§#!3§.§!!"§.§%!^§)
         {
            param1 = this.§ D§ - this.dynamic.§#!3§.§!!"§.§%!^§;
            this.§<h§ -= param1;
            this.§ D§ -= param1;
            this.§'!2§();
            return true;
         }
         this.§'!2§();
         return false;
      }
      
      public function §[9§() : void
      {
         var _loc1_:§7]§ = §%d§.§4!^§(this.mName).shape;
         if(_loc1_.§8X§() == §7]§.§"!D§)
         {
            this.§1!p§ = _loc1_.§&o§()[0];
            this.§"v§ = _loc1_.§2!d§;
         }
         else if(_loc1_.§8X§() == §7]§.§&&§)
         {
            this.§1!p§ = new b2Vec2(0,0);
            this.§"v§ = 1.5;
         }
         this.§'P§ = this.dynamic.§#!3§.animationManager.getAnimation(this.mName);
         if(!this.§'P§)
         {
            this.§ !R§(null);
         }
         else
         {
            this.§ !R§(this.§'P§.getFrame(0));
         }
      }
      
      public function § !R§(param1:§1C§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.dynamic.§17§.textureManager.§,<§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§7a§ == null)
         {
            this.§7a§ = new §-§(_loc2_);
            this.§2O§.addChild(this.§7a§);
         }
         else
         {
            this.§7a§.texture = _loc2_;
         }
         if(param1)
         {
            this.§7a§.x = -param1.pivotX - this.§1!p§.x / §'u§.§18§;
            this.§7a§.y = -param1.pivotY - this.§1!p§.y / §'u§.§18§;
         }
         else
         {
            this.§7a§.x = -this.§7a§.width / 2;
            this.§7a§.y = -this.§7a§.height / 2;
         }
         this.§7a§.scaleX = _loc3_;
         this.§7a§.scaleY = _loc3_;
         this.§'!2§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§+O§(param1);
         if(this.§[!g§)
         {
            this.§'!l§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§@!V§(param1);
            this.§+"§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§7J§(param1,param2);
            }
         }
      }
      
      public function §@!V§(param1:Number) : void
      {
         if(this.§!!'§ > 0)
         {
            this.§!!'§ -= param1;
            if(this.§!!'§ <= 0)
            {
               this.§]S§();
            }
         }
         else if(this.§&!h§ <= 0 && Math.random() * §9!n§ < param1 && this.dynamic.mSlingShotState)
         {
            this.§2!T§();
         }
      }
      
      public function §]S§() : void
      {
         this.§!!'§ = 0;
         this.§ !R§(this.§'P§.getFrame(0));
      }
      
      public function §2!T§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§!!'§ = §;3§;
         this.§ !R§(this.§'P§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §+"§(param1:Number) : void
      {
         if(this.§&!h§ > 0)
         {
            this.§&!h§ -= param1;
            if(this.§&!h§ <= 0)
            {
               this.§'-§();
            }
         }
         else if(this.§!!'§ <= 0 && Math.random() * §3!y§ < param1)
         {
            this.§2!M§();
         }
      }
      
      public function §'-§() : void
      {
         this.§&!h§ = 0;
         this.§ !R§(this.§'P§.getFrame(0));
      }
      
      public function §2!M§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§&!h§ > 0)
         {
            this.§'-§();
         }
         if(this.§!!'§ > 0)
         {
            this.§]S§();
         }
         if(param1 < 0)
         {
            param1 = §-C§.§0`§;
         }
         this.§&!h§ = § 5§;
         this.§ !R§(this.§'P§.getSubAnimation("yell").getFrame(0));
         if(this.§<!$§ || this.§[!g§ || param2)
         {
            §`!_§.§08§(param1,this.§,-§);
         }
         else
         {
            §`!_§.§08§(param1,this.§,-§,§!B§);
         }
      }
      
      public function §7J§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§'!l§ > 0)
         {
            this.§'!l§ -= param1;
            if(this.§'!l§ <= 0)
            {
               ++this.§ !W§;
               this.§&!P§ *= 0.4;
               if(!this.§<!$§ && this.§ !W§ < 2)
               {
                  if(this.§ !W§ > 1 && this.§&!P§ < -1)
                  {
                     this.§&!P§ = -1;
                  }
                  this.§ !<§ = this.§&!P§;
                  this.§'!l§ = §<!k§;
                  this.§'!l§ *= Math.abs(this.§ !<§) / 2;
                  this.§?!w§ = this.§'!l§;
                  this.§`!j§ = 0;
                  this.§7!`§ = 0;
               }
               else if(!this.§<!$§ && param2)
               {
                  this.§ !>§(2.25);
               }
               else
               {
                  this.§'!l§ = 0;
                  this.§8p§ = 0;
                  this.§`!j§ = 0;
                  this.§&!P§ = 0;
               }
            }
            else
            {
               if(this.§'!l§ >= this.§?!w§ / 2)
               {
                  _loc3_ = (this.§?!w§ - this.§'!l§) / (this.§?!w§ / 2);
                  _loc3_ = §+!b§.§@!@§(_loc3_);
                  this.§8p§ = _loc3_ * this.§ !<§;
               }
               else
               {
                  _loc3_ = (this.§?!w§ / 2 - this.§'!l§) / (this.§?!w§ / 2);
                  _loc3_ = §+!b§.§@!@§(_loc3_,false);
                  this.§8p§ = this.§ !<§ + _loc3_ * -this.§ !<§;
               }
               this.§`!j§ = 360 * §+!b§.§@!@§((this.§?!w§ - this.§'!l§) / this.§?!w§) * this.§7!`§;
            }
            this.§'!2§();
         }
         else if(Math.random() * §^e§ < param1 && !this.§<!$§ && !this.§[!g§ && !this.§^!&§)
         {
            this.§ !>§();
         }
      }
      
      public function § !>§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§ !W§ = 0;
         this.§'!l§ = §<!k§;
         this.§8p§ = 0;
         this.§ !<§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§&!P§ = this.§ !<§;
         this.§'!l§ *= Math.abs(this.§ !<§) / 3;
         this.§?!w§ = this.§'!l§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§7!`§ = 0;
         }
         else if(this.§'!l§ < 350)
         {
            this.§7!`§ = 0;
         }
         else
         {
            this.§7!`§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§7!`§ = Math.random() > 0.5 ? Number(this.§7!`§) : Number(0);
         }
      }
      
      public function §'!2§() : void
      {
         this.§2O§.x = this.§#!u§ / §'u§.§18§;
         this.§2O§.y = (this.§<h§ + this.§8p§) / §'u§.§18§;
         this.§2O§.rotation = this.§`!j§ / 180 * Math.PI;
      }
      
      public function §=!>§() : void
      {
         this.§^!&§ = true;
         this.§<!$§ = false;
         this.§[!g§ = false;
         this.§ !W§ = 0;
         this.§"O§ = 0;
         this.§'!l§ = 0;
         this.§'!l§ = 0;
         this.§8p§ = 0;
         this.§`!j§ = 0;
         this.§&!P§ = 0;
         this.§7!`§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§#!u§) * (param1 - this.§#!u§) + (param2 - this.§<h§) * (param2 - this.§<h§));
         if(_loc3_ <= this.§"v§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§#!u§ >= param3 && this.§#!u§ <= param4 && this.§<h§ >= param1 && this.§<h§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.§#!u§ != param1 || this.§<h§ != param2)
         {
            _loc3_ = true;
         }
         this.§#!u§ = param1;
         this.§<h§ = param2;
         this.§"O§ = 100;
         this.§'!2§();
         if(_loc3_)
         {
            this.dynamic.§!+§();
         }
      }
      
      public function §"§() : §-§
      {
         return this.§7a§;
      }
      
      public function get §8N§() : Number
      {
         return this.§'!l§;
      }
      
      public function get §;!V§() : Number
      {
         return this.§"O§;
      }
      
      public function set §;!V§(param1:Number) : void
      {
         this.§"O§ = param1;
      }
      
      public function get §8f§() : Number
      {
         return this.§9!&§;
      }
      
      public function get §5!_§() : Boolean
      {
         return this.§<!$§;
      }
      
      public function get radius() : Number
      {
         return this.§"v§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§2O§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §8f§(param1:Number) : void
      {
         this.§9!&§ = param1;
      }
      
      public function get §@N§() : Number
      {
         return this.§3Y§;
      }
      
      public function set §@N§(param1:Number) : void
      {
         this.§3Y§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§'!I§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§'!I§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§#!u§;
      }
      
      public function get y() : Number
      {
         return this.§<h§;
      }
      
      public function get §],§() : Number
      {
         return this.§!j§;
      }
      
      public function get §0y§() : Number
      {
         return this.§0!s§;
      }
   }
}
