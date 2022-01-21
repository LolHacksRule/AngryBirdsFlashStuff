package §<L§
{
   import § !^§.Texture;
   import §&!!§.§7N§;
   import §&!!§.§[!]§;
   import §2![§.Sprite;
   import §2![§.§[!U§;
   import §5!L§.§,!&§;
   import §8<§.§[W§;
   import §?!'§.§-M§;
   import §?!'§.§3!^§;
   import §?!'§.§[!S§;
   import §@![§.b2Vec2;
   
   public class §&E§
   {
      
      public static const §%!9§:String = "ChannelSlingshot";
      
      public static const §'!N§:Number = 900;
      
      public static const §6!;§:Number = 200;
      
      public static const §&X§:Number = 200;
      
      public static const §##§:Number = 1500;
      
      public static const §=!`§:Number = 5000;
      
      public static const §@R§:Number = 1000;
      
      public static const §'!R§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var §+p§:Number;
      
      protected var §,,§:Number;
      
      protected var §4Y§:Number;
      
      protected var §?!-§:Number;
      
      private var §7!K§:§3!^§;
      
      protected var §4!9§:Number;
      
      protected var §!!>§:Number = 1;
      
      private var §%!l§:Sprite;
      
      protected var §@!C§:§[!]§;
      
      private var §#Z§:§[!U§;
      
      protected var §%!a§:§7!4§;
      
      private var §]+§:Number;
      
      private var §?§:Boolean = false;
      
      private var §>^§:Boolean = false;
      
      protected var §6!O§:Boolean = false;
      
      private var §2!?§:Number;
      
      private var §%!'§:Number = 0;
      
      private var §4O§:Number = 0;
      
      private var §2!n§:Number = 0;
      
      private var §0?§:Number = 1000;
      
      private var §3!b§:Number;
      
      private var §1N§:Number;
      
      private var §,5§:int;
      
      private var §;S§:Number = 0;
      
      protected var §4C§:Number;
      
      protected var §#!o§:Number;
      
      private var §9Z§:Number = 1;
      
      private var §2'§:Number = 0;
      
      private var §0!Y§:b2Vec2;
      
      private var §6R§:Number = 1;
      
      public function §&E§(param1:§7!4§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§%!a§ = param1;
         this.§%!l§ = param2;
         this.mName = param3;
         this.§7!K§ = §[!S§.§;Z§(this.mName).§1D§;
         this.§+p§ = param4;
         this.§,,§ = param5;
         this.§4Y§ = param4;
         this.§?!-§ = param5;
         this.§4!9§ = 0;
         this.§?§ = false;
         this.§>^§ = false;
         this.§%!'§ = 0;
         this.§&B§();
         this.§4C§ = 0;
      }
      
      public function §;!T§() : void
      {
         this.§?§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§%!l§)
         {
            this.§%!l§.dispose();
            this.§%!l§ = null;
         }
      }
      
      public function §-!i§(param1:Number) : void
      {
         if(!this.§>^§ || this.§?§)
         {
            return;
         }
         if(this.§!!>§ != 0)
         {
            this.§2!n§ = 0;
            this.§;S§ = 0;
            this.§4!9§ = 0;
            this.§1N§ = 0;
            this.§!!>§ = 0;
         }
         param1 = Math.min(param1,this.§2!?§);
         this.§+p§ += param1 * (this.§%!a§.§+p§ - this.§+p§) / this.§2!?§;
         this.§,,§ += param1 * (this.§%!a§.§,,§ - this.§,,§) / this.§2!?§;
         this.§,,§ -= param1 / 50 * (this.§2!?§ / §'!N§);
         this.§4!9§ += param1 * (360 - this.§4!9§) / this.§2!?§;
         this.§2!?§ -= param1;
         if(this.§2!?§ <= 0)
         {
            this.§+p§ = this.§%!a§.§+p§;
            this.§,,§ = this.§%!a§.§,,§;
            this.§>^§ = false;
            this.§?§ = true;
            this.§4!9§ = 0;
         }
         this.§?R§();
      }
      
      public function §#?§() : void
      {
         this.§>^§ = true;
         this.§2!?§ = §'!N§;
         this.§3r§(§3!^§.§<!§);
         if(this.§;S§ != 0)
         {
            this.§,,§ += this.§;S§;
            this.§;S§ = 0;
         }
      }
      
      public function §6C§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§?§ && this.§4C§ >= 0)
         {
            if(this.§#!o§ > this.§%!a§.mLevelMain.§9!R§.§@Y§)
            {
               this.§+v§(this.§%!a§.mLevelMain.§9!R§.§@Y§ - this.§#!o§);
               this.§4C§ = -1;
            }
            this.§4C§ -= param1;
            if(this.§4C§ <= 0)
            {
               if(this.§2!n§ > 0)
               {
                  this.§4C§ = this.§2!n§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§#!o§))
               {
                  _loc2_ = this.§%!a§.mLevelMain.objects.§7T§(this.§+p§,this.§#!o§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§+v§(param1 / 100))
                  {
                     this.§4C§ = -1;
                  }
                  else
                  {
                     this.§4C§ = 0;
                  }
               }
               else if(!this.§%!a§.mLevelMain.objects.§8K§(_loc2_).§?9§)
               {
                  this.§6!O§ = false;
                  this.§4C§ = -1;
               }
               else if(this.§%!a§.mLevelMain.objects.§8K§(_loc2_).§?E§())
               {
                  this.§6!O§ = false;
                  this.§4C§ = 2000;
               }
               else
               {
                  this.§4C§ = 500;
               }
            }
         }
      }
      
      public function §+v§(param1:Number) : Boolean
      {
         this.§,,§ += param1;
         this.§#!o§ += param1;
         if(this.§#!o§ > this.§%!a§.mLevelMain.§9!R§.§@Y§)
         {
            param1 = this.§#!o§ - this.§%!a§.mLevelMain.§9!R§.§@Y§;
            this.§,,§ -= param1;
            this.§#!o§ -= param1;
            this.§?R§();
            return true;
         }
         this.§?R§();
         return false;
      }
      
      public function §&B§() : void
      {
         var _loc1_:§-M§ = §[!S§.§;Z§(this.mName).shape;
         if(_loc1_.§,_§() == §-M§.§;![§)
         {
            this.§0!Y§ = _loc1_.§3j§()[0];
            this.§]+§ = _loc1_.§3y§;
         }
         else if(_loc1_.§,_§() == §-M§.§18§)
         {
            this.§0!Y§ = new b2Vec2(0,0);
            this.§]+§ = 1.5;
         }
         this.§@!C§ = this.§%!a§.mLevelMain.animationManager.getAnimation(this.mName);
         if(!this.§@!C§)
         {
            this.§1!2§(null);
         }
         else
         {
            this.§1!2§(this.§@!C§.getFrame(0));
         }
      }
      
      public function §1!2§(param1:§7N§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§%!a§.§2!V§.textureManager.§8!c§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§#Z§ == null)
         {
            this.§#Z§ = new §[!U§(_loc2_);
            this.§%!l§.addChild(this.§#Z§);
         }
         else
         {
            this.§#Z§.texture = _loc2_;
         }
         if(param1)
         {
            this.§#Z§.x = -param1.pivotX - this.§0!Y§.x / §!!G§.§ !E§;
            this.§#Z§.y = -param1.pivotY - this.§0!Y§.y / §!!G§.§ !E§;
         }
         else
         {
            this.§#Z§.x = -this.§#Z§.width / 2;
            this.§#Z§.y = -this.§#Z§.height / 2;
         }
         this.§#Z§.scaleX = _loc3_;
         this.§#Z§.scaleY = _loc3_;
         this.§?R§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§6C§(param1);
         if(this.§>^§)
         {
            this.§2!n§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§+!O§(param1);
            this.§?!S§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§=+§(param1,param2);
            }
         }
      }
      
      public function §+!O§(param1:Number) : void
      {
         if(this.§%!'§ > 0)
         {
            this.§%!'§ -= param1;
            if(this.§%!'§ <= 0)
            {
               this.§ V§();
            }
         }
         else if(this.§4O§ <= 0 && Math.random() * §##§ < param1 && this.§%!a§.mSlingShotState)
         {
            this.§#"§();
         }
      }
      
      public function § V§() : void
      {
         this.§%!'§ = 0;
         this.§1!2§(this.§@!C§.getFrame(0));
      }
      
      public function §#"§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§%!'§ = §6!;§;
         this.§1!2§(this.§@!C§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §?!S§(param1:Number) : void
      {
         if(this.§4O§ > 0)
         {
            this.§4O§ -= param1;
            if(this.§4O§ <= 0)
            {
               this.§%I§();
            }
         }
         else if(this.§%!'§ <= 0 && Math.random() * §=!`§ < param1)
         {
            this.§3r§();
         }
      }
      
      public function §%I§() : void
      {
         this.§4O§ = 0;
         this.§1!2§(this.§@!C§.getFrame(0));
      }
      
      public function §3r§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§4O§ > 0)
         {
            this.§%I§();
         }
         if(this.§%!'§ > 0)
         {
            this.§ V§();
         }
         if(param1 < 0)
         {
            param1 = §3!^§.§3v§;
         }
         this.§4O§ = §&X§;
         this.§1!2§(this.§@!C§.getSubAnimation("yell").getFrame(0));
         if(this.§?§ || this.§>^§ || param2)
         {
            §,!&§.§8^§(param1,this.§7!K§);
         }
         else
         {
            §,!&§.§8^§(param1,this.§7!K§,§%!9§);
         }
      }
      
      public function §=+§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§2!n§ > 0)
         {
            this.§2!n§ -= param1;
            if(this.§2!n§ <= 0)
            {
               ++this.§,5§;
               this.§1N§ *= 0.4;
               if(!this.§?§ && this.§,5§ < 2)
               {
                  if(this.§,5§ > 1 && this.§1N§ < -1)
                  {
                     this.§1N§ = -1;
                  }
                  this.§3!b§ = this.§1N§;
                  this.§2!n§ = §'!R§;
                  this.§2!n§ *= Math.abs(this.§3!b§) / 2;
                  this.§0?§ = this.§2!n§;
                  this.§4!9§ = 0;
                  this.§!!>§ = 0;
               }
               else if(!this.§?§ && param2)
               {
                  this.§`O§(2.25);
               }
               else
               {
                  this.§2!n§ = 0;
                  this.§;S§ = 0;
                  this.§4!9§ = 0;
                  this.§1N§ = 0;
               }
            }
            else
            {
               if(this.§2!n§ >= this.§0?§ / 2)
               {
                  _loc3_ = (this.§0?§ - this.§2!n§) / (this.§0?§ / 2);
                  _loc3_ = §[W§.§0!"§(_loc3_);
                  this.§;S§ = _loc3_ * this.§3!b§;
               }
               else
               {
                  _loc3_ = (this.§0?§ / 2 - this.§2!n§) / (this.§0?§ / 2);
                  _loc3_ = §[W§.§0!"§(_loc3_,false);
                  this.§;S§ = this.§3!b§ + _loc3_ * -this.§3!b§;
               }
               this.§4!9§ = 360 * §[W§.§0!"§((this.§0?§ - this.§2!n§) / this.§0?§) * this.§!!>§;
            }
            this.§?R§();
         }
         else if(Math.random() * §@R§ < param1 && !this.§?§ && !this.§>^§ && !this.§6!O§)
         {
            this.§`O§();
         }
      }
      
      public function §`O§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§,5§ = 0;
         this.§2!n§ = §'!R§;
         this.§;S§ = 0;
         this.§3!b§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§1N§ = this.§3!b§;
         this.§2!n§ *= Math.abs(this.§3!b§) / 3;
         this.§0?§ = this.§2!n§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§!!>§ = 0;
         }
         else if(this.§2!n§ < 350)
         {
            this.§!!>§ = 0;
         }
         else
         {
            this.§!!>§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§!!>§ = Math.random() > 0.5 ? Number(this.§!!>§) : Number(0);
         }
      }
      
      public function §?R§() : void
      {
         this.§%!l§.x = this.§+p§ / §!!G§.§ !E§;
         this.§%!l§.y = (this.§,,§ + this.§;S§) / §!!G§.§ !E§;
         this.§%!l§.rotation = this.§4!9§ / 180 * Math.PI;
      }
      
      public function §?!f§() : void
      {
         this.§6!O§ = true;
         this.§?§ = false;
         this.§>^§ = false;
         this.§,5§ = 0;
         this.§4C§ = 0;
         this.§2!n§ = 0;
         this.§2!n§ = 0;
         this.§;S§ = 0;
         this.§4!9§ = 0;
         this.§1N§ = 0;
         this.§!!>§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§+p§) * (param1 - this.§+p§) + (param2 - this.§,,§) * (param2 - this.§,,§));
         if(_loc3_ <= this.§]+§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§+p§ >= param3 && this.§+p§ <= param4 && this.§,,§ >= param1 && this.§,,§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.§+p§ != param1 || this.§,,§ != param2)
         {
            _loc3_ = true;
         }
         this.§+p§ = param1;
         this.§,,§ = param2;
         this.§4C§ = 100;
         this.§?R§();
         if(_loc3_)
         {
            this.§%!a§.§6o§();
         }
      }
      
      public function §]<§() : §[!U§
      {
         return this.§#Z§;
      }
      
      public function get §=&§() : Number
      {
         return this.§2!n§;
      }
      
      public function get §8!a§() : Number
      {
         return this.§4C§;
      }
      
      public function set §8!a§(param1:Number) : void
      {
         this.§4C§ = param1;
      }
      
      public function get §8!&§() : Number
      {
         return this.§9Z§;
      }
      
      public function get §1T§() : Boolean
      {
         return this.§?§;
      }
      
      public function get radius() : Number
      {
         return this.§]+§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§%!l§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §8!&§(param1:Number) : void
      {
         this.§9Z§ = param1;
      }
      
      public function get §0!-§() : Number
      {
         return this.§2'§;
      }
      
      public function set §0!-§(param1:Number) : void
      {
         this.§2'§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§6R§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§6R§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§+p§;
      }
      
      public function get y() : Number
      {
         return this.§,,§;
      }
      
      public function get §-!?§() : Number
      {
         return this.§4Y§;
      }
      
      public function get §+M§() : Number
      {
         return this.§?!-§;
      }
   }
}
