package §0I§
{
   import §"I§.§8!Z§;
   import §-!f§.DisplayObject;
   import §-!f§.Sprite;
   import §-%§.b2Vec2;
   import §5!7§.§2!E§;
   import §5!7§.§3!Y§;
   import §5!7§.§7!R§;
   import §5!7§.§[2§;
   import §6_§.§6k§;
   import §]!q§.§,[§;
   
   public class §3]§
   {
      
      public static const §]! §:String = "ChannelSlingshot";
      
      public static const §""&§:Number = 900;
      
      public static const § "§:Number = 200;
      
      public static const §=!n§:Number = 200;
      
      public static const §^![§:Number = 1500;
      
      public static const §>8§:Number = 5000;
      
      public static const §?T§:Number = 1000;
      
      public static const §?C§:Number = 1000;
      
      public static const §9O§:Number = 46.25;
      
      public static const §8!k§:Number = 52.5;
       
      
      protected var mName:String;
      
      protected var §0!'§:Number;
      
      protected var §#<§:Number;
      
      protected var §7",§:Number;
      
      protected var §7"3§:Number;
      
      protected var §##§:Number;
      
      protected var §>"#§:Number;
      
      private var §6F§:§7!R§;
      
      protected var §-!w§:Number;
      
      protected var §=9§:Number = 1;
      
      private var §]!c§:Sprite;
      
      protected var §?!W§:§6k§;
      
      private var §>9§:DisplayObject;
      
      protected var §2!m§:§;"0§;
      
      private var §!g§:Number;
      
      protected var §^!s§:Boolean = false;
      
      private var §=r§:Boolean = false;
      
      protected var §!!5§:Boolean = false;
      
      private var §&!_§:Number;
      
      private var §3!c§:Number = 0;
      
      private var §6"%§:Number = 0;
      
      private var §,!%§:Number = 0;
      
      private var §@a§:Number = 1000;
      
      private var §;f§:Number;
      
      private var §;'§:Number;
      
      private var §]!Q§:int;
      
      private var §8C§:Number = 0;
      
      protected var § §:Number;
      
      protected var §^T§:Number;
      
      private var §8k§:Number = 1;
      
      private var §]-§:Number = 0;
      
      private var §63§:b2Vec2;
      
      private var §79§:Number = 1;
      
      private var §2<§:§[2§;
      
      protected var §9!w§:§3!Y§;
      
      protected var §0v§:Boolean = true;
      
      public function §3]§(param1:§;"0§, param2:Sprite, param3:String, param4:§3!Y§, param5:Number, param6:Number, param7:Number = 0.0)
      {
         super();
         this.§9!w§ = param4;
         this.§2!m§ = param1;
         this.§]!c§ = param2;
         this.mName = param3;
         this.§2<§ = param4.shape;
         this.§6F§ = param4.soundResource;
         this.§0!'§ = param5;
         this.§#<§ = param6;
         this.§7",§ = param7 / Math.PI * 180;
         this.§>"#§ = this.§7",§;
         this.§7"3§ = param5;
         this.§##§ = param6;
         this.§^!s§ = false;
         this.§=r§ = false;
         this.§-!w§ = 0;
         this.§3!c§ = 0;
         this.§ § = 0;
         this.§1!1§();
         this.§3n§();
      }
      
      public function dispose() : void
      {
         if(this.§]!c§)
         {
            this.§]!c§.dispose();
            this.§]!c§ = null;
         }
      }
      
      public function get levelItem() : §3!Y§
      {
         return this.§9!w§;
      }
      
      public function §39§(param1:Boolean) : void
      {
         this.§^!s§ = param1;
         if(!this.§^=§)
         {
            this.§0!'§ = this.§7"3§;
            this.§#<§ = this.§##§;
            this.§-!w§ = this.§7",§;
            this.updateRenderer();
         }
      }
      
      public function set §^P§(param1:Boolean) : void
      {
         this.§0v§ = param1;
      }
      
      public function get §9!v§() : Number
      {
         if(this.name.toUpperCase() == "BIRD_GREEN")
         {
            return §8!k§;
         }
         return §9O§;
      }
      
      public function §?!J§(param1:Number) : void
      {
         if(!this.§=r§ || this.§^!s§)
         {
            return;
         }
         if(this.§=9§ != 0)
         {
            this.§,!%§ = 0;
            this.§8C§ = 0;
            this.§-!w§ = 0;
            this.§;'§ = 0;
            this.§=9§ = 0;
         }
         param1 = Math.min(param1,this.§&!_§);
         this.§0!'§ += param1 * (this.§2!m§.x - this.§0!'§) / this.§&!_§;
         this.§#<§ += param1 * (this.§2!m§.y - this.§#<§) / this.§&!_§;
         this.§#<§ -= param1 / 50 * (this.§&!_§ / §""&§);
         this.§-!w§ += param1 * (360 - this.§-!w§) / this.§&!_§;
         this.§&!_§ -= param1;
         if(this.§&!_§ <= 0)
         {
            this.§0!'§ = this.§2!m§.x;
            this.§#<§ = this.§2!m§.y;
            this.§=r§ = false;
            this.§39§(true);
            this.§-!w§ = 0;
            this.§7",§ = this.§2!m§.angle / Math.PI * 180;
         }
         this.updateRenderer();
      }
      
      public function §8w§() : void
      {
         this.§=r§ = true;
         this.§&!_§ = §""&§;
         this.§4!g§(§7!R§.§&t§);
         if(this.§8C§ != 0)
         {
            this.§#<§ += this.§8C§;
            this.§8C§ = 0;
         }
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§,[§ = null;
         if(!this.§^!s§ && this.§ § >= 0)
         {
            if(this.§^T§ > this.§2!m§.§,!j§.§#! §.ground)
            {
               this.applyGravity(this.§2!m§.§,!j§.§#! §.ground - this.§^T§);
               this.§ § = -1;
            }
            this.§ § -= param1;
            if(this.§ § <= 0)
            {
               if(this.§,!%§ > 0)
               {
                  this.§ § = this.§,!%§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§^T§))
               {
                  _loc2_ = this.§2!m§.§,!j§.objects.§^#§(this.§0!'§,this.§^T§);
               }
               if(_loc2_ < 0)
               {
                  if(this.applyGravity(param1 / 100))
                  {
                     this.§ § = -1;
                  }
                  else
                  {
                     this.§ § = 0;
                  }
               }
               else
               {
                  _loc3_ = this.§2!m§.§,!j§.objects.getObject(_loc2_) as §,[§;
                  if(_loc3_ && _loc3_.§1+§)
                  {
                     this.§!!5§ = false;
                     this.§ § = -1;
                  }
                  else if(_loc3_ && _loc3_.§;0§())
                  {
                     this.§!!5§ = false;
                     this.§ § = 2000;
                  }
                  else
                  {
                     this.§ § = 500;
                  }
               }
            }
         }
      }
      
      public function applyGravity(param1:Number) : Boolean
      {
         this.§#<§ += param1;
         this.§^T§ += param1;
         if(this.§^T§ > this.§2!m§.§,!j§.§#! §.ground)
         {
            param1 = this.§^T§ - this.§2!m§.§,!j§.§#! §.ground;
            this.§#<§ -= param1;
            this.§^T§ -= param1;
            this.updateRenderer();
            return true;
         }
         this.updateRenderer();
         return false;
      }
      
      protected function §1!1§() : void
      {
         var _loc1_:§2!E§ = null;
         if(this.§2<§ is §2!E§)
         {
            _loc1_ = §2!E§(this.§2<§);
            this.§63§ = new b2Vec2(_loc1_.§!!L§.x,_loc1_.§!!L§.y);
            this.§!g§ = _loc1_.radius;
         }
         else
         {
            this.§63§ = new b2Vec2(0,0);
            this.§!g§ = 1.5;
         }
      }
      
      protected function §3n§() : void
      {
         this.§?!W§ = this.§2!m§.§,!j§.§8!3§.§@!P§(this.mName);
         if(!this.§?!W§)
         {
            this.§<&§(null);
         }
         else
         {
            this.§]?§();
         }
      }
      
      public function §<&§(param1:DisplayObject) : void
      {
         this.§>9§ = param1;
         if(this.§>9§ && this.§>9§.parent != this.§]!c§)
         {
            this.§]!c§.addChild(this.§>9§);
         }
         if(this.§>9§)
         {
            this.§>9§.pivotX -= this.§63§.x / §!!p§.§6L§;
            this.§>9§.pivotY -= this.§63§.y / §!!p§.§6L§;
         }
         this.updateRenderer();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.updateGroundControl(param1);
         if(this.§=r§)
         {
            this.§,!%§ = 0;
            _loc4_ = false;
         }
         if(this.§0v§)
         {
            this.§5m§(param1);
            this.§[[§(param1);
            if(_loc4_ && param3)
            {
               this.§#!9§(param1,param2);
            }
         }
      }
      
      public function §5m§(param1:Number) : void
      {
         if(this.§3!c§ > 0)
         {
            this.§3!c§ -= param1;
            if(this.§3!c§ <= 0)
            {
               this.§8!U§();
            }
         }
         else if(this.§6"%§ <= 0 && Math.random() * §^![§ < param1 && this.§2!m§.mSlingShotState)
         {
            this.§4F§();
         }
      }
      
      public function §8!U§() : void
      {
         this.§3!c§ = 0;
         this.§]?§();
      }
      
      public function §4F§() : void
      {
         if(!this.§0v§)
         {
            return;
         }
         this.§3!c§ = § "§;
         this.§0!j§();
      }
      
      protected function §0!j§() : void
      {
         this.§<&§(this.§?!W§.getSubAnimation("blink").getFrame(0,this.§>9§));
      }
      
      public function §[[§(param1:Number) : void
      {
         if(this.§6"%§ > 0)
         {
            this.§6"%§ -= param1;
            if(this.§6"%§ <= 0)
            {
               this.§%o§();
            }
         }
         else if(this.§3!c§ <= 0 && Math.random() * §>8§ < param1)
         {
            this.§4!g§();
         }
      }
      
      public function §%o§() : void
      {
         this.§6"%§ = 0;
         this.§]?§();
      }
      
      protected function §]?§() : void
      {
         this.§<&§(this.§?!W§.getFrame(0,this.§>9§));
      }
      
      public function §4!g§(param1:int = -1, param2:Boolean = false) : void
      {
         if(!this.§0v§)
         {
            return;
         }
         if(this.§6"%§ > 0)
         {
            this.§%o§();
         }
         if(this.§3!c§ > 0)
         {
            this.§8!U§();
         }
         if(param1 < 0)
         {
            param1 = §7!R§.§^!X§;
         }
         this.§6"%§ = §=!n§;
         this.§1!x§();
         if(this.§^!s§ || this.§=r§ || param2)
         {
            §,[§.§%!M§(param1,this.§6F§);
         }
         else
         {
            §,[§.§%!M§(param1,this.§6F§,§]! §);
         }
      }
      
      protected function §1!x§() : void
      {
         this.§<&§(this.§?!W§.getSubAnimation("yell").getFrame(0,this.§>9§));
      }
      
      public function §#!9§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§,!%§ > 0)
         {
            this.§,!%§ -= param1;
            if(this.§,!%§ <= 0)
            {
               ++this.§]!Q§;
               this.§;'§ *= 0.4;
               if(!this.§^!s§ && this.§]!Q§ < 2)
               {
                  if(this.§]!Q§ > 1 && this.§;'§ < -1)
                  {
                     this.§;'§ = -1;
                  }
                  this.§;f§ = this.§;'§;
                  this.§,!%§ = §?C§;
                  this.§,!%§ *= Math.abs(this.§;f§) / 2;
                  this.§@a§ = this.§,!%§;
                  this.§-!w§ = 0;
                  this.§=9§ = 0;
               }
               else if(!this.§^!s§ && param2)
               {
                  this.§!"0§(1.5);
               }
               else
               {
                  this.§,!%§ = 0;
                  this.§8C§ = 0;
                  this.§-!w§ = 0;
                  this.§;'§ = 0;
               }
            }
            else
            {
               if(this.§,!%§ >= this.§@a§ / 2)
               {
                  _loc3_ = (this.§@a§ - this.§,!%§) / (this.§@a§ / 2);
                  _loc3_ = §8!Z§.§<!2§(_loc3_);
                  this.§8C§ = _loc3_ * this.§;f§;
               }
               else
               {
                  _loc3_ = (this.§@a§ / 2 - this.§,!%§) / (this.§@a§ / 2);
                  _loc3_ = §8!Z§.§<!2§(_loc3_,false);
                  this.§8C§ = this.§;f§ + _loc3_ * -this.§;f§;
               }
               this.§-!w§ = 360 * §8!Z§.§<!2§((this.§@a§ - this.§,!%§) / this.§@a§) * this.§=9§;
            }
            this.updateRenderer();
         }
         else if(Math.random() * §?T§ < param1 && !this.§^!s§ && !this.§=r§ && !this.§!!5§)
         {
            this.§!"0§();
         }
      }
      
      public function §!"0§(param1:Number = 1) : void
      {
         if(!this.§0v§)
         {
            return;
         }
         this.§]!Q§ = 0;
         this.§,!%§ = §?C§;
         this.§8C§ = 0;
         this.§;f§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§;'§ = this.§;f§;
         this.§,!%§ *= Math.abs(this.§;f§) / 3;
         this.§@a§ = this.§,!%§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§=9§ = 0;
         }
         else if(this.§,!%§ < 350)
         {
            this.§=9§ = 0;
         }
         else
         {
            this.§=9§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§=9§ = Math.random() > 0.5 ? Number(this.§=9§) : Number(0);
         }
      }
      
      public function updateRenderer() : void
      {
         if(this.§2!m§.§4+§)
         {
            this.§]!c§.x = this.§0!'§ / §!!p§.§6L§;
            this.§]!c§.y = (this.§#<§ + this.§8C§) / §!!p§.§6L§;
         }
         else
         {
            this.§]!c§.x = (this.§0!'§ + this.§8C§ * Math.cos((this.§7",§ + 90) / 180 * Math.PI)) / §!!p§.§6L§;
            this.§]!c§.y = (this.§#<§ + this.§8C§ * Math.sin((this.§7",§ + 90) / 180 * Math.PI)) / §!!p§.§6L§;
         }
         this.§]!c§.rotation = (this.§-!w§ + this.§7",§) / 180 * Math.PI;
      }
      
      public function §+!N§() : void
      {
         this.§!!5§ = true;
         this.§^!s§ = false;
         this.§=r§ = false;
         this.§]!Q§ = 0;
         this.§ § = 0;
         this.§,!%§ = 0;
         this.§,!%§ = 0;
         this.§8C§ = 0;
         this.§-!w§ = 0;
         this.§;'§ = 0;
         this.§=9§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§0!'§) * (param1 - this.§0!'§) + (param2 - this.§#<§) * (param2 - this.§#<§));
         if(_loc3_ <= this.§!g§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§0!'§ >= param3 && this.§0!'§ <= param4 && this.§#<§ >= param1 && this.§#<§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = false;
         if(this.§0!'§ != param1 || this.§#<§ != param2)
         {
            _loc4_ = true;
         }
         this.§0!'§ = param1;
         this.§#<§ = param2;
         this.§-!w§ = param3;
         this.§ § = 100;
         this.updateRenderer();
         if(_loc4_)
         {
            this.§2!m§.§80§();
         }
      }
      
      public function get §3"-§() : Number
      {
         return this.§,!%§;
      }
      
      public function get §,!;§() : Number
      {
         return this.§ §;
      }
      
      public function set §,!;§(param1:Number) : void
      {
         this.§ § = param1;
      }
      
      public function get §#b§() : Number
      {
         return this.§8k§;
      }
      
      public function get §^=§() : Boolean
      {
         return this.§^!s§;
      }
      
      public function get radius() : Number
      {
         return this.§!g§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§]!c§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §#b§(param1:Number) : void
      {
         this.§8k§ = param1;
      }
      
      public function get §#A§() : Number
      {
         return this.§]-§;
      }
      
      public function set §#A§(param1:Number) : void
      {
         this.§]-§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§79§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§79§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§0!'§;
      }
      
      public function get y() : Number
      {
         return this.§#<§;
      }
      
      public function get §5!e§() : Number
      {
         return this.§7"3§;
      }
      
      public function get §&=§() : Number
      {
         return this.§##§;
      }
   }
}
