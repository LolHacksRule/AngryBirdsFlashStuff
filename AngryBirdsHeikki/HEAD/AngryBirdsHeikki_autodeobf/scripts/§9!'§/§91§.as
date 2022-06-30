package §9!'§
{
   import § !$§.§>C§;
   import § A§.§68§;
   import § A§.§8z§;
   import § A§.§9c§;
   import §!!S§.Texture;
   import §&!b§.§ !+§;
   import §+!]§.§+!=§;
   import §+!]§.§6H§;
   import §6!;§.§!>§;
   import §6!;§.Sprite;
   import §`!^§.b2Vec2;
   
   public class §91§
   {
      
      public static const §4!a§:String = "ChannelSlingshot";
      
      public static const §8!3§:Number = 900;
      
      public static const §6!N§:Number = 200;
      
      public static const § ;§:Number = 200;
      
      public static const §#x§:Number = 1500;
      
      public static const §8!`§:Number = 5000;
      
      public static const §>!J§:Number = 1000;
      
      public static const § !7§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var §5T§:Number;
      
      protected var §![§:Number;
      
      protected var §24§:Number;
      
      protected var §]!g§:Number;
      
      private var §1t§:§68§;
      
      protected var §+U§:Number;
      
      protected var §[C§:Number = 1;
      
      private var §4!B§:Sprite;
      
      protected var §&b§:§6H§;
      
      private var §>!Q§:§!>§;
      
      protected var §!!f§:§@!U§;
      
      private var §"T§:Number;
      
      private var §implements§:Boolean = false;
      
      private var §@Z§:Boolean = false;
      
      protected var §%!1§:Boolean = false;
      
      private var §3=§:Number;
      
      private var §!m§:Number = 0;
      
      private var §"!b§:Number = 0;
      
      private var §[5§:Number = 0;
      
      private var §<M§:Number = 1000;
      
      private var §4L§:Number;
      
      private var §8!]§:Number;
      
      private var §]`§:int;
      
      private var §;j§:Number = 0;
      
      protected var §<T§:Number;
      
      protected var §02§:Number;
      
      private var §-!=§:Number = 1;
      
      private var §,V§:Number = 0;
      
      private var §!2§:b2Vec2;
      
      private var §8=§:Number = 1;
      
      public function §91§(param1:§@!U§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§!!f§ = param1;
         this.§4!B§ = param2;
         this.mName = param3;
         this.§1t§ = §8z§.§3Z§(this.mName).§<f§;
         this.§5T§ = param4;
         this.§![§ = param5;
         this.§24§ = param4;
         this.§]!g§ = param5;
         this.§+U§ = 0;
         this.§implements§ = false;
         this.§@Z§ = false;
         this.§!m§ = 0;
         this.§'_§();
         this.§<T§ = 0;
      }
      
      public function §-!$§() : void
      {
         this.§implements§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§4!B§)
         {
            this.§4!B§.dispose();
            this.§4!B§ = null;
         }
      }
      
      public function §-@§(param1:Number) : void
      {
         if(!this.§@Z§ || this.§implements§)
         {
            return;
         }
         if(this.§[C§ != 0)
         {
            this.§[5§ = 0;
            this.§;j§ = 0;
            this.§+U§ = 0;
            this.§8!]§ = 0;
            this.§[C§ = 0;
         }
         param1 = Math.min(param1,this.§3=§);
         this.§5T§ += param1 * (this.§!!f§.§5T§ - this.§5T§) / this.§3=§;
         this.§![§ += param1 * (this.§!!f§.§![§ - this.§![§) / this.§3=§;
         this.§![§ -= param1 / 50 * (this.§3=§ / §8!3§);
         this.§+U§ += param1 * (360 - this.§+U§) / this.§3=§;
         this.§3=§ -= param1;
         if(this.§3=§ <= 0)
         {
            this.§5T§ = this.§!!f§.§5T§;
            this.§![§ = this.§!!f§.§![§;
            this.§@Z§ = false;
            this.§implements§ = true;
            this.§+U§ = 0;
         }
         this.§>4§();
      }
      
      public function §[!'§() : void
      {
         this.§@Z§ = true;
         this.§3=§ = §8!3§;
         this.§<!1§(§68§.§&i§);
         if(this.§;j§ != 0)
         {
            this.§![§ += this.§;j§;
            this.§;j§ = 0;
         }
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§implements§ && this.§<T§ >= 0)
         {
            if(this.§02§ > this.§!!f§.§]B§.§%!E§.§3m§)
            {
               this.applyGravity(this.§!!f§.§]B§.§%!E§.§3m§ - this.§02§);
               this.§<T§ = -1;
            }
            this.§<T§ -= param1;
            if(this.§<T§ <= 0)
            {
               if(this.§[5§ > 0)
               {
                  this.§<T§ = this.§[5§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§02§))
               {
                  _loc2_ = this.§!!f§.§]B§.objects.§1H§(this.§5T§,this.§02§);
               }
               if(_loc2_ < 0)
               {
                  if(this.applyGravity(param1 / 100))
                  {
                     this.§<T§ = -1;
                  }
                  else
                  {
                     this.§<T§ = 0;
                  }
               }
               else if(!this.§!!f§.§]B§.objects.§]I§(_loc2_).§+y§)
               {
                  this.§%!1§ = false;
                  this.§<T§ = -1;
               }
               else if(this.§!!f§.§]B§.objects.§]I§(_loc2_).§&n§())
               {
                  this.§%!1§ = false;
                  this.§<T§ = 2000;
               }
               else
               {
                  this.§<T§ = 500;
               }
            }
         }
      }
      
      public function applyGravity(param1:Number) : Boolean
      {
         this.§![§ += param1;
         this.§02§ += param1;
         if(this.§02§ > this.§!!f§.§]B§.§%!E§.§3m§)
         {
            param1 = this.§02§ - this.§!!f§.§]B§.§%!E§.§3m§;
            this.§![§ -= param1;
            this.§02§ -= param1;
            this.§>4§();
            return true;
         }
         this.§>4§();
         return false;
      }
      
      public function §'_§() : void
      {
         var _loc1_:§9c§ = §8z§.§3Z§(this.mName).shape;
         if(_loc1_.§40§() == §9c§.§+!%§)
         {
            this.§!2§ = _loc1_.§8,§()[0];
            this.§"T§ = _loc1_.§@S§;
         }
         else if(_loc1_.§40§() == §9c§.§@!0§)
         {
            this.§!2§ = new b2Vec2(0,0);
            this.§"T§ = 1.5;
         }
         this.§&b§ = this.§!!f§.§]B§.§2!]§.§>n§(this.mName);
         if(!this.§&b§)
         {
            this.setPivotTexture(null);
         }
         else
         {
            this.setPivotTexture(this.§&b§.getFrame(0));
         }
      }
      
      public function setPivotTexture(param1:§+!=§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§!!f§.§'#§.textureManager.§>q§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§>!Q§ == null)
         {
            this.§>!Q§ = new §!>§(_loc2_);
            this.§4!B§.addChild(this.§>!Q§);
         }
         else
         {
            this.§>!Q§.texture = _loc2_;
         }
         if(param1)
         {
            this.§>!Q§.x = -param1.pivotX - this.§!2§.x / §0!%§.§"m§;
            this.§>!Q§.y = -param1.pivotY - this.§!2§.y / §0!%§.§"m§;
         }
         else
         {
            this.§>!Q§.x = -this.§>!Q§.width / 2;
            this.§>!Q§.y = -this.§>!Q§.height / 2;
         }
         this.§>!Q§.scaleX = _loc3_;
         this.§>!Q§.scaleY = _loc3_;
         this.§>4§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.updateGroundControl(param1);
         if(this.§@Z§)
         {
            this.§[5§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§^!V§(param1);
            this.§%I§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§=!V§(param1,param2);
            }
         }
      }
      
      public function §^!V§(param1:Number) : void
      {
         if(this.§!m§ > 0)
         {
            this.§!m§ -= param1;
            if(this.§!m§ <= 0)
            {
               this.§=v§();
            }
         }
         else if(this.§"!b§ <= 0 && Math.random() * §#x§ < param1 && this.§!!f§.mSlingShotState)
         {
            this.§;!L§();
         }
      }
      
      public function §=v§() : void
      {
         this.§!m§ = 0;
         this.setPivotTexture(this.§&b§.getFrame(0));
      }
      
      public function §;!L§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§!m§ = §6!N§;
         this.setPivotTexture(this.§&b§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §%I§(param1:Number) : void
      {
         if(this.§"!b§ > 0)
         {
            this.§"!b§ -= param1;
            if(this.§"!b§ <= 0)
            {
               this.§!9§();
            }
         }
         else if(this.§!m§ <= 0 && Math.random() * §8!`§ < param1)
         {
            this.§<!1§();
         }
      }
      
      public function §!9§() : void
      {
         this.§"!b§ = 0;
         this.setPivotTexture(this.§&b§.getFrame(0));
      }
      
      public function §<!1§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§"!b§ > 0)
         {
            this.§!9§();
         }
         if(this.§!m§ > 0)
         {
            this.§=v§();
         }
         if(param1 < 0)
         {
            param1 = §68§.§8!X§;
         }
         this.§"!b§ = § ;§;
         this.setPivotTexture(this.§&b§.getSubAnimation("yell").getFrame(0));
         if(this.§implements§ || this.§@Z§ || param2)
         {
            §>C§.§-!;§(param1,this.§1t§);
         }
         else
         {
            §>C§.§-!;§(param1,this.§1t§,§4!a§);
         }
      }
      
      public function §=!V§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§[5§ > 0)
         {
            this.§[5§ -= param1;
            if(this.§[5§ <= 0)
            {
               ++this.§]`§;
               this.§8!]§ *= 0.4;
               if(!this.§implements§ && this.§]`§ < 2)
               {
                  if(this.§]`§ > 1 && this.§8!]§ < -1)
                  {
                     this.§8!]§ = -1;
                  }
                  this.§4L§ = this.§8!]§;
                  this.§[5§ = § !7§;
                  this.§[5§ *= Math.abs(this.§4L§) / 2;
                  this.§<M§ = this.§[5§;
                  this.§+U§ = 0;
                  this.§[C§ = 0;
               }
               else if(!this.§implements§ && param2)
               {
                  this.§[^§(2.25);
               }
               else
               {
                  this.§[5§ = 0;
                  this.§;j§ = 0;
                  this.§+U§ = 0;
                  this.§8!]§ = 0;
               }
            }
            else
            {
               if(this.§[5§ >= this.§<M§ / 2)
               {
                  _loc3_ = (this.§<M§ - this.§[5§) / (this.§<M§ / 2);
                  _loc3_ = § !+§.§?%§(_loc3_);
                  this.§;j§ = _loc3_ * this.§4L§;
               }
               else
               {
                  _loc3_ = (this.§<M§ / 2 - this.§[5§) / (this.§<M§ / 2);
                  _loc3_ = § !+§.§?%§(_loc3_,false);
                  this.§;j§ = this.§4L§ + _loc3_ * -this.§4L§;
               }
               this.§+U§ = 360 * § !+§.§?%§((this.§<M§ - this.§[5§) / this.§<M§) * this.§[C§;
            }
            this.§>4§();
         }
         else if(Math.random() * §>!J§ < param1 && !this.§implements§ && !this.§@Z§ && !this.§%!1§)
         {
            this.§[^§();
         }
      }
      
      public function §[^§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§]`§ = 0;
         this.§[5§ = § !7§;
         this.§;j§ = 0;
         this.§4L§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§8!]§ = this.§4L§;
         this.§[5§ *= Math.abs(this.§4L§) / 3;
         this.§<M§ = this.§[5§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§[C§ = 0;
         }
         else if(this.§[5§ < 350)
         {
            this.§[C§ = 0;
         }
         else
         {
            this.§[C§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§[C§ = Math.random() > 0.5 ? Number(this.§[C§) : Number(0);
         }
      }
      
      public function §>4§() : void
      {
         this.§4!B§.x = this.§5T§ / §0!%§.§"m§;
         this.§4!B§.y = (this.§![§ + this.§;j§) / §0!%§.§"m§;
         this.§4!B§.rotation = this.§+U§ / 180 * Math.PI;
      }
      
      public function §5%§() : void
      {
         this.§%!1§ = true;
         this.§implements§ = false;
         this.§@Z§ = false;
         this.§]`§ = 0;
         this.§<T§ = 0;
         this.§[5§ = 0;
         this.§[5§ = 0;
         this.§;j§ = 0;
         this.§+U§ = 0;
         this.§8!]§ = 0;
         this.§[C§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§5T§) * (param1 - this.§5T§) + (param2 - this.§![§) * (param2 - this.§![§));
         if(_loc3_ <= this.§"T§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§5T§ >= param3 && this.§5T§ <= param4 && this.§![§ >= param1 && this.§![§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.§5T§ != param1 || this.§![§ != param2)
         {
            _loc3_ = true;
         }
         this.§5T§ = param1;
         this.§![§ = param2;
         this.§<T§ = 100;
         this.§>4§();
         if(_loc3_)
         {
            this.§!!f§.§3!g§();
         }
      }
      
      public function §`p§() : §!>§
      {
         return this.§>!Q§;
      }
      
      public function get §#J§() : Number
      {
         return this.§[5§;
      }
      
      public function get §#!_§() : Number
      {
         return this.§<T§;
      }
      
      public function set §#!_§(param1:Number) : void
      {
         this.§<T§ = param1;
      }
      
      public function get §7!E§() : Number
      {
         return this.§-!=§;
      }
      
      public function get §>0§() : Boolean
      {
         return this.§implements§;
      }
      
      public function get radius() : Number
      {
         return this.§"T§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§4!B§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §7!E§(param1:Number) : void
      {
         this.§-!=§ = param1;
      }
      
      public function get §#!@§() : Number
      {
         return this.§,V§;
      }
      
      public function set §#!@§(param1:Number) : void
      {
         this.§,V§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§8=§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§8=§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§5T§;
      }
      
      public function get y() : Number
      {
         return this.§![§;
      }
      
      public function get §"w§() : Number
      {
         return this.§24§;
      }
      
      public function get §<z§() : Number
      {
         return this.§]!g§;
      }
      
      public function §"!M§() : Boolean
      {
         return this.§%!1§;
      }
   }
}
