package §0!2§
{
   import §#S§.§-$§;
   import §#S§.§6!r§;
   import §3!#§.§5"A§;
   import §7F§.b2Vec2;
   import §=%§.§&-§;
   import §=%§.§7!g§;
   import §=%§.§>"-§;
   import §?7§.Texture;
   import §[x§.§+!m§;
   import §]!v§.§'!=§;
   import §]!v§.Sprite;
   
   public class §;M§
   {
      
      public static const §>!$§:String = "ChannelSlingshot";
      
      public static const § !O§:Number = 900;
      
      public static const §]!V§:Number = 200;
      
      public static const §4_§:Number = 200;
      
      public static const §1"#§:Number = 1500;
      
      public static const §[-§:Number = 5000;
      
      public static const §1F§:Number = 1000;
      
      public static const §4m§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var §"""§:Number;
      
      protected var §5!J§:Number;
      
      protected var §8L§:Number;
      
      protected var §16§:Number;
      
      private var §!!]§:§7!g§;
      
      protected var § !r§:Number;
      
      protected var §-!1§:Number = 1;
      
      private var §`b§:Sprite;
      
      protected var §8"H§:§-$§;
      
      private var §2!E§:§'!=§;
      
      protected var §?!D§:§,!W§;
      
      private var §%i§:Number;
      
      private var §!y§:Boolean = false;
      
      private var §2u§:Boolean = false;
      
      protected var §,!o§:Boolean = false;
      
      private var §<d§:Number;
      
      private var §>[§:Number = 0;
      
      private var § k§:Number = 0;
      
      private var §-";§:Number = 0;
      
      private var §9!j§:Number = 1000;
      
      private var §@A§:Number;
      
      private var §1!s§:Number;
      
      private var §5r§:int;
      
      private var §0n§:Number = 0;
      
      protected var §[!`§:Number;
      
      protected var §-!E§:Number;
      
      private var §>#§:Number = 1;
      
      private var § ,§:Number = 0;
      
      private var §;^§:b2Vec2;
      
      private var §%""§:Number = 1;
      
      public function §;M§(param1:§,!W§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§?!D§ = param1;
         this.§`b§ = param2;
         this.mName = param3;
         this.§!!]§ = §>"-§.§0@§(this.mName).§8d§;
         this.§"""§ = param4;
         this.§5!J§ = param5;
         this.§8L§ = param4;
         this.§16§ = param5;
         this.§ !r§ = 0;
         this.§!y§ = false;
         this.§2u§ = false;
         this.§>[§ = 0;
         this.§5"4§();
         this.§[!`§ = 0;
      }
      
      public function §5"!§() : void
      {
         this.§!y§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§`b§)
         {
            this.§`b§.dispose();
            this.§`b§ = null;
         }
      }
      
      public function §7K§(param1:Number) : void
      {
         if(!this.§2u§ || this.§!y§)
         {
            return;
         }
         if(this.§-!1§ != 0)
         {
            this.§-";§ = 0;
            this.§0n§ = 0;
            this.§ !r§ = 0;
            this.§1!s§ = 0;
            this.§-!1§ = 0;
         }
         param1 = Math.min(param1,this.§<d§);
         this.§"""§ += param1 * (this.§?!D§.§"""§ - this.§"""§) / this.§<d§;
         this.§5!J§ += param1 * (this.§?!D§.§5!J§ - this.§5!J§) / this.§<d§;
         this.§5!J§ -= param1 / 50 * (this.§<d§ / § !O§);
         this.§ !r§ += param1 * (360 - this.§ !r§) / this.§<d§;
         this.§<d§ -= param1;
         if(this.§<d§ <= 0)
         {
            this.§"""§ = this.§?!D§.§"""§;
            this.§5!J§ = this.§?!D§.§5!J§;
            this.§2u§ = false;
            this.§!y§ = true;
            this.§ !r§ = 0;
         }
         this.§]"C§();
      }
      
      public function §3C§() : void
      {
         this.§2u§ = true;
         this.§<d§ = § !O§;
         this.§#!C§(§7!g§.§,M§);
         if(this.§0n§ != 0)
         {
            this.§5!J§ += this.§0n§;
            this.§0n§ = 0;
         }
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§!y§ && this.§[!`§ >= 0)
         {
            if(this.§-!E§ > this.§?!D§.§^!"§.§>9§.§"p§)
            {
               this.applyGravity(this.§?!D§.§^!"§.§>9§.§"p§ - this.§-!E§);
               this.§[!`§ = -1;
            }
            this.§[!`§ -= param1;
            if(this.§[!`§ <= 0)
            {
               if(this.§-";§ > 0)
               {
                  this.§[!`§ = this.§-";§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§-!E§))
               {
                  _loc2_ = this.§?!D§.§^!"§.objects.§6!1§(this.§"""§,this.§-!E§);
               }
               if(_loc2_ < 0)
               {
                  if(this.applyGravity(param1 / 100))
                  {
                     this.§[!`§ = -1;
                  }
                  else
                  {
                     this.§[!`§ = 0;
                  }
               }
               else if(!this.§?!D§.§^!"§.objects.§ §(_loc2_).§=!D§)
               {
                  this.§,!o§ = false;
                  this.§[!`§ = -1;
               }
               else if(this.§?!D§.§^!"§.objects.§ §(_loc2_).§!!b§())
               {
                  this.§,!o§ = false;
                  this.§[!`§ = 2000;
               }
               else
               {
                  this.§[!`§ = 500;
               }
            }
         }
      }
      
      public function applyGravity(param1:Number) : Boolean
      {
         this.§5!J§ += param1;
         this.§-!E§ += param1;
         if(this.§-!E§ > this.§?!D§.§^!"§.§>9§.§"p§)
         {
            param1 = this.§-!E§ - this.§?!D§.§^!"§.§>9§.§"p§;
            this.§5!J§ -= param1;
            this.§-!E§ -= param1;
            this.§]"C§();
            return true;
         }
         this.§]"C§();
         return false;
      }
      
      public function §5"4§() : void
      {
         var _loc1_:§&-§ = §>"-§.§0@§(this.mName).shape;
         if(_loc1_.§<L§() == §&-§.§9!m§)
         {
            this.§;^§ = _loc1_.§-!r§()[0];
            this.§%i§ = _loc1_.§=!c§;
         }
         else if(_loc1_.§<L§() == §&-§.§`!Z§)
         {
            this.§;^§ = new b2Vec2(0,0);
            this.§%i§ = 1.5;
         }
         this.§8"H§ = this.§?!D§.§^!"§.animationManager.getAnimation(this.mName);
         if(!this.§8"H§)
         {
            this.§9M§(null);
         }
         else
         {
            this.§9M§(this.§8"H§.getFrame(0));
         }
      }
      
      public function §9M§(param1:§6!r§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§?!D§.§]!M§.textureManager.§^!k§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§2!E§ == null)
         {
            this.§2!E§ = new §'!=§(_loc2_);
            this.§`b§.addChild(this.§2!E§);
         }
         else
         {
            this.§2!E§.texture = _loc2_;
         }
         if(param1)
         {
            this.§2!E§.x = -param1.pivotX - this.§;^§.x / §5"L§.§@>§;
            this.§2!E§.y = -param1.pivotY - this.§;^§.y / §5"L§.§@>§;
         }
         else
         {
            this.§2!E§.x = -this.§2!E§.width / 2;
            this.§2!E§.y = -this.§2!E§.height / 2;
         }
         this.§2!E§.scaleX = _loc3_;
         this.§2!E§.scaleY = _loc3_;
         this.§]"C§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.updateGroundControl(param1);
         if(this.§2u§)
         {
            this.§-";§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§4!>§(param1);
            this.§2B§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§!!2§(param1,param2);
            }
         }
      }
      
      public function §4!>§(param1:Number) : void
      {
         if(this.§>[§ > 0)
         {
            this.§>[§ -= param1;
            if(this.§>[§ <= 0)
            {
               this.§^g§();
            }
         }
         else if(this.§ k§ <= 0 && Math.random() * §1"#§ < param1 && this.§?!D§.mSlingShotState)
         {
            this.§9"$§();
         }
      }
      
      public function §^g§() : void
      {
         this.§>[§ = 0;
         this.§9M§(this.§8"H§.getFrame(0));
      }
      
      public function §9"$§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§>[§ = §]!V§;
         this.§9M§(this.§8"H§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §2B§(param1:Number) : void
      {
         if(this.§ k§ > 0)
         {
            this.§ k§ -= param1;
            if(this.§ k§ <= 0)
            {
               this.§&!a§();
            }
         }
         else if(this.§>[§ <= 0 && Math.random() * §[-§ < param1)
         {
            this.§#!C§();
         }
      }
      
      public function §&!a§() : void
      {
         this.§ k§ = 0;
         this.§9M§(this.§8"H§.getFrame(0));
      }
      
      public function §#!C§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§ k§ > 0)
         {
            this.§&!a§();
         }
         if(this.§>[§ > 0)
         {
            this.§^g§();
         }
         if(param1 < 0)
         {
            param1 = §7!g§.§25§;
         }
         this.§ k§ = §4_§;
         this.§9M§(this.§8"H§.getSubAnimation("yell").getFrame(0));
         if(this.§!y§ || this.§2u§ || param2)
         {
            §5"A§.§9L§(param1,this.§!!]§);
         }
         else
         {
            §5"A§.§9L§(param1,this.§!!]§,§>!$§);
         }
      }
      
      public function §!!2§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§-";§ > 0)
         {
            this.§-";§ -= param1;
            if(this.§-";§ <= 0)
            {
               ++this.§5r§;
               this.§1!s§ *= 0.4;
               if(!this.§!y§ && this.§5r§ < 2)
               {
                  if(this.§5r§ > 1 && this.§1!s§ < -1)
                  {
                     this.§1!s§ = -1;
                  }
                  this.§@A§ = this.§1!s§;
                  this.§-";§ = §4m§;
                  this.§-";§ *= Math.abs(this.§@A§) / 2;
                  this.§9!j§ = this.§-";§;
                  this.§ !r§ = 0;
                  this.§-!1§ = 0;
               }
               else if(!this.§!y§ && param2)
               {
                  this.§6e§(2.25);
               }
               else
               {
                  this.§-";§ = 0;
                  this.§0n§ = 0;
                  this.§ !r§ = 0;
                  this.§1!s§ = 0;
               }
            }
            else
            {
               if(this.§-";§ >= this.§9!j§ / 2)
               {
                  _loc3_ = (this.§9!j§ - this.§-";§) / (this.§9!j§ / 2);
                  _loc3_ = §+!m§.§'"3§(_loc3_);
                  this.§0n§ = _loc3_ * this.§@A§;
               }
               else
               {
                  _loc3_ = (this.§9!j§ / 2 - this.§-";§) / (this.§9!j§ / 2);
                  _loc3_ = §+!m§.§'"3§(_loc3_,false);
                  this.§0n§ = this.§@A§ + _loc3_ * -this.§@A§;
               }
               this.§ !r§ = 360 * §+!m§.§'"3§((this.§9!j§ - this.§-";§) / this.§9!j§) * this.§-!1§;
            }
            this.§]"C§();
         }
         else if(Math.random() * §1F§ < param1 && !this.§!y§ && !this.§2u§ && !this.§,!o§)
         {
            this.§6e§();
         }
      }
      
      public function §6e§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§5r§ = 0;
         this.§-";§ = §4m§;
         this.§0n§ = 0;
         this.§@A§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§1!s§ = this.§@A§;
         this.§-";§ *= Math.abs(this.§@A§) / 3;
         this.§9!j§ = this.§-";§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§-!1§ = 0;
         }
         else if(this.§-";§ < 350)
         {
            this.§-!1§ = 0;
         }
         else
         {
            this.§-!1§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§-!1§ = Math.random() > 0.5 ? Number(this.§-!1§) : Number(0);
         }
      }
      
      public function §]"C§() : void
      {
         this.§`b§.x = this.§"""§ / §5"L§.§@>§;
         this.§`b§.y = (this.§5!J§ + this.§0n§) / §5"L§.§@>§;
         this.§`b§.rotation = this.§ !r§ / 180 * Math.PI;
      }
      
      public function §try §() : void
      {
         this.§,!o§ = true;
         this.§!y§ = false;
         this.§2u§ = false;
         this.§5r§ = 0;
         this.§[!`§ = 0;
         this.§-";§ = 0;
         this.§-";§ = 0;
         this.§0n§ = 0;
         this.§ !r§ = 0;
         this.§1!s§ = 0;
         this.§-!1§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§"""§) * (param1 - this.§"""§) + (param2 - this.§5!J§) * (param2 - this.§5!J§));
         if(_loc3_ <= this.§%i§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§"""§ >= param3 && this.§"""§ <= param4 && this.§5!J§ >= param1 && this.§5!J§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.§"""§ != param1 || this.§5!J§ != param2)
         {
            _loc3_ = true;
         }
         this.§"""§ = param1;
         this.§5!J§ = param2;
         this.§[!`§ = 100;
         this.§]"C§();
         if(_loc3_)
         {
            this.§?!D§.§>"D§();
         }
      }
      
      public function §@!y§() : §'!=§
      {
         return this.§2!E§;
      }
      
      public function get §<!E§() : Number
      {
         return this.§-";§;
      }
      
      public function get §,"%§() : Number
      {
         return this.§[!`§;
      }
      
      public function set §,"%§(param1:Number) : void
      {
         this.§[!`§ = param1;
      }
      
      public function get §="A§() : Number
      {
         return this.§>#§;
      }
      
      public function get §;!,§() : Boolean
      {
         return this.§!y§;
      }
      
      public function get radius() : Number
      {
         return this.§%i§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§`b§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §="A§(param1:Number) : void
      {
         this.§>#§ = param1;
      }
      
      public function get §`!w§() : Number
      {
         return this.§ ,§;
      }
      
      public function set §`!w§(param1:Number) : void
      {
         this.§ ,§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§%""§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§%""§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§"""§;
      }
      
      public function get y() : Number
      {
         return this.§5!J§;
      }
      
      public function get §3"F§() : Number
      {
         return this.§8L§;
      }
      
      public function get §6&§() : Number
      {
         return this.§16§;
      }
      
      public function §7Q§() : Boolean
      {
         return this.§,!o§;
      }
   }
}
