package § d§
{
   import § !_§.b2Vec2;
   import § 0§.Texture;
   import §"W§.§;N§;
   import §#!f§.§9!,§;
   import §#!f§.Sprite;
   import §0i§.§5h§;
   import §3!§.§2!$§;
   import §3!§.§3!W§;
   import §^-§.§'!!§;
   import §^-§.§;!f§;
   import §^-§.§=!B§;
   
   public class §=!,§
   {
      
      public static const § !N§:String = "ChannelSlingshot";
      
      public static const §?,§:Number = 900;
      
      public static const §]!e§:Number = 200;
      
      public static const §&!>§:Number = 200;
      
      public static const §>K§:Number = 1500;
      
      public static const §&! §:Number = 5000;
      
      public static const §[^§:Number = 1000;
      
      public static const §#!8§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var §`B§:Number;
      
      protected var §,!9§:Number;
      
      protected var §;!Q§:Number;
      
      protected var §`!?§:Number;
      
      private var §^$§:§'!!§;
      
      protected var §=$§:Number;
      
      protected var §+l§:Number = 1;
      
      private var §3![§:Sprite;
      
      protected var §;+§:§3!W§;
      
      private var §6-§:§9!,§;
      
      protected var § t§:§3§;
      
      private var §7o§:Number;
      
      private var §<!>§:Boolean = false;
      
      private var §!9§:Boolean = false;
      
      protected var §?B§:Boolean = false;
      
      private var §'!&§:Number;
      
      private var §6!Q§:Number = 0;
      
      private var §'!>§:Number = 0;
      
      private var §^0§:Number = 0;
      
      private var §^P§:Number = 1000;
      
      private var §&U§:Number;
      
      private var §1l§:Number;
      
      private var §@]§:int;
      
      private var §0!C§:Number = 0;
      
      protected var §"!@§:Number;
      
      protected var §<F§:Number;
      
      private var §[!e§:Number = 1;
      
      private var §[!^§:Number = 0;
      
      private var §try §:b2Vec2;
      
      private var §0!^§:Number = 1;
      
      public function §=!,§(param1:§3§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§ t§ = param1;
         this.§3![§ = param2;
         this.mName = param3;
         this.§^$§ = §;!f§.§]!L§(this.mName).§5n§;
         this.§`B§ = param4;
         this.§,!9§ = param5;
         this.§;!Q§ = param4;
         this.§`!?§ = param5;
         this.§=$§ = 0;
         this.§<!>§ = false;
         this.§!9§ = false;
         this.§6!Q§ = 0;
         this.§7!H§();
         this.§"!@§ = 0;
      }
      
      public function §["§() : void
      {
         this.§<!>§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§3![§)
         {
            this.§3![§.dispose();
            this.§3![§ = null;
         }
      }
      
      public function §+!?§(param1:Number) : void
      {
         if(!this.§!9§ || this.§<!>§)
         {
            return;
         }
         if(this.§+l§ != 0)
         {
            this.§^0§ = 0;
            this.§0!C§ = 0;
            this.§=$§ = 0;
            this.§1l§ = 0;
            this.§+l§ = 0;
         }
         param1 = Math.min(param1,this.§'!&§);
         this.§`B§ += param1 * (this.§ t§.§`B§ - this.§`B§) / this.§'!&§;
         this.§,!9§ += param1 * (this.§ t§.§,!9§ - this.§,!9§) / this.§'!&§;
         this.§,!9§ -= param1 / 50 * (this.§'!&§ / §?,§);
         this.§=$§ += param1 * (360 - this.§=$§) / this.§'!&§;
         this.§'!&§ -= param1;
         if(this.§'!&§ <= 0)
         {
            this.§`B§ = this.§ t§.§`B§;
            this.§,!9§ = this.§ t§.§,!9§;
            this.§!9§ = false;
            this.§<!>§ = true;
            this.§=$§ = 0;
         }
         this.§[F§();
      }
      
      public function §[Z§() : void
      {
         this.§!9§ = true;
         this.§'!&§ = §?,§;
         this.§@H§(§'!!§.§0!2§);
         if(this.§0!C§ != 0)
         {
            this.§,!9§ += this.§0!C§;
            this.§0!C§ = 0;
         }
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§<!>§ && this.§"!@§ >= 0)
         {
            if(this.§<F§ > this.§ t§.§"2§.§=!E§.§9%§)
            {
               this.applyGravity(this.§ t§.§"2§.§=!E§.§9%§ - this.§<F§);
               this.§"!@§ = -1;
            }
            this.§"!@§ -= param1;
            if(this.§"!@§ <= 0)
            {
               if(this.§^0§ > 0)
               {
                  this.§"!@§ = this.§^0§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§<F§))
               {
                  _loc2_ = this.§ t§.§"2§.objects.§3!+§(this.§`B§,this.§<F§);
               }
               if(_loc2_ < 0)
               {
                  if(this.applyGravity(param1 / 100))
                  {
                     this.§"!@§ = -1;
                  }
                  else
                  {
                     this.§"!@§ = 0;
                  }
               }
               else if(!this.§ t§.§"2§.objects.§<Q§(_loc2_).§7$§)
               {
                  this.§?B§ = false;
                  this.§"!@§ = -1;
               }
               else if(this.§ t§.§"2§.objects.§<Q§(_loc2_).§?g§())
               {
                  this.§?B§ = false;
                  this.§"!@§ = 2000;
               }
               else
               {
                  this.§"!@§ = 500;
               }
            }
         }
      }
      
      public function applyGravity(param1:Number) : Boolean
      {
         this.§,!9§ += param1;
         this.§<F§ += param1;
         if(this.§<F§ > this.§ t§.§"2§.§=!E§.§9%§)
         {
            param1 = this.§<F§ - this.§ t§.§"2§.§=!E§.§9%§;
            this.§,!9§ -= param1;
            this.§<F§ -= param1;
            this.§[F§();
            return true;
         }
         this.§[F§();
         return false;
      }
      
      public function §7!H§() : void
      {
         var _loc1_:§=!B§ = §;!f§.§]!L§(this.mName).shape;
         if(_loc1_.§<!D§() == §=!B§.§5!W§)
         {
            this.§try § = _loc1_.§&R§()[0];
            this.§7o§ = _loc1_.§>5§;
         }
         else if(_loc1_.§<!D§() == §=!B§.§6[§)
         {
            this.§try § = new b2Vec2(0,0);
            this.§7o§ = 1.5;
         }
         this.§;+§ = this.§ t§.§"2§.§4!2§.§'k§(this.mName);
         if(!this.§;+§)
         {
            this.setPivotTexture(null);
         }
         else
         {
            this.setPivotTexture(this.§;+§.getFrame(0));
         }
      }
      
      public function setPivotTexture(param1:§2!$§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§ t§.§@!a§.textureManager.§'!V§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§6-§ == null)
         {
            this.§6-§ = new §9!,§(_loc2_);
            this.§3![§.addChild(this.§6-§);
         }
         else
         {
            this.§6-§.texture = _loc2_;
         }
         if(param1)
         {
            this.§6-§.x = -param1.pivotX - this.§try §.x / §'!"§.§#3§;
            this.§6-§.y = -param1.pivotY - this.§try §.y / §'!"§.§#3§;
         }
         else
         {
            this.§6-§.x = -this.§6-§.width / 2;
            this.§6-§.y = -this.§6-§.height / 2;
         }
         this.§6-§.scaleX = _loc3_;
         this.§6-§.scaleY = _loc3_;
         this.§[F§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.updateGroundControl(param1);
         if(this.§!9§)
         {
            this.§^0§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§2!-§(param1);
            this.§5>§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§8§(param1,param2);
            }
         }
      }
      
      public function §2!-§(param1:Number) : void
      {
         if(this.§6!Q§ > 0)
         {
            this.§6!Q§ -= param1;
            if(this.§6!Q§ <= 0)
            {
               this.§;!P§();
            }
         }
         else if(this.§'!>§ <= 0 && Math.random() * §>K§ < param1 && this.§ t§.mSlingShotState)
         {
            this.§8p§();
         }
      }
      
      public function §;!P§() : void
      {
         this.§6!Q§ = 0;
         this.setPivotTexture(this.§;+§.getFrame(0));
      }
      
      public function §8p§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§6!Q§ = §]!e§;
         this.setPivotTexture(this.§;+§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §5>§(param1:Number) : void
      {
         if(this.§'!>§ > 0)
         {
            this.§'!>§ -= param1;
            if(this.§'!>§ <= 0)
            {
               this.§^=§();
            }
         }
         else if(this.§6!Q§ <= 0 && Math.random() * §&! § < param1)
         {
            this.§@H§();
         }
      }
      
      public function §^=§() : void
      {
         this.§'!>§ = 0;
         this.setPivotTexture(this.§;+§.getFrame(0));
      }
      
      public function §@H§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§'!>§ > 0)
         {
            this.§^=§();
         }
         if(this.§6!Q§ > 0)
         {
            this.§;!P§();
         }
         if(param1 < 0)
         {
            param1 = §'!!§.§ !d§;
         }
         this.§'!>§ = §&!>§;
         this.setPivotTexture(this.§;+§.getSubAnimation("yell").getFrame(0));
         if(this.§<!>§ || this.§!9§ || param2)
         {
            §;N§.§<r§(param1,this.§^$§);
         }
         else
         {
            §;N§.§<r§(param1,this.§^$§,§ !N§);
         }
      }
      
      public function §8§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§^0§ > 0)
         {
            this.§^0§ -= param1;
            if(this.§^0§ <= 0)
            {
               ++this.§@]§;
               this.§1l§ *= 0.4;
               if(!this.§<!>§ && this.§@]§ < 2)
               {
                  if(this.§@]§ > 1 && this.§1l§ < -1)
                  {
                     this.§1l§ = -1;
                  }
                  this.§&U§ = this.§1l§;
                  this.§^0§ = §#!8§;
                  this.§^0§ *= Math.abs(this.§&U§) / 2;
                  this.§^P§ = this.§^0§;
                  this.§=$§ = 0;
                  this.§+l§ = 0;
               }
               else if(!this.§<!>§ && param2)
               {
                  this.§@1§(2.25);
               }
               else
               {
                  this.§^0§ = 0;
                  this.§0!C§ = 0;
                  this.§=$§ = 0;
                  this.§1l§ = 0;
               }
            }
            else
            {
               if(this.§^0§ >= this.§^P§ / 2)
               {
                  _loc3_ = (this.§^P§ - this.§^0§) / (this.§^P§ / 2);
                  _loc3_ = §5h§.§`!a§(_loc3_);
                  this.§0!C§ = _loc3_ * this.§&U§;
               }
               else
               {
                  _loc3_ = (this.§^P§ / 2 - this.§^0§) / (this.§^P§ / 2);
                  _loc3_ = §5h§.§`!a§(_loc3_,false);
                  this.§0!C§ = this.§&U§ + _loc3_ * -this.§&U§;
               }
               this.§=$§ = 360 * §5h§.§`!a§((this.§^P§ - this.§^0§) / this.§^P§) * this.§+l§;
            }
            this.§[F§();
         }
         else if(Math.random() * §[^§ < param1 && !this.§<!>§ && !this.§!9§ && !this.§?B§)
         {
            this.§@1§();
         }
      }
      
      public function §@1§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§@]§ = 0;
         this.§^0§ = §#!8§;
         this.§0!C§ = 0;
         this.§&U§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§1l§ = this.§&U§;
         this.§^0§ *= Math.abs(this.§&U§) / 3;
         this.§^P§ = this.§^0§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§+l§ = 0;
         }
         else if(this.§^0§ < 350)
         {
            this.§+l§ = 0;
         }
         else
         {
            this.§+l§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§+l§ = Math.random() > 0.5 ? Number(this.§+l§) : Number(0);
         }
      }
      
      public function §[F§() : void
      {
         this.§3![§.x = this.§`B§ / §'!"§.§#3§;
         this.§3![§.y = (this.§,!9§ + this.§0!C§) / §'!"§.§#3§;
         this.§3![§.rotation = this.§=$§ / 180 * Math.PI;
      }
      
      public function §8L§() : void
      {
         this.§?B§ = true;
         this.§<!>§ = false;
         this.§!9§ = false;
         this.§@]§ = 0;
         this.§"!@§ = 0;
         this.§^0§ = 0;
         this.§^0§ = 0;
         this.§0!C§ = 0;
         this.§=$§ = 0;
         this.§1l§ = 0;
         this.§+l§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§`B§) * (param1 - this.§`B§) + (param2 - this.§,!9§) * (param2 - this.§,!9§));
         if(_loc3_ <= this.§7o§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§`B§ >= param3 && this.§`B§ <= param4 && this.§,!9§ >= param1 && this.§,!9§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.§`B§ != param1 || this.§,!9§ != param2)
         {
            _loc3_ = true;
         }
         this.§`B§ = param1;
         this.§,!9§ = param2;
         this.§"!@§ = 100;
         this.§[F§();
         if(_loc3_)
         {
            this.§ t§.§+!f§();
         }
      }
      
      public function §3!F§() : §9!,§
      {
         return this.§6-§;
      }
      
      public function get §8!e§() : Number
      {
         return this.§^0§;
      }
      
      public function get §>!H§() : Number
      {
         return this.§"!@§;
      }
      
      public function set §>!H§(param1:Number) : void
      {
         this.§"!@§ = param1;
      }
      
      public function get §`!W§() : Number
      {
         return this.§[!e§;
      }
      
      public function get §6>§() : Boolean
      {
         return this.§<!>§;
      }
      
      public function get radius() : Number
      {
         return this.§7o§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§3![§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §`!W§(param1:Number) : void
      {
         this.§[!e§ = param1;
      }
      
      public function get §^!O§() : Number
      {
         return this.§[!^§;
      }
      
      public function set §^!O§(param1:Number) : void
      {
         this.§[!^§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§0!^§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§0!^§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§`B§;
      }
      
      public function get y() : Number
      {
         return this.§,!9§;
      }
      
      public function get §,!,§() : Number
      {
         return this.§;!Q§;
      }
      
      public function get §6q§() : Number
      {
         return this.§`!?§;
      }
   }
}
