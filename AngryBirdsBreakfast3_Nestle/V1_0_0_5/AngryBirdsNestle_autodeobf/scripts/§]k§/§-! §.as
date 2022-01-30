package §]k§
{
   import §%z§.§&;§;
   import §%z§.§-i§;
   import §%z§.§9!n§;
   import §%z§.§;#§;
   import §,!q§.DisplayObject;
   import §,!q§.Sprite;
   import §-!A§.b2Vec2;
   import §-!b§.§<W§;
   import §0!$§.§9e§;
   import §=!`§.§^^§;
   
   public class §-! §
   {
      
      public static const §'"6§:String = "ChannelSlingshot";
      
      public static const §%`§:Number = 900;
      
      public static const §6!H§:Number = 200;
      
      public static const §7!I§:Number = 200;
      
      public static const §5s§:Number = 1500;
      
      public static const §7!l§:Number = 5000;
      
      public static const §6R§:Number = 1000;
      
      public static const §-!!§:Number = 1000;
      
      public static const §3§:Number = 46.25;
      
      public static const §[!i§:Number = 52.5;
       
      
      protected var mName:String;
      
      protected var §@S§:Number;
      
      protected var §#B§:Number;
      
      protected var §"!N§:Number;
      
      protected var §5P§:Number;
      
      protected var §!"0§:Number;
      
      protected var §%!2§:Number;
      
      private var §?h§:§;#§;
      
      protected var §'j§:Number;
      
      protected var §0%§:Number = 1;
      
      private var §2!&§:Sprite;
      
      protected var §6!A§:§<W§;
      
      private var §7v§:DisplayObject;
      
      protected var §<E§:§>!x§;
      
      private var §;K§:Number;
      
      protected var §@!8§:Boolean = false;
      
      private var §-!h§:Boolean = false;
      
      protected var §implements§:Boolean = false;
      
      private var §"h§:Number;
      
      private var §4!Q§:Number = 0;
      
      private var §6!,§:Number = 0;
      
      private var §06§:Number = 0;
      
      private var §3!z§:Number = 1000;
      
      private var §-G§:Number;
      
      private var §'!c§:Number;
      
      private var §!!V§:int;
      
      private var §="%§:Number = 0;
      
      protected var §5R§:Number;
      
      protected var §6!q§:Number;
      
      private var §[!0§:Number = 1;
      
      private var §9!t§:Number = 0;
      
      private var §&Y§:b2Vec2;
      
      private var §?!C§:Number = 1;
      
      private var §switch§:§-i§;
      
      protected var §<9§:§9!n§;
      
      protected var §=!v§:Boolean = true;
      
      public function §-! §(param1:§>!x§, param2:Sprite, param3:String, param4:§9!n§, param5:Number, param6:Number, param7:Number = 0.0)
      {
         super();
         this.§<9§ = param4;
         this.§<E§ = param1;
         this.§2!&§ = param2;
         this.mName = param3;
         this.§switch§ = param4.shape;
         this.§?h§ = param4.soundResource;
         this.§@S§ = param5;
         this.§#B§ = param6;
         this.§"!N§ = param7 / Math.PI * 180;
         this.§%!2§ = this.§"!N§;
         this.§5P§ = param5;
         this.§!"0§ = param6;
         this.§@!8§ = false;
         this.§-!h§ = false;
         this.§'j§ = 0;
         this.§4!Q§ = 0;
         this.§5R§ = 0;
         this.§%L§();
         this.§4i§();
      }
      
      public function dispose() : void
      {
         if(this.§2!&§)
         {
            this.§2!&§.dispose();
            this.§2!&§ = null;
         }
      }
      
      public function get levelItem() : §9!n§
      {
         return this.§<9§;
      }
      
      public function §?5§(param1:Boolean) : void
      {
         this.§@!8§ = param1;
         if(!this.§4^§)
         {
            this.§@S§ = this.§5P§;
            this.§#B§ = this.§!"0§;
            this.§'j§ = this.§"!N§;
            this.updateRenderer();
         }
      }
      
      public function set § else§(param1:Boolean) : void
      {
         this.§=!v§ = param1;
      }
      
      public function get §?!w§() : Number
      {
         if(this.name.toUpperCase() == "BIRD_GREEN")
         {
            return §[!i§;
         }
         return §3§;
      }
      
      public function §[p§(param1:Number) : void
      {
         if(!this.§-!h§ || this.§@!8§)
         {
            return;
         }
         if(this.§0%§ != 0)
         {
            this.§06§ = 0;
            this.§="%§ = 0;
            this.§'j§ = 0;
            this.§'!c§ = 0;
            this.§0%§ = 0;
         }
         param1 = Math.min(param1,this.§"h§);
         this.§@S§ += param1 * (this.§<E§.x - this.§@S§) / this.§"h§;
         this.§#B§ += param1 * (this.§<E§.y - this.§#B§) / this.§"h§;
         this.§#B§ -= param1 / 50 * (this.§"h§ / §%`§);
         this.§'j§ += param1 * (360 - this.§'j§) / this.§"h§;
         this.§"h§ -= param1;
         if(this.§"h§ <= 0)
         {
            this.§@S§ = this.§<E§.x;
            this.§#B§ = this.§<E§.y;
            this.§-!h§ = false;
            this.§?5§(true);
            this.§'j§ = 0;
            this.§"!N§ = this.§<E§.angle / Math.PI * 180;
         }
         this.updateRenderer();
      }
      
      public function §=!%§() : void
      {
         this.§-!h§ = true;
         this.§"h§ = §%`§;
         this.§&t§(§;#§.§3E§);
         if(this.§="%§ != 0)
         {
            this.§#B§ += this.§="%§;
            this.§="%§ = 0;
         }
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§^^§ = null;
         if(!this.§@!8§ && this.§5R§ >= 0)
         {
            if(this.§6!q§ > this.§<E§.§1!w§.§-"3§.ground)
            {
               this.applyGravity(this.§<E§.§1!w§.§-"3§.ground - this.§6!q§);
               this.§5R§ = -1;
            }
            this.§5R§ -= param1;
            if(this.§5R§ <= 0)
            {
               if(this.§06§ > 0)
               {
                  this.§5R§ = this.§06§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§6!q§))
               {
                  _loc2_ = this.§<E§.§1!w§.objects.§#!r§(this.§@S§,this.§6!q§);
               }
               if(_loc2_ < 0)
               {
                  if(this.applyGravity(param1 / 100))
                  {
                     this.§5R§ = -1;
                  }
                  else
                  {
                     this.§5R§ = 0;
                  }
               }
               else
               {
                  _loc3_ = this.§<E§.§1!w§.objects.getObject(_loc2_) as §^^§;
                  if(_loc3_ && _loc3_.§2!g§)
                  {
                     this.§implements§ = false;
                     this.§5R§ = -1;
                  }
                  else if(_loc3_ && _loc3_.§@,§())
                  {
                     this.§implements§ = false;
                     this.§5R§ = 2000;
                  }
                  else
                  {
                     this.§5R§ = 500;
                  }
               }
            }
         }
      }
      
      public function applyGravity(param1:Number) : Boolean
      {
         this.§#B§ += param1;
         this.§6!q§ += param1;
         if(this.§6!q§ > this.§<E§.§1!w§.§-"3§.ground)
         {
            param1 = this.§6!q§ - this.§<E§.§1!w§.§-"3§.ground;
            this.§#B§ -= param1;
            this.§6!q§ -= param1;
            this.updateRenderer();
            return true;
         }
         this.updateRenderer();
         return false;
      }
      
      protected function §%L§() : void
      {
         var _loc1_:§&;§ = null;
         if(this.§switch§ is §&;§)
         {
            _loc1_ = §&;§(this.§switch§);
            this.§&Y§ = new b2Vec2(_loc1_.§+!G§.x,_loc1_.§+!G§.y);
            this.§;K§ = _loc1_.radius;
         }
         else
         {
            this.§&Y§ = new b2Vec2(0,0);
            this.§;K§ = 1.5;
         }
      }
      
      protected function §4i§() : void
      {
         this.§6!A§ = this.§<E§.§1!w§.§-h§.§ !u§(this.mName);
         if(!this.§6!A§)
         {
            this.§6c§(null);
         }
         else
         {
            this.§,m§();
         }
      }
      
      public function §6c§(param1:DisplayObject) : void
      {
         this.§7v§ = param1;
         if(this.§7v§ && this.§7v§.parent != this.§2!&§)
         {
            this.§2!&§.addChild(this.§7v§);
         }
         if(this.§7v§)
         {
            this.§7v§.pivotX -= this.§&Y§.x / §<S§.§;!Q§;
            this.§7v§.pivotY -= this.§&Y§.y / §<S§.§;!Q§;
         }
         this.updateRenderer();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.updateGroundControl(param1);
         if(this.§-!h§)
         {
            this.§06§ = 0;
            _loc4_ = false;
         }
         if(this.§=!v§)
         {
            this.§!!i§(param1);
            this.§6-§(param1);
            if(_loc4_ && param3)
            {
               this.§4!]§(param1,param2);
            }
         }
      }
      
      public function §!!i§(param1:Number) : void
      {
         if(this.§4!Q§ > 0)
         {
            this.§4!Q§ -= param1;
            if(this.§4!Q§ <= 0)
            {
               this.§4!_§();
            }
         }
         else if(this.§6!,§ <= 0 && Math.random() * §5s§ < param1 && this.§<E§.mSlingShotState)
         {
            this.§;!=§();
         }
      }
      
      public function §4!_§() : void
      {
         this.§4!Q§ = 0;
         this.§,m§();
      }
      
      public function §;!=§() : void
      {
         if(!this.§=!v§)
         {
            return;
         }
         this.§4!Q§ = §6!H§;
         this.§=!9§();
      }
      
      protected function §=!9§() : void
      {
         this.§6c§(this.§6!A§.getSubAnimation("blink").getFrame(0,this.§7v§));
      }
      
      public function §6-§(param1:Number) : void
      {
         if(this.§6!,§ > 0)
         {
            this.§6!,§ -= param1;
            if(this.§6!,§ <= 0)
            {
               this.§="'§();
            }
         }
         else if(this.§4!Q§ <= 0 && Math.random() * §7!l§ < param1)
         {
            this.§&t§();
         }
      }
      
      public function §="'§() : void
      {
         this.§6!,§ = 0;
         this.§,m§();
      }
      
      protected function §,m§() : void
      {
         this.§6c§(this.§6!A§.getFrame(0,this.§7v§));
      }
      
      public function §&t§(param1:int = -1, param2:Boolean = false) : void
      {
         if(!this.§=!v§)
         {
            return;
         }
         if(this.§6!,§ > 0)
         {
            this.§="'§();
         }
         if(this.§4!Q§ > 0)
         {
            this.§4!_§();
         }
         if(param1 < 0)
         {
            param1 = §;#§.§;4§;
         }
         this.§6!,§ = §7!I§;
         this.§#m§();
         if(this.§@!8§ || this.§-!h§ || param2)
         {
            §^^§.§,7§(param1,this.§?h§);
         }
         else
         {
            §^^§.§,7§(param1,this.§?h§,§'"6§);
         }
      }
      
      protected function §#m§() : void
      {
         this.§6c§(this.§6!A§.getSubAnimation("yell").getFrame(0,this.§7v§));
      }
      
      public function §4!]§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§06§ > 0)
         {
            this.§06§ -= param1;
            if(this.§06§ <= 0)
            {
               ++this.§!!V§;
               this.§'!c§ *= 0.4;
               if(!this.§@!8§ && this.§!!V§ < 2)
               {
                  if(this.§!!V§ > 1 && this.§'!c§ < -1)
                  {
                     this.§'!c§ = -1;
                  }
                  this.§-G§ = this.§'!c§;
                  this.§06§ = §-!!§;
                  this.§06§ *= Math.abs(this.§-G§) / 2;
                  this.§3!z§ = this.§06§;
                  this.§'j§ = 0;
                  this.§0%§ = 0;
               }
               else if(!this.§@!8§ && param2)
               {
                  this.§^!K§(1.5);
               }
               else
               {
                  this.§06§ = 0;
                  this.§="%§ = 0;
                  this.§'j§ = 0;
                  this.§'!c§ = 0;
               }
            }
            else
            {
               if(this.§06§ >= this.§3!z§ / 2)
               {
                  _loc3_ = (this.§3!z§ - this.§06§) / (this.§3!z§ / 2);
                  _loc3_ = §9e§.§]",§(_loc3_);
                  this.§="%§ = _loc3_ * this.§-G§;
               }
               else
               {
                  _loc3_ = (this.§3!z§ / 2 - this.§06§) / (this.§3!z§ / 2);
                  _loc3_ = §9e§.§]",§(_loc3_,false);
                  this.§="%§ = this.§-G§ + _loc3_ * -this.§-G§;
               }
               this.§'j§ = 360 * §9e§.§]",§((this.§3!z§ - this.§06§) / this.§3!z§) * this.§0%§;
            }
            this.updateRenderer();
         }
         else if(Math.random() * §6R§ < param1 && !this.§@!8§ && !this.§-!h§ && !this.§implements§)
         {
            this.§^!K§();
         }
      }
      
      public function §^!K§(param1:Number = 1) : void
      {
         if(!this.§=!v§)
         {
            return;
         }
         this.§!!V§ = 0;
         this.§06§ = §-!!§;
         this.§="%§ = 0;
         this.§-G§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§'!c§ = this.§-G§;
         this.§06§ *= Math.abs(this.§-G§) / 3;
         this.§3!z§ = this.§06§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§0%§ = 0;
         }
         else if(this.§06§ < 350)
         {
            this.§0%§ = 0;
         }
         else
         {
            this.§0%§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§0%§ = Math.random() > 0.5 ? Number(this.§0%§) : Number(0);
         }
      }
      
      public function updateRenderer() : void
      {
         if(this.§<E§.§8"-§)
         {
            this.§2!&§.x = this.§@S§ / §<S§.§;!Q§;
            this.§2!&§.y = (this.§#B§ + this.§="%§) / §<S§.§;!Q§;
         }
         else
         {
            this.§2!&§.x = (this.§@S§ + this.§="%§ * Math.cos((this.§"!N§ + 90) / 180 * Math.PI)) / §<S§.§;!Q§;
            this.§2!&§.y = (this.§#B§ + this.§="%§ * Math.sin((this.§"!N§ + 90) / 180 * Math.PI)) / §<S§.§;!Q§;
         }
         this.§2!&§.rotation = (this.§'j§ + this.§"!N§) / 180 * Math.PI;
      }
      
      public function §if§() : void
      {
         this.§implements§ = true;
         this.§@!8§ = false;
         this.§-!h§ = false;
         this.§!!V§ = 0;
         this.§5R§ = 0;
         this.§06§ = 0;
         this.§06§ = 0;
         this.§="%§ = 0;
         this.§'j§ = 0;
         this.§'!c§ = 0;
         this.§0%§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§@S§) * (param1 - this.§@S§) + (param2 - this.§#B§) * (param2 - this.§#B§));
         if(_loc3_ <= this.§;K§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§@S§ >= param3 && this.§@S§ <= param4 && this.§#B§ >= param1 && this.§#B§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = false;
         if(this.§@S§ != param1 || this.§#B§ != param2)
         {
            _loc4_ = true;
         }
         this.§@S§ = param1;
         this.§#B§ = param2;
         this.§'j§ = param3;
         this.§5R§ = 100;
         this.updateRenderer();
         if(_loc4_)
         {
            this.§<E§.§==§();
         }
      }
      
      public function get §<O§() : Number
      {
         return this.§06§;
      }
      
      public function get §3!D§() : Number
      {
         return this.§5R§;
      }
      
      public function set §3!D§(param1:Number) : void
      {
         this.§5R§ = param1;
      }
      
      public function get §-"-§() : Number
      {
         return this.§[!0§;
      }
      
      public function get §4^§() : Boolean
      {
         return this.§@!8§;
      }
      
      public function get radius() : Number
      {
         return this.§;K§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§2!&§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §-"-§(param1:Number) : void
      {
         this.§[!0§ = param1;
      }
      
      public function get §!9§() : Number
      {
         return this.§9!t§;
      }
      
      public function set §!9§(param1:Number) : void
      {
         this.§9!t§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§?!C§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§?!C§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§@S§;
      }
      
      public function get y() : Number
      {
         return this.§#B§;
      }
      
      public function get §>!H§() : Number
      {
         return this.§5P§;
      }
      
      public function get §!?§() : Number
      {
         return this.§!"0§;
      }
   }
}
