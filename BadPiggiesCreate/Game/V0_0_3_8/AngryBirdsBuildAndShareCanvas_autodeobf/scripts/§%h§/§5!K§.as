package §%h§
{
   import § !V§.§%!T§;
   import § !V§.§=!g§;
   import §%!&§.§;!x§;
   import §%!<§.§7V§;
   import §%!<§.§=!j§;
   import §%!<§.§`f§;
   import §3!U§.Texture;
   import §4u§.§2"1§;
   import §9v§.b2Vec2;
   import §]!2§.§,!n§;
   import §]!2§.Sprite;
   
   public class §5!K§
   {
      
      public static const §6n§:String = "ChannelSlingshot";
      
      public static const §7O§:Number = 900;
      
      public static const §&M§:Number = 200;
      
      public static const §&-§:Number = 200;
      
      public static const §%!1§:Number = 1500;
      
      public static const § !D§:Number = 5000;
      
      public static const §@r§:Number = 1000;
      
      public static const §0"3§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var mX:Number;
      
      protected var mY:Number;
      
      protected var §[j§:Number;
      
      protected var §9!O§:Number;
      
      private var §>!P§:§=!j§;
      
      protected var §^@§:Number;
      
      protected var §<§:Number = 1;
      
      private var §`!-§:Sprite;
      
      protected var §="%§:§%!T§;
      
      private var §6!y§:§,!n§;
      
      protected var §!9§:§=$§;
      
      private var §^l§:Number;
      
      private var §,"§:Boolean = false;
      
      private var §#"!§:Boolean = false;
      
      protected var §7!D§:Boolean = false;
      
      private var §'P§:Number;
      
      private var §!"&§:Number = 0;
      
      private var §#!$§:Number = 0;
      
      private var §8!;§:Number = 0;
      
      private var §;E§:Number = 1000;
      
      private var §%"1§:Number;
      
      private var §@,§:Number;
      
      private var §!!C§:int;
      
      private var §-!o§:Number = 0;
      
      protected var §36§:Number;
      
      protected var §"!§:Number;
      
      private var §]y§:Number = 1;
      
      private var §-!2§:Number = 0;
      
      private var §[!n§:b2Vec2;
      
      private var §?V§:Number = 1;
      
      public function §5!K§(param1:§=$§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§!9§ = param1;
         this.§`!-§ = param2;
         this.mName = param3;
         this.§>!P§ = §7V§.§"!E§(this.mName).§'a§;
         this.mX = param4;
         this.mY = param5;
         this.§[j§ = param4;
         this.§9!O§ = param5;
         this.§^@§ = 0;
         this.§,"§ = false;
         this.§#"!§ = false;
         this.§!"&§ = 0;
         this.§`!?§();
         this.§36§ = 0;
      }
      
      public function §`!g§() : void
      {
         this.§,"§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§`!-§)
         {
            this.§`!-§.dispose();
            this.§`!-§ = null;
         }
      }
      
      public function §,H§(param1:Number) : void
      {
         if(!this.§#"!§ || this.§,"§)
         {
            return;
         }
         if(this.§<§ != 0)
         {
            this.§8!;§ = 0;
            this.§-!o§ = 0;
            this.§^@§ = 0;
            this.§@,§ = 0;
            this.§<§ = 0;
         }
         param1 = Math.min(param1,this.§'P§);
         this.mX += param1 * (this.§!9§.mX - this.mX) / this.§'P§;
         this.mY += param1 * (this.§!9§.mY - this.mY) / this.§'P§;
         this.mY -= param1 / 50 * (this.§'P§ / §7O§);
         this.§^@§ += param1 * (360 - this.§^@§) / this.§'P§;
         this.§'P§ -= param1;
         if(this.§'P§ <= 0)
         {
            this.mX = this.§!9§.mX;
            this.mY = this.§!9§.mY;
            this.§#"!§ = false;
            this.§,"§ = true;
            this.§^@§ = 0;
         }
         this.§,!S§();
      }
      
      public function §^D§() : void
      {
         this.§#"!§ = true;
         this.§'P§ = §7O§;
         this.§!y§(§=!j§.§2=§);
         if(this.§-!o§ != 0)
         {
            this.mY += this.§-!o§;
            this.§-!o§ = 0;
         }
      }
      
      public function §5K§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§,"§ && this.§36§ >= 0)
         {
            if(this.§"!§ > this.§!9§.§>"2§.borders.mBorderGround_B2)
            {
               this.§9b§(this.§!9§.§>"2§.borders.mBorderGround_B2 - this.§"!§);
               this.§36§ = -1;
            }
            this.§36§ -= param1;
            if(this.§36§ <= 0)
            {
               if(this.§8!;§ > 0)
               {
                  this.§36§ = this.§8!;§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§"!§))
               {
                  _loc2_ = this.§!9§.§>"2§.objects.§-!0§(this.mX,this.§"!§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§9b§(param1 / 100))
                  {
                     this.§36§ = -1;
                  }
                  else
                  {
                     this.§36§ = 0;
                  }
               }
               else if(!this.§!9§.§>"2§.objects.getObject(_loc2_).§>!8§)
               {
                  this.§7!D§ = false;
                  this.§36§ = -1;
               }
               else if(this.§!9§.§>"2§.objects.getObject(_loc2_).§^!V§())
               {
                  this.§7!D§ = false;
                  this.§36§ = 2000;
               }
               else
               {
                  this.§36§ = 500;
               }
            }
         }
      }
      
      public function §9b§(param1:Number) : Boolean
      {
         this.mY += param1;
         this.§"!§ += param1;
         if(this.§"!§ > this.§!9§.§>"2§.borders.mBorderGround_B2)
         {
            param1 = this.§"!§ - this.§!9§.§>"2§.borders.mBorderGround_B2;
            this.mY -= param1;
            this.§"!§ -= param1;
            this.§,!S§();
            return true;
         }
         this.§,!S§();
         return false;
      }
      
      public function §`!?§() : void
      {
         var _loc1_:§`f§ = §7V§.§"!E§(this.mName).shape;
         if(_loc1_.§9,§() == §`f§.§`,§)
         {
            this.§[!n§ = _loc1_.§?!a§()[0];
            this.§^l§ = _loc1_.§=_§;
         }
         else if(_loc1_.§9,§() == §`f§.§7" §)
         {
            this.§[!n§ = new b2Vec2(0,0);
            this.§^l§ = 1.5;
         }
         this.§="%§ = this.§!9§.§>"2§.§1!U§.§%!^§(this.mName);
         if(!this.§="%§)
         {
            this.§"I§(null);
         }
         else
         {
            this.§"I§(this.§="%§.getFrame(0));
         }
      }
      
      public function §"I§(param1:§=!g§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§!9§.§]!D§.§7<§.§0q§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§6!y§ == null)
         {
            this.§6!y§ = new §,!n§(_loc2_);
            this.§`!-§.addChild(this.§6!y§);
         }
         else
         {
            this.§6!y§.texture = _loc2_;
         }
         if(param1)
         {
            this.§6!y§.x = -param1.pivotX - this.§[!n§.x / §5X§.§,!m§;
            this.§6!y§.y = -param1.pivotY - this.§[!n§.y / §5X§.§,!m§;
         }
         else
         {
            this.§6!y§.x = -this.§6!y§.width / 2;
            this.§6!y§.y = -this.§6!y§.height / 2;
         }
         this.§6!y§.scaleX = _loc3_;
         this.§6!y§.scaleY = _loc3_;
         this.§,!S§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§5K§(param1);
         if(this.§#"!§)
         {
            this.§8!;§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§4!s§(param1);
            this.§6<§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§0§(param1,param2);
            }
         }
      }
      
      public function §4!s§(param1:Number) : void
      {
         if(this.§!"&§ > 0)
         {
            this.§!"&§ -= param1;
            if(this.§!"&§ <= 0)
            {
               this.§=!`§();
            }
         }
         else if(this.§#!$§ <= 0 && Math.random() * §%!1§ < param1 && this.§!9§.mSlingShotState)
         {
            this.§#5§();
         }
      }
      
      public function §=!`§() : void
      {
         this.§!"&§ = 0;
         this.§"I§(this.§="%§.getFrame(0));
      }
      
      public function §#5§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§!"&§ = §&M§;
         this.§"I§(this.§="%§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §6<§(param1:Number) : void
      {
         if(this.§#!$§ > 0)
         {
            this.§#!$§ -= param1;
            if(this.§#!$§ <= 0)
            {
               this.§9'§();
            }
         }
         else if(this.§!"&§ <= 0 && Math.random() * § !D§ < param1)
         {
            this.§!y§();
         }
      }
      
      public function §9'§() : void
      {
         this.§#!$§ = 0;
         this.§"I§(this.§="%§.getFrame(0));
      }
      
      public function §!y§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§#!$§ > 0)
         {
            this.§9'§();
         }
         if(this.§!"&§ > 0)
         {
            this.§=!`§();
         }
         if(param1 < 0)
         {
            param1 = §=!j§.§^a§;
         }
         this.§#!$§ = §&-§;
         this.§"I§(this.§="%§.getSubAnimation("yell").getFrame(0));
         if(this.§,"§ || this.§#"!§ || param2)
         {
            §;!x§.§+!i§(param1,this.§>!P§);
         }
         else
         {
            §;!x§.§+!i§(param1,this.§>!P§,§6n§);
         }
      }
      
      public function §0§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§8!;§ > 0)
         {
            this.§8!;§ -= param1;
            if(this.§8!;§ <= 0)
            {
               ++this.§!!C§;
               this.§@,§ *= 0.4;
               if(!this.§,"§ && this.§!!C§ < 2)
               {
                  if(this.§!!C§ > 1 && this.§@,§ < -1)
                  {
                     this.§@,§ = -1;
                  }
                  this.§%"1§ = this.§@,§;
                  this.§8!;§ = §0"3§;
                  this.§8!;§ *= Math.abs(this.§%"1§) / 2;
                  this.§;E§ = this.§8!;§;
                  this.§^@§ = 0;
                  this.§<§ = 0;
               }
               else if(!this.§,"§ && param2)
               {
                  this.§`!;§(2.25);
               }
               else
               {
                  this.§8!;§ = 0;
                  this.§-!o§ = 0;
                  this.§^@§ = 0;
                  this.§@,§ = 0;
               }
            }
            else
            {
               if(this.§8!;§ >= this.§;E§ / 2)
               {
                  _loc3_ = (this.§;E§ - this.§8!;§) / (this.§;E§ / 2);
                  _loc3_ = §2"1§.§6!D§(_loc3_);
                  this.§-!o§ = _loc3_ * this.§%"1§;
               }
               else
               {
                  _loc3_ = (this.§;E§ / 2 - this.§8!;§) / (this.§;E§ / 2);
                  _loc3_ = §2"1§.§6!D§(_loc3_,false);
                  this.§-!o§ = this.§%"1§ + _loc3_ * -this.§%"1§;
               }
               this.§^@§ = 360 * §2"1§.§6!D§((this.§;E§ - this.§8!;§) / this.§;E§) * this.§<§;
            }
            this.§,!S§();
         }
         else if(Math.random() * §@r§ < param1 && !this.§,"§ && !this.§#"!§ && !this.§7!D§)
         {
            this.§`!;§();
         }
      }
      
      public function §`!;§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§!!C§ = 0;
         this.§8!;§ = §0"3§;
         this.§-!o§ = 0;
         this.§%"1§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§@,§ = this.§%"1§;
         this.§8!;§ *= Math.abs(this.§%"1§) / 3;
         this.§;E§ = this.§8!;§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§<§ = 0;
         }
         else if(this.§8!;§ < 350)
         {
            this.§<§ = 0;
         }
         else
         {
            this.§<§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§<§ = Math.random() > 0.5 ? Number(this.§<§) : Number(0);
         }
      }
      
      public function §,!S§() : void
      {
         this.§`!-§.x = this.mX / §5X§.§,!m§;
         this.§`!-§.y = (this.mY + this.§-!o§) / §5X§.§,!m§;
         this.§`!-§.rotation = this.§^@§ / 180 * Math.PI;
      }
      
      public function §#!t§() : void
      {
         this.§7!D§ = true;
         this.§,"§ = false;
         this.§#"!§ = false;
         this.§!!C§ = 0;
         this.§36§ = 0;
         this.§8!;§ = 0;
         this.§8!;§ = 0;
         this.§-!o§ = 0;
         this.§^@§ = 0;
         this.§@,§ = 0;
         this.§<§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.mX) * (param1 - this.mX) + (param2 - this.mY) * (param2 - this.mY));
         if(_loc3_ <= this.§^l§ * 1.1)
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
         this.§36§ = 100;
         this.§,!S§();
         if(_loc3_)
         {
            this.§!9§.§ 3§();
         }
      }
      
      public function §!!#§() : §,!n§
      {
         return this.§6!y§;
      }
      
      public function get §3!E§() : Number
      {
         return this.§8!;§;
      }
      
      public function get §+8§() : Number
      {
         return this.§36§;
      }
      
      public function set §+8§(param1:Number) : void
      {
         this.§36§ = param1;
      }
      
      public function get §!#§() : Number
      {
         return this.§]y§;
      }
      
      public function get §,!E§() : Boolean
      {
         return this.§,"§;
      }
      
      public function get radius() : Number
      {
         return this.§^l§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§`!-§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §!#§(param1:Number) : void
      {
         this.§]y§ = param1;
      }
      
      public function get §;"'§() : Number
      {
         return this.§-!2§;
      }
      
      public function set §;"'§(param1:Number) : void
      {
         this.§-!2§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§?V§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§?V§ = param1;
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function get §^B§() : Number
      {
         return this.§[j§;
      }
      
      public function get §8!@§() : Number
      {
         return this.§9!O§;
      }
   }
}
