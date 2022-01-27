package §?!<§
{
   import §""<§.§ g§;
   import §&!S§.b2Vec2;
   import §'!&§.DisplayObject;
   import §'!&§.Sprite;
   import §8o§.§]!U§;
   import §;"=§.§"!Y§;
   import §;"=§.§3!R§;
   import §;"=§.§9!B§;
   import §;"=§.§]"<§;
   import §[,§.§5,§;
   
   public class §6"3§
   {
      
      public static const §>"$§:String = "ChannelSlingshot";
      
      public static const § N§:Number = 900;
      
      public static const §>!@§:Number = 200;
      
      public static const §^"2§:Number = 200;
      
      public static const §"z§:Number = 1500;
      
      public static const §?,§:Number = 5000;
      
      public static const §#V§:Number = 1000;
      
      public static const §2!t§:Number = 1000;
      
      public static const §>"A§:Number = 46.25;
      
      public static const §3K§:Number = 52.5;
       
      
      protected var mName:String;
      
      protected var §>!J§:Number;
      
      protected var §;`§:Number;
      
      protected var §@!<§:Number;
      
      protected var §?6§:Number;
      
      protected var §&Q§:Number;
      
      protected var §^!Z§:Number;
      
      private var §&i§:§"!Y§;
      
      protected var §^8§:Number;
      
      protected var § 7§:Number = 1;
      
      private var §>#§:Sprite;
      
      protected var §"">§:§]!U§;
      
      private var §73§:DisplayObject;
      
      protected var §5G§:§&V§;
      
      private var §0E§:Number;
      
      protected var §`!@§:Boolean = false;
      
      private var §1!i§:Boolean = false;
      
      protected var § !8§:Boolean = false;
      
      private var §94§:Number;
      
      private var §<!9§:Number = 0;
      
      private var §1p§:Number = 0;
      
      private var §%g§:Number = 0;
      
      private var §6"5§:Number = 1000;
      
      private var §5!6§:Number;
      
      private var §"!+§:Number;
      
      private var §2!#§:int;
      
      private var §,"'§:Number = 0;
      
      protected var §6p§:Number;
      
      protected var §6U§:Number;
      
      private var §6l§:Number = 1;
      
      private var §#F§:Number = 0;
      
      private var §+I§:b2Vec2;
      
      private var §-!Y§:Number = 1;
      
      private var §2]§:§3!R§;
      
      protected var §00§:§]"<§;
      
      protected var §2"G§:Boolean = true;
      
      public function §6"3§(param1:§&V§, param2:Sprite, param3:String, param4:§]"<§, param5:Number, param6:Number, param7:Number = 0.0)
      {
         super();
         this.§00§ = param4;
         this.§5G§ = param1;
         this.§>#§ = param2;
         this.mName = param3;
         this.§2]§ = param4.shape;
         this.§&i§ = param4.soundResource;
         this.§>!J§ = param5;
         this.§;`§ = param6;
         this.§@!<§ = param7 / Math.PI * 180;
         this.§^!Z§ = this.§@!<§;
         this.§?6§ = param5;
         this.§&Q§ = param6;
         this.§`!@§ = false;
         this.§1!i§ = false;
         this.§^8§ = 0;
         this.§<!9§ = 0;
         this.§6p§ = 0;
         this.§+!6§();
         this.§2f§();
      }
      
      public function dispose() : void
      {
         if(this.§>#§)
         {
            this.§>#§.dispose();
            this.§>#§ = null;
         }
      }
      
      public function get levelItem() : §]"<§
      {
         return this.§00§;
      }
      
      public function §!!H§(param1:Boolean) : void
      {
         this.§`!@§ = param1;
         if(!this.§7;§)
         {
            this.§>!J§ = this.§?6§;
            this.§;`§ = this.§&Q§;
            this.§^8§ = this.§@!<§;
            this.updateRenderer();
         }
      }
      
      public function set §"=§(param1:Boolean) : void
      {
         this.§2"G§ = param1;
      }
      
      public function get §`!9§() : Number
      {
         if(this.name.toUpperCase() == "BIRD_GREEN")
         {
            return §3K§;
         }
         return §>"A§;
      }
      
      public function §#!E§(param1:Number) : void
      {
         if(!this.§1!i§ || this.§`!@§)
         {
            return;
         }
         if(this.§ 7§ != 0)
         {
            this.§%g§ = 0;
            this.§,"'§ = 0;
            this.§^8§ = 0;
            this.§"!+§ = 0;
            this.§ 7§ = 0;
         }
         param1 = Math.min(param1,this.§94§);
         this.§>!J§ += param1 * (this.§5G§.x - this.§>!J§) / this.§94§;
         this.§;`§ += param1 * (this.§5G§.y - this.§;`§) / this.§94§;
         this.§;`§ -= param1 / 50 * (this.§94§ / § N§);
         this.§^8§ += param1 * (360 - this.§^8§) / this.§94§;
         this.§94§ -= param1;
         if(this.§94§ <= 0)
         {
            this.§>!J§ = this.§5G§.x;
            this.§;`§ = this.§5G§.y;
            this.§1!i§ = false;
            this.§!!H§(true);
            this.§^8§ = 0;
            this.§@!<§ = this.§5G§.angle / Math.PI * 180;
         }
         this.updateRenderer();
      }
      
      public function §<!0§() : void
      {
         this.§1!i§ = true;
         this.§94§ = § N§;
         this.§%3§(§"!Y§.§&!v§);
         if(this.§,"'§ != 0)
         {
            this.§;`§ += this.§,"'§;
            this.§,"'§ = 0;
         }
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§5,§ = null;
         if(!this.§`!@§ && this.§6p§ >= 0)
         {
            if(this.§6U§ > this.§5G§.§#!@§.§'!I§.ground)
            {
               this.applyGravity(this.§5G§.§#!@§.§'!I§.ground - this.§6U§);
               this.§6p§ = -1;
            }
            this.§6p§ -= param1;
            if(this.§6p§ <= 0)
            {
               if(this.§%g§ > 0)
               {
                  this.§6p§ = this.§%g§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§6U§))
               {
                  _loc2_ = this.§5G§.§#!@§.objects.§ "0§(this.§>!J§,this.§6U§);
               }
               if(_loc2_ < 0)
               {
                  if(this.applyGravity(param1 / 100))
                  {
                     this.§6p§ = -1;
                  }
                  else
                  {
                     this.§6p§ = 0;
                  }
               }
               else
               {
                  _loc3_ = this.§5G§.§#!@§.objects.getObject(_loc2_) as §5,§;
                  if(_loc3_ && _loc3_.§>2§)
                  {
                     this.§ !8§ = false;
                     this.§6p§ = -1;
                  }
                  else if(_loc3_ && _loc3_.§#"%§())
                  {
                     this.§ !8§ = false;
                     this.§6p§ = 2000;
                  }
                  else
                  {
                     this.§6p§ = 500;
                  }
               }
            }
         }
      }
      
      public function applyGravity(param1:Number) : Boolean
      {
         this.§;`§ += param1;
         this.§6U§ += param1;
         if(this.§6U§ > this.§5G§.§#!@§.§'!I§.ground)
         {
            param1 = this.§6U§ - this.§5G§.§#!@§.§'!I§.ground;
            this.§;`§ -= param1;
            this.§6U§ -= param1;
            this.updateRenderer();
            return true;
         }
         this.updateRenderer();
         return false;
      }
      
      protected function §+!6§() : void
      {
         var _loc1_:§9!B§ = null;
         if(this.§2]§ is §9!B§)
         {
            _loc1_ = §9!B§(this.§2]§);
            this.§+I§ = new b2Vec2(_loc1_.§;y§.x,_loc1_.§;y§.y);
            this.§0E§ = _loc1_.radius;
         }
         else
         {
            this.§+I§ = new b2Vec2(0,0);
            this.§0E§ = 1.5;
         }
      }
      
      protected function §2f§() : void
      {
         this.§"">§ = this.§5G§.§#!@§.animationManager.getAnimation(this.mName);
         if(!this.§"">§)
         {
            this.§>!l§(null);
         }
         else
         {
            this.§+!Z§();
         }
      }
      
      public function §>!l§(param1:DisplayObject) : void
      {
         this.§73§ = param1;
         if(this.§73§ && this.§73§.parent != this.§>#§)
         {
            this.§>#§.addChild(this.§73§);
         }
         this.updateRenderer();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.updateGroundControl(param1);
         if(this.§1!i§)
         {
            this.§%g§ = 0;
            _loc4_ = false;
         }
         if(this.§2"G§)
         {
            this.§^S§(param1);
            this.§7!T§(param1);
            if(_loc4_ && param3)
            {
               this.§ "G§(param1,param2);
            }
         }
      }
      
      public function §^S§(param1:Number) : void
      {
         if(this.§<!9§ > 0)
         {
            this.§<!9§ -= param1;
            if(this.§<!9§ <= 0)
            {
               this.§^!%§();
            }
         }
         else if(this.§1p§ <= 0 && Math.random() * §"z§ < param1 && this.§5G§.mSlingShotState)
         {
            this.§3"!§();
         }
      }
      
      public function §^!%§() : void
      {
         this.§<!9§ = 0;
         this.§+!Z§();
      }
      
      public function §3"!§() : void
      {
         if(!this.§2"G§)
         {
            return;
         }
         this.§<!9§ = §>!@§;
         this.§2!a§();
      }
      
      protected function §2!a§() : void
      {
         this.§>!l§(this.§"">§.getSubAnimation("blink").getFrame(0,this.§73§));
      }
      
      public function §7!T§(param1:Number) : void
      {
         if(this.§1p§ > 0)
         {
            this.§1p§ -= param1;
            if(this.§1p§ <= 0)
            {
               this.§;!i§();
            }
         }
         else if(this.§<!9§ <= 0 && Math.random() * §?,§ < param1)
         {
            this.§%3§();
         }
      }
      
      public function §;!i§() : void
      {
         this.§1p§ = 0;
         this.§+!Z§();
      }
      
      protected function §+!Z§() : void
      {
         this.§>!l§(this.§"">§.getFrame(0,this.§73§));
      }
      
      public function §%3§(param1:int = -1, param2:Boolean = false) : void
      {
         if(!this.§2"G§)
         {
            return;
         }
         if(this.§1p§ > 0)
         {
            this.§;!i§();
         }
         if(this.§<!9§ > 0)
         {
            this.§^!%§();
         }
         if(param1 < 0)
         {
            param1 = §"!Y§.§ !i§;
         }
         this.§1p§ = §^"2§;
         this.§ l§();
         if(this.§`!@§ || this.§1!i§ || param2)
         {
            §5,§.§`s§(param1,this.§&i§);
         }
         else
         {
            §5,§.§`s§(param1,this.§&i§,§>"$§);
         }
      }
      
      protected function § l§() : void
      {
         this.§>!l§(this.§"">§.getSubAnimation("yell").getFrame(0,this.§73§));
      }
      
      public function § "G§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§%g§ > 0)
         {
            this.§%g§ -= param1;
            if(this.§%g§ <= 0)
            {
               ++this.§2!#§;
               this.§"!+§ *= 0.4;
               if(!this.§`!@§ && this.§2!#§ < 2)
               {
                  if(this.§2!#§ > 1 && this.§"!+§ < -1)
                  {
                     this.§"!+§ = -1;
                  }
                  this.§5!6§ = this.§"!+§;
                  this.§%g§ = §2!t§;
                  this.§%g§ *= Math.abs(this.§5!6§) / 2;
                  this.§6"5§ = this.§%g§;
                  this.§^8§ = 0;
                  this.§ 7§ = 0;
               }
               else if(!this.§`!@§ && param2)
               {
                  this.§[!h§(1.5);
               }
               else
               {
                  this.§%g§ = 0;
                  this.§,"'§ = 0;
                  this.§^8§ = 0;
                  this.§"!+§ = 0;
               }
            }
            else
            {
               if(this.§%g§ >= this.§6"5§ / 2)
               {
                  _loc3_ = (this.§6"5§ - this.§%g§) / (this.§6"5§ / 2);
                  _loc3_ = § g§.§`6§(_loc3_);
                  this.§,"'§ = _loc3_ * this.§5!6§;
               }
               else
               {
                  _loc3_ = (this.§6"5§ / 2 - this.§%g§) / (this.§6"5§ / 2);
                  _loc3_ = § g§.§`6§(_loc3_,false);
                  this.§,"'§ = this.§5!6§ + _loc3_ * -this.§5!6§;
               }
               this.§^8§ = 360 * § g§.§`6§((this.§6"5§ - this.§%g§) / this.§6"5§) * this.§ 7§;
            }
            this.updateRenderer();
         }
         else if(Math.random() * §#V§ < param1 && !this.§`!@§ && !this.§1!i§ && !this.§ !8§)
         {
            this.§[!h§();
         }
      }
      
      public function §[!h§(param1:Number = 1) : void
      {
         if(!this.§2"G§)
         {
            return;
         }
         this.§2!#§ = 0;
         this.§%g§ = §2!t§;
         this.§,"'§ = 0;
         this.§5!6§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§"!+§ = this.§5!6§;
         this.§%g§ *= Math.abs(this.§5!6§) / 3;
         this.§6"5§ = this.§%g§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§ 7§ = 0;
         }
         else if(this.§%g§ < 350)
         {
            this.§ 7§ = 0;
         }
         else
         {
            this.§ 7§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§ 7§ = Math.random() > 0.5 ? Number(this.§ 7§) : Number(0);
         }
      }
      
      public function updateRenderer() : void
      {
         if(this.§5G§.§57§)
         {
            this.§>#§.x = this.§>!J§ / §'!1§.§<!@§;
            this.§>#§.y = (this.§;`§ + this.§,"'§) / §'!1§.§<!@§;
         }
         else
         {
            this.§>#§.x = (this.§>!J§ + this.§,"'§ * Math.cos((this.§@!<§ + 90) / 180 * Math.PI)) / §'!1§.§<!@§;
            this.§>#§.y = (this.§;`§ + this.§,"'§ * Math.sin((this.§@!<§ + 90) / 180 * Math.PI)) / §'!1§.§<!@§;
         }
         this.§>#§.rotation = (this.§^8§ + this.§@!<§) / 180 * Math.PI;
      }
      
      public function §+y§() : void
      {
         this.§ !8§ = true;
         this.§`!@§ = false;
         this.§1!i§ = false;
         this.§2!#§ = 0;
         this.§6p§ = 0;
         this.§%g§ = 0;
         this.§%g§ = 0;
         this.§,"'§ = 0;
         this.§^8§ = 0;
         this.§"!+§ = 0;
         this.§ 7§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§>!J§) * (param1 - this.§>!J§) + (param2 - this.§;`§) * (param2 - this.§;`§));
         if(_loc3_ <= this.§0E§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§>!J§ >= param3 && this.§>!J§ <= param4 && this.§;`§ >= param1 && this.§;`§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = false;
         if(this.§>!J§ != param1 || this.§;`§ != param2)
         {
            _loc4_ = true;
         }
         this.§>!J§ = param1;
         this.§;`§ = param2;
         this.§^8§ = param3;
         this.§6p§ = 100;
         this.updateRenderer();
         if(_loc4_)
         {
            this.§5G§.§6!,§();
         }
      }
      
      public function get §#"'§() : Number
      {
         return this.§%g§;
      }
      
      public function get §-!w§() : Number
      {
         return this.§6p§;
      }
      
      public function set §-!w§(param1:Number) : void
      {
         this.§6p§ = param1;
      }
      
      public function get §2"A§() : Number
      {
         return this.§6l§;
      }
      
      public function get §7;§() : Boolean
      {
         return this.§`!@§;
      }
      
      public function get radius() : Number
      {
         return this.§0E§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§>#§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §2"A§(param1:Number) : void
      {
         this.§6l§ = param1;
      }
      
      public function get §'Y§() : Number
      {
         return this.§#F§;
      }
      
      public function set §'Y§(param1:Number) : void
      {
         this.§#F§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§-!Y§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§-!Y§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§>!J§;
      }
      
      public function get y() : Number
      {
         return this.§;`§;
      }
      
      public function get §?U§() : Number
      {
         return this.§?6§;
      }
      
      public function get §3A§() : Number
      {
         return this.§&Q§;
      }
   }
}
