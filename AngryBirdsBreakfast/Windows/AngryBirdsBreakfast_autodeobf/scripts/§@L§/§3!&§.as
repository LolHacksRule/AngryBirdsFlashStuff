package §@L§
{
   import § ! §.§5!v§;
   import §&v§.§"a§;
   import §&v§.§,4§;
   import §&v§.§9B§;
   import §&v§.§each §;
   import §,z§.§"_§;
   import §6![§.DisplayObject;
   import §6![§.Sprite;
   import §6Z§.b2Vec2;
   import each.§&!,§;
   
   public class §3!&§
   {
      
      public static const §+!k§:String = "ChannelSlingshot";
      
      public static const §`0§:Number = 900;
      
      public static const §<!i§:Number = 200;
      
      public static const §@2§:Number = 200;
      
      public static const §2!S§:Number = 1500;
      
      public static const §+h§:Number = 5000;
      
      public static const §92§:Number = 1000;
      
      public static const §7G§:Number = 1000;
      
      public static const §9!i§:Number = 46.25;
      
      public static const §%"#§:Number = 52.5;
       
      
      protected var mName:String;
      
      protected var §%!3§:Number;
      
      protected var §?!e§:Number;
      
      protected var §^!-§:Number;
      
      protected var §#!H§:Number;
      
      protected var §>!n§:Number;
      
      protected var §?!G§:Number;
      
      private var §<!3§:§,4§;
      
      protected var §!&§:Number;
      
      protected var §#_§:Number = 1;
      
      private var §#e§:Sprite;
      
      protected var §"!b§:§5!v§;
      
      private var §>!O§:DisplayObject;
      
      protected var §`j§:§;!3§;
      
      private var §+`§:Number;
      
      protected var §>%§:Boolean = false;
      
      private var §="-§:Boolean = false;
      
      protected var §12§:Boolean = false;
      
      private var §<!k§:Number;
      
      private var §=>§:Number = 0;
      
      private var §3?§:Number = 0;
      
      private var §[%§:Number = 0;
      
      private var §#K§:Number = 1000;
      
      private var §;n§:Number;
      
      private var §2",§:Number;
      
      private var §8!o§:int;
      
      private var §2<§:Number = 0;
      
      protected var §'C§:Number;
      
      protected var §@;§:Number;
      
      private var §`+§:Number = 1;
      
      private var §`!V§:Number = 0;
      
      private var §4!?§:b2Vec2;
      
      private var §6!r§:Number = 1;
      
      private var §&[§:§each §;
      
      protected var §%-§:§9B§;
      
      protected var §&U§:Boolean = true;
      
      private var §-6§:int;
      
      public function §3!&§(param1:§;!3§, param2:Sprite, param3:String, param4:§9B§, param5:Number, param6:Number, param7:Number, param8:int)
      {
         super();
         this.§%-§ = param4;
         this.§-6§ = param8;
         this.§`j§ = param1;
         this.§#e§ = param2;
         this.mName = param3;
         this.§&[§ = param4.shape;
         this.§<!3§ = param4.soundResource;
         this.§%!3§ = param5;
         this.§?!e§ = param6;
         this.§^!-§ = param7 / Math.PI * 180;
         this.§?!G§ = this.§^!-§;
         this.§#!H§ = param5;
         this.§>!n§ = param6;
         this.§>%§ = false;
         this.§="-§ = false;
         this.§!&§ = 0;
         this.§=>§ = 0;
         this.§'C§ = 0;
         this.§3!k§();
         this.§""§();
      }
      
      public function get §5x§() : int
      {
         return this.§-6§;
      }
      
      public function dispose() : void
      {
         if(this.§#e§)
         {
            this.§#e§.dispose();
            this.§#e§ = null;
         }
      }
      
      public function get levelItem() : §9B§
      {
         return this.§%-§;
      }
      
      public function §?!m§(param1:Boolean) : void
      {
         this.§>%§ = param1;
         if(!this.§?!4§)
         {
            this.§%!3§ = this.§#!H§;
            this.§?!e§ = this.§>!n§;
            this.§!&§ = this.§^!-§;
            this.updateRenderer();
         }
      }
      
      public function set §6s§(param1:Boolean) : void
      {
         this.§&U§ = param1;
      }
      
      public function get §;!x§() : Number
      {
         if(this.name.toUpperCase() == "BIRD_GREEN")
         {
            return §%"#§;
         }
         return §9!i§;
      }
      
      public function §#!`§(param1:Number) : void
      {
         if(!this.§="-§ || this.§>%§)
         {
            return;
         }
         if(this.§#_§ != 0)
         {
            this.§[%§ = 0;
            this.§2<§ = 0;
            this.§!&§ = 0;
            this.§2",§ = 0;
            this.§#_§ = 0;
         }
         param1 = Math.min(param1,this.§<!k§);
         this.§%!3§ += param1 * (this.§`j§.x - this.§%!3§) / this.§<!k§;
         this.§?!e§ += param1 * (this.§`j§.y - this.§?!e§) / this.§<!k§;
         this.§?!e§ -= param1 / 50 * (this.§<!k§ / §`0§);
         this.§!&§ += param1 * (360 - this.§!&§) / this.§<!k§;
         this.§<!k§ -= param1;
         if(this.§<!k§ <= 0)
         {
            this.§%!3§ = this.§`j§.x;
            this.§?!e§ = this.§`j§.y;
            this.§="-§ = false;
            this.§?!m§(true);
            this.§!&§ = 0;
            this.§^!-§ = this.§`j§.angle / Math.PI * 180;
         }
         this.updateRenderer();
      }
      
      public function §`!d§() : void
      {
         this.§="-§ = true;
         this.§<!k§ = §`0§;
         this.§?!h§(§,4§.§9!Q§);
         if(this.§2<§ != 0)
         {
            this.§?!e§ += this.§2<§;
            this.§2<§ = 0;
         }
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§"_§ = null;
         if(!this.§>%§ && this.§'C§ >= 0)
         {
            if(this.§@;§ > this.§`j§.§`!&§.§57§.ground)
            {
               this.applyGravity(this.§`j§.§`!&§.§57§.ground - this.§@;§);
               this.§'C§ = -1;
            }
            this.§'C§ -= param1;
            if(this.§'C§ <= 0)
            {
               if(this.§[%§ > 0)
               {
                  this.§'C§ = this.§[%§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§@;§))
               {
                  _loc2_ = this.§`j§.§`!&§.objects.§>!v§(this.§%!3§,this.§@;§);
               }
               if(_loc2_ < 0)
               {
                  if(this.applyGravity(param1 / 100))
                  {
                     this.§'C§ = -1;
                  }
                  else
                  {
                     this.§'C§ = 0;
                  }
               }
               else
               {
                  _loc3_ = this.§`j§.§`!&§.objects.getObject(_loc2_) as §"_§;
                  if(_loc3_ && _loc3_.§<!l§)
                  {
                     this.§12§ = false;
                     this.§'C§ = -1;
                  }
                  else if(_loc3_ && _loc3_.§^" §())
                  {
                     this.§12§ = false;
                     this.§'C§ = 2000;
                  }
                  else
                  {
                     this.§'C§ = 500;
                  }
               }
            }
         }
      }
      
      public function applyGravity(param1:Number) : Boolean
      {
         this.§?!e§ += param1;
         this.§@;§ += param1;
         if(this.§@;§ > this.§`j§.§`!&§.§57§.ground)
         {
            param1 = this.§@;§ - this.§`j§.§`!&§.§57§.ground;
            this.§?!e§ -= param1;
            this.§@;§ -= param1;
            this.updateRenderer();
            return true;
         }
         this.updateRenderer();
         return false;
      }
      
      protected function §3!k§() : void
      {
         var _loc1_:§"a§ = null;
         if(this.§&[§ is §"a§)
         {
            _loc1_ = §"a§(this.§&[§);
            this.§4!?§ = new b2Vec2(_loc1_.§0V§.x,_loc1_.§0V§.y);
            this.§+`§ = _loc1_.radius;
         }
         else
         {
            this.§4!?§ = new b2Vec2(0,0);
            this.§+`§ = 1.5;
         }
      }
      
      protected function §""§() : void
      {
         this.§"!b§ = this.§`j§.§`!&§.§5-§.§#w§(this.mName);
         if(!this.§"!b§)
         {
            this.§2"'§(null);
         }
         else
         {
            this.§catch§();
         }
      }
      
      public function §2"'§(param1:DisplayObject) : void
      {
         this.§>!O§ = param1;
         if(this.§>!O§ && this.§>!O§.parent != this.§#e§)
         {
            this.§#e§.addChild(this.§>!O§);
         }
         if(this.§>!O§)
         {
            this.§>!O§.pivotX -= this.§4!?§.x / §?!'§.§'!i§;
            this.§>!O§.pivotY -= this.§4!?§.y / §?!'§.§'!i§;
         }
         this.updateRenderer();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.updateGroundControl(param1);
         if(this.§="-§)
         {
            this.§[%§ = 0;
            _loc4_ = false;
         }
         if(this.§&U§)
         {
            this.§?!§(param1);
            this.§9r§(param1);
            if(_loc4_ && param3)
            {
               this.§#!@§(param1,param2);
            }
         }
      }
      
      public function §?!§(param1:Number) : void
      {
         if(this.§=>§ > 0)
         {
            this.§=>§ -= param1;
            if(this.§=>§ <= 0)
            {
               this.§;2§();
            }
         }
         else if(this.§3?§ <= 0 && Math.random() * §2!S§ < param1 && this.§`j§.mSlingShotState)
         {
            this.§&5§();
         }
      }
      
      public function §;2§() : void
      {
         this.§=>§ = 0;
         this.§catch§();
      }
      
      public function §&5§() : void
      {
         if(!this.§&U§)
         {
            return;
         }
         this.§=>§ = §<!i§;
         this.§76§();
      }
      
      protected function §76§() : void
      {
         this.§2"'§(this.§"!b§.getSubAnimation("blink").getFrame(0,this.§>!O§));
      }
      
      public function §9r§(param1:Number) : void
      {
         if(this.§3?§ > 0)
         {
            this.§3?§ -= param1;
            if(this.§3?§ <= 0)
            {
               this.§!d§();
            }
         }
         else if(this.§=>§ <= 0 && Math.random() * §+h§ < param1)
         {
            this.§?!h§();
         }
      }
      
      public function §!d§() : void
      {
         this.§3?§ = 0;
         this.§catch§();
      }
      
      protected function §catch§() : void
      {
         this.§2"'§(this.§"!b§.getFrame(0,this.§>!O§));
      }
      
      public function §?!h§(param1:int = -1, param2:Boolean = false) : void
      {
         if(!this.§&U§)
         {
            return;
         }
         if(this.§3?§ > 0)
         {
            this.§!d§();
         }
         if(this.§=>§ > 0)
         {
            this.§;2§();
         }
         if(param1 < 0)
         {
            param1 = §,4§.§!w§;
         }
         this.§3?§ = §@2§;
         this.§<A§();
         if(this.§>%§ || this.§="-§ || param2)
         {
            §"_§.§>,§(param1,this.§<!3§);
         }
         else
         {
            §"_§.§>,§(param1,this.§<!3§,§+!k§);
         }
      }
      
      protected function §<A§() : void
      {
         this.§2"'§(this.§"!b§.getSubAnimation("yell").getFrame(0,this.§>!O§));
      }
      
      public function §#!@§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§[%§ > 0)
         {
            this.§[%§ -= param1;
            if(this.§[%§ <= 0)
            {
               ++this.§8!o§;
               this.§2",§ *= 0.4;
               if(!this.§>%§ && this.§8!o§ < 2)
               {
                  if(this.§8!o§ > 1 && this.§2",§ < -1)
                  {
                     this.§2",§ = -1;
                  }
                  this.§;n§ = this.§2",§;
                  this.§[%§ = §7G§;
                  this.§[%§ *= Math.abs(this.§;n§) / 2;
                  this.§#K§ = this.§[%§;
                  this.§!&§ = 0;
                  this.§#_§ = 0;
               }
               else if(!this.§>%§ && param2)
               {
                  this.§'U§(1.5);
               }
               else
               {
                  this.§[%§ = 0;
                  this.§2<§ = 0;
                  this.§!&§ = 0;
                  this.§2",§ = 0;
               }
            }
            else
            {
               if(this.§[%§ >= this.§#K§ / 2)
               {
                  _loc3_ = (this.§#K§ - this.§[%§) / (this.§#K§ / 2);
                  _loc3_ = §&!,§.§5!a§(_loc3_);
                  this.§2<§ = _loc3_ * this.§;n§;
               }
               else
               {
                  _loc3_ = (this.§#K§ / 2 - this.§[%§) / (this.§#K§ / 2);
                  _loc3_ = §&!,§.§5!a§(_loc3_,false);
                  this.§2<§ = this.§;n§ + _loc3_ * -this.§;n§;
               }
               this.§!&§ = 360 * §&!,§.§5!a§((this.§#K§ - this.§[%§) / this.§#K§) * this.§#_§;
            }
            this.updateRenderer();
         }
         else if(Math.random() * §92§ < param1 && !this.§>%§ && !this.§="-§ && !this.§12§)
         {
            this.§'U§();
         }
      }
      
      public function §'U§(param1:Number = 1) : void
      {
         if(!this.§&U§)
         {
            return;
         }
         this.§8!o§ = 0;
         this.§[%§ = §7G§;
         this.§2<§ = 0;
         this.§;n§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§2",§ = this.§;n§;
         this.§[%§ *= Math.abs(this.§;n§) / 3;
         this.§#K§ = this.§[%§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§#_§ = 0;
         }
         else if(this.§[%§ < 350)
         {
            this.§#_§ = 0;
         }
         else
         {
            this.§#_§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§#_§ = Math.random() > 0.5 ? Number(this.§#_§) : Number(0);
         }
      }
      
      public function updateRenderer() : void
      {
         if(this.§`j§.§,j§)
         {
            this.§#e§.x = this.§%!3§ / §?!'§.§'!i§;
            this.§#e§.y = (this.§?!e§ + this.§2<§) / §?!'§.§'!i§;
         }
         else
         {
            this.§#e§.x = (this.§%!3§ + this.§2<§ * Math.cos((this.§^!-§ + 90) / 180 * Math.PI)) / §?!'§.§'!i§;
            this.§#e§.y = (this.§?!e§ + this.§2<§ * Math.sin((this.§^!-§ + 90) / 180 * Math.PI)) / §?!'§.§'!i§;
         }
         this.§#e§.rotation = (this.§!&§ + this.§^!-§) / 180 * Math.PI;
      }
      
      public function final() : void
      {
         this.§12§ = true;
         this.§>%§ = false;
         this.§="-§ = false;
         this.§8!o§ = 0;
         this.§'C§ = 0;
         this.§[%§ = 0;
         this.§[%§ = 0;
         this.§2<§ = 0;
         this.§!&§ = 0;
         this.§2",§ = 0;
         this.§#_§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§%!3§) * (param1 - this.§%!3§) + (param2 - this.§?!e§) * (param2 - this.§?!e§));
         if(_loc3_ <= this.§+`§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§%!3§ >= param3 && this.§%!3§ <= param4 && this.§?!e§ >= param1 && this.§?!e§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = false;
         if(this.§%!3§ != param1 || this.§?!e§ != param2)
         {
            _loc4_ = true;
         }
         this.§%!3§ = param1;
         this.§?!e§ = param2;
         this.§!&§ = param3;
         this.§'C§ = 100;
         this.updateRenderer();
         if(_loc4_)
         {
            this.§`j§.§<]§();
         }
      }
      
      public function get § for§() : Number
      {
         return this.§[%§;
      }
      
      public function get §1!,§() : Number
      {
         return this.§'C§;
      }
      
      public function set §1!,§(param1:Number) : void
      {
         this.§'C§ = param1;
      }
      
      public function get §["+§() : Number
      {
         return this.§`+§;
      }
      
      public function get §?!4§() : Boolean
      {
         return this.§>%§;
      }
      
      public function get radius() : Number
      {
         return this.§+`§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§#e§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §["+§(param1:Number) : void
      {
         this.§`+§ = param1;
      }
      
      public function get §3! §() : Number
      {
         return this.§`!V§;
      }
      
      public function set §3! §(param1:Number) : void
      {
         this.§`!V§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§6!r§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§6!r§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§%!3§;
      }
      
      public function get y() : Number
      {
         return this.§?!e§;
      }
      
      public function get §[u§() : Number
      {
         return this.§#!H§;
      }
      
      public function get §[]§() : Number
      {
         return this.§>!n§;
      }
   }
}
