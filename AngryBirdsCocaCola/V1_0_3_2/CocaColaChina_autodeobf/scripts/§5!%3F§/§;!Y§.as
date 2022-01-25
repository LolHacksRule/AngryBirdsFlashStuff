package §5!?§
{
   import §#!a§.Texture;
   import §4!O§.§&+§;
   import §6!Q§.§8!_§;
   import §8r§.§-!$§;
   import §8r§.§^!a§;
   import §;t§.§=_§;
   import §;t§.Sprite;
   import §[o§.§3!M§;
   import §[o§.§4C§;
   import §[o§.§4L§;
   import §implements§.b2Vec2;
   
   public class §;!Y§
   {
      
      public static const §&!M§:String = "ChannelSlingshot";
      
      public static const §`!M§:Number = 900;
      
      public static const §"!>§:Number = 200;
      
      public static const §5!$§:Number = 200;
      
      public static const §1"§:Number = 1500;
      
      public static const §46§:Number = 5000;
      
      public static const §5Y§:Number = 1000;
      
      public static const §?!C§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var §?H§:Number;
      
      protected var §>!a§:Number;
      
      protected var §%'§:Number;
      
      protected var §4!a§:Number;
      
      private var §1o§:§3!M§;
      
      protected var §+!6§:Number;
      
      protected var §#,§:Number = 1;
      
      private var §8q§:Sprite;
      
      protected var §9!G§:§^!a§;
      
      private var §2D§:§=_§;
      
      protected var §"M§:§'C§;
      
      private var §5w§:Number;
      
      private var §!K§:Boolean = false;
      
      private var §&c§:Boolean = false;
      
      protected var §`!+§:Boolean = false;
      
      private var §&b§:Number;
      
      private var §4&§:Number = 0;
      
      private var §]!R§:Number = 0;
      
      private var §,u§:Number = 0;
      
      private var §?l§:Number = 1000;
      
      private var §#v§:Number;
      
      private var §-M§:Number;
      
      private var §27§:int;
      
      private var §1!J§:Number = 0;
      
      protected var §for§:Number;
      
      protected var §<J§:Number;
      
      private var §=M§:Number = 1;
      
      private var §3!8§:Number = 0;
      
      private var §%M§:b2Vec2;
      
      private var §`z§:Number = 1;
      
      public function §;!Y§(param1:§'C§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§"M§ = param1;
         this.§8q§ = param2;
         this.mName = param3;
         this.§1o§ = §4L§.§+6§(this.mName).§#J§;
         this.§?H§ = param4;
         this.§>!a§ = param5;
         this.§%'§ = param4;
         this.§4!a§ = param5;
         this.§+!6§ = 0;
         this.§!K§ = false;
         this.§&c§ = false;
         this.§4&§ = 0;
         this.§?7§();
         this.§for§ = 0;
      }
      
      public function §]!+§() : void
      {
         this.§!K§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§8q§)
         {
            this.§8q§.dispose();
            this.§8q§ = null;
         }
      }
      
      public function §9!"§(param1:Number) : void
      {
         if(!this.§&c§ || this.§!K§)
         {
            return;
         }
         if(this.§#,§ != 0)
         {
            this.§,u§ = 0;
            this.§1!J§ = 0;
            this.§+!6§ = 0;
            this.§-M§ = 0;
            this.§#,§ = 0;
         }
         param1 = Math.min(param1,this.§&b§);
         this.§?H§ += param1 * (this.§"M§.§?H§ - this.§?H§) / this.§&b§;
         this.§>!a§ += param1 * (this.§"M§.§>!a§ - this.§>!a§) / this.§&b§;
         this.§>!a§ -= param1 / 50 * (this.§&b§ / §`!M§);
         this.§+!6§ += param1 * (360 - this.§+!6§) / this.§&b§;
         this.§&b§ -= param1;
         if(this.§&b§ <= 0)
         {
            this.§?H§ = this.§"M§.§?H§;
            this.§>!a§ = this.§"M§.§>!a§;
            this.§&c§ = false;
            this.§!K§ = true;
            this.§+!6§ = 0;
         }
         this.§%!9§();
      }
      
      public function §]I§() : void
      {
         this.§&c§ = true;
         this.§&b§ = §`!M§;
         this.§9§(§3!M§.§%!4§);
         if(this.§1!J§ != 0)
         {
            this.§>!a§ += this.§1!J§;
            this.§1!J§ = 0;
         }
      }
      
      public function §#7§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§!K§ && this.§for§ >= 0)
         {
            if(this.§<J§ > this.§"M§.mLevelMain.§>!J§.§09§)
            {
               this.§ !X§(this.§"M§.mLevelMain.§>!J§.§09§ - this.§<J§);
               this.§for§ = -1;
            }
            this.§for§ -= param1;
            if(this.§for§ <= 0)
            {
               if(this.§,u§ > 0)
               {
                  this.§for§ = this.§,u§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§<J§))
               {
                  _loc2_ = this.§"M§.mLevelMain.objects.§3'§(this.§?H§,this.§<J§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§ !X§(param1 / 100))
                  {
                     this.§for§ = -1;
                  }
                  else
                  {
                     this.§for§ = 0;
                  }
               }
               else if(!this.§"M§.mLevelMain.objects.§2T§(_loc2_).§#W§)
               {
                  this.§`!+§ = false;
                  this.§for§ = -1;
               }
               else if(this.§"M§.mLevelMain.objects.§2T§(_loc2_).§@T§())
               {
                  this.§`!+§ = false;
                  this.§for§ = 2000;
               }
               else
               {
                  this.§for§ = 500;
               }
            }
         }
      }
      
      public function § !X§(param1:Number) : Boolean
      {
         this.§>!a§ += param1;
         this.§<J§ += param1;
         if(this.§<J§ > this.§"M§.mLevelMain.§>!J§.§09§)
         {
            param1 = this.§<J§ - this.§"M§.mLevelMain.§>!J§.§09§;
            this.§>!a§ -= param1;
            this.§<J§ -= param1;
            this.§%!9§();
            return true;
         }
         this.§%!9§();
         return false;
      }
      
      public function §?7§() : void
      {
         var _loc1_:§4C§ = §4L§.§+6§(this.mName).shape;
         if(_loc1_.§7M§() == §4C§.§7!3§)
         {
            this.§%M§ = _loc1_.§^!K§()[0];
            this.§5w§ = _loc1_.§=$§;
         }
         else if(_loc1_.§7M§() == §4C§.§=m§)
         {
            this.§%M§ = new b2Vec2(0,0);
            this.§5w§ = 1.5;
         }
         this.§9!G§ = this.§"M§.mLevelMain.§6!M§.§8T§(this.mName);
         if(!this.§9!G§)
         {
            this.§#!c§(null);
         }
         else
         {
            this.§#!c§(this.§9!G§.getFrame(0));
         }
      }
      
      public function §#!c§(param1:§-!$§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§"M§.§]!F§.textureManager.§'N§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§2D§ == null)
         {
            this.§2D§ = new §=_§(_loc2_);
            this.§8q§.addChild(this.§2D§);
         }
         else
         {
            this.§2D§.texture = _loc2_;
         }
         if(param1)
         {
            this.§2D§.x = -param1.pivotX - this.§%M§.x / §>"§.§'!S§;
            this.§2D§.y = -param1.pivotY - this.§%M§.y / §>"§.§'!S§;
         }
         else
         {
            this.§2D§.x = -this.§2D§.width / 2;
            this.§2D§.y = -this.§2D§.height / 2;
         }
         this.§2D§.scaleX = _loc3_;
         this.§2D§.scaleY = _loc3_;
         this.§%!9§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§#7§(param1);
         if(this.§&c§)
         {
            this.§,u§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§1!"§(param1);
            this.§0?§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§%L§(param1,param2);
            }
         }
      }
      
      public function §1!"§(param1:Number) : void
      {
         if(this.§4&§ > 0)
         {
            this.§4&§ -= param1;
            if(this.§4&§ <= 0)
            {
               this.§!!1§();
            }
         }
         else if(this.§]!R§ <= 0 && Math.random() * §1"§ < param1 && this.§"M§.mSlingShotState)
         {
            this.§2-§();
         }
      }
      
      public function §!!1§() : void
      {
         this.§4&§ = 0;
         this.§#!c§(this.§9!G§.getFrame(0));
      }
      
      public function §2-§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§4&§ = §"!>§;
         this.§#!c§(this.§9!G§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §0?§(param1:Number) : void
      {
         if(this.§]!R§ > 0)
         {
            this.§]!R§ -= param1;
            if(this.§]!R§ <= 0)
            {
               this.§ !$§();
            }
         }
         else if(this.§4&§ <= 0 && Math.random() * §46§ < param1)
         {
            this.§9§();
         }
      }
      
      public function § !$§() : void
      {
         this.§]!R§ = 0;
         this.§#!c§(this.§9!G§.getFrame(0));
      }
      
      public function §9§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§]!R§ > 0)
         {
            this.§ !$§();
         }
         if(this.§4&§ > 0)
         {
            this.§!!1§();
         }
         if(param1 < 0)
         {
            param1 = §3!M§.§ !S§;
         }
         this.§]!R§ = §5!$§;
         this.§#!c§(this.§9!G§.getSubAnimation("yell").getFrame(0));
         if(this.§!K§ || this.§&c§ || param2)
         {
            §&+§.§=R§(param1,this.§1o§);
         }
         else
         {
            §&+§.§=R§(param1,this.§1o§,§&!M§);
         }
      }
      
      public function §%L§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§,u§ > 0)
         {
            this.§,u§ -= param1;
            if(this.§,u§ <= 0)
            {
               ++this.§27§;
               this.§-M§ *= 0.4;
               if(!this.§!K§ && this.§27§ < 2)
               {
                  if(this.§27§ > 1 && this.§-M§ < -1)
                  {
                     this.§-M§ = -1;
                  }
                  this.§#v§ = this.§-M§;
                  this.§,u§ = §?!C§;
                  this.§,u§ *= Math.abs(this.§#v§) / 2;
                  this.§?l§ = this.§,u§;
                  this.§+!6§ = 0;
                  this.§#,§ = 0;
               }
               else if(!this.§!K§ && param2)
               {
                  this.§-'§(2.25);
               }
               else
               {
                  this.§,u§ = 0;
                  this.§1!J§ = 0;
                  this.§+!6§ = 0;
                  this.§-M§ = 0;
               }
            }
            else
            {
               if(this.§,u§ >= this.§?l§ / 2)
               {
                  _loc3_ = (this.§?l§ - this.§,u§) / (this.§?l§ / 2);
                  _loc3_ = §8!_§.§9R§(_loc3_);
                  this.§1!J§ = _loc3_ * this.§#v§;
               }
               else
               {
                  _loc3_ = (this.§?l§ / 2 - this.§,u§) / (this.§?l§ / 2);
                  _loc3_ = §8!_§.§9R§(_loc3_,false);
                  this.§1!J§ = this.§#v§ + _loc3_ * -this.§#v§;
               }
               this.§+!6§ = 360 * §8!_§.§9R§((this.§?l§ - this.§,u§) / this.§?l§) * this.§#,§;
            }
            this.§%!9§();
         }
         else if(Math.random() * §5Y§ < param1 && !this.§!K§ && !this.§&c§ && !this.§`!+§)
         {
            this.§-'§();
         }
      }
      
      public function §-'§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§27§ = 0;
         this.§,u§ = §?!C§;
         this.§1!J§ = 0;
         this.§#v§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§-M§ = this.§#v§;
         this.§,u§ *= Math.abs(this.§#v§) / 3;
         this.§?l§ = this.§,u§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§#,§ = 0;
         }
         else if(this.§,u§ < 350)
         {
            this.§#,§ = 0;
         }
         else
         {
            this.§#,§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§#,§ = Math.random() > 0.5 ? Number(this.§#,§) : Number(0);
         }
      }
      
      public function §%!9§() : void
      {
         this.§8q§.x = this.§?H§ / §>"§.§'!S§;
         this.§8q§.y = (this.§>!a§ + this.§1!J§) / §>"§.§'!S§;
         this.§8q§.rotation = this.§+!6§ / 180 * Math.PI;
      }
      
      public function §<9§() : void
      {
         this.§`!+§ = true;
         this.§!K§ = false;
         this.§&c§ = false;
         this.§27§ = 0;
         this.§for§ = 0;
         this.§,u§ = 0;
         this.§,u§ = 0;
         this.§1!J§ = 0;
         this.§+!6§ = 0;
         this.§-M§ = 0;
         this.§#,§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§?H§) * (param1 - this.§?H§) + (param2 - this.§>!a§) * (param2 - this.§>!a§));
         if(_loc3_ <= this.§5w§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§?H§ >= param3 && this.§?H§ <= param4 && this.§>!a§ >= param1 && this.§>!a§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.§?H§ != param1 || this.§>!a§ != param2)
         {
            _loc3_ = true;
         }
         this.§?H§ = param1;
         this.§>!a§ = param2;
         this.§for§ = 100;
         this.§%!9§();
         if(_loc3_)
         {
            this.§"M§.§?!H§();
         }
      }
      
      public function §!!O§() : §=_§
      {
         return this.§2D§;
      }
      
      public function get §8Y§() : Number
      {
         return this.§,u§;
      }
      
      public function get §8&§() : Number
      {
         return this.§for§;
      }
      
      public function set §8&§(param1:Number) : void
      {
         this.§for§ = param1;
      }
      
      public function get §@?§() : Number
      {
         return this.§=M§;
      }
      
      public function get §7p§() : Boolean
      {
         return this.§!K§;
      }
      
      public function get radius() : Number
      {
         return this.§5w§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§8q§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §@?§(param1:Number) : void
      {
         this.§=M§ = param1;
      }
      
      public function get § L§() : Number
      {
         return this.§3!8§;
      }
      
      public function set § L§(param1:Number) : void
      {
         this.§3!8§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§`z§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§`z§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§?H§;
      }
      
      public function get y() : Number
      {
         return this.§>!a§;
      }
      
      public function get §4=§() : Number
      {
         return this.§%'§;
      }
      
      public function get §[!-§() : Number
      {
         return this.§4!a§;
      }
   }
}
