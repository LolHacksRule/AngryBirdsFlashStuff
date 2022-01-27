package §40§
{
   import § var§.§!u§;
   import §&H§.b2Vec2;
   import §0S§.§6!D§;
   import §0S§.§6R§;
   import §0S§.§7!Z§;
   import §1!B§.§#A§;
   import §=`§.§#`§;
   import §=`§.§%!L§;
   import §?]§.Texture;
   import §`g§.§"<§;
   import §`g§.Sprite;
   
   public class §<!P§
   {
      
      public static const §9o§:String = "ChannelSlingshot";
      
      public static const §?U§:Number = 900;
      
      public static const §=2§:Number = 200;
      
      public static const §=>§:Number = 200;
      
      public static const §%!k§:Number = 1500;
      
      public static const §1!"§:Number = 5000;
      
      public static const §;=§:Number = 1000;
      
      public static const §%!9§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var §#!!§:Number;
      
      protected var §!!3§:Number;
      
      protected var §7<§:Number;
      
      protected var §function§:Number;
      
      private var §'H§:§6!D§;
      
      protected var §2F§:Number;
      
      protected var §>K§:Number = 1;
      
      private var §]2§:Sprite;
      
      protected var §0"$§:§%!L§;
      
      private var §?!F§:§"<§;
      
      protected var §"!I§:§1!g§;
      
      private var §'h§:Number;
      
      private var §5!e§:Boolean = false;
      
      private var §+!E§:Boolean = false;
      
      protected var §0""§:Boolean = false;
      
      private var §&#§:Number;
      
      private var §%!D§:Number = 0;
      
      private var §7$§:Number = 0;
      
      private var §,!6§:Number = 0;
      
      private var §if§:Number = 1000;
      
      private var §+""§:Number;
      
      private var §9!F§:Number;
      
      private var §4p§:int;
      
      private var §6!u§:Number = 0;
      
      protected var §0!§:Number;
      
      protected var §[!-§:Number;
      
      private var §,z§:Number = 1;
      
      private var §5s§:Number = 0;
      
      private var §6!^§:b2Vec2;
      
      private var §?z§:Number = 1;
      
      public function §<!P§(param1:§1!g§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§"!I§ = param1;
         this.§]2§ = param2;
         this.mName = param3;
         this.§'H§ = §7!Z§.§`!H§(this.mName).§9!M§;
         this.§#!!§ = param4;
         this.§!!3§ = param5;
         this.§7<§ = param4;
         this.§function§ = param5;
         this.§2F§ = 0;
         this.§5!e§ = false;
         this.§+!E§ = false;
         this.§%!D§ = 0;
         this.§]J§();
         this.§0!§ = 0;
      }
      
      public function §0!@§() : void
      {
         this.§5!e§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§]2§)
         {
            this.§]2§.dispose();
            this.§]2§ = null;
         }
      }
      
      public function §5!b§(param1:Number) : void
      {
         if(!this.§+!E§ || this.§5!e§)
         {
            return;
         }
         if(this.§>K§ != 0)
         {
            this.§,!6§ = 0;
            this.§6!u§ = 0;
            this.§2F§ = 0;
            this.§9!F§ = 0;
            this.§>K§ = 0;
         }
         param1 = Math.min(param1,this.§&#§);
         this.§#!!§ += param1 * (this.§"!I§.§#!!§ - this.§#!!§) / this.§&#§;
         this.§!!3§ += param1 * (this.§"!I§.§!!3§ - this.§!!3§) / this.§&#§;
         this.§!!3§ -= param1 / 50 * (this.§&#§ / §?U§);
         this.§2F§ += param1 * (360 - this.§2F§) / this.§&#§;
         this.§&#§ -= param1;
         if(this.§&#§ <= 0)
         {
            this.§#!!§ = this.§"!I§.§#!!§;
            this.§!!3§ = this.§"!I§.§!!3§;
            this.§+!E§ = false;
            this.§5!e§ = true;
            this.§2F§ = 0;
         }
         this.§]!R§();
      }
      
      public function §"0§() : void
      {
         this.§+!E§ = true;
         this.§&#§ = §?U§;
         this.§-!M§(§6!D§.§0y§);
         if(this.§6!u§ != 0)
         {
            this.§!!3§ += this.§6!u§;
            this.§6!u§ = 0;
         }
      }
      
      public function §!!&§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§5!e§ && this.§0!§ >= 0)
         {
            if(this.§[!-§ > this.§"!I§.§#!U§.§!#§.§]!L§)
            {
               this.§<4§(this.§"!I§.§#!U§.§!#§.§]!L§ - this.§[!-§);
               this.§0!§ = -1;
            }
            this.§0!§ -= param1;
            if(this.§0!§ <= 0)
            {
               if(this.§,!6§ > 0)
               {
                  this.§0!§ = this.§,!6§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§[!-§))
               {
                  _loc2_ = this.§"!I§.§#!U§.objects.§3q§(this.§#!!§,this.§[!-§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§<4§(param1 / 100))
                  {
                     this.§0!§ = -1;
                  }
                  else
                  {
                     this.§0!§ = 0;
                  }
               }
               else if(!this.§"!I§.§#!U§.objects.§ !X§(_loc2_).§5d§)
               {
                  this.§0""§ = false;
                  this.§0!§ = -1;
               }
               else if(this.§"!I§.§#!U§.objects.§ !X§(_loc2_).§,1§())
               {
                  this.§0""§ = false;
                  this.§0!§ = 2000;
               }
               else
               {
                  this.§0!§ = 500;
               }
            }
         }
      }
      
      public function §<4§(param1:Number) : Boolean
      {
         this.§!!3§ += param1;
         this.§[!-§ += param1;
         if(this.§[!-§ > this.§"!I§.§#!U§.§!#§.§]!L§)
         {
            param1 = this.§[!-§ - this.§"!I§.§#!U§.§!#§.§]!L§;
            this.§!!3§ -= param1;
            this.§[!-§ -= param1;
            this.§]!R§();
            return true;
         }
         this.§]!R§();
         return false;
      }
      
      public function §]J§() : void
      {
         var _loc1_:§6R§ = §7!Z§.§`!H§(this.mName).shape;
         if(_loc1_.§%!>§() == §6R§.§9!Z§)
         {
            this.§6!^§ = _loc1_.§!!>§()[0];
            this.§'h§ = _loc1_.§3!8§;
         }
         else if(_loc1_.§%!>§() == §6R§.§#""§)
         {
            this.§6!^§ = new b2Vec2(0,0);
            this.§'h§ = 1.5;
         }
         this.§0"$§ = this.§"!I§.§#!U§.animationManager.getAnimation(this.mName);
         if(!this.§0"$§)
         {
            this.§0!#§(null);
         }
         else
         {
            this.§0!#§(this.§0"$§.getFrame(0));
         }
      }
      
      public function §0!#§(param1:§#`§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§"!I§.§`!j§.textureManager.§9Y§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§?!F§ == null)
         {
            this.§?!F§ = new §"<§(_loc2_);
            this.§]2§.addChild(this.§?!F§);
         }
         else
         {
            this.§?!F§.texture = _loc2_;
         }
         if(param1)
         {
            this.§?!F§.x = -param1.pivotX - this.§6!^§.x / §5G§.§6+§;
            this.§?!F§.y = -param1.pivotY - this.§6!^§.y / §5G§.§6+§;
         }
         else
         {
            this.§?!F§.x = -this.§?!F§.width / 2;
            this.§?!F§.y = -this.§?!F§.height / 2;
         }
         this.§?!F§.scaleX = _loc3_;
         this.§?!F§.scaleY = _loc3_;
         this.§]!R§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§!!&§(param1);
         if(this.§+!E§)
         {
            this.§,!6§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§@u§(param1);
            this.§]!,§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§#!$§(param1,param2);
            }
         }
      }
      
      public function §@u§(param1:Number) : void
      {
         if(this.§%!D§ > 0)
         {
            this.§%!D§ -= param1;
            if(this.§%!D§ <= 0)
            {
               this.§=F§();
            }
         }
         else if(this.§7$§ <= 0 && Math.random() * §%!k§ < param1 && this.§"!I§.mSlingShotState)
         {
            this.§'!r§();
         }
      }
      
      public function §=F§() : void
      {
         this.§%!D§ = 0;
         this.§0!#§(this.§0"$§.getFrame(0));
      }
      
      public function §'!r§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§%!D§ = §=2§;
         this.§0!#§(this.§0"$§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §]!,§(param1:Number) : void
      {
         if(this.§7$§ > 0)
         {
            this.§7$§ -= param1;
            if(this.§7$§ <= 0)
            {
               this.§8I§();
            }
         }
         else if(this.§%!D§ <= 0 && Math.random() * §1!"§ < param1)
         {
            this.§-!M§();
         }
      }
      
      public function §8I§() : void
      {
         this.§7$§ = 0;
         this.§0!#§(this.§0"$§.getFrame(0));
      }
      
      public function §-!M§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§7$§ > 0)
         {
            this.§8I§();
         }
         if(this.§%!D§ > 0)
         {
            this.§=F§();
         }
         if(param1 < 0)
         {
            param1 = §6!D§.§^!n§;
         }
         this.§7$§ = §=>§;
         this.§0!#§(this.§0"$§.getSubAnimation("yell").getFrame(0));
         if(this.§5!e§ || this.§+!E§ || param2)
         {
            §!u§.§5F§(param1,this.§'H§);
         }
         else
         {
            §!u§.§5F§(param1,this.§'H§,§9o§);
         }
      }
      
      public function §#!$§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§,!6§ > 0)
         {
            this.§,!6§ -= param1;
            if(this.§,!6§ <= 0)
            {
               ++this.§4p§;
               this.§9!F§ *= 0.4;
               if(!this.§5!e§ && this.§4p§ < 2)
               {
                  if(this.§4p§ > 1 && this.§9!F§ < -1)
                  {
                     this.§9!F§ = -1;
                  }
                  this.§+""§ = this.§9!F§;
                  this.§,!6§ = §%!9§;
                  this.§,!6§ *= Math.abs(this.§+""§) / 2;
                  this.§if§ = this.§,!6§;
                  this.§2F§ = 0;
                  this.§>K§ = 0;
               }
               else if(!this.§5!e§ && param2)
               {
                  this.§?A§(2.25);
               }
               else
               {
                  this.§,!6§ = 0;
                  this.§6!u§ = 0;
                  this.§2F§ = 0;
                  this.§9!F§ = 0;
               }
            }
            else
            {
               if(this.§,!6§ >= this.§if§ / 2)
               {
                  _loc3_ = (this.§if§ - this.§,!6§) / (this.§if§ / 2);
                  _loc3_ = §#A§.§=!N§(_loc3_);
                  this.§6!u§ = _loc3_ * this.§+""§;
               }
               else
               {
                  _loc3_ = (this.§if§ / 2 - this.§,!6§) / (this.§if§ / 2);
                  _loc3_ = §#A§.§=!N§(_loc3_,false);
                  this.§6!u§ = this.§+""§ + _loc3_ * -this.§+""§;
               }
               this.§2F§ = 360 * §#A§.§=!N§((this.§if§ - this.§,!6§) / this.§if§) * this.§>K§;
            }
            this.§]!R§();
         }
         else if(Math.random() * §;=§ < param1 && !this.§5!e§ && !this.§+!E§ && !this.§0""§)
         {
            this.§?A§();
         }
      }
      
      public function §?A§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§4p§ = 0;
         this.§,!6§ = §%!9§;
         this.§6!u§ = 0;
         this.§+""§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§9!F§ = this.§+""§;
         this.§,!6§ *= Math.abs(this.§+""§) / 3;
         this.§if§ = this.§,!6§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§>K§ = 0;
         }
         else if(this.§,!6§ < 350)
         {
            this.§>K§ = 0;
         }
         else
         {
            this.§>K§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§>K§ = Math.random() > 0.5 ? Number(this.§>K§) : Number(0);
         }
      }
      
      public function §]!R§() : void
      {
         this.§]2§.x = this.§#!!§ / §5G§.§6+§;
         this.§]2§.y = (this.§!!3§ + this.§6!u§) / §5G§.§6+§;
         this.§]2§.rotation = this.§2F§ / 180 * Math.PI;
      }
      
      public function §`W§() : void
      {
         this.§0""§ = true;
         this.§5!e§ = false;
         this.§+!E§ = false;
         this.§4p§ = 0;
         this.§0!§ = 0;
         this.§,!6§ = 0;
         this.§,!6§ = 0;
         this.§6!u§ = 0;
         this.§2F§ = 0;
         this.§9!F§ = 0;
         this.§>K§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§#!!§) * (param1 - this.§#!!§) + (param2 - this.§!!3§) * (param2 - this.§!!3§));
         if(_loc3_ <= this.§'h§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§#!!§ >= param3 && this.§#!!§ <= param4 && this.§!!3§ >= param1 && this.§!!3§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.§#!!§ != param1 || this.§!!3§ != param2)
         {
            _loc3_ = true;
         }
         this.§#!!§ = param1;
         this.§!!3§ = param2;
         this.§0!§ = 100;
         this.§]!R§();
         if(_loc3_)
         {
            this.§"!I§.§+G§();
         }
      }
      
      public function §-F§() : §"<§
      {
         return this.§?!F§;
      }
      
      public function get §#0§() : Number
      {
         return this.§,!6§;
      }
      
      public function get §==§() : Number
      {
         return this.§0!§;
      }
      
      public function set §==§(param1:Number) : void
      {
         this.§0!§ = param1;
      }
      
      public function get §'T§() : Number
      {
         return this.§,z§;
      }
      
      public function get §,O§() : Boolean
      {
         return this.§5!e§;
      }
      
      public function get radius() : Number
      {
         return this.§'h§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§]2§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §'T§(param1:Number) : void
      {
         this.§,z§ = param1;
      }
      
      public function get §+_§() : Number
      {
         return this.§5s§;
      }
      
      public function set §+_§(param1:Number) : void
      {
         this.§5s§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§?z§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§?z§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§#!!§;
      }
      
      public function get y() : Number
      {
         return this.§!!3§;
      }
      
      public function get §null §() : Number
      {
         return this.§7<§;
      }
      
      public function get §8]§() : Number
      {
         return this.§function§;
      }
      
      public function §%b§() : Boolean
      {
         return this.§0""§;
      }
   }
}
