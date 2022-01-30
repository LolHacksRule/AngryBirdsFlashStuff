package §=b§
{
   import §-!G§.b2Vec2;
   import §3>§.§4D§;
   import §3>§.§>!&§;
   import §3>§.§["!§;
   import §7q§.§0!§;
   import §7q§.Sprite;
   import §8Y§.Texture;
   import §;!<§.§9B§;
   import §;!<§.§<!D§;
   import §@!;§.§"!%§;
   import §]r§.§9!R§;
   
   public class §8",§
   {
      
      public static const §]!5§:String = "ChannelSlingshot";
      
      public static const §=!O§:Number = 900;
      
      public static const §#!V§:Number = 200;
      
      public static const §!h§:Number = 200;
      
      public static const §<!h§:Number = 1500;
      
      public static const § !"§:Number = 5000;
      
      public static const §!N§:Number = 1000;
      
      public static const §@"'§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var mX:Number;
      
      protected var mY:Number;
      
      protected var §0f§:Number;
      
      protected var §"!B§:Number;
      
      private var §5!J§:§>!&§;
      
      protected var §-3§:Number;
      
      protected var §&K§:Number = 1;
      
      private var §5H§:Sprite;
      
      protected var §3O§:§9B§;
      
      private var §5!w§:§0!§;
      
      protected var §,S§:§5?§;
      
      private var §`"4§:Number;
      
      private var §%D§:Boolean = false;
      
      private var §3!G§:Boolean = false;
      
      protected var §^8§:Boolean = false;
      
      private var §+3§:Number;
      
      private var §=!z§:Number = 0;
      
      private var §@!l§:Number = 0;
      
      private var §]v§:Number = 0;
      
      private var §]b§:Number = 1000;
      
      private var §0!G§:Number;
      
      private var §2"§:Number;
      
      private var §&!=§:int;
      
      private var §["%§:Number = 0;
      
      protected var §>E§:Number;
      
      protected var §2p§:Number;
      
      private var §9M§:Number = 1;
      
      private var §4!r§:Number = 0;
      
      private var §6!]§:b2Vec2;
      
      private var §`"§:Number = 1;
      
      public function §8",§(param1:§5?§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§,S§ = param1;
         this.§5H§ = param2;
         this.mName = param3;
         this.§5!J§ = §["!§.§+!s§(this.mName).§8"+§;
         this.mX = param4;
         this.mY = param5;
         this.§0f§ = param4;
         this.§"!B§ = param5;
         this.§-3§ = 0;
         this.§%D§ = false;
         this.§3!G§ = false;
         this.§=!z§ = 0;
         this.§"&§();
         this.§>E§ = 0;
      }
      
      public function § ",§() : void
      {
         this.§%D§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§5H§)
         {
            this.§5H§.dispose();
            this.§5H§ = null;
         }
      }
      
      public function §?!x§(param1:Number) : void
      {
         if(!this.§3!G§ || this.§%D§)
         {
            return;
         }
         if(this.§&K§ != 0)
         {
            this.§]v§ = 0;
            this.§["%§ = 0;
            this.§-3§ = 0;
            this.§2"§ = 0;
            this.§&K§ = 0;
         }
         param1 = Math.min(param1,this.§+3§);
         this.mX += param1 * (this.§,S§.mX - this.mX) / this.§+3§;
         this.mY += param1 * (this.§,S§.mY - this.mY) / this.§+3§;
         this.mY -= param1 / 50 * (this.§+3§ / §=!O§);
         this.§-3§ += param1 * (360 - this.§-3§) / this.§+3§;
         this.§+3§ -= param1;
         if(this.§+3§ <= 0)
         {
            this.mX = this.§,S§.mX;
            this.mY = this.§,S§.mY;
            this.§3!G§ = false;
            this.§%D§ = true;
            this.§-3§ = 0;
         }
         this.§@!a§();
      }
      
      public function §2"1§() : void
      {
         this.§3!G§ = true;
         this.§+3§ = §=!O§;
         this.§-!z§(§>!&§.§@#§);
         if(this.§["%§ != 0)
         {
            this.mY += this.§["%§;
            this.§["%§ = 0;
         }
      }
      
      public function §""3§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§%D§ && this.§>E§ >= 0)
         {
            if(this.§2p§ > this.§,S§.§;!x§.borders.mBorderGround_B2)
            {
               this.§?V§(this.§,S§.§;!x§.borders.mBorderGround_B2 - this.§2p§);
               this.§>E§ = -1;
            }
            this.§>E§ -= param1;
            if(this.§>E§ <= 0)
            {
               if(this.§]v§ > 0)
               {
                  this.§>E§ = this.§]v§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§2p§))
               {
                  _loc2_ = this.§,S§.§;!x§.objects.§0`§(this.mX,this.§2p§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§?V§(param1 / 100))
                  {
                     this.§>E§ = -1;
                  }
                  else
                  {
                     this.§>E§ = 0;
                  }
               }
               else if(!this.§,S§.§;!x§.objects.getObject(_loc2_).§!!$§)
               {
                  this.§^8§ = false;
                  this.§>E§ = -1;
               }
               else if(this.§,S§.§;!x§.objects.getObject(_loc2_).§@_§())
               {
                  this.§^8§ = false;
                  this.§>E§ = 2000;
               }
               else
               {
                  this.§>E§ = 500;
               }
            }
         }
      }
      
      public function §?V§(param1:Number) : Boolean
      {
         this.mY += param1;
         this.§2p§ += param1;
         if(this.§2p§ > this.§,S§.§;!x§.borders.mBorderGround_B2)
         {
            param1 = this.§2p§ - this.§,S§.§;!x§.borders.mBorderGround_B2;
            this.mY -= param1;
            this.§2p§ -= param1;
            this.§@!a§();
            return true;
         }
         this.§@!a§();
         return false;
      }
      
      public function §"&§() : void
      {
         var _loc1_:§4D§ = §["!§.§+!s§(this.mName).shape;
         if(_loc1_.§6i§() == §4D§.§ !G§)
         {
            this.§6!]§ = _loc1_.§9>§()[0];
            this.§`"4§ = _loc1_.§5!T§;
         }
         else if(_loc1_.§6i§() == §4D§.§>v§)
         {
            this.§6!]§ = new b2Vec2(0,0);
            this.§`"4§ = 1.5;
         }
         this.§3O§ = this.§,S§.§;!x§.§"!i§.§]@§(this.mName);
         if(!this.§3O§)
         {
            this.§ !E§(null);
         }
         else
         {
            this.§ !E§(this.§3O§.getFrame(0));
         }
      }
      
      public function § !E§(param1:§<!D§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§,S§.§'!E§.§20§.§-!s§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§5!w§ == null)
         {
            this.§5!w§ = new §0!§(_loc2_);
            this.§5H§.addChild(this.§5!w§);
         }
         else
         {
            this.§5!w§.texture = _loc2_;
         }
         if(param1)
         {
            this.§5!w§.x = -param1.pivotX - this.§6!]§.x / §-!K§.§"!C§;
            this.§5!w§.y = -param1.pivotY - this.§6!]§.y / §-!K§.§"!C§;
         }
         else
         {
            this.§5!w§.x = -this.§5!w§.width / 2;
            this.§5!w§.y = -this.§5!w§.height / 2;
         }
         this.§5!w§.scaleX = _loc3_;
         this.§5!w§.scaleY = _loc3_;
         this.§@!a§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§""3§(param1);
         if(this.§3!G§)
         {
            this.§]v§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§]!F§(param1);
            this.§?!&§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§&!5§(param1,param2);
            }
         }
      }
      
      public function §]!F§(param1:Number) : void
      {
         if(this.§=!z§ > 0)
         {
            this.§=!z§ -= param1;
            if(this.§=!z§ <= 0)
            {
               this.§?"8§();
            }
         }
         else if(this.§@!l§ <= 0 && Math.random() * §<!h§ < param1 && this.§,S§.mSlingShotState)
         {
            this.§6#§();
         }
      }
      
      public function §?"8§() : void
      {
         this.§=!z§ = 0;
         this.§ !E§(this.§3O§.getFrame(0));
      }
      
      public function §6#§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§=!z§ = §#!V§;
         this.§ !E§(this.§3O§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §?!&§(param1:Number) : void
      {
         if(this.§@!l§ > 0)
         {
            this.§@!l§ -= param1;
            if(this.§@!l§ <= 0)
            {
               this.§`!Q§();
            }
         }
         else if(this.§=!z§ <= 0 && Math.random() * § !"§ < param1)
         {
            this.§-!z§();
         }
      }
      
      public function §`!Q§() : void
      {
         this.§@!l§ = 0;
         this.§ !E§(this.§3O§.getFrame(0));
      }
      
      public function §-!z§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§@!l§ > 0)
         {
            this.§`!Q§();
         }
         if(this.§=!z§ > 0)
         {
            this.§?"8§();
         }
         if(param1 < 0)
         {
            param1 = §>!&§.§0E§;
         }
         this.§@!l§ = §!h§;
         this.§ !E§(this.§3O§.getSubAnimation("yell").getFrame(0));
         if(this.§%D§ || this.§3!G§ || param2)
         {
            §9!R§.§`m§(param1,this.§5!J§);
         }
         else
         {
            §9!R§.§`m§(param1,this.§5!J§,§]!5§);
         }
      }
      
      public function §&!5§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§]v§ > 0)
         {
            this.§]v§ -= param1;
            if(this.§]v§ <= 0)
            {
               ++this.§&!=§;
               this.§2"§ *= 0.4;
               if(!this.§%D§ && this.§&!=§ < 2)
               {
                  if(this.§&!=§ > 1 && this.§2"§ < -1)
                  {
                     this.§2"§ = -1;
                  }
                  this.§0!G§ = this.§2"§;
                  this.§]v§ = §@"'§;
                  this.§]v§ *= Math.abs(this.§0!G§) / 2;
                  this.§]b§ = this.§]v§;
                  this.§-3§ = 0;
                  this.§&K§ = 0;
               }
               else if(!this.§%D§ && param2)
               {
                  this.§ true§(2.25);
               }
               else
               {
                  this.§]v§ = 0;
                  this.§["%§ = 0;
                  this.§-3§ = 0;
                  this.§2"§ = 0;
               }
            }
            else
            {
               if(this.§]v§ >= this.§]b§ / 2)
               {
                  _loc3_ = (this.§]b§ - this.§]v§) / (this.§]b§ / 2);
                  _loc3_ = §"!%§.§5"%§(_loc3_);
                  this.§["%§ = _loc3_ * this.§0!G§;
               }
               else
               {
                  _loc3_ = (this.§]b§ / 2 - this.§]v§) / (this.§]b§ / 2);
                  _loc3_ = §"!%§.§5"%§(_loc3_,false);
                  this.§["%§ = this.§0!G§ + _loc3_ * -this.§0!G§;
               }
               this.§-3§ = 360 * §"!%§.§5"%§((this.§]b§ - this.§]v§) / this.§]b§) * this.§&K§;
            }
            this.§@!a§();
         }
         else if(Math.random() * §!N§ < param1 && !this.§%D§ && !this.§3!G§ && !this.§^8§)
         {
            this.§ true§();
         }
      }
      
      public function § true§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§&!=§ = 0;
         this.§]v§ = §@"'§;
         this.§["%§ = 0;
         this.§0!G§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§2"§ = this.§0!G§;
         this.§]v§ *= Math.abs(this.§0!G§) / 3;
         this.§]b§ = this.§]v§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§&K§ = 0;
         }
         else if(this.§]v§ < 350)
         {
            this.§&K§ = 0;
         }
         else
         {
            this.§&K§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§&K§ = Math.random() > 0.5 ? Number(this.§&K§) : Number(0);
         }
      }
      
      public function §@!a§() : void
      {
         this.§5H§.x = this.mX / §-!K§.§"!C§;
         this.§5H§.y = (this.mY + this.§["%§) / §-!K§.§"!C§;
         this.§5H§.rotation = this.§-3§ / 180 * Math.PI;
      }
      
      public function §2""§() : void
      {
         this.§^8§ = true;
         this.§%D§ = false;
         this.§3!G§ = false;
         this.§&!=§ = 0;
         this.§>E§ = 0;
         this.§]v§ = 0;
         this.§]v§ = 0;
         this.§["%§ = 0;
         this.§-3§ = 0;
         this.§2"§ = 0;
         this.§&K§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.mX) * (param1 - this.mX) + (param2 - this.mY) * (param2 - this.mY));
         if(_loc3_ <= this.§`"4§ * 1.1)
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
         this.§>E§ = 100;
         this.§@!a§();
         if(_loc3_)
         {
            this.§,S§.§[N§();
         }
      }
      
      public function §-!,§() : §0!§
      {
         return this.§5!w§;
      }
      
      public function get §[D§() : Number
      {
         return this.§]v§;
      }
      
      public function get §9!r§() : Number
      {
         return this.§>E§;
      }
      
      public function set §9!r§(param1:Number) : void
      {
         this.§>E§ = param1;
      }
      
      public function get §^+§() : Number
      {
         return this.§9M§;
      }
      
      public function get §<N§() : Boolean
      {
         return this.§%D§;
      }
      
      public function get radius() : Number
      {
         return this.§`"4§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§5H§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §^+§(param1:Number) : void
      {
         this.§9M§ = param1;
      }
      
      public function get §=!w§() : Number
      {
         return this.§4!r§;
      }
      
      public function set §=!w§(param1:Number) : void
      {
         this.§4!r§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§`"§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§`"§ = param1;
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function get §'"!§() : Number
      {
         return this.§0f§;
      }
      
      public function get §5!`§() : Number
      {
         return this.§"!B§;
      }
   }
}
