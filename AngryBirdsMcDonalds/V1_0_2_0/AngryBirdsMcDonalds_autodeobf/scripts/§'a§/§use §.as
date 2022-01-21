package §'a§
{
   import §",§.Texture;
   import §"U§.b2Vec2;
   import §%`§.§"s§;
   import §4s§.§>!"§;
   import §4s§.§[!_§;
   import §4s§.§[-§;
   import §5!l§.§8!_§;
   import §5!l§.§9Z§;
   import §5x§.§2!K§;
   import §5x§.Sprite;
   import §=<§.§@l§;
   
   public class §use §
   {
      
      public static const §;e§:String = "ChannelSlingshot";
      
      public static const §'§:Number = 900;
      
      public static const §&!K§:Number = 200;
      
      public static const §7y§:Number = 200;
      
      public static const §9G§:Number = 1500;
      
      public static const §6%§:Number = 5000;
      
      public static const §0!_§:Number = 1000;
      
      public static const §'!4§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var § +§:Number;
      
      protected var §'Z§:Number;
      
      protected var §^!d§:Number;
      
      protected var §?!"§:Number;
      
      private var §^h§:§[-§;
      
      protected var §6O§:Number;
      
      protected var §0W§:Number = 1;
      
      private var §`n§:Sprite;
      
      protected var §5!U§:§8!_§;
      
      private var §!F§:§2!K§;
      
      protected var §#!Y§:§0U§;
      
      private var §4K§:Number;
      
      private var §?!C§:Boolean = false;
      
      private var §'!m§:Boolean = false;
      
      protected var §#"§:Boolean = false;
      
      private var §<X§:Number;
      
      private var §,!i§:Number = 0;
      
      private var §&D§:Number = 0;
      
      private var §!!Q§:Number = 0;
      
      private var §"!f§:Number = 1000;
      
      private var §4#§:Number;
      
      private var §6Z§:Number;
      
      private var §&!^§:int;
      
      private var §-?§:Number = 0;
      
      protected var §1!H§:Number;
      
      protected var §&!%§:Number;
      
      private var §`!f§:Number = 1;
      
      private var §5!i§:Number = 0;
      
      private var §[+§:b2Vec2;
      
      private var §>c§:Number = 1;
      
      public function §use §(param1:§0U§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§#!Y§ = param1;
         this.§`n§ = param2;
         this.mName = param3;
         this.§^h§ = §>!"§.§??§(this.mName).§-!@§;
         this.§ +§ = param4;
         this.§'Z§ = param5;
         this.§^!d§ = param4;
         this.§?!"§ = param5;
         this.§6O§ = 0;
         this.§?!C§ = false;
         this.§'!m§ = false;
         this.§,!i§ = 0;
         this.§+p§();
         this.§1!H§ = 0;
      }
      
      public function § 7§() : void
      {
         this.§?!C§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§`n§)
         {
            this.§`n§.dispose();
            this.§`n§ = null;
         }
      }
      
      public function §4Z§(param1:Number) : void
      {
         if(!this.§'!m§ || this.§?!C§)
         {
            return;
         }
         if(this.§0W§ != 0)
         {
            this.§!!Q§ = 0;
            this.§-?§ = 0;
            this.§6O§ = 0;
            this.§6Z§ = 0;
            this.§0W§ = 0;
         }
         param1 = Math.min(param1,this.§<X§);
         this.§ +§ += param1 * (this.§#!Y§.§ +§ - this.§ +§) / this.§<X§;
         this.§'Z§ += param1 * (this.§#!Y§.§'Z§ - this.§'Z§) / this.§<X§;
         this.§'Z§ -= param1 / 50 * (this.§<X§ / §'§);
         this.§6O§ += param1 * (360 - this.§6O§) / this.§<X§;
         this.§<X§ -= param1;
         if(this.§<X§ <= 0)
         {
            this.§ +§ = this.§#!Y§.§ +§;
            this.§'Z§ = this.§#!Y§.§'Z§;
            this.§'!m§ = false;
            this.§?!C§ = true;
            this.§6O§ = 0;
         }
         this.§3@§();
      }
      
      public function §!!A§() : void
      {
         this.§'!m§ = true;
         this.§<X§ = §'§;
         this.§,;§(§[-§.§+!F§);
         if(this.§-?§ != 0)
         {
            this.§'Z§ += this.§-?§;
            this.§-?§ = 0;
         }
      }
      
      public function §=N§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§?!C§ && this.§1!H§ >= 0)
         {
            if(this.§&!%§ > this.§#!Y§.mLevelMain.§9!I§.§8!R§)
            {
               this.§2;§(this.§#!Y§.mLevelMain.§9!I§.§8!R§ - this.§&!%§);
               this.§1!H§ = -1;
            }
            this.§1!H§ -= param1;
            if(this.§1!H§ <= 0)
            {
               if(this.§!!Q§ > 0)
               {
                  this.§1!H§ = this.§!!Q§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§&!%§))
               {
                  _loc2_ = this.§#!Y§.mLevelMain.objects.§3x§(this.§ +§,this.§&!%§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§2;§(param1 / 100))
                  {
                     this.§1!H§ = -1;
                  }
                  else
                  {
                     this.§1!H§ = 0;
                  }
               }
               else if(!this.§#!Y§.mLevelMain.objects.§6!e§(_loc2_).§!!@§)
               {
                  this.§#"§ = false;
                  this.§1!H§ = -1;
               }
               else if(this.§#!Y§.mLevelMain.objects.§6!e§(_loc2_).§ !i§())
               {
                  this.§#"§ = false;
                  this.§1!H§ = 2000;
               }
               else
               {
                  this.§1!H§ = 500;
               }
            }
         }
      }
      
      public function §2;§(param1:Number) : Boolean
      {
         this.§'Z§ += param1;
         this.§&!%§ += param1;
         if(this.§&!%§ > this.§#!Y§.mLevelMain.§9!I§.§8!R§)
         {
            param1 = this.§&!%§ - this.§#!Y§.mLevelMain.§9!I§.§8!R§;
            this.§'Z§ -= param1;
            this.§&!%§ -= param1;
            this.§3@§();
            return true;
         }
         this.§3@§();
         return false;
      }
      
      public function §+p§() : void
      {
         var _loc1_:§[!_§ = §>!"§.§??§(this.mName).shape;
         if(_loc1_.§3!!§() == §[!_§.§!!H§)
         {
            this.§[+§ = _loc1_.§-q§()[0];
            this.§4K§ = _loc1_.§;a§;
         }
         else if(_loc1_.§3!!§() == §[!_§.§1!1§)
         {
            this.§[+§ = new b2Vec2(0,0);
            this.§4K§ = 1.5;
         }
         this.§5!U§ = this.§#!Y§.mLevelMain.animationManager.getAnimation(this.mName);
         if(!this.§5!U§)
         {
            this.§`O§(null);
         }
         else
         {
            this.§`O§(this.§5!U§.getFrame(0));
         }
      }
      
      public function §`O§(param1:§9Z§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§#!Y§.§ !c§.textureManager.§+!=§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§!F§ == null)
         {
            this.§!F§ = new §2!K§(_loc2_);
            this.§`n§.addChild(this.§!F§);
         }
         else
         {
            this.§!F§.texture = _loc2_;
         }
         if(param1)
         {
            this.§!F§.x = -param1.pivotX - this.§[+§.x / §0!f§.§<C§;
            this.§!F§.y = -param1.pivotY - this.§[+§.y / §0!f§.§<C§;
         }
         else
         {
            this.§!F§.x = -this.§!F§.width / 2;
            this.§!F§.y = -this.§!F§.height / 2;
         }
         this.§!F§.scaleX = _loc3_;
         this.§!F§.scaleY = _loc3_;
         this.§3@§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§=N§(param1);
         if(this.§'!m§)
         {
            this.§!!Q§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§?p§(param1);
            this.§6§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§80§(param1,param2);
            }
         }
      }
      
      public function §?p§(param1:Number) : void
      {
         if(this.§,!i§ > 0)
         {
            this.§,!i§ -= param1;
            if(this.§,!i§ <= 0)
            {
               this.§,R§();
            }
         }
         else if(this.§&D§ <= 0 && Math.random() * §9G§ < param1 && this.§#!Y§.mSlingShotState)
         {
            this.§6!A§();
         }
      }
      
      public function §,R§() : void
      {
         this.§,!i§ = 0;
         this.§`O§(this.§5!U§.getFrame(0));
      }
      
      public function §6!A§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§,!i§ = §&!K§;
         this.§`O§(this.§5!U§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §6§(param1:Number) : void
      {
         if(this.§&D§ > 0)
         {
            this.§&D§ -= param1;
            if(this.§&D§ <= 0)
            {
               this.§0h§();
            }
         }
         else if(this.§,!i§ <= 0 && Math.random() * §6%§ < param1)
         {
            this.§,;§();
         }
      }
      
      public function §0h§() : void
      {
         this.§&D§ = 0;
         this.§`O§(this.§5!U§.getFrame(0));
      }
      
      public function §,;§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§&D§ > 0)
         {
            this.§0h§();
         }
         if(this.§,!i§ > 0)
         {
            this.§,R§();
         }
         if(param1 < 0)
         {
            param1 = §[-§.§7T§;
         }
         this.§&D§ = §7y§;
         this.§`O§(this.§5!U§.getSubAnimation("yell").getFrame(0));
         if(this.§?!C§ || this.§'!m§ || param2)
         {
            §"s§.§"v§(param1,this.§^h§);
         }
         else
         {
            §"s§.§"v§(param1,this.§^h§,§;e§);
         }
      }
      
      public function §80§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§!!Q§ > 0)
         {
            this.§!!Q§ -= param1;
            if(this.§!!Q§ <= 0)
            {
               ++this.§&!^§;
               this.§6Z§ *= 0.4;
               if(!this.§?!C§ && this.§&!^§ < 2)
               {
                  if(this.§&!^§ > 1 && this.§6Z§ < -1)
                  {
                     this.§6Z§ = -1;
                  }
                  this.§4#§ = this.§6Z§;
                  this.§!!Q§ = §'!4§;
                  this.§!!Q§ *= Math.abs(this.§4#§) / 2;
                  this.§"!f§ = this.§!!Q§;
                  this.§6O§ = 0;
                  this.§0W§ = 0;
               }
               else if(!this.§?!C§ && param2)
               {
                  this.§&n§(2.25);
               }
               else
               {
                  this.§!!Q§ = 0;
                  this.§-?§ = 0;
                  this.§6O§ = 0;
                  this.§6Z§ = 0;
               }
            }
            else
            {
               if(this.§!!Q§ >= this.§"!f§ / 2)
               {
                  _loc3_ = (this.§"!f§ - this.§!!Q§) / (this.§"!f§ / 2);
                  _loc3_ = §@l§.§2!§(_loc3_);
                  this.§-?§ = _loc3_ * this.§4#§;
               }
               else
               {
                  _loc3_ = (this.§"!f§ / 2 - this.§!!Q§) / (this.§"!f§ / 2);
                  _loc3_ = §@l§.§2!§(_loc3_,false);
                  this.§-?§ = this.§4#§ + _loc3_ * -this.§4#§;
               }
               this.§6O§ = 360 * §@l§.§2!§((this.§"!f§ - this.§!!Q§) / this.§"!f§) * this.§0W§;
            }
            this.§3@§();
         }
         else if(Math.random() * §0!_§ < param1 && !this.§?!C§ && !this.§'!m§ && !this.§#"§)
         {
            this.§&n§();
         }
      }
      
      public function §&n§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§&!^§ = 0;
         this.§!!Q§ = §'!4§;
         this.§-?§ = 0;
         this.§4#§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§6Z§ = this.§4#§;
         this.§!!Q§ *= Math.abs(this.§4#§) / 3;
         this.§"!f§ = this.§!!Q§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§0W§ = 0;
         }
         else if(this.§!!Q§ < 350)
         {
            this.§0W§ = 0;
         }
         else
         {
            this.§0W§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§0W§ = Math.random() > 0.5 ? Number(this.§0W§) : Number(0);
         }
      }
      
      public function §3@§() : void
      {
         this.§`n§.x = this.§ +§ / §0!f§.§<C§;
         this.§`n§.y = (this.§'Z§ + this.§-?§) / §0!f§.§<C§;
         this.§`n§.rotation = this.§6O§ / 180 * Math.PI;
      }
      
      public function §9![§() : void
      {
         this.§#"§ = true;
         this.§?!C§ = false;
         this.§'!m§ = false;
         this.§&!^§ = 0;
         this.§1!H§ = 0;
         this.§!!Q§ = 0;
         this.§!!Q§ = 0;
         this.§-?§ = 0;
         this.§6O§ = 0;
         this.§6Z§ = 0;
         this.§0W§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§ +§) * (param1 - this.§ +§) + (param2 - this.§'Z§) * (param2 - this.§'Z§));
         if(_loc3_ <= this.§4K§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§ +§ >= param3 && this.§ +§ <= param4 && this.§'Z§ >= param1 && this.§'Z§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.§ +§ != param1 || this.§'Z§ != param2)
         {
            _loc3_ = true;
         }
         this.§ +§ = param1;
         this.§'Z§ = param2;
         this.§1!H§ = 100;
         this.§3@§();
         if(_loc3_)
         {
            this.§#!Y§.§@_§();
         }
      }
      
      public function §4o§() : §2!K§
      {
         return this.§!F§;
      }
      
      public function get §^a§() : Number
      {
         return this.§!!Q§;
      }
      
      public function get §!D§() : Number
      {
         return this.§1!H§;
      }
      
      public function set §!D§(param1:Number) : void
      {
         this.§1!H§ = param1;
      }
      
      public function get §`?§() : Number
      {
         return this.§`!f§;
      }
      
      public function get §&!T§() : Boolean
      {
         return this.§?!C§;
      }
      
      public function get radius() : Number
      {
         return this.§4K§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§`n§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §`?§(param1:Number) : void
      {
         this.§`!f§ = param1;
      }
      
      public function get §7!#§() : Number
      {
         return this.§5!i§;
      }
      
      public function set §7!#§(param1:Number) : void
      {
         this.§5!i§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§>c§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§>c§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§ +§;
      }
      
      public function get y() : Number
      {
         return this.§'Z§;
      }
      
      public function get §3!H§() : Number
      {
         return this.§^!d§;
      }
      
      public function get §5!=§() : Number
      {
         return this.§?!"§;
      }
   }
}
