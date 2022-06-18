package §9!?§
{
   import §!T§.§'2§;
   import §!T§.§2!!§;
   import §!T§.§`P§;
   import §9H§.§4G§;
   import §<-§.Texture;
   import §<k§.§"!=§;
   import §<k§.Sprite;
   import §[n§.§#H§;
   import §[n§.§2!9§;
   import §`"§.§"e§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class §#1§
   {
      
      public static const §25§:String = "ChannelSlingshot";
      
      public static const §1q§:Number = 900;
      
      public static const §5N§:Number = 200;
      
      public static const §2k§:Number = 200;
      
      public static const §7T§:Number = 1500;
      
      public static const §-!+§:Number = 5000;
      
      public static const §<j§:Number = 1000;
      
      public static const §>U§:Number = 1000;
       
      
      private var mName:String;
      
      public var mX:Number;
      
      public var mY:Number;
      
      public var §'!3§:Number;
      
      public var §5i§:Number;
      
      private var §4W§:§`P§;
      
      private var §&?§:Number;
      
      protected var §2?§:Number = 1;
      
      private var §8!!§:Sprite;
      
      private var §"!+§:§2!9§;
      
      private var §]D§:§"!=§;
      
      private var §3v§:§%g§;
      
      private var §7!=§:Number;
      
      private var §=!,§:Boolean = false;
      
      private var §55§:Boolean = false;
      
      private var §5z§:Boolean = false;
      
      private var §%!-§:Number;
      
      private var §`&§:Number = 0;
      
      private var §4v§:Number = 0;
      
      private var §^H§:Number = 0;
      
      private var §;!5§:Number = 1000;
      
      private var §0!'§:Number;
      
      private var §@$§:Number;
      
      private var §+B§:int;
      
      private var §>t§:Number = 0;
      
      private var §#L§:Number;
      
      private var §7J§:Number;
      
      private var §2K§:Number = 0;
      
      private var §^!!§:Number = 1;
      
      private var §%P§:Number = 0;
      
      private var §'z§:b2Vec2;
      
      private var §@]§:Number = 1;
      
      public function §#1§(param1:§%g§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§3v§ = param1;
         this.§8!!§ = param2;
         this.mName = param3;
         this.§4W§ = §2!!§.§2V§(this.mName).§8"§;
         this.mX = param4;
         this.mY = param5;
         this.§'!3§ = param4;
         this.§5i§ = param5;
         this.§&?§ = 0;
         this.§=!,§ = false;
         this.§55§ = false;
         this.§`&§ = 0;
         this.§">§();
         this.§#L§ = 0;
      }
      
      public function §5r§() : void
      {
         this.§=!,§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§8!!§)
         {
            this.§8!!§.dispose();
            this.§8!!§ = null;
         }
      }
      
      public function §70§(param1:Number) : void
      {
         if(!this.§55§ || this.§=!,§)
         {
            return;
         }
         if(this.§2?§ != 0)
         {
            this.§^H§ = 0;
            this.§>t§ = 0;
            this.§&?§ = 0;
            this.§@$§ = 0;
            this.§2?§ = 0;
         }
         param1 = Math.min(param1,this.§%!-§);
         this.mX += param1 * (this.§3v§.mX - this.mX) / this.§%!-§;
         this.mY += param1 * (this.§3v§.mY - this.mY) / this.§%!-§;
         this.mY -= param1 / 50 * (this.§%!-§ / §1q§);
         this.§&?§ += param1 * (360 - this.§&?§) / this.§%!-§;
         this.§%!-§ -= param1;
         if(this.§%!-§ <= 0)
         {
            this.mX = this.§3v§.mX;
            this.mY = this.§3v§.mY;
            this.§55§ = false;
            this.§=!,§ = true;
            this.§&?§ = 0;
         }
         this.§+Y§();
      }
      
      public function §<Z§() : void
      {
         this.§55§ = true;
         this.§%!-§ = §1q§;
         this.§=2§(§`P§.§-e§);
         if(this.§>t§ != 0)
         {
            this.mY += this.§>t§;
            this.§>t§ = 0;
         }
      }
      
      public function §8`§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§=!,§ && this.§#L§ >= 0)
         {
            if(this.§7J§ > this.§3v§.§]!9§.§2X§.§;!#§)
            {
               this.§ !=§(this.§3v§.§]!9§.§2X§.§;!#§ - this.§7J§);
               this.§#L§ = -1;
            }
            this.§#L§ -= param1;
            if(this.§#L§ <= 0)
            {
               if(this.§^H§ > 0)
               {
                  this.§#L§ = this.§^H§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§7J§))
               {
                  _loc2_ = this.§3v§.§]!9§.objects.§'Z§(this.mX,this.§7J§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§ !=§(param1 / 100))
                  {
                     this.§#L§ = -1;
                  }
                  else
                  {
                     this.§#L§ = 0;
                  }
               }
               else if(!this.§3v§.§]!9§.objects.§7!6§(_loc2_).§`!>§)
               {
                  this.§5z§ = false;
                  this.§#L§ = -1;
               }
               else if(this.§3v§.§]!9§.objects.§7!6§(_loc2_).§&c§())
               {
                  this.§5z§ = false;
                  this.§#L§ = 2000;
               }
               else
               {
                  this.§#L§ = 500;
               }
            }
         }
      }
      
      public function § !=§(param1:Number) : Boolean
      {
         this.mY += param1;
         this.§7J§ += param1;
         if(this.§7J§ > this.§3v§.§]!9§.§2X§.§;!#§)
         {
            param1 = this.§7J§ - this.§3v§.§]!9§.§2X§.§;!#§;
            this.mY -= param1;
            this.§7J§ -= param1;
            this.§+Y§();
            return true;
         }
         this.§+Y§();
         return false;
      }
      
      public function §">§() : void
      {
         var _loc1_:§'2§ = §2!!§.§2V§(this.mName).shape;
         if(_loc1_.§7b§() == §'2§.§?O§)
         {
            this.§'z§ = _loc1_.§ !?§()[0];
            this.§7!=§ = _loc1_.§!0§;
         }
         else if(_loc1_.§7b§() == §'2§.§#!2§)
         {
            this.§'z§ = new b2Vec2(0,0);
            this.§7!=§ = 1.5;
         }
         this.§"!+§ = this.§3v§.§]!9§.§[y§.§ E§(this.mName);
         if(!this.§"!+§)
         {
            this.§2q§(null);
         }
         else
         {
            this.§2q§(this.§"!+§.getFrame(0));
         }
      }
      
      public function §2q§(param1:§#H§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§3v§.§ !#§.textureManager.§>e§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§]D§ == null)
         {
            this.§]D§ = new §"!=§(_loc2_);
            this.§8!!§.addChild(this.§]D§);
         }
         else
         {
            this.§]D§.texture = _loc2_;
         }
         if(param1)
         {
            this.§]D§.x = -param1.pivotX - this.§'z§.x / §^]§.§ u§;
            this.§]D§.y = -param1.pivotY - this.§'z§.y / §^]§.§ u§;
         }
         else
         {
            this.§]D§.x = -this.§]D§.width / 2;
            this.§]D§.y = -this.§]D§.height / 2;
         }
         this.§]D§.scaleX = _loc3_;
         this.§]D§.scaleY = _loc3_;
         this.§+Y§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§8`§(param1);
         if(this.§55§)
         {
            this.§^H§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§!u§(param1);
            this.§0!=§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§%x§(param1,param2);
            }
         }
      }
      
      public function §!u§(param1:Number) : void
      {
         if(this.§`&§ > 0)
         {
            this.§`&§ -= param1;
            if(this.§`&§ <= 0)
            {
               this.§;!>§();
            }
         }
         else if(this.§4v§ <= 0 && Math.random() * §7T§ < param1 && this.§3v§.mSlingShotState)
         {
            this.§4L§();
         }
      }
      
      public function §;!>§() : void
      {
         this.§`&§ = 0;
         this.§2q§(this.§"!+§.getFrame(0));
      }
      
      public function §4L§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§`&§ = §5N§;
         this.§2q§(this.§"!+§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §0!=§(param1:Number) : void
      {
         if(this.§4v§ > 0)
         {
            this.§4v§ -= param1;
            if(this.§4v§ <= 0)
            {
               this.§<y§();
            }
         }
         else if(this.§`&§ <= 0 && Math.random() * §-!+§ < param1)
         {
            this.§=2§();
         }
      }
      
      public function §<y§() : void
      {
         this.§4v§ = 0;
         this.§2q§(this.§"!+§.getFrame(0));
      }
      
      public function §=2§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§4v§ > 0)
         {
            this.§<y§();
         }
         if(this.§`&§ > 0)
         {
            this.§;!>§();
         }
         if(param1 < 0)
         {
            param1 = §`P§.§=6§;
         }
         this.§4v§ = §2k§;
         this.§2q§(this.§"!+§.getSubAnimation("yell").getFrame(0));
         if(this.§=!,§ || this.§55§ || param2)
         {
            §"e§.§@#§(param1,this.§4W§);
         }
         else
         {
            §"e§.§@#§(param1,this.§4W§,§25§);
         }
      }
      
      public function §%x§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§^H§ > 0)
         {
            this.§^H§ -= param1;
            if(this.§^H§ <= 0)
            {
               ++this.§+B§;
               this.§@$§ *= 0.4;
               if(!this.§=!,§ && this.§+B§ < 2)
               {
                  if(this.§+B§ > 1 && this.§@$§ < -1)
                  {
                     this.§@$§ = -1;
                  }
                  this.§0!'§ = this.§@$§;
                  this.§^H§ = §>U§;
                  this.§^H§ *= Math.abs(this.§0!'§) / 2;
                  this.§;!5§ = this.§^H§;
                  this.§&?§ = 0;
                  this.§2?§ = 0;
               }
               else if(!this.§=!,§ && param2)
               {
                  this.§;!2§(2.25);
               }
               else
               {
                  this.§^H§ = 0;
                  this.§>t§ = 0;
                  this.§&?§ = 0;
                  this.§@$§ = 0;
               }
            }
            else
            {
               if(this.§^H§ >= this.§;!5§ / 2)
               {
                  _loc3_ = (this.§;!5§ - this.§^H§) / (this.§;!5§ / 2);
                  _loc3_ = §4G§.§9!D§(_loc3_);
                  this.§>t§ = _loc3_ * this.§0!'§;
               }
               else
               {
                  _loc3_ = (this.§;!5§ / 2 - this.§^H§) / (this.§;!5§ / 2);
                  _loc3_ = §4G§.§9!D§(_loc3_,false);
                  this.§>t§ = this.§0!'§ + _loc3_ * -this.§0!'§;
               }
               this.§&?§ = 360 * §4G§.§9!D§((this.§;!5§ - this.§^H§) / this.§;!5§) * this.§2?§;
            }
            this.§+Y§();
         }
         else if(Math.random() * §<j§ < param1 && !this.§=!,§ && !this.§55§ && !this.§5z§)
         {
            this.§;!2§();
         }
      }
      
      public function §;!2§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§+B§ = 0;
         this.§^H§ = §>U§;
         this.§>t§ = 0;
         this.§0!'§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§@$§ = this.§0!'§;
         this.§^H§ *= Math.abs(this.§0!'§) / 3;
         this.§;!5§ = this.§^H§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§2?§ = 0;
         }
         else if(this.§^H§ < 350)
         {
            this.§2?§ = 0;
         }
         else
         {
            this.§2?§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§2?§ = Math.random() > 0.5 ? Number(this.§2?§) : Number(0);
         }
      }
      
      public function §+Y§() : void
      {
         this.§8!!§.x = this.mX / §^]§.§ u§;
         this.§8!!§.y = (this.mY + this.§>t§) / §^]§.§ u§;
         this.§8!!§.rotation = this.§&?§ / 180 * Math.PI;
      }
      
      public function §[l§() : void
      {
         this.§5z§ = true;
         this.§=!,§ = false;
         this.§55§ = false;
         this.§+B§ = 0;
         this.§#L§ = 0;
         this.§^H§ = 0;
         this.§7J§ = this.mY + this.§2K§ + this.radius;
         this.§^H§ = 0;
         this.§>t§ = 0;
         this.§&?§ = 0;
         this.§@$§ = 0;
         this.§2?§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.mX) * (param1 - this.mX) + (param2 - this.mY) * (param2 - this.mY));
         if(_loc3_ <= this.§7!=§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.mX >= param3 && this.mX <= param4 && this.mY >= param1 && this.mY <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.mX != param1 || this.mY != param2)
         {
            _loc3_ = true;
         }
         this.mX = param1;
         this.mY = param2;
         this.§7J§ = this.mY + this.§2K§;
         this.§#L§ = 100;
         this.§+Y§();
         if(_loc3_)
         {
            this.§3v§.§2;§();
         }
      }
      
      public function §28§() : §"!=§
      {
         return this.§]D§;
      }
      
      public function get §>O§() : Number
      {
         return this.§^H§;
      }
      
      public function get §8L§() : Number
      {
         return this.§#L§;
      }
      
      public function set §8L§(param1:Number) : void
      {
         this.§#L§ = param1;
      }
      
      public function get §>F§() : Number
      {
         return this.§^!!§;
      }
      
      public function get §>f§() : Boolean
      {
         return this.§=!,§;
      }
      
      public function get radius() : Number
      {
         return this.§7!=§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§8!!§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §>F§(param1:Number) : void
      {
         this.§^!!§ = param1;
      }
      
      public function get §,4§() : Number
      {
         return this.§%P§;
      }
      
      public function set §,4§(param1:Number) : void
      {
         this.§%P§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§@]§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§@]§ = param1;
      }
   }
}
