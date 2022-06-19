package §!X§
{
   import § !G§.§%S§;
   import § `§.§6!=§;
   import § `§.§^1§;
   import §,h§.§+0§;
   import §0!G§.b2Vec2;
   import §]!B§.Texture;
   import §]@§.Sprite;
   import §]@§.§`!C§;
   import §default§.§!A§;
   import §default§.§%<§;
   import §default§.§<A§;
   
   public class §9k§
   {
      
      public static const §8X§:String = "ChannelSlingshot";
      
      public static const §#!<§:Number = 900;
      
      public static const §?r§:Number = 200;
      
      public static const §!!4§:Number = 200;
      
      public static const §9j§:Number = 1500;
      
      public static const §34§:Number = 5000;
      
      public static const §9'§:Number = 1000;
      
      public static const §>§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var §<!Y§:Number;
      
      protected var § l§:Number;
      
      protected var §^G§:Number;
      
      protected var §8D§:Number;
      
      private var §>H§:§!A§;
      
      protected var §50§:Number;
      
      protected var §>!U§:Number = 1;
      
      private var §?!N§:Sprite;
      
      protected var §<,§:§^1§;
      
      private var §#3§:§`!C§;
      
      protected var §8!E§:§#K§;
      
      private var §;!"§:Number;
      
      private var §^D§:Boolean = false;
      
      private var §]![§:Boolean = false;
      
      protected var §9M§:Boolean = false;
      
      private var §&A§:Number;
      
      private var §4!W§:Number = 0;
      
      private var §&P§:Number = 0;
      
      private var §[y§:Number = 0;
      
      private var §]E§:Number = 1000;
      
      private var §?`§:Number;
      
      private var §+R§:Number;
      
      private var §'M§:int;
      
      private var §^$§:Number = 0;
      
      protected var §-!-§:Number;
      
      protected var §<!?§:Number;
      
      private var § !I§:Number = 1;
      
      private var §0z§:Number = 0;
      
      private var §1!%§:b2Vec2;
      
      private var §1R§:Number = 1;
      
      public function §9k§(param1:§#K§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§8!E§ = param1;
         this.§?!N§ = param2;
         this.mName = param3;
         this.§>H§ = §%<§.§<<§(this.mName).§-p§;
         this.§<!Y§ = param4;
         this.§ l§ = param5;
         this.§^G§ = param4;
         this.§8D§ = param5;
         this.§50§ = 0;
         this.§^D§ = false;
         this.§]![§ = false;
         this.§4!W§ = 0;
         this.§`@§();
         this.§-!-§ = 0;
      }
      
      public function §'T§() : void
      {
         this.§^D§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§?!N§)
         {
            this.§?!N§.dispose();
            this.§?!N§ = null;
         }
      }
      
      public function § 8§(param1:Number) : void
      {
         if(!this.§]![§ || this.§^D§)
         {
            return;
         }
         if(this.§>!U§ != 0)
         {
            this.§[y§ = 0;
            this.§^$§ = 0;
            this.§50§ = 0;
            this.§+R§ = 0;
            this.§>!U§ = 0;
         }
         param1 = Math.min(param1,this.§&A§);
         this.§<!Y§ += param1 * (this.§8!E§.§<!Y§ - this.§<!Y§) / this.§&A§;
         this.§ l§ += param1 * (this.§8!E§.§ l§ - this.§ l§) / this.§&A§;
         this.§ l§ -= param1 / 50 * (this.§&A§ / §#!<§);
         this.§50§ += param1 * (360 - this.§50§) / this.§&A§;
         this.§&A§ -= param1;
         if(this.§&A§ <= 0)
         {
            this.§<!Y§ = this.§8!E§.§<!Y§;
            this.§ l§ = this.§8!E§.§ l§;
            this.§]![§ = false;
            this.§^D§ = true;
            this.§50§ = 0;
         }
         this.§>!Q§();
      }
      
      public function §=w§() : void
      {
         this.§]![§ = true;
         this.§&A§ = §#!<§;
         this.§+-§(§!A§.§@y§);
         if(this.§^$§ != 0)
         {
            this.§ l§ += this.§^$§;
            this.§^$§ = 0;
         }
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§^D§ && this.§-!-§ >= 0)
         {
            if(this.§<!?§ > this.§8!E§.§>`§.§%-§.§[w§)
            {
               this.applyGravity(this.§8!E§.§>`§.§%-§.§[w§ - this.§<!?§);
               this.§-!-§ = -1;
            }
            this.§-!-§ -= param1;
            if(this.§-!-§ <= 0)
            {
               if(this.§[y§ > 0)
               {
                  this.§-!-§ = this.§[y§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§<!?§))
               {
                  _loc2_ = this.§8!E§.§>`§.objects.§0K§(this.§<!Y§,this.§<!?§);
               }
               if(_loc2_ < 0)
               {
                  if(this.applyGravity(param1 / 100))
                  {
                     this.§-!-§ = -1;
                  }
                  else
                  {
                     this.§-!-§ = 0;
                  }
               }
               else if(!this.§8!E§.§>`§.objects.§1T§(_loc2_).§`!T§)
               {
                  this.§9M§ = false;
                  this.§-!-§ = -1;
               }
               else if(this.§8!E§.§>`§.objects.§1T§(_loc2_).§69§())
               {
                  this.§9M§ = false;
                  this.§-!-§ = 2000;
               }
               else
               {
                  this.§-!-§ = 500;
               }
            }
         }
      }
      
      public function applyGravity(param1:Number) : Boolean
      {
         this.§ l§ += param1;
         this.§<!?§ += param1;
         if(this.§<!?§ > this.§8!E§.§>`§.§%-§.§[w§)
         {
            param1 = this.§<!?§ - this.§8!E§.§>`§.§%-§.§[w§;
            this.§ l§ -= param1;
            this.§<!?§ -= param1;
            this.§>!Q§();
            return true;
         }
         this.§>!Q§();
         return false;
      }
      
      public function §`@§() : void
      {
         var _loc1_:§<A§ = §%<§.§<<§(this.mName).shape;
         if(_loc1_.§<!"§() == §<A§.§4!S§)
         {
            this.§1!%§ = _loc1_.§1,§()[0];
            this.§;!"§ = _loc1_.§^!I§;
         }
         else if(_loc1_.§<!"§() == §<A§.§%E§)
         {
            this.§1!%§ = new b2Vec2(0,0);
            this.§;!"§ = 1.5;
         }
         this.§<,§ = this.§8!E§.§>`§.§true§.§>f§(this.mName);
         if(!this.§<,§)
         {
            this.§?-§(null);
         }
         else
         {
            this.§?-§(this.§<,§.getFrame(0));
         }
      }
      
      public function §?-§(param1:§6!=§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§8!E§.§5D§.§=]§.§-!D§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§#3§ == null)
         {
            this.§#3§ = new §`!C§(_loc2_);
            this.§?!N§.addChild(this.§#3§);
         }
         else
         {
            this.§#3§.texture = _loc2_;
         }
         if(param1)
         {
            this.§#3§.x = -param1.pivotX - this.§1!%§.x / §86§.§7!4§;
            this.§#3§.y = -param1.pivotY - this.§1!%§.y / §86§.§7!4§;
         }
         else
         {
            this.§#3§.x = -this.§#3§.width / 2;
            this.§#3§.y = -this.§#3§.height / 2;
         }
         this.§#3§.scaleX = _loc3_;
         this.§#3§.scaleY = _loc3_;
         this.§>!Q§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.updateGroundControl(param1);
         if(this.§]![§)
         {
            this.§[y§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§],§(param1);
            this.§66§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§61§(param1,param2);
            }
         }
      }
      
      public function §],§(param1:Number) : void
      {
         if(this.§4!W§ > 0)
         {
            this.§4!W§ -= param1;
            if(this.§4!W§ <= 0)
            {
               this.§ !§();
            }
         }
         else if(this.§&P§ <= 0 && Math.random() * §9j§ < param1 && this.§8!E§.mSlingShotState)
         {
            this.§ @§();
         }
      }
      
      public function § !§() : void
      {
         this.§4!W§ = 0;
         this.§?-§(this.§<,§.getFrame(0));
      }
      
      public function § @§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§4!W§ = §?r§;
         this.§?-§(this.§<,§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §66§(param1:Number) : void
      {
         if(this.§&P§ > 0)
         {
            this.§&P§ -= param1;
            if(this.§&P§ <= 0)
            {
               this.§37§();
            }
         }
         else if(this.§4!W§ <= 0 && Math.random() * §34§ < param1)
         {
            this.§+-§();
         }
      }
      
      public function §37§() : void
      {
         this.§&P§ = 0;
         this.§?-§(this.§<,§.getFrame(0));
      }
      
      public function §+-§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§&P§ > 0)
         {
            this.§37§();
         }
         if(this.§4!W§ > 0)
         {
            this.§ !§();
         }
         if(param1 < 0)
         {
            param1 = §!A§.§6![§;
         }
         this.§&P§ = §!!4§;
         this.§?-§(this.§<,§.getSubAnimation("yell").getFrame(0));
         if(this.§^D§ || this.§]![§ || param2)
         {
            §+0§.§6o§(param1,this.§>H§);
         }
         else
         {
            §+0§.§6o§(param1,this.§>H§,§8X§);
         }
      }
      
      public function §61§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§[y§ > 0)
         {
            this.§[y§ -= param1;
            if(this.§[y§ <= 0)
            {
               ++this.§'M§;
               this.§+R§ *= 0.4;
               if(!this.§^D§ && this.§'M§ < 2)
               {
                  if(this.§'M§ > 1 && this.§+R§ < -1)
                  {
                     this.§+R§ = -1;
                  }
                  this.§?`§ = this.§+R§;
                  this.§[y§ = §>§;
                  this.§[y§ *= Math.abs(this.§?`§) / 2;
                  this.§]E§ = this.§[y§;
                  this.§50§ = 0;
                  this.§>!U§ = 0;
               }
               else if(!this.§^D§ && param2)
               {
                  this.§ k§(2.25);
               }
               else
               {
                  this.§[y§ = 0;
                  this.§^$§ = 0;
                  this.§50§ = 0;
                  this.§+R§ = 0;
               }
            }
            else
            {
               if(this.§[y§ >= this.§]E§ / 2)
               {
                  _loc3_ = (this.§]E§ - this.§[y§) / (this.§]E§ / 2);
                  _loc3_ = §%S§.§6b§(_loc3_);
                  this.§^$§ = _loc3_ * this.§?`§;
               }
               else
               {
                  _loc3_ = (this.§]E§ / 2 - this.§[y§) / (this.§]E§ / 2);
                  _loc3_ = §%S§.§6b§(_loc3_,false);
                  this.§^$§ = this.§?`§ + _loc3_ * -this.§?`§;
               }
               this.§50§ = 360 * §%S§.§6b§((this.§]E§ - this.§[y§) / this.§]E§) * this.§>!U§;
            }
            this.§>!Q§();
         }
         else if(Math.random() * §9'§ < param1 && !this.§^D§ && !this.§]![§ && !this.§9M§)
         {
            this.§ k§();
         }
      }
      
      public function § k§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§'M§ = 0;
         this.§[y§ = §>§;
         this.§^$§ = 0;
         this.§?`§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§+R§ = this.§?`§;
         this.§[y§ *= Math.abs(this.§?`§) / 3;
         this.§]E§ = this.§[y§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§>!U§ = 0;
         }
         else if(this.§[y§ < 350)
         {
            this.§>!U§ = 0;
         }
         else
         {
            this.§>!U§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§>!U§ = Math.random() > 0.5 ? Number(this.§>!U§) : Number(0);
         }
      }
      
      public function §>!Q§() : void
      {
         this.§?!N§.x = this.§<!Y§ / §86§.§7!4§;
         this.§?!N§.y = (this.§ l§ + this.§^$§) / §86§.§7!4§;
         this.§?!N§.rotation = this.§50§ / 180 * Math.PI;
      }
      
      public function §!!Q§() : void
      {
         this.§9M§ = true;
         this.§^D§ = false;
         this.§]![§ = false;
         this.§'M§ = 0;
         this.§-!-§ = 0;
         this.§[y§ = 0;
         this.§[y§ = 0;
         this.§^$§ = 0;
         this.§50§ = 0;
         this.§+R§ = 0;
         this.§>!U§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§<!Y§) * (param1 - this.§<!Y§) + (param2 - this.§ l§) * (param2 - this.§ l§));
         if(_loc3_ <= this.§;!"§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§<!Y§ >= param3 && this.§<!Y§ <= param4 && this.§ l§ >= param1 && this.§ l§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.§<!Y§ != param1 || this.§ l§ != param2)
         {
            _loc3_ = true;
         }
         this.§<!Y§ = param1;
         this.§ l§ = param2;
         this.§-!-§ = 100;
         this.§>!Q§();
         if(_loc3_)
         {
            this.§8!E§.§;!P§();
         }
      }
      
      public function §"7§() : §`!C§
      {
         return this.§#3§;
      }
      
      public function get §2^§() : Number
      {
         return this.§[y§;
      }
      
      public function get §02§() : Number
      {
         return this.§-!-§;
      }
      
      public function set §02§(param1:Number) : void
      {
         this.§-!-§ = param1;
      }
      
      public function get §3x§() : Number
      {
         return this.§ !I§;
      }
      
      public function get §,!T§() : Boolean
      {
         return this.§^D§;
      }
      
      public function get radius() : Number
      {
         return this.§;!"§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§?!N§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §3x§(param1:Number) : void
      {
         this.§ !I§ = param1;
      }
      
      public function get §2v§() : Number
      {
         return this.§0z§;
      }
      
      public function set §2v§(param1:Number) : void
      {
         this.§0z§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§1R§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§1R§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§<!Y§;
      }
      
      public function get y() : Number
      {
         return this.§ l§;
      }
      
      public function get §9a§() : Number
      {
         return this.§^G§;
      }
      
      public function get §1!2§() : Number
      {
         return this.§8D§;
      }
   }
}
