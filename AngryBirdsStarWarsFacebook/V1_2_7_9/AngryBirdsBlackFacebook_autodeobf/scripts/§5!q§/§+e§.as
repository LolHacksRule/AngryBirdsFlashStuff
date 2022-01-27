package §5!q§
{
   import §0"I§.§2>§;
   import §1"s§.DisplayObject;
   import §1"s§.Sprite;
   import §3"$§.§[a§;
   import §6"R§.§4!w§;
   import §>P§.§&s§;
   import §>P§.§3t§;
   import §>P§.§=!,§;
   import §>P§.§?"Q§;
   import §^>§.b2Vec2;
   
   public class §+e§
   {
      
      public static const §""m§:String = "ChannelSlingshot";
      
      public static const §<!m§:Number = 900;
      
      public static const §1!]§:Number = 200;
      
      public static const §&"D§:Number = 200;
      
      public static const §'"^§:Number = 1500;
      
      public static const §&!g§:Number = 5000;
      
      public static const §>";§:Number = 1000;
      
      public static const §%";§:Number = 1000;
      
      public static const §'z§:Number = 46.25;
      
      public static const §!!"§:Number = 52.5;
       
      
      protected var mName:String;
      
      protected var §]!_§:Number;
      
      protected var §#j§:Number;
      
      protected var §,"L§:Number;
      
      protected var §9l§:Number;
      
      protected var §`8§:Number;
      
      protected var §5!4§:Number;
      
      private var §#!B§:§&s§;
      
      protected var § !r§:Number;
      
      protected var §@#2§:Number = 1;
      
      private var § "6§:Sprite;
      
      protected var §3-§:§[a§;
      
      private var §>$§:DisplayObject;
      
      protected var §0#7§:§-R§;
      
      private var §8d§:Number;
      
      protected var §`D§:Boolean = false;
      
      private var §9#"§:Boolean = false;
      
      protected var §0r§:Boolean = false;
      
      private var §2"P§:Number;
      
      private var §<!w§:Number = 0;
      
      private var §%#&§:Number = 0;
      
      private var §,!#§:Number = 0;
      
      private var §"g§:Number = 1000;
      
      private var §=!a§:Number;
      
      private var §&"Y§:Number;
      
      private var §9!z§:int;
      
      private var §?!e§:Number = 0;
      
      protected var §%w§:Number;
      
      protected var §`,§:Number;
      
      private var §=;§:Number = 1;
      
      private var §[[§:Number = 0;
      
      private var § !k§:b2Vec2;
      
      private var §"r§:Number = 1;
      
      private var §&"e§:§?"Q§;
      
      protected var §-!f§:§=!,§;
      
      protected var §3!!§:Boolean = true;
      
      private var §""g§:int;
      
      public function §+e§(param1:§-R§, param2:Sprite, param3:String, param4:§=!,§, param5:Number, param6:Number, param7:Number, param8:int)
      {
         super();
         this.§-!f§ = param4;
         this.§""g§ = param8;
         this.§0#7§ = param1;
         this.§ "6§ = param2;
         this.mName = param3;
         this.§&"e§ = param4.shape;
         this.§#!B§ = param4.soundResource;
         this.§]!_§ = param5;
         this.§#j§ = param6;
         this.§,"L§ = param7 / Math.PI * 180;
         this.§5!4§ = this.§,"L§;
         this.§9l§ = param5;
         this.§`8§ = param6;
         this.§`D§ = false;
         this.§9#"§ = false;
         this.§ !r§ = 0;
         this.§<!w§ = 0;
         this.§%w§ = 0;
         this.§<B§();
         this.§'"W§();
      }
      
      public function get §8"=§() : int
      {
         return this.§""g§;
      }
      
      public function dispose() : void
      {
         if(this.§ "6§)
         {
            this.§ "6§.dispose();
            this.§ "6§ = null;
         }
      }
      
      public function set color(param1:uint) : void
      {
         if(this.§>$§)
         {
            this.§>$§.color = param1;
         }
      }
      
      public function get levelItem() : §=!,§
      {
         return this.§-!f§;
      }
      
      public function setOnSlingshot(param1:Boolean) : void
      {
         this.§`D§ = param1;
         if(!this.§5!z§)
         {
            this.§]!_§ = this.§9l§;
            this.§#j§ = this.§`8§;
            this.§ !r§ = this.§,"L§;
            this.updateRenderer();
         }
      }
      
      public function set §#d§(param1:Boolean) : void
      {
         this.§3!!§ = param1;
      }
      
      public function get §,!§() : Number
      {
         if(this.name.toUpperCase() == "BIRD_GREEN")
         {
            return §!!"§;
         }
         return §'z§;
      }
      
      public function §`"V§(param1:Number) : void
      {
         if(!this.§9#"§ || this.§`D§)
         {
            return;
         }
         if(this.§@#2§ != 0)
         {
            this.§,!#§ = 0;
            this.§?!e§ = 0;
            this.§ !r§ = 0;
            this.§&"Y§ = 0;
            this.§@#2§ = 0;
         }
         param1 = Math.min(param1,this.§2"P§);
         this.§]!_§ += param1 * (this.§0#7§.x - this.§]!_§) / this.§2"P§;
         this.§#j§ += param1 * (this.§0#7§.y - this.§#j§) / this.§2"P§;
         this.§#j§ -= param1 / 50 * (this.§2"P§ / §<!m§);
         this.§ !r§ += param1 * (360 - this.§ !r§) / this.§2"P§;
         this.§2"P§ -= param1;
         if(this.§2"P§ <= 0)
         {
            this.§]!_§ = this.§0#7§.x;
            this.§#j§ = this.§0#7§.y;
            this.§9#"§ = false;
            this.setOnSlingshot(true);
            this.§ !r§ = 0;
            this.§,"L§ = this.§0#7§.angle / Math.PI * 180;
         }
         this.updateRenderer();
      }
      
      public function §5#'§() : void
      {
         this.§9#"§ = true;
         this.§2"P§ = §<!m§;
         this.§#>§(§&s§.§4!l§);
         if(this.§?!e§ != 0)
         {
            this.§#j§ += this.§?!e§;
            this.§?!e§ = 0;
         }
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§4!w§ = null;
         if(!this.§`D§ && this.§%w§ >= 0)
         {
            if(this.§`,§ > this.§0#7§.§^g§.§;#!§.ground)
            {
               this.applyGravity(this.§0#7§.§^g§.§;#!§.ground - this.§`,§);
               this.§%w§ = -1;
            }
            this.§%w§ -= param1;
            if(this.§%w§ <= 0)
            {
               if(this.§,!#§ > 0)
               {
                  this.§%w§ = this.§,!#§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§`,§))
               {
                  _loc2_ = this.§0#7§.§^g§.objects.§]1§(this.§]!_§,this.§`,§);
               }
               if(_loc2_ < 0)
               {
                  if(this.applyGravity(param1 / 100))
                  {
                     this.§%w§ = -1;
                  }
                  else
                  {
                     this.§%w§ = 0;
                  }
               }
               else
               {
                  _loc3_ = this.§0#7§.§^g§.objects.getObject(_loc2_) as §4!w§;
                  if(_loc3_ && _loc3_.§0"M§)
                  {
                     this.§0r§ = false;
                     this.§%w§ = -1;
                  }
                  else if(_loc3_ && _loc3_.§[d§())
                  {
                     this.§0r§ = false;
                     this.§%w§ = 2000;
                  }
                  else
                  {
                     this.§%w§ = 500;
                  }
               }
            }
         }
      }
      
      public function applyGravity(param1:Number) : Boolean
      {
         this.§#j§ += param1;
         this.§`,§ += param1;
         if(this.§`,§ > this.§0#7§.§^g§.§;#!§.ground)
         {
            param1 = this.§`,§ - this.§0#7§.§^g§.§;#!§.ground;
            this.§#j§ -= param1;
            this.§`,§ -= param1;
            this.updateRenderer();
            return true;
         }
         this.updateRenderer();
         return false;
      }
      
      protected function §<B§() : void
      {
         var _loc1_:§3t§ = null;
         if(this.§&"e§ is §3t§)
         {
            _loc1_ = §3t§(this.§&"e§);
            this.§ !k§ = new b2Vec2(_loc1_.§+I§.x,_loc1_.§+I§.y);
            this.§8d§ = _loc1_.radius;
         }
         else
         {
            this.§ !k§ = new b2Vec2(0,0);
            this.§8d§ = 1.5;
         }
      }
      
      protected function §'"W§() : void
      {
         this.§3-§ = this.§0#7§.§^g§.animationManager.getAnimation(this.mName);
         if(!this.§3-§)
         {
            this.§5"M§(null);
         }
         else
         {
            this.§&#"§();
         }
      }
      
      public function §5"M§(param1:DisplayObject) : void
      {
         this.§>$§ = param1;
         if(this.§>$§ && this.§>$§.parent != this.§ "6§)
         {
            this.§ "6§.addChild(this.§>$§);
         }
         if(this.§>$§)
         {
            this.§>$§.pivotX -= this.§ !k§.x / §3"X§.§;"l§;
            this.§>$§.pivotY -= this.§ !k§.y / §3"X§.§;"l§;
         }
         this.updateRenderer();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.updateGroundControl(param1);
         if(this.§9#"§)
         {
            this.§,!#§ = 0;
            _loc4_ = false;
         }
         if(this.§3!!§)
         {
            this.§0k§(param1);
            this.§%!y§(param1);
            if(_loc4_ && param3)
            {
               this.§+9§(param1,param2);
            }
         }
      }
      
      public function §0k§(param1:Number) : void
      {
         if(this.§<!w§ > 0)
         {
            this.§<!w§ -= param1;
            if(this.§<!w§ <= 0)
            {
               this.§+u§();
            }
         }
         else if(this.§%#&§ <= 0 && Math.random() * §'"^§ < param1 && this.§0#7§.mSlingShotState)
         {
            this.§ "b§();
         }
      }
      
      public function §+u§() : void
      {
         this.§<!w§ = 0;
         this.§&#"§();
      }
      
      public function § "b§() : void
      {
         if(!this.§3!!§)
         {
            return;
         }
         this.§<!w§ = §1!]§;
         this.§<"S§();
      }
      
      protected function §<"S§() : void
      {
         this.§5"M§(this.§3-§.getSubAnimation("blink").getFrame(0,this.§>$§));
      }
      
      public function §%!y§(param1:Number) : void
      {
         if(this.§%#&§ > 0)
         {
            this.§%#&§ -= param1;
            if(this.§%#&§ <= 0)
            {
               this.§0!'§();
            }
         }
         else if(this.§<!w§ <= 0 && Math.random() * §&!g§ < param1)
         {
            this.§#>§();
         }
      }
      
      public function §0!'§() : void
      {
         this.§%#&§ = 0;
         this.§&#"§();
      }
      
      protected function §&#"§() : void
      {
         this.§5"M§(this.§3-§.getFrame(0,this.§>$§));
      }
      
      public function §#>§(param1:int = -1, param2:Boolean = false) : void
      {
         if(!this.§3!!§)
         {
            return;
         }
         if(this.§%#&§ > 0)
         {
            this.§0!'§();
         }
         if(this.§<!w§ > 0)
         {
            this.§+u§();
         }
         if(param1 < 0)
         {
            param1 = §&s§.§0!g§;
         }
         this.§%#&§ = §&"D§;
         this.§=d§();
         if(this.§`D§ || this.§9#"§ || param2)
         {
            §4!w§.§'N§(param1,this.§#!B§);
         }
         else
         {
            §4!w§.§'N§(param1,this.§#!B§,§""m§);
         }
      }
      
      protected function §=d§() : void
      {
         this.§5"M§(this.§3-§.getSubAnimation("yell").getFrame(0,this.§>$§));
      }
      
      public function §+9§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§,!#§ > 0)
         {
            this.§,!#§ -= param1;
            if(this.§,!#§ <= 0)
            {
               ++this.§9!z§;
               this.§&"Y§ *= 0.4;
               if(!this.§`D§ && this.§9!z§ < 2)
               {
                  if(this.§9!z§ > 1 && this.§&"Y§ < -1)
                  {
                     this.§&"Y§ = -1;
                  }
                  this.§=!a§ = this.§&"Y§;
                  this.§,!#§ = §%";§;
                  this.§,!#§ *= Math.abs(this.§=!a§) / 2;
                  this.§"g§ = this.§,!#§;
                  this.§ !r§ = 0;
                  this.§@#2§ = 0;
               }
               else if(!this.§`D§ && param2)
               {
                  this.§["`§(1.5);
               }
               else
               {
                  this.§,!#§ = 0;
                  this.§?!e§ = 0;
                  this.§ !r§ = 0;
                  this.§&"Y§ = 0;
               }
            }
            else
            {
               if(this.§,!#§ >= this.§"g§ / 2)
               {
                  _loc3_ = (this.§"g§ - this.§,!#§) / (this.§"g§ / 2);
                  _loc3_ = §2>§.§8!Z§(_loc3_);
                  this.§?!e§ = _loc3_ * this.§=!a§;
               }
               else
               {
                  _loc3_ = (this.§"g§ / 2 - this.§,!#§) / (this.§"g§ / 2);
                  _loc3_ = §2>§.§8!Z§(_loc3_,false);
                  this.§?!e§ = this.§=!a§ + _loc3_ * -this.§=!a§;
               }
               this.§ !r§ = 360 * §2>§.§8!Z§((this.§"g§ - this.§,!#§) / this.§"g§) * this.§@#2§;
            }
            this.updateRenderer();
         }
         else if(Math.random() * §>";§ < param1 && !this.§`D§ && !this.§9#"§ && !this.§0r§)
         {
            this.§["`§();
         }
      }
      
      public function §["`§(param1:Number = 1) : void
      {
         if(!this.§3!!§)
         {
            return;
         }
         this.§9!z§ = 0;
         this.§,!#§ = §%";§;
         this.§?!e§ = 0;
         this.§=!a§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§&"Y§ = this.§=!a§;
         this.§,!#§ *= Math.abs(this.§=!a§) / 3;
         this.§"g§ = this.§,!#§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§@#2§ = 0;
         }
         else if(this.§,!#§ < 350)
         {
            this.§@#2§ = 0;
         }
         else
         {
            this.§@#2§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§@#2§ = Math.random() > 0.5 ? Number(this.§@#2§) : Number(0);
         }
      }
      
      public function updateRenderer() : void
      {
         if(this.§0#7§.§"o§)
         {
            this.§ "6§.x = this.§]!_§ / §3"X§.§;"l§;
            this.§ "6§.y = (this.§#j§ + this.§?!e§) / §3"X§.§;"l§;
         }
         else
         {
            this.§ "6§.x = (this.§]!_§ + this.§?!e§ * Math.cos((this.§,"L§ + 90) / 180 * Math.PI)) / §3"X§.§;"l§;
            this.§ "6§.y = (this.§#j§ + this.§?!e§ * Math.sin((this.§,"L§ + 90) / 180 * Math.PI)) / §3"X§.§;"l§;
         }
         this.§ "6§.rotation = (this.§ !r§ + this.§,"L§) / 180 * Math.PI;
      }
      
      public function fallFromSlingshot() : void
      {
         this.§0r§ = true;
         this.§`D§ = false;
         this.§9#"§ = false;
         this.§9!z§ = 0;
         this.§%w§ = 0;
         this.§,!#§ = 0;
         this.§,!#§ = 0;
         this.§?!e§ = 0;
         this.§ !r§ = 0;
         this.§&"Y§ = 0;
         this.§@#2§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§]!_§) * (param1 - this.§]!_§) + (param2 - this.§#j§) * (param2 - this.§#j§));
         if(_loc3_ <= this.§8d§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§]!_§ >= param3 && this.§]!_§ <= param4 && this.§#j§ >= param1 && this.§#j§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = false;
         if(this.§]!_§ != param1 || this.§#j§ != param2)
         {
            _loc4_ = true;
         }
         this.§]!_§ = param1;
         this.§#j§ = param2;
         this.§ !r§ = param3;
         this.§%w§ = 100;
         this.updateRenderer();
         if(_loc4_)
         {
            this.§0#7§.sortBirds();
         }
      }
      
      public function get §"!,§() : Number
      {
         return this.§,!#§;
      }
      
      public function get §7"=§() : Number
      {
         return this.§%w§;
      }
      
      public function set §7"=§(param1:Number) : void
      {
         this.§%w§ = param1;
      }
      
      public function get §,"a§() : Number
      {
         return this.§=;§;
      }
      
      public function get §5!z§() : Boolean
      {
         return this.§`D§;
      }
      
      public function get radius() : Number
      {
         return this.§8d§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§ "6§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §,"a§(param1:Number) : void
      {
         this.§=;§ = param1;
      }
      
      public function get §=!8§() : Number
      {
         return this.§[[§;
      }
      
      public function set §=!8§(param1:Number) : void
      {
         this.§[[§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§"r§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§"r§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§]!_§;
      }
      
      public function get y() : Number
      {
         return this.§#j§;
      }
      
      public function get §>!G§() : Number
      {
         return this.§9l§;
      }
      
      public function get §<!7§() : Number
      {
         return this.§`8§;
      }
   }
}
