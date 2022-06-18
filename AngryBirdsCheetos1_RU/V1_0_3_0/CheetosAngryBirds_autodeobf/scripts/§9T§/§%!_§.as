package §9T§
{
   import §'G§.§2!]§;
   import §'G§.§5e§;
   import §'G§.§6!]§;
   import §+a§.Texture;
   import §7!P§.§%=§;
   import §9!a§.§"z§;
   import §9!a§.Sprite;
   import §=0§.§@_§;
   import §=0§.§^L§;
   import §[>§.§`,§;
   import §[R§.b2Vec2;
   
   public class §%!_§
   {
      
      public static const §9!;§:String = "ChannelSlingshot";
      
      public static const §extends§:Number = 900;
      
      public static const §9V§:Number = 200;
      
      public static const §%w§:Number = 200;
      
      public static const §#U§:Number = 1500;
      
      public static const §2!X§:Number = 5000;
      
      public static const §5!B§:Number = 1000;
      
      public static const §<!M§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var §!-§:Number;
      
      protected var §[4§:Number;
      
      protected var §9r§:Number;
      
      protected var §4W§:Number;
      
      private var §9!B§:§5e§;
      
      protected var §0x§:Number;
      
      protected var §'!$§:Number = 1;
      
      private var §"$§:Sprite;
      
      protected var §]!,§:§@_§;
      
      private var § F§:§"z§;
      
      protected var §&i§:§#!4§;
      
      private var §7]§:Number;
      
      private var §,!-§:Boolean = false;
      
      private var §6I§:Boolean = false;
      
      protected var §0G§:Boolean = false;
      
      private var §?!A§:Number;
      
      private var §[!W§:Number = 0;
      
      private var §]!V§:Number = 0;
      
      private var §]1§:Number = 0;
      
      private var §<G§:Number = 1000;
      
      private var §`!S§:Number;
      
      private var §?e§:Number;
      
      private var §!%§:int;
      
      private var §+z§:Number = 0;
      
      protected var §,r§:Number;
      
      protected var §[!Y§:Number;
      
      private var §@!X§:Number = 1;
      
      private var §?!'§:Number = 0;
      
      private var §^!A§:b2Vec2;
      
      private var §;!X§:Number = 1;
      
      public function §%!_§(param1:§#!4§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§&i§ = param1;
         this.§"$§ = param2;
         this.mName = param3;
         this.§9!B§ = §6!]§.§'!Q§(this.mName).§]_§;
         this.§!-§ = param4;
         this.§[4§ = param5;
         this.§9r§ = param4;
         this.§4W§ = param5;
         this.§0x§ = 0;
         this.§,!-§ = false;
         this.§6I§ = false;
         this.§[!W§ = 0;
         this.§`!@§();
         this.§,r§ = 0;
      }
      
      public function §0^§() : void
      {
         this.§,!-§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§"$§)
         {
            this.§"$§.dispose();
            this.§"$§ = null;
         }
      }
      
      public function §>L§(param1:Number) : void
      {
         if(!this.§6I§ || this.§,!-§)
         {
            return;
         }
         if(this.§'!$§ != 0)
         {
            this.§]1§ = 0;
            this.§+z§ = 0;
            this.§0x§ = 0;
            this.§?e§ = 0;
            this.§'!$§ = 0;
         }
         param1 = Math.min(param1,this.§?!A§);
         this.§!-§ += param1 * (this.§&i§.§!-§ - this.§!-§) / this.§?!A§;
         this.§[4§ += param1 * (this.§&i§.§[4§ - this.§[4§) / this.§?!A§;
         this.§[4§ -= param1 / 50 * (this.§?!A§ / §extends§);
         this.§0x§ += param1 * (360 - this.§0x§) / this.§?!A§;
         this.§?!A§ -= param1;
         if(this.§?!A§ <= 0)
         {
            this.§!-§ = this.§&i§.§!-§;
            this.§[4§ = this.§&i§.§[4§;
            this.§6I§ = false;
            this.§,!-§ = true;
            this.§0x§ = 0;
         }
         this.§'!L§();
      }
      
      public function §37§() : void
      {
         this.§6I§ = true;
         this.§?!A§ = §extends§;
         this.§[!G§(§5e§.§1W§);
         if(this.§+z§ != 0)
         {
            this.§[4§ += this.§+z§;
            this.§+z§ = 0;
         }
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§,!-§ && this.§,r§ >= 0)
         {
            if(this.§[!Y§ > this.§&i§.§&?§.§5!V§.§?!$§)
            {
               this.applyGravity(this.§&i§.§&?§.§5!V§.§?!$§ - this.§[!Y§);
               this.§,r§ = -1;
            }
            this.§,r§ -= param1;
            if(this.§,r§ <= 0)
            {
               if(this.§]1§ > 0)
               {
                  this.§,r§ = this.§]1§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§[!Y§))
               {
                  _loc2_ = this.§&i§.§&?§.objects.§]!U§(this.§!-§,this.§[!Y§);
               }
               if(_loc2_ < 0)
               {
                  if(this.applyGravity(param1 / 100))
                  {
                     this.§,r§ = -1;
                  }
                  else
                  {
                     this.§,r§ = 0;
                  }
               }
               else if(!this.§&i§.§&?§.objects.§+D§(_loc2_).§-!K§)
               {
                  this.§0G§ = false;
                  this.§,r§ = -1;
               }
               else if(this.§&i§.§&?§.objects.§+D§(_loc2_).§'[§())
               {
                  this.§0G§ = false;
                  this.§,r§ = 2000;
               }
               else
               {
                  this.§,r§ = 500;
               }
            }
         }
      }
      
      public function applyGravity(param1:Number) : Boolean
      {
         this.§[4§ += param1;
         this.§[!Y§ += param1;
         if(this.§[!Y§ > this.§&i§.§&?§.§5!V§.§?!$§)
         {
            param1 = this.§[!Y§ - this.§&i§.§&?§.§5!V§.§?!$§;
            this.§[4§ -= param1;
            this.§[!Y§ -= param1;
            this.§'!L§();
            return true;
         }
         this.§'!L§();
         return false;
      }
      
      public function §`!@§() : void
      {
         var _loc1_:§2!]§ = §6!]§.§'!Q§(this.mName).shape;
         if(_loc1_.§8+§() == §2!]§.§[r§)
         {
            this.§^!A§ = _loc1_.§?<§()[0];
            this.§7]§ = _loc1_.§!!V§;
         }
         else if(_loc1_.§8+§() == §2!]§.§6!$§)
         {
            this.§^!A§ = new b2Vec2(0,0);
            this.§7]§ = 1.5;
         }
         this.§]!,§ = this.§&i§.§&?§.§'!;§.§#!E§(this.mName);
         if(!this.§]!,§)
         {
            this.§2!%§(null);
         }
         else
         {
            this.§2!%§(this.§]!,§.getFrame(0));
         }
      }
      
      public function §2!%§(param1:§^L§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§&i§.§+A§.§!c§.§^!W§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§ F§ == null)
         {
            this.§ F§ = new §"z§(_loc2_);
            this.§"$§.addChild(this.§ F§);
         }
         else
         {
            this.§ F§.texture = _loc2_;
         }
         if(param1)
         {
            this.§ F§.x = -param1.pivotX - this.§^!A§.x / §=!^§.§4#§;
            this.§ F§.y = -param1.pivotY - this.§^!A§.y / §=!^§.§4#§;
         }
         else
         {
            this.§ F§.x = -this.§ F§.width / 2;
            this.§ F§.y = -this.§ F§.height / 2;
         }
         this.§ F§.scaleX = _loc3_;
         this.§ F§.scaleY = _loc3_;
         this.§'!L§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.updateGroundControl(param1);
         if(this.§6I§)
         {
            this.§]1§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§+x§(param1);
            this.§#!H§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§`"§(param1,param2);
            }
         }
      }
      
      public function §+x§(param1:Number) : void
      {
         if(this.§[!W§ > 0)
         {
            this.§[!W§ -= param1;
            if(this.§[!W§ <= 0)
            {
               this.§3q§();
            }
         }
         else if(this.§]!V§ <= 0 && Math.random() * §#U§ < param1 && this.§&i§.mSlingShotState)
         {
            this.§77§();
         }
      }
      
      public function §3q§() : void
      {
         this.§[!W§ = 0;
         this.§2!%§(this.§]!,§.getFrame(0));
      }
      
      public function §77§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§[!W§ = §9V§;
         this.§2!%§(this.§]!,§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §#!H§(param1:Number) : void
      {
         if(this.§]!V§ > 0)
         {
            this.§]!V§ -= param1;
            if(this.§]!V§ <= 0)
            {
               this.§^P§();
            }
         }
         else if(this.§[!W§ <= 0 && Math.random() * §2!X§ < param1)
         {
            this.§[!G§();
         }
      }
      
      public function §^P§() : void
      {
         this.§]!V§ = 0;
         this.§2!%§(this.§]!,§.getFrame(0));
      }
      
      public function §[!G§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§]!V§ > 0)
         {
            this.§^P§();
         }
         if(this.§[!W§ > 0)
         {
            this.§3q§();
         }
         if(param1 < 0)
         {
            param1 = §5e§.§]A§;
         }
         this.§]!V§ = §%w§;
         this.§2!%§(this.§]!,§.getSubAnimation("yell").getFrame(0));
         if(this.§,!-§ || this.§6I§ || param2)
         {
            §`,§.§@![§(param1,this.§9!B§);
         }
         else
         {
            §`,§.§@![§(param1,this.§9!B§,§9!;§);
         }
      }
      
      public function §`"§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§]1§ > 0)
         {
            this.§]1§ -= param1;
            if(this.§]1§ <= 0)
            {
               ++this.§!%§;
               this.§?e§ *= 0.4;
               if(!this.§,!-§ && this.§!%§ < 2)
               {
                  if(this.§!%§ > 1 && this.§?e§ < -1)
                  {
                     this.§?e§ = -1;
                  }
                  this.§`!S§ = this.§?e§;
                  this.§]1§ = §<!M§;
                  this.§]1§ *= Math.abs(this.§`!S§) / 2;
                  this.§<G§ = this.§]1§;
                  this.§0x§ = 0;
                  this.§'!$§ = 0;
               }
               else if(!this.§,!-§ && param2)
               {
                  this.§@q§(2.25);
               }
               else
               {
                  this.§]1§ = 0;
                  this.§+z§ = 0;
                  this.§0x§ = 0;
                  this.§?e§ = 0;
               }
            }
            else
            {
               if(this.§]1§ >= this.§<G§ / 2)
               {
                  _loc3_ = (this.§<G§ - this.§]1§) / (this.§<G§ / 2);
                  _loc3_ = §%=§.§9h§(_loc3_);
                  this.§+z§ = _loc3_ * this.§`!S§;
               }
               else
               {
                  _loc3_ = (this.§<G§ / 2 - this.§]1§) / (this.§<G§ / 2);
                  _loc3_ = §%=§.§9h§(_loc3_,false);
                  this.§+z§ = this.§`!S§ + _loc3_ * -this.§`!S§;
               }
               this.§0x§ = 360 * §%=§.§9h§((this.§<G§ - this.§]1§) / this.§<G§) * this.§'!$§;
            }
            this.§'!L§();
         }
         else if(Math.random() * §5!B§ < param1 && !this.§,!-§ && !this.§6I§ && !this.§0G§)
         {
            this.§@q§();
         }
      }
      
      public function §@q§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§!%§ = 0;
         this.§]1§ = §<!M§;
         this.§+z§ = 0;
         this.§`!S§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§?e§ = this.§`!S§;
         this.§]1§ *= Math.abs(this.§`!S§) / 3;
         this.§<G§ = this.§]1§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§'!$§ = 0;
         }
         else if(this.§]1§ < 350)
         {
            this.§'!$§ = 0;
         }
         else
         {
            this.§'!$§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§'!$§ = Math.random() > 0.5 ? Number(this.§'!$§) : Number(0);
         }
      }
      
      public function §'!L§() : void
      {
         this.§"$§.x = this.§!-§ / §=!^§.§4#§;
         this.§"$§.y = (this.§[4§ + this.§+z§) / §=!^§.§4#§;
         this.§"$§.rotation = this.§0x§ / 180 * Math.PI;
      }
      
      public function §7g§() : void
      {
         this.§0G§ = true;
         this.§,!-§ = false;
         this.§6I§ = false;
         this.§!%§ = 0;
         this.§,r§ = 0;
         this.§]1§ = 0;
         this.§]1§ = 0;
         this.§+z§ = 0;
         this.§0x§ = 0;
         this.§?e§ = 0;
         this.§'!$§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§!-§) * (param1 - this.§!-§) + (param2 - this.§[4§) * (param2 - this.§[4§));
         if(_loc3_ <= this.§7]§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§!-§ >= param3 && this.§!-§ <= param4 && this.§[4§ >= param1 && this.§[4§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.§!-§ != param1 || this.§[4§ != param2)
         {
            _loc3_ = true;
         }
         this.§!-§ = param1;
         this.§[4§ = param2;
         this.§,r§ = 100;
         this.§'!L§();
         if(_loc3_)
         {
            this.§&i§.§4!!§();
         }
      }
      
      public function §3!$§() : §"z§
      {
         return this.§ F§;
      }
      
      public function get §<6§() : Number
      {
         return this.§]1§;
      }
      
      public function get §>Q§() : Number
      {
         return this.§,r§;
      }
      
      public function set §>Q§(param1:Number) : void
      {
         this.§,r§ = param1;
      }
      
      public function get §`E§() : Number
      {
         return this.§@!X§;
      }
      
      public function get § n§() : Boolean
      {
         return this.§,!-§;
      }
      
      public function get radius() : Number
      {
         return this.§7]§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§"$§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §`E§(param1:Number) : void
      {
         this.§@!X§ = param1;
      }
      
      public function get §@!S§() : Number
      {
         return this.§?!'§;
      }
      
      public function set §@!S§(param1:Number) : void
      {
         this.§?!'§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§;!X§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§;!X§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§!-§;
      }
      
      public function get y() : Number
      {
         return this.§[4§;
      }
      
      public function get §@!a§() : Number
      {
         return this.§9r§;
      }
      
      public function get §6F§() : Number
      {
         return this.§4W§;
      }
   }
}
