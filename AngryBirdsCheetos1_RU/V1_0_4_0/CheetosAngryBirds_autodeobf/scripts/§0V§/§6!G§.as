package §0V§
{
   import § N§.§,8§;
   import §&C§.§![§;
   import §&C§.§7!1§;
   import §&C§.§[b§;
   import §+![§.Texture;
   import §3§.§4!!§;
   import §3§.Sprite;
   import §3d§.§20§;
   import §^q§.b2Vec2;
   import §`n§.§-!D§;
   import §`n§.§6o§;
   
   public class §6!G§
   {
      
      public static const §;!G§:String = "ChannelSlingshot";
      
      public static const §6E§:Number = 900;
      
      public static const §+!]§:Number = 200;
      
      public static const §9B§:Number = 200;
      
      public static const §9!-§:Number = 1500;
      
      public static const §9G§:Number = 5000;
      
      public static const §-3§:Number = 1000;
      
      public static const §@6§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var § W§:Number;
      
      protected var §9!9§:Number;
      
      protected var §!&§:Number;
      
      protected var §"C§:Number;
      
      private var §<!$§:§7!1§;
      
      protected var §],§:Number;
      
      protected var §6!1§:Number = 1;
      
      private var §;!5§:Sprite;
      
      protected var §5!U§:§-!D§;
      
      private var §0>§:§4!!§;
      
      protected var § c§:§^K§;
      
      private var §2A§:Number;
      
      private var §-b§:Boolean = false;
      
      private var §!!+§:Boolean = false;
      
      protected var §4s§:Boolean = false;
      
      private var §var §:Number;
      
      private var §0C§:Number = 0;
      
      private var §3!"§:Number = 0;
      
      private var §;n§:Number = 0;
      
      private var §[!$§:Number = 1000;
      
      private var §6t§:Number;
      
      private var §@!?§:Number;
      
      private var §]!S§:int;
      
      private var §"!?§:Number = 0;
      
      protected var §"8§:Number;
      
      protected var §[!P§:Number;
      
      private var §+!R§:Number = 1;
      
      private var §&d§:Number = 0;
      
      private var §17§:b2Vec2;
      
      private var §3&§:Number = 1;
      
      public function §6!G§(param1:§^K§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§ c§ = param1;
         this.§;!5§ = param2;
         this.mName = param3;
         this.§<!$§ = §[b§.§9R§(this.mName).§0y§;
         this.§ W§ = param4;
         this.§9!9§ = param5;
         this.§!&§ = param4;
         this.§"C§ = param5;
         this.§],§ = 0;
         this.§-b§ = false;
         this.§!!+§ = false;
         this.§0C§ = 0;
         this.§3!O§();
         this.§"8§ = 0;
      }
      
      public function §'!8§() : void
      {
         this.§-b§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§;!5§)
         {
            this.§;!5§.dispose();
            this.§;!5§ = null;
         }
      }
      
      public function §[!G§(param1:Number) : void
      {
         if(!this.§!!+§ || this.§-b§)
         {
            return;
         }
         if(this.§6!1§ != 0)
         {
            this.§;n§ = 0;
            this.§"!?§ = 0;
            this.§],§ = 0;
            this.§@!?§ = 0;
            this.§6!1§ = 0;
         }
         param1 = Math.min(param1,this.§var §);
         this.§ W§ += param1 * (this.§ c§.§ W§ - this.§ W§) / this.§var §;
         this.§9!9§ += param1 * (this.§ c§.§9!9§ - this.§9!9§) / this.§var §;
         this.§9!9§ -= param1 / 50 * (this.§var § / §6E§);
         this.§],§ += param1 * (360 - this.§],§) / this.§var §;
         this.§var § -= param1;
         if(this.§var § <= 0)
         {
            this.§ W§ = this.§ c§.§ W§;
            this.§9!9§ = this.§ c§.§9!9§;
            this.§!!+§ = false;
            this.§-b§ = true;
            this.§],§ = 0;
         }
         this.§7B§();
      }
      
      public function §?!@§() : void
      {
         this.§!!+§ = true;
         this.§var § = §6E§;
         this.§[!Z§(§7!1§.§+!-§);
         if(this.§"!?§ != 0)
         {
            this.§9!9§ += this.§"!?§;
            this.§"!?§ = 0;
         }
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§-b§ && this.§"8§ >= 0)
         {
            if(this.§[!P§ > this.§ c§.§!q§.§-6§.§+!Z§)
            {
               this.applyGravity(this.§ c§.§!q§.§-6§.§+!Z§ - this.§[!P§);
               this.§"8§ = -1;
            }
            this.§"8§ -= param1;
            if(this.§"8§ <= 0)
            {
               if(this.§;n§ > 0)
               {
                  this.§"8§ = this.§;n§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§[!P§))
               {
                  _loc2_ = this.§ c§.§!q§.objects.§!![§(this.§ W§,this.§[!P§);
               }
               if(_loc2_ < 0)
               {
                  if(this.applyGravity(param1 / 100))
                  {
                     this.§"8§ = -1;
                  }
                  else
                  {
                     this.§"8§ = 0;
                  }
               }
               else if(!this.§ c§.§!q§.objects.§^i§(_loc2_).§"d§)
               {
                  this.§4s§ = false;
                  this.§"8§ = -1;
               }
               else if(this.§ c§.§!q§.objects.§^i§(_loc2_).§9!<§())
               {
                  this.§4s§ = false;
                  this.§"8§ = 2000;
               }
               else
               {
                  this.§"8§ = 500;
               }
            }
         }
      }
      
      public function applyGravity(param1:Number) : Boolean
      {
         this.§9!9§ += param1;
         this.§[!P§ += param1;
         if(this.§[!P§ > this.§ c§.§!q§.§-6§.§+!Z§)
         {
            param1 = this.§[!P§ - this.§ c§.§!q§.§-6§.§+!Z§;
            this.§9!9§ -= param1;
            this.§[!P§ -= param1;
            this.§7B§();
            return true;
         }
         this.§7B§();
         return false;
      }
      
      public function §3!O§() : void
      {
         var _loc1_:§![§ = §[b§.§9R§(this.mName).shape;
         if(_loc1_.§1_§() == §![§.§"M§)
         {
            this.§17§ = _loc1_.§=<§()[0];
            this.§2A§ = _loc1_.§=!T§;
         }
         else if(_loc1_.§1_§() == §![§.§<!6§)
         {
            this.§17§ = new b2Vec2(0,0);
            this.§2A§ = 1.5;
         }
         this.§5!U§ = this.§ c§.§!q§.§2!N§.§7!<§(this.mName);
         if(!this.§5!U§)
         {
            this.§1$§(null);
         }
         else
         {
            this.§1$§(this.§5!U§.getFrame(0));
         }
      }
      
      public function §1$§(param1:§6o§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§ c§.§?!§.§1S§.§6!]§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§0>§ == null)
         {
            this.§0>§ = new §4!!§(_loc2_);
            this.§;!5§.addChild(this.§0>§);
         }
         else
         {
            this.§0>§.texture = _loc2_;
         }
         if(param1)
         {
            this.§0>§.x = -param1.pivotX - this.§17§.x / §`!O§.§?!O§;
            this.§0>§.y = -param1.pivotY - this.§17§.y / §`!O§.§?!O§;
         }
         else
         {
            this.§0>§.x = -this.§0>§.width / 2;
            this.§0>§.y = -this.§0>§.height / 2;
         }
         this.§0>§.scaleX = _loc3_;
         this.§0>§.scaleY = _loc3_;
         this.§7B§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.updateGroundControl(param1);
         if(this.§!!+§)
         {
            this.§;n§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§2§(param1);
            this.§ E§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§?i§(param1,param2);
            }
         }
      }
      
      public function §2§(param1:Number) : void
      {
         if(this.§0C§ > 0)
         {
            this.§0C§ -= param1;
            if(this.§0C§ <= 0)
            {
               this.§8!N§();
            }
         }
         else if(this.§3!"§ <= 0 && Math.random() * §9!-§ < param1 && this.§ c§.mSlingShotState)
         {
            this.§%!>§();
         }
      }
      
      public function §8!N§() : void
      {
         this.§0C§ = 0;
         this.§1$§(this.§5!U§.getFrame(0));
      }
      
      public function §%!>§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§0C§ = §+!]§;
         this.§1$§(this.§5!U§.getSubAnimation("blink").getFrame(0));
      }
      
      public function § E§(param1:Number) : void
      {
         if(this.§3!"§ > 0)
         {
            this.§3!"§ -= param1;
            if(this.§3!"§ <= 0)
            {
               this.§#!V§();
            }
         }
         else if(this.§0C§ <= 0 && Math.random() * §9G§ < param1)
         {
            this.§[!Z§();
         }
      }
      
      public function §#!V§() : void
      {
         this.§3!"§ = 0;
         this.§1$§(this.§5!U§.getFrame(0));
      }
      
      public function §[!Z§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§3!"§ > 0)
         {
            this.§#!V§();
         }
         if(this.§0C§ > 0)
         {
            this.§8!N§();
         }
         if(param1 < 0)
         {
            param1 = §7!1§.§#e§;
         }
         this.§3!"§ = §9B§;
         this.§1$§(this.§5!U§.getSubAnimation("yell").getFrame(0));
         if(this.§-b§ || this.§!!+§ || param2)
         {
            §20§.§8F§(param1,this.§<!$§);
         }
         else
         {
            §20§.§8F§(param1,this.§<!$§,§;!G§);
         }
      }
      
      public function §?i§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§;n§ > 0)
         {
            this.§;n§ -= param1;
            if(this.§;n§ <= 0)
            {
               ++this.§]!S§;
               this.§@!?§ *= 0.4;
               if(!this.§-b§ && this.§]!S§ < 2)
               {
                  if(this.§]!S§ > 1 && this.§@!?§ < -1)
                  {
                     this.§@!?§ = -1;
                  }
                  this.§6t§ = this.§@!?§;
                  this.§;n§ = §@6§;
                  this.§;n§ *= Math.abs(this.§6t§) / 2;
                  this.§[!$§ = this.§;n§;
                  this.§],§ = 0;
                  this.§6!1§ = 0;
               }
               else if(!this.§-b§ && param2)
               {
                  this.§"!J§(2.25);
               }
               else
               {
                  this.§;n§ = 0;
                  this.§"!?§ = 0;
                  this.§],§ = 0;
                  this.§@!?§ = 0;
               }
            }
            else
            {
               if(this.§;n§ >= this.§[!$§ / 2)
               {
                  _loc3_ = (this.§[!$§ - this.§;n§) / (this.§[!$§ / 2);
                  _loc3_ = §,8§.§ !2§(_loc3_);
                  this.§"!?§ = _loc3_ * this.§6t§;
               }
               else
               {
                  _loc3_ = (this.§[!$§ / 2 - this.§;n§) / (this.§[!$§ / 2);
                  _loc3_ = §,8§.§ !2§(_loc3_,false);
                  this.§"!?§ = this.§6t§ + _loc3_ * -this.§6t§;
               }
               this.§],§ = 360 * §,8§.§ !2§((this.§[!$§ - this.§;n§) / this.§[!$§) * this.§6!1§;
            }
            this.§7B§();
         }
         else if(Math.random() * §-3§ < param1 && !this.§-b§ && !this.§!!+§ && !this.§4s§)
         {
            this.§"!J§();
         }
      }
      
      public function §"!J§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§]!S§ = 0;
         this.§;n§ = §@6§;
         this.§"!?§ = 0;
         this.§6t§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§@!?§ = this.§6t§;
         this.§;n§ *= Math.abs(this.§6t§) / 3;
         this.§[!$§ = this.§;n§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§6!1§ = 0;
         }
         else if(this.§;n§ < 350)
         {
            this.§6!1§ = 0;
         }
         else
         {
            this.§6!1§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§6!1§ = Math.random() > 0.5 ? Number(this.§6!1§) : Number(0);
         }
      }
      
      public function §7B§() : void
      {
         this.§;!5§.x = this.§ W§ / §`!O§.§?!O§;
         this.§;!5§.y = (this.§9!9§ + this.§"!?§) / §`!O§.§?!O§;
         this.§;!5§.rotation = this.§],§ / 180 * Math.PI;
      }
      
      public function §'A§() : void
      {
         this.§4s§ = true;
         this.§-b§ = false;
         this.§!!+§ = false;
         this.§]!S§ = 0;
         this.§"8§ = 0;
         this.§;n§ = 0;
         this.§;n§ = 0;
         this.§"!?§ = 0;
         this.§],§ = 0;
         this.§@!?§ = 0;
         this.§6!1§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§ W§) * (param1 - this.§ W§) + (param2 - this.§9!9§) * (param2 - this.§9!9§));
         if(_loc3_ <= this.§2A§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§ W§ >= param3 && this.§ W§ <= param4 && this.§9!9§ >= param1 && this.§9!9§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.§ W§ != param1 || this.§9!9§ != param2)
         {
            _loc3_ = true;
         }
         this.§ W§ = param1;
         this.§9!9§ = param2;
         this.§"8§ = 100;
         this.§7B§();
         if(_loc3_)
         {
            this.§ c§.§#g§();
         }
      }
      
      public function §7!S§() : §4!!§
      {
         return this.§0>§;
      }
      
      public function get §7<§() : Number
      {
         return this.§;n§;
      }
      
      public function get §5!J§() : Number
      {
         return this.§"8§;
      }
      
      public function set §5!J§(param1:Number) : void
      {
         this.§"8§ = param1;
      }
      
      public function get §@]§() : Number
      {
         return this.§+!R§;
      }
      
      public function get §%E§() : Boolean
      {
         return this.§-b§;
      }
      
      public function get radius() : Number
      {
         return this.§2A§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§;!5§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §@]§(param1:Number) : void
      {
         this.§+!R§ = param1;
      }
      
      public function get §7v§() : Number
      {
         return this.§&d§;
      }
      
      public function set §7v§(param1:Number) : void
      {
         this.§&d§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§3&§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§3&§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§ W§;
      }
      
      public function get y() : Number
      {
         return this.§9!9§;
      }
      
      public function get §?K§() : Number
      {
         return this.§!&§;
      }
      
      public function get §%X§() : Number
      {
         return this.§"C§;
      }
   }
}
