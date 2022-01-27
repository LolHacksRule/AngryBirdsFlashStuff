package §,T§
{
   import §"1§.§-^§;
   import §,]§.Texture;
   import §-!'§.§3!1§;
   import §-!'§.Sprite;
   import §0=§.§2p§;
   import §0E§.§"b§;
   import §0E§.§7u§;
   import §0E§.§<=§;
   import §<A§.§8<§;
   import §<A§.§;V§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class §4!<§
   {
      
      public static const §,r§:String = "ChannelSlingshot";
      
      public static const §<?§:Number = 900;
      
      public static const §5!O§:Number = 200;
      
      public static const §<,§:Number = 200;
      
      public static const §+^§:Number = 1500;
      
      public static const §8!H§:Number = 5000;
      
      public static const §]!-§:Number = 1000;
      
      public static const §%V§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var §+Z§:Number;
      
      protected var §04§:Number;
      
      protected var §,h§:Number;
      
      protected var §1E§:Number;
      
      private var §[$§:§7u§;
      
      protected var §?r§:Number;
      
      protected var §@f§:Number = 1;
      
      private var §46§:Sprite;
      
      protected var §;T§:§;V§;
      
      private var §!!-§:§3!1§;
      
      protected var §]!J§:§@6§;
      
      private var §0@§:Number;
      
      private var §8F§:Boolean = false;
      
      private var §7!'§:Boolean = false;
      
      protected var §>X§:Boolean = false;
      
      private var § =§:Number;
      
      private var §!0§:Number = 0;
      
      private var §!!B§:Number = 0;
      
      private var §4`§:Number = 0;
      
      private var §5!B§:Number = 1000;
      
      private var §'L§:Number;
      
      private var §1b§:Number;
      
      private var §;[§:int;
      
      private var §9!9§:Number = 0;
      
      protected var §@!J§:Number;
      
      protected var §#&§:Number;
      
      private var §!!>§:Number = 1;
      
      private var §&!J§:Number = 0;
      
      private var §3! §:b2Vec2;
      
      private var § R§:Number = 1;
      
      public function §4!<§(param1:§@6§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§]!J§ = param1;
         this.§46§ = param2;
         this.mName = param3;
         this.§[$§ = §"b§.§[M§(this.mName).§ !@§;
         this.§+Z§ = param4;
         this.§04§ = param5;
         this.§,h§ = param4;
         this.§1E§ = param5;
         this.§?r§ = 0;
         this.§8F§ = false;
         this.§7!'§ = false;
         this.§!0§ = 0;
         this.§ !&§();
         this.§@!J§ = 0;
      }
      
      public function §,O§() : void
      {
         this.§8F§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§46§)
         {
            this.§46§.dispose();
            this.§46§ = null;
         }
      }
      
      public function §21§(param1:Number) : void
      {
         if(!this.§7!'§ || this.§8F§)
         {
            return;
         }
         if(this.§@f§ != 0)
         {
            this.§4`§ = 0;
            this.§9!9§ = 0;
            this.§?r§ = 0;
            this.§1b§ = 0;
            this.§@f§ = 0;
         }
         param1 = Math.min(param1,this.§ =§);
         this.§+Z§ += param1 * (this.§]!J§.§+Z§ - this.§+Z§) / this.§ =§;
         this.§04§ += param1 * (this.§]!J§.§04§ - this.§04§) / this.§ =§;
         this.§04§ -= param1 / 50 * (this.§ =§ / §<?§);
         this.§?r§ += param1 * (360 - this.§?r§) / this.§ =§;
         this.§ =§ -= param1;
         if(this.§ =§ <= 0)
         {
            this.§+Z§ = this.§]!J§.§+Z§;
            this.§04§ = this.§]!J§.§04§;
            this.§7!'§ = false;
            this.§8F§ = true;
            this.§?r§ = 0;
         }
         this.§+?§();
      }
      
      public function §+&§() : void
      {
         this.§7!'§ = true;
         this.§ =§ = §<?§;
         this.§41§(§7u§.§1!?§);
         if(this.§9!9§ != 0)
         {
            this.§04§ += this.§9!9§;
            this.§9!9§ = 0;
         }
      }
      
      public function §[f§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§8F§ && this.§@!J§ >= 0)
         {
            if(this.§#&§ > this.§]!J§.§34§.§,y§.§+D§)
            {
               this.§ !5§(this.§]!J§.§34§.§,y§.§+D§ - this.§#&§);
               this.§@!J§ = -1;
            }
            this.§@!J§ -= param1;
            if(this.§@!J§ <= 0)
            {
               if(this.§4`§ > 0)
               {
                  this.§@!J§ = this.§4`§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§#&§))
               {
                  _loc2_ = this.§]!J§.§34§.objects.§"9§(this.§+Z§,this.§#&§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§ !5§(param1 / 100))
                  {
                     this.§@!J§ = -1;
                  }
                  else
                  {
                     this.§@!J§ = 0;
                  }
               }
               else if(!this.§]!J§.§34§.objects.§?!!§(_loc2_).§!I§)
               {
                  this.§>X§ = false;
                  this.§@!J§ = -1;
               }
               else if(this.§]!J§.§34§.objects.§?!!§(_loc2_).§,S§())
               {
                  this.§>X§ = false;
                  this.§@!J§ = 2000;
               }
               else
               {
                  this.§@!J§ = 500;
               }
            }
         }
      }
      
      public function § !5§(param1:Number) : Boolean
      {
         this.§04§ += param1;
         this.§#&§ += param1;
         if(this.§#&§ > this.§]!J§.§34§.§,y§.§+D§)
         {
            param1 = this.§#&§ - this.§]!J§.§34§.§,y§.§+D§;
            this.§04§ -= param1;
            this.§#&§ -= param1;
            this.§+?§();
            return true;
         }
         this.§+?§();
         return false;
      }
      
      public function § !&§() : void
      {
         var _loc1_:§<=§ = §"b§.§[M§(this.mName).shape;
         if(_loc1_.§ K§() == §<=§.§=R§)
         {
            this.§3! § = _loc1_.§]!=§()[0];
            this.§0@§ = _loc1_.§0!A§;
         }
         else if(_loc1_.§ K§() == §<=§.§[g§)
         {
            this.§3! § = new b2Vec2(0,0);
            this.§0@§ = 1.5;
         }
         this.§;T§ = this.§]!J§.§34§.§,F§.getAnimation(this.mName);
         if(!this.§;T§)
         {
            this.§6!4§(null);
         }
         else
         {
            this.§6!4§(this.§;T§.getFrame(0));
         }
      }
      
      public function §6!4§(param1:§8<§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§]!J§.§6O§.textureManager.§"z§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§!!-§ == null)
         {
            this.§!!-§ = new §3!1§(_loc2_);
            this.§46§.addChild(this.§!!-§);
         }
         else
         {
            this.§!!-§.texture = _loc2_;
         }
         if(param1)
         {
            this.§!!-§.x = -param1.pivotX - this.§3! §.x / §[-§.§;5§;
            this.§!!-§.y = -param1.pivotY - this.§3! §.y / §[-§.§;5§;
         }
         else
         {
            this.§!!-§.x = -this.§!!-§.width / 2;
            this.§!!-§.y = -this.§!!-§.height / 2;
         }
         this.§!!-§.scaleX = _loc3_;
         this.§!!-§.scaleY = _loc3_;
         this.§+?§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§[f§(param1);
         if(this.§7!'§)
         {
            this.§4`§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§+@§(param1);
            this.§8! §(param1);
            if(_loc4_ && param3 == true)
            {
               this.§6h§(param1,param2);
            }
         }
      }
      
      public function §+@§(param1:Number) : void
      {
         if(this.§!0§ > 0)
         {
            this.§!0§ -= param1;
            if(this.§!0§ <= 0)
            {
               this.§^e§();
            }
         }
         else if(this.§!!B§ <= 0 && Math.random() * §+^§ < param1 && this.§]!J§.mSlingShotState)
         {
            this.§<y§();
         }
      }
      
      public function §^e§() : void
      {
         this.§!0§ = 0;
         this.§6!4§(this.§;T§.getFrame(0));
      }
      
      public function §<y§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§!0§ = §5!O§;
         this.§6!4§(this.§;T§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §8! §(param1:Number) : void
      {
         if(this.§!!B§ > 0)
         {
            this.§!!B§ -= param1;
            if(this.§!!B§ <= 0)
            {
               this.§"!F§();
            }
         }
         else if(this.§!0§ <= 0 && Math.random() * §8!H§ < param1)
         {
            this.§41§();
         }
      }
      
      public function §"!F§() : void
      {
         this.§!!B§ = 0;
         this.§6!4§(this.§;T§.getFrame(0));
      }
      
      public function §41§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§!!B§ > 0)
         {
            this.§"!F§();
         }
         if(this.§!0§ > 0)
         {
            this.§^e§();
         }
         if(param1 < 0)
         {
            param1 = §7u§.§8J§;
         }
         this.§!!B§ = §<,§;
         this.§6!4§(this.§;T§.getSubAnimation("yell").getFrame(0));
         if(this.§8F§ || this.§7!'§ || param2)
         {
            §2p§.§72§(param1,this.§[$§);
         }
         else
         {
            §2p§.§72§(param1,this.§[$§,§,r§);
         }
      }
      
      public function §6h§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§4`§ > 0)
         {
            this.§4`§ -= param1;
            if(this.§4`§ <= 0)
            {
               ++this.§;[§;
               this.§1b§ *= 0.4;
               if(!this.§8F§ && this.§;[§ < 2)
               {
                  if(this.§;[§ > 1 && this.§1b§ < -1)
                  {
                     this.§1b§ = -1;
                  }
                  this.§'L§ = this.§1b§;
                  this.§4`§ = §%V§;
                  this.§4`§ *= Math.abs(this.§'L§) / 2;
                  this.§5!B§ = this.§4`§;
                  this.§?r§ = 0;
                  this.§@f§ = 0;
               }
               else if(!this.§8F§ && param2)
               {
                  this.§,3§(2.25);
               }
               else
               {
                  this.§4`§ = 0;
                  this.§9!9§ = 0;
                  this.§?r§ = 0;
                  this.§1b§ = 0;
               }
            }
            else
            {
               if(this.§4`§ >= this.§5!B§ / 2)
               {
                  _loc3_ = (this.§5!B§ - this.§4`§) / (this.§5!B§ / 2);
                  _loc3_ = §-^§.§]4§(_loc3_);
                  this.§9!9§ = _loc3_ * this.§'L§;
               }
               else
               {
                  _loc3_ = (this.§5!B§ / 2 - this.§4`§) / (this.§5!B§ / 2);
                  _loc3_ = §-^§.§]4§(_loc3_,false);
                  this.§9!9§ = this.§'L§ + _loc3_ * -this.§'L§;
               }
               this.§?r§ = 360 * §-^§.§]4§((this.§5!B§ - this.§4`§) / this.§5!B§) * this.§@f§;
            }
            this.§+?§();
         }
         else if(Math.random() * §]!-§ < param1 && !this.§8F§ && !this.§7!'§ && !this.§>X§)
         {
            this.§,3§();
         }
      }
      
      public function §,3§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§;[§ = 0;
         this.§4`§ = §%V§;
         this.§9!9§ = 0;
         this.§'L§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§1b§ = this.§'L§;
         this.§4`§ *= Math.abs(this.§'L§) / 3;
         this.§5!B§ = this.§4`§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§@f§ = 0;
         }
         else if(this.§4`§ < 350)
         {
            this.§@f§ = 0;
         }
         else
         {
            this.§@f§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§@f§ = Math.random() > 0.5 ? Number(this.§@f§) : Number(0);
         }
      }
      
      public function §+?§() : void
      {
         this.§46§.x = this.§+Z§ / §[-§.§;5§;
         this.§46§.y = (this.§04§ + this.§9!9§) / §[-§.§;5§;
         this.§46§.rotation = this.§?r§ / 180 * Math.PI;
      }
      
      public function §75§() : void
      {
         this.§>X§ = true;
         this.§8F§ = false;
         this.§7!'§ = false;
         this.§;[§ = 0;
         this.§@!J§ = 0;
         this.§4`§ = 0;
         this.§4`§ = 0;
         this.§9!9§ = 0;
         this.§?r§ = 0;
         this.§1b§ = 0;
         this.§@f§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§+Z§) * (param1 - this.§+Z§) + (param2 - this.§04§) * (param2 - this.§04§));
         if(_loc3_ <= this.§0@§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§+Z§ >= param3 && this.§+Z§ <= param4 && this.§04§ >= param1 && this.§04§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.§+Z§ != param1 || this.§04§ != param2)
         {
            _loc3_ = true;
         }
         this.§+Z§ = param1;
         this.§04§ = param2;
         this.§@!J§ = 100;
         this.§+?§();
         if(_loc3_)
         {
            this.§]!J§.§]+§();
         }
      }
      
      public function §3f§() : §3!1§
      {
         return this.§!!-§;
      }
      
      public function get §?!A§() : Number
      {
         return this.§4`§;
      }
      
      public function get §#4§() : Number
      {
         return this.§@!J§;
      }
      
      public function set §#4§(param1:Number) : void
      {
         this.§@!J§ = param1;
      }
      
      public function get §!u§() : Number
      {
         return this.§!!>§;
      }
      
      public function get §4$§() : Boolean
      {
         return this.§8F§;
      }
      
      public function get radius() : Number
      {
         return this.§0@§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§46§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §!u§(param1:Number) : void
      {
         this.§!!>§ = param1;
      }
      
      public function get §"A§() : Number
      {
         return this.§&!J§;
      }
      
      public function set §"A§(param1:Number) : void
      {
         this.§&!J§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§ R§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§ R§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§+Z§;
      }
      
      public function get y() : Number
      {
         return this.§04§;
      }
      
      public function get §0$§() : Number
      {
         return this.§,h§;
      }
      
      public function get §<+§() : Number
      {
         return this.§1E§;
      }
   }
}
