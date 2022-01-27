package §"§#0
{
   import §!!k§.§1!^§;
   import §!r§.§0N§;
   import §#g§.§'<§;
   import §#g§.§<b§;
   import §#g§.§["%§;
   import §#g§.§^i§;
   import §7"A§.b2Vec2;
   import §9"`§.§>"^§;
   import §use§.DisplayObject;
   import §use§.Sprite;
   
   public class §1!T§
   {
      
      public static const §,#+§:String = "ChannelSlingshot";
      
      public static const §@R§:Number = 900;
      
      public static const §'!2§:Number = 200;
      
      public static const §;]§:Number = 200;
      
      public static const §%@§:Number = 1500;
      
      public static const §9J§:Number = 5000;
      
      public static const §]f§:Number = 1000;
      
      public static const §'!z§:Number = 1000;
      
      public static const §]"n§:Number = 46.25;
      
      public static const §9"y§:Number = 52.5;
       
      
      protected var mName:String;
      
      protected var §0U§:Number;
      
      protected var §3"[§:Number;
      
      protected var §=a§:Number;
      
      protected var §"#7§:Number;
      
      protected var §[!8§:Number;
      
      protected var §>"Z§:Number;
      
      private var §`P§:§^i§;
      
      protected var §-T§:Number;
      
      protected var §<"h§:Number = 1;
      
      private var §0v§:Sprite;
      
      protected var §#!9§:§1!^§;
      
      private var §2!^§:DisplayObject;
      
      protected var §&! §:§%#7§;
      
      private var §7"+§:Number;
      
      protected var §%!D§:Boolean = false;
      
      private var §,"r§:Boolean = false;
      
      protected var §6a§:Boolean = false;
      
      private var §17§:Number;
      
      private var §-2§:Number = 0;
      
      private var §2!!§:Number = 0;
      
      private var §4!a§:Number = 0;
      
      private var §'"S§:Number = 1000;
      
      private var §&"y§:Number;
      
      private var §=x§:Number;
      
      private var §;4§:int;
      
      private var §%q§:Number = 0;
      
      protected var § #'§:Number;
      
      protected var §^c§:Number;
      
      private var §==§:Number = 1;
      
      private var §,!k§:Number = 0;
      
      private var §-!Y§:b2Vec2;
      
      private var §#"5§:Number = 1;
      
      private var §+!i§:§'<§;
      
      protected var §+!j§:§["%§;
      
      protected var §&8§:Boolean = true;
      
      private var §`X§:int;
      
      public function §1!T§(param1:§%#7§, param2:Sprite, param3:String, param4:§["%§, param5:Number, param6:Number, param7:Number, param8:int)
      {
         super();
         this.§+!j§ = param4;
         this.§`X§ = param8;
         this.§&! § = param1;
         this.§0v§ = param2;
         this.mName = param3;
         this.§+!i§ = param4.shape;
         this.§`P§ = param4.soundResource;
         this.§0U§ = param5;
         this.§3"[§ = param6;
         this.§=a§ = param7 / Math.PI * 180;
         this.§>"Z§ = this.§=a§;
         this.§"#7§ = param5;
         this.§[!8§ = param6;
         this.§%!D§ = false;
         this.§,"r§ = false;
         this.§-T§ = 0;
         this.§-2§ = 0;
         this.§ #'§ = 0;
         this.§6"2§();
         this.§1"6§();
      }
      
      public function get §+v§() : int
      {
         return this.§`X§;
      }
      
      public function dispose() : void
      {
         if(this.§0v§)
         {
            this.§0v§.dispose();
            this.§0v§ = null;
         }
      }
      
      public function set color(param1:uint) : void
      {
         if(this.§2!^§)
         {
            this.§2!^§.color = param1;
         }
      }
      
      public function get levelItem() : §["%§
      {
         return this.§+!j§;
      }
      
      public function setOnSlingshot(param1:Boolean) : void
      {
         this.§%!D§ = param1;
         if(!this.§="z§)
         {
            this.§0U§ = this.§"#7§;
            this.§3"[§ = this.§[!8§;
            this.§-T§ = this.§=a§;
            this.updateRenderer();
         }
      }
      
      public function set §"!8§(param1:Boolean) : void
      {
         this.§&8§ = param1;
      }
      
      public function get §5T§() : Number
      {
         if(this.name.toUpperCase() == "BIRD_GREEN")
         {
            return §9"y§;
         }
         return §]"n§;
      }
      
      public function §1o§(param1:Number) : void
      {
         if(!this.§,"r§ || this.§%!D§)
         {
            return;
         }
         if(this.§<"h§ != 0)
         {
            this.§4!a§ = 0;
            this.§%q§ = 0;
            this.§-T§ = 0;
            this.§=x§ = 0;
            this.§<"h§ = 0;
         }
         param1 = Math.min(param1,this.§17§);
         this.§0U§ += param1 * (this.§&! §.x - this.§0U§) / this.§17§;
         this.§3"[§ += param1 * (this.§&! §.y - this.§3"[§) / this.§17§;
         this.§3"[§ -= param1 / 50 * (this.§17§ / §@R§);
         this.§-T§ += param1 * (360 - this.§-T§) / this.§17§;
         this.§17§ -= param1;
         if(this.§17§ <= 0)
         {
            this.§0U§ = this.§&! §.x;
            this.§3"[§ = this.§&! §.y;
            this.§,"r§ = false;
            this.setOnSlingshot(true);
            this.§-T§ = 0;
            this.§=a§ = this.§&! §.angle / Math.PI * 180;
         }
         this.updateRenderer();
      }
      
      public function §&#1§() : void
      {
         this.§,"r§ = true;
         this.§17§ = §@R§;
         this.§@!`§(§^i§.§7t§);
         if(this.§%q§ != 0)
         {
            this.§3"[§ += this.§%q§;
            this.§%q§ = 0;
         }
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§0N§ = null;
         if(!this.§%!D§ && this.§ #'§ >= 0)
         {
            if(this.§^c§ > this.§&! §.§8o§.§""P§.ground)
            {
               this.applyGravity(this.§&! §.§8o§.§""P§.ground - this.§^c§);
               this.§ #'§ = -1;
            }
            this.§ #'§ -= param1;
            if(this.§ #'§ <= 0)
            {
               if(this.§4!a§ > 0)
               {
                  this.§ #'§ = this.§4!a§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§^c§))
               {
                  _loc2_ = this.§&! §.§8o§.objects.§["]§(this.§0U§,this.§^c§);
               }
               if(_loc2_ < 0)
               {
                  if(this.applyGravity(param1 / 100))
                  {
                     this.§ #'§ = -1;
                  }
                  else
                  {
                     this.§ #'§ = 0;
                  }
               }
               else
               {
                  _loc3_ = this.§&! §.§8o§.objects.getObject(_loc2_) as §0N§;
                  if(_loc3_ && _loc3_.§=!K§)
                  {
                     this.§6a§ = false;
                     this.§ #'§ = -1;
                  }
                  else if(_loc3_ && _loc3_.§;!K§())
                  {
                     this.§6a§ = false;
                     this.§ #'§ = 2000;
                  }
                  else
                  {
                     this.§ #'§ = 500;
                  }
               }
            }
         }
      }
      
      public function applyGravity(param1:Number) : Boolean
      {
         this.§3"[§ += param1;
         this.§^c§ += param1;
         if(this.§^c§ > this.§&! §.§8o§.§""P§.ground)
         {
            param1 = this.§^c§ - this.§&! §.§8o§.§""P§.ground;
            this.§3"[§ -= param1;
            this.§^c§ -= param1;
            this.updateRenderer();
            return true;
         }
         this.updateRenderer();
         return false;
      }
      
      protected function §6"2§() : void
      {
         var _loc1_:§<b§ = null;
         if(this.§+!i§ is §<b§)
         {
            _loc1_ = §<b§(this.§+!i§);
            this.§-!Y§ = new b2Vec2(_loc1_.§ !4§.x,_loc1_.§ !4§.y);
            this.§7"+§ = _loc1_.radius;
         }
         else
         {
            this.§-!Y§ = new b2Vec2(0,0);
            this.§7"+§ = 1.5;
         }
      }
      
      protected function §1"6§() : void
      {
         this.§#!9§ = this.§&! §.§8o§.animationManager.getAnimation(this.mName);
         if(!this.§#!9§)
         {
            this.§2""§(null);
         }
         else
         {
            this.§,"0§();
         }
      }
      
      public function §2""§(param1:DisplayObject) : void
      {
         this.§2!^§ = param1;
         if(this.§2!^§ && this.§2!^§.parent != this.§0v§)
         {
            this.§0v§.addChild(this.§2!^§);
         }
         if(this.§2!^§)
         {
            this.§2!^§.pivotX -= this.§-!Y§.x / §;!E§.§0"?§;
            this.§2!^§.pivotY -= this.§-!Y§.y / §;!E§.§0"?§;
         }
         this.updateRenderer();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.updateGroundControl(param1);
         if(this.§,"r§)
         {
            this.§4!a§ = 0;
            _loc4_ = false;
         }
         if(this.§&8§)
         {
            this.§["-§(param1);
            this.§1"t§(param1);
            if(_loc4_ && param3)
            {
               this.§?#4§(param1,param2);
            }
         }
      }
      
      public function §["-§(param1:Number) : void
      {
         if(this.§-2§ > 0)
         {
            this.§-2§ -= param1;
            if(this.§-2§ <= 0)
            {
               this.§;"J§();
            }
         }
         else if(this.§2!!§ <= 0 && Math.random() * §%@§ < param1 && this.§&! §.mSlingShotState)
         {
            this.§>!d§();
         }
      }
      
      public function §;"J§() : void
      {
         this.§-2§ = 0;
         this.§,"0§();
      }
      
      public function §>!d§() : void
      {
         if(!this.§&8§)
         {
            return;
         }
         this.§-2§ = §'!2§;
         this.§9"A§();
      }
      
      protected function §9"A§() : void
      {
         this.§2""§(this.§#!9§.getSubAnimation("blink").getFrame(0,this.§2!^§));
      }
      
      public function §1"t§(param1:Number) : void
      {
         if(this.§2!!§ > 0)
         {
            this.§2!!§ -= param1;
            if(this.§2!!§ <= 0)
            {
               this.§<&§();
            }
         }
         else if(this.§-2§ <= 0 && Math.random() * §9J§ < param1)
         {
            this.§@!`§();
         }
      }
      
      public function §<&§() : void
      {
         this.§2!!§ = 0;
         this.§,"0§();
      }
      
      protected function §,"0§() : void
      {
         this.§2""§(this.§#!9§.getFrame(0,this.§2!^§));
      }
      
      public function §@!`§(param1:int = -1, param2:Boolean = false) : void
      {
         if(!this.§&8§)
         {
            return;
         }
         if(this.§2!!§ > 0)
         {
            this.§<&§();
         }
         if(this.§-2§ > 0)
         {
            this.§;"J§();
         }
         if(param1 < 0)
         {
            param1 = §^i§.§#"u§;
         }
         this.§2!!§ = §;]§;
         this.§5w§();
         if(this.§%!D§ || this.§,"r§ || param2)
         {
            §0N§.§,m§(param1,this.§`P§);
         }
         else
         {
            §0N§.§,m§(param1,this.§`P§,§,#+§);
         }
      }
      
      protected function §5w§() : void
      {
         this.§2""§(this.§#!9§.getSubAnimation("yell").getFrame(0,this.§2!^§));
      }
      
      public function §?#4§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§4!a§ > 0)
         {
            this.§4!a§ -= param1;
            if(this.§4!a§ <= 0)
            {
               ++this.§;4§;
               this.§=x§ *= 0.4;
               if(!this.§%!D§ && this.§;4§ < 2)
               {
                  if(this.§;4§ > 1 && this.§=x§ < -1)
                  {
                     this.§=x§ = -1;
                  }
                  this.§&"y§ = this.§=x§;
                  this.§4!a§ = §'!z§;
                  this.§4!a§ *= Math.abs(this.§&"y§) / 2;
                  this.§'"S§ = this.§4!a§;
                  this.§-T§ = 0;
                  this.§<"h§ = 0;
               }
               else if(!this.§%!D§ && param2)
               {
                  this.§-g§(1.5);
               }
               else
               {
                  this.§4!a§ = 0;
                  this.§%q§ = 0;
                  this.§-T§ = 0;
                  this.§=x§ = 0;
               }
            }
            else
            {
               if(this.§4!a§ >= this.§'"S§ / 2)
               {
                  _loc3_ = (this.§'"S§ - this.§4!a§) / (this.§'"S§ / 2);
                  _loc3_ = §>"^§.§7G§(_loc3_);
                  this.§%q§ = _loc3_ * this.§&"y§;
               }
               else
               {
                  _loc3_ = (this.§'"S§ / 2 - this.§4!a§) / (this.§'"S§ / 2);
                  _loc3_ = §>"^§.§7G§(_loc3_,false);
                  this.§%q§ = this.§&"y§ + _loc3_ * -this.§&"y§;
               }
               this.§-T§ = 360 * §>"^§.§7G§((this.§'"S§ - this.§4!a§) / this.§'"S§) * this.§<"h§;
            }
            this.updateRenderer();
         }
         else if(Math.random() * §]f§ < param1 && !this.§%!D§ && !this.§,"r§ && !this.§6a§)
         {
            this.§-g§();
         }
      }
      
      public function §-g§(param1:Number = 1) : void
      {
         if(!this.§&8§)
         {
            return;
         }
         this.§;4§ = 0;
         this.§4!a§ = §'!z§;
         this.§%q§ = 0;
         this.§&"y§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§=x§ = this.§&"y§;
         this.§4!a§ *= Math.abs(this.§&"y§) / 3;
         this.§'"S§ = this.§4!a§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§<"h§ = 0;
         }
         else if(this.§4!a§ < 350)
         {
            this.§<"h§ = 0;
         }
         else
         {
            this.§<"h§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§<"h§ = Math.random() > 0.5 ? Number(this.§<"h§) : Number(0);
         }
      }
      
      public function updateRenderer() : void
      {
         if(this.§&! §.§<%§)
         {
            this.§0v§.x = this.§0U§ / §;!E§.§0"?§;
            this.§0v§.y = (this.§3"[§ + this.§%q§) / §;!E§.§0"?§;
         }
         else
         {
            this.§0v§.x = (this.§0U§ + this.§%q§ * Math.cos((this.§=a§ + 90) / 180 * Math.PI)) / §;!E§.§0"?§;
            this.§0v§.y = (this.§3"[§ + this.§%q§ * Math.sin((this.§=a§ + 90) / 180 * Math.PI)) / §;!E§.§0"?§;
         }
         this.§0v§.rotation = (this.§-T§ + this.§=a§) / 180 * Math.PI;
      }
      
      public function fallFromSlingshot() : void
      {
         this.§6a§ = true;
         this.§%!D§ = false;
         this.§,"r§ = false;
         this.§;4§ = 0;
         this.§ #'§ = 0;
         this.§4!a§ = 0;
         this.§4!a§ = 0;
         this.§%q§ = 0;
         this.§-T§ = 0;
         this.§=x§ = 0;
         this.§<"h§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§0U§) * (param1 - this.§0U§) + (param2 - this.§3"[§) * (param2 - this.§3"[§));
         if(_loc3_ <= this.§7"+§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§0U§ >= param3 && this.§0U§ <= param4 && this.§3"[§ >= param1 && this.§3"[§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = false;
         if(this.§0U§ != param1 || this.§3"[§ != param2)
         {
            _loc4_ = true;
         }
         this.§0U§ = param1;
         this.§3"[§ = param2;
         this.§-T§ = param3;
         this.§ #'§ = 100;
         this.updateRenderer();
         if(_loc4_)
         {
            this.§&! §.sortBirds();
         }
      }
      
      public function get §56§() : Number
      {
         return this.§4!a§;
      }
      
      public function get §&" §() : Number
      {
         return this.§ #'§;
      }
      
      public function set §&" §(param1:Number) : void
      {
         this.§ #'§ = param1;
      }
      
      public function get §<!T§() : Number
      {
         return this.§==§;
      }
      
      public function get §="z§() : Boolean
      {
         return this.§%!D§;
      }
      
      public function get radius() : Number
      {
         return this.§7"+§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§0v§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §<!T§(param1:Number) : void
      {
         this.§==§ = param1;
      }
      
      public function get §@"7§() : Number
      {
         return this.§,!k§;
      }
      
      public function set §@"7§(param1:Number) : void
      {
         this.§,!k§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§#"5§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§#"5§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§0U§;
      }
      
      public function get y() : Number
      {
         return this.§3"[§;
      }
      
      public function get §1!v§() : Number
      {
         return this.§"#7§;
      }
      
      public function get §?#5§() : Number
      {
         return this.§[!8§;
      }
   }
}
