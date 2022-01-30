package §9G§
{
   import §!"+§.§ !S§;
   import §!"+§.§!o§;
   import §!"+§.§'!7§;
   import §!"+§.§2N§;
   import §"P§.§^!x§;
   import §-![§.DisplayObject;
   import §-![§.Sprite;
   import §6`§.§-!i§;
   import §;4§.§77§;
   import §[K§.b2Vec2;
   
   public class §1!a§
   {
      
      public static const §#"3§:String = "ChannelSlingshot";
      
      public static const §%2§:Number = 900;
      
      public static const §4!M§:Number = 200;
      
      public static const §#v§:Number = 200;
      
      public static const §>o§:Number = 1500;
      
      public static const §@>§:Number = 5000;
      
      public static const §0!s§:Number = 1000;
      
      public static const §'J§:Number = 1000;
      
      public static const §!=§:Number = 46.25;
      
      public static const §0R§:Number = 52.5;
       
      
      protected var mName:String;
      
      protected var §@!-§:Number;
      
      protected var §'!0§:Number;
      
      protected var §1!c§:Number;
      
      protected var §<p§:Number;
      
      protected var §`i§:Number;
      
      protected var §#a§:Number;
      
      private var §`P§:§'!7§;
      
      protected var §4D§:Number;
      
      protected var §;P§:Number = 1;
      
      private var §[<§:Sprite;
      
      protected var §!r§:§-!i§;
      
      private var §`"5§:DisplayObject;
      
      protected var § !B§:§9!G§;
      
      private var §0!$§:Number;
      
      protected var §%!-§:Boolean = false;
      
      private var §6!`§:Boolean = false;
      
      protected var §-!$§:Boolean = false;
      
      private var §<^§:Number;
      
      private var §4!&§:Number = 0;
      
      private var §`5§:Number = 0;
      
      private var §%Y§:Number = 0;
      
      private var §#!d§:Number = 1000;
      
      private var §']§:Number;
      
      private var §;t§:Number;
      
      private var §,?§:int;
      
      private var §"!d§:Number = 0;
      
      protected var §<5§:Number;
      
      protected var §,"0§:Number;
      
      private var §=$§:Number = 1;
      
      private var §-!&§:Number = 0;
      
      private var §+A§:b2Vec2;
      
      private var §1+§:Number = 1;
      
      private var §+y§:§ !S§;
      
      protected var §6!-§:§!o§;
      
      protected var §8=§:Boolean = true;
      
      private var §"!o§:int;
      
      public function §1!a§(param1:§9!G§, param2:Sprite, param3:String, param4:§!o§, param5:Number, param6:Number, param7:Number, param8:int)
      {
         super();
         this.§6!-§ = param4;
         this.§"!o§ = param8;
         this.§ !B§ = param1;
         this.§[<§ = param2;
         this.mName = param3;
         this.§+y§ = param4.shape;
         this.§`P§ = param4.soundResource;
         this.§@!-§ = param5;
         this.§'!0§ = param6;
         this.§1!c§ = param7 / Math.PI * 180;
         this.§#a§ = this.§1!c§;
         this.§<p§ = param5;
         this.§`i§ = param6;
         this.§%!-§ = false;
         this.§6!`§ = false;
         this.§4D§ = 0;
         this.§4!&§ = 0;
         this.§<5§ = 0;
         this.§<d§();
         this.§5!z§();
      }
      
      public function get §0!]§() : int
      {
         return this.§"!o§;
      }
      
      public function dispose() : void
      {
         if(this.§[<§)
         {
            this.§[<§.dispose();
            this.§[<§ = null;
         }
      }
      
      public function get levelItem() : §!o§
      {
         return this.§6!-§;
      }
      
      public function §>O§(param1:Boolean) : void
      {
         this.§%!-§ = param1;
         if(!this.§'B§)
         {
            this.§@!-§ = this.§<p§;
            this.§'!0§ = this.§`i§;
            this.§4D§ = this.§1!c§;
            this.updateRenderer();
         }
      }
      
      public function set §2![§(param1:Boolean) : void
      {
         this.§8=§ = param1;
      }
      
      public function get §-1§() : Number
      {
         if(this.name.toUpperCase() == "BIRD_GREEN")
         {
            return §0R§;
         }
         return §!=§;
      }
      
      public function §+"8§(param1:Number) : void
      {
         if(!this.§6!`§ || this.§%!-§)
         {
            return;
         }
         if(this.§;P§ != 0)
         {
            this.§%Y§ = 0;
            this.§"!d§ = 0;
            this.§4D§ = 0;
            this.§;t§ = 0;
            this.§;P§ = 0;
         }
         param1 = Math.min(param1,this.§<^§);
         this.§@!-§ += param1 * (this.§ !B§.x - this.§@!-§) / this.§<^§;
         this.§'!0§ += param1 * (this.§ !B§.y - this.§'!0§) / this.§<^§;
         this.§'!0§ -= param1 / 50 * (this.§<^§ / §%2§);
         this.§4D§ += param1 * (360 - this.§4D§) / this.§<^§;
         this.§<^§ -= param1;
         if(this.§<^§ <= 0)
         {
            this.§@!-§ = this.§ !B§.x;
            this.§'!0§ = this.§ !B§.y;
            this.§6!`§ = false;
            this.§>O§(true);
            this.§4D§ = 0;
            this.§1!c§ = this.§ !B§.angle / Math.PI * 180;
         }
         this.updateRenderer();
      }
      
      public function §[a§() : void
      {
         this.§6!`§ = true;
         this.§<^§ = §%2§;
         this.§4!E§(§'!7§.§,o§);
         if(this.§"!d§ != 0)
         {
            this.§'!0§ += this.§"!d§;
            this.§"!d§ = 0;
         }
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§^!x§ = null;
         if(!this.§%!-§ && this.§<5§ >= 0)
         {
            if(this.§,"0§ > this.§ !B§.§[!i§.§&"§.ground)
            {
               this.applyGravity(this.§ !B§.§[!i§.§&"§.ground - this.§,"0§);
               this.§<5§ = -1;
            }
            this.§<5§ -= param1;
            if(this.§<5§ <= 0)
            {
               if(this.§%Y§ > 0)
               {
                  this.§<5§ = this.§%Y§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§,"0§))
               {
                  _loc2_ = this.§ !B§.§[!i§.objects.§@d§(this.§@!-§,this.§,"0§);
               }
               if(_loc2_ < 0)
               {
                  if(this.applyGravity(param1 / 100))
                  {
                     this.§<5§ = -1;
                  }
                  else
                  {
                     this.§<5§ = 0;
                  }
               }
               else
               {
                  _loc3_ = this.§ !B§.§[!i§.objects.getObject(_loc2_) as §^!x§;
                  if(_loc3_ && _loc3_.§!A§)
                  {
                     this.§-!$§ = false;
                     this.§<5§ = -1;
                  }
                  else if(_loc3_ && _loc3_.§%!;§())
                  {
                     this.§-!$§ = false;
                     this.§<5§ = 2000;
                  }
                  else
                  {
                     this.§<5§ = 500;
                  }
               }
            }
         }
      }
      
      public function applyGravity(param1:Number) : Boolean
      {
         this.§'!0§ += param1;
         this.§,"0§ += param1;
         if(this.§,"0§ > this.§ !B§.§[!i§.§&"§.ground)
         {
            param1 = this.§,"0§ - this.§ !B§.§[!i§.§&"§.ground;
            this.§'!0§ -= param1;
            this.§,"0§ -= param1;
            this.updateRenderer();
            return true;
         }
         this.updateRenderer();
         return false;
      }
      
      protected function §<d§() : void
      {
         var _loc1_:§2N§ = null;
         if(this.§+y§ is §2N§)
         {
            _loc1_ = §2N§(this.§+y§);
            this.§+A§ = new b2Vec2(_loc1_.§&T§.x,_loc1_.§&T§.y);
            this.§0!$§ = _loc1_.radius;
         }
         else
         {
            this.§+A§ = new b2Vec2(0,0);
            this.§0!$§ = 1.5;
         }
      }
      
      protected function §5!z§() : void
      {
         this.§!r§ = this.§ !B§.§[!i§.§<a§.§#!r§(this.mName);
         if(!this.§!r§)
         {
            this.§^5§(null);
         }
         else
         {
            this.§?T§();
         }
      }
      
      public function §^5§(param1:DisplayObject) : void
      {
         this.§`"5§ = param1;
         if(this.§`"5§ && this.§`"5§.parent != this.§[<§)
         {
            this.§[<§.addChild(this.§`"5§);
         }
         if(this.§`"5§)
         {
            this.§`"5§.pivotX -= this.§+A§.x / §2F§.§6+§;
            this.§`"5§.pivotY -= this.§+A§.y / §2F§.§6+§;
         }
         this.updateRenderer();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.updateGroundControl(param1);
         if(this.§6!`§)
         {
            this.§%Y§ = 0;
            _loc4_ = false;
         }
         if(this.§8=§)
         {
            this.§7!r§(param1);
            this.§ "2§(param1);
            if(_loc4_ && param3)
            {
               this.§4c§(param1,param2);
            }
         }
      }
      
      public function §7!r§(param1:Number) : void
      {
         if(this.§4!&§ > 0)
         {
            this.§4!&§ -= param1;
            if(this.§4!&§ <= 0)
            {
               this.§0"&§();
            }
         }
         else if(this.§`5§ <= 0 && Math.random() * §>o§ < param1 && this.§ !B§.mSlingShotState)
         {
            this.§1!r§();
         }
      }
      
      public function §0"&§() : void
      {
         this.§4!&§ = 0;
         this.§?T§();
      }
      
      public function §1!r§() : void
      {
         if(!this.§8=§)
         {
            return;
         }
         this.§4!&§ = §4!M§;
         this.§<M§();
      }
      
      protected function §<M§() : void
      {
         this.§^5§(this.§!r§.getSubAnimation("blink").getFrame(0,this.§`"5§));
      }
      
      public function § "2§(param1:Number) : void
      {
         if(this.§`5§ > 0)
         {
            this.§`5§ -= param1;
            if(this.§`5§ <= 0)
            {
               this.§;!6§();
            }
         }
         else if(this.§4!&§ <= 0 && Math.random() * §@>§ < param1)
         {
            this.§4!E§();
         }
      }
      
      public function §;!6§() : void
      {
         this.§`5§ = 0;
         this.§?T§();
      }
      
      protected function §?T§() : void
      {
         this.§^5§(this.§!r§.getFrame(0,this.§`"5§));
      }
      
      public function §4!E§(param1:int = -1, param2:Boolean = false) : void
      {
         if(!this.§8=§)
         {
            return;
         }
         if(this.§`5§ > 0)
         {
            this.§;!6§();
         }
         if(this.§4!&§ > 0)
         {
            this.§0"&§();
         }
         if(param1 < 0)
         {
            param1 = §'!7§.§]"!§;
         }
         this.§`5§ = §#v§;
         this.§4!'§();
         if(this.§%!-§ || this.§6!`§ || param2)
         {
            §^!x§.§7!2§(param1,this.§`P§);
         }
         else
         {
            §^!x§.§7!2§(param1,this.§`P§,§#"3§);
         }
      }
      
      protected function §4!'§() : void
      {
         this.§^5§(this.§!r§.getSubAnimation("yell").getFrame(0,this.§`"5§));
      }
      
      public function §4c§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§%Y§ > 0)
         {
            this.§%Y§ -= param1;
            if(this.§%Y§ <= 0)
            {
               ++this.§,?§;
               this.§;t§ *= 0.4;
               if(!this.§%!-§ && this.§,?§ < 2)
               {
                  if(this.§,?§ > 1 && this.§;t§ < -1)
                  {
                     this.§;t§ = -1;
                  }
                  this.§']§ = this.§;t§;
                  this.§%Y§ = §'J§;
                  this.§%Y§ *= Math.abs(this.§']§) / 2;
                  this.§#!d§ = this.§%Y§;
                  this.§4D§ = 0;
                  this.§;P§ = 0;
               }
               else if(!this.§%!-§ && param2)
               {
                  this.§8%§(1.5);
               }
               else
               {
                  this.§%Y§ = 0;
                  this.§"!d§ = 0;
                  this.§4D§ = 0;
                  this.§;t§ = 0;
               }
            }
            else
            {
               if(this.§%Y§ >= this.§#!d§ / 2)
               {
                  _loc3_ = (this.§#!d§ - this.§%Y§) / (this.§#!d§ / 2);
                  _loc3_ = §77§.§-!,§(_loc3_);
                  this.§"!d§ = _loc3_ * this.§']§;
               }
               else
               {
                  _loc3_ = (this.§#!d§ / 2 - this.§%Y§) / (this.§#!d§ / 2);
                  _loc3_ = §77§.§-!,§(_loc3_,false);
                  this.§"!d§ = this.§']§ + _loc3_ * -this.§']§;
               }
               this.§4D§ = 360 * §77§.§-!,§((this.§#!d§ - this.§%Y§) / this.§#!d§) * this.§;P§;
            }
            this.updateRenderer();
         }
         else if(Math.random() * §0!s§ < param1 && !this.§%!-§ && !this.§6!`§ && !this.§-!$§)
         {
            this.§8%§();
         }
      }
      
      public function §8%§(param1:Number = 1) : void
      {
         if(!this.§8=§)
         {
            return;
         }
         this.§,?§ = 0;
         this.§%Y§ = §'J§;
         this.§"!d§ = 0;
         this.§']§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§;t§ = this.§']§;
         this.§%Y§ *= Math.abs(this.§']§) / 3;
         this.§#!d§ = this.§%Y§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§;P§ = 0;
         }
         else if(this.§%Y§ < 350)
         {
            this.§;P§ = 0;
         }
         else
         {
            this.§;P§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§;P§ = Math.random() > 0.5 ? Number(this.§;P§) : Number(0);
         }
      }
      
      public function updateRenderer() : void
      {
         if(this.§ !B§.§7!b§)
         {
            this.§[<§.x = this.§@!-§ / §2F§.§6+§;
            this.§[<§.y = (this.§'!0§ + this.§"!d§) / §2F§.§6+§;
         }
         else
         {
            this.§[<§.x = (this.§@!-§ + this.§"!d§ * Math.cos((this.§1!c§ + 90) / 180 * Math.PI)) / §2F§.§6+§;
            this.§[<§.y = (this.§'!0§ + this.§"!d§ * Math.sin((this.§1!c§ + 90) / 180 * Math.PI)) / §2F§.§6+§;
         }
         this.§[<§.rotation = (this.§4D§ + this.§1!c§) / 180 * Math.PI;
      }
      
      public function § !o§() : void
      {
         this.§-!$§ = true;
         this.§%!-§ = false;
         this.§6!`§ = false;
         this.§,?§ = 0;
         this.§<5§ = 0;
         this.§%Y§ = 0;
         this.§%Y§ = 0;
         this.§"!d§ = 0;
         this.§4D§ = 0;
         this.§;t§ = 0;
         this.§;P§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§@!-§) * (param1 - this.§@!-§) + (param2 - this.§'!0§) * (param2 - this.§'!0§));
         if(_loc3_ <= this.§0!$§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§@!-§ >= param3 && this.§@!-§ <= param4 && this.§'!0§ >= param1 && this.§'!0§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = false;
         if(this.§@!-§ != param1 || this.§'!0§ != param2)
         {
            _loc4_ = true;
         }
         this.§@!-§ = param1;
         this.§'!0§ = param2;
         this.§4D§ = param3;
         this.§<5§ = 100;
         this.updateRenderer();
         if(_loc4_)
         {
            this.§ !B§.§<t§();
         }
      }
      
      public function get §<P§() : Number
      {
         return this.§%Y§;
      }
      
      public function get §+!V§() : Number
      {
         return this.§<5§;
      }
      
      public function set §+!V§(param1:Number) : void
      {
         this.§<5§ = param1;
      }
      
      public function get § !L§() : Number
      {
         return this.§=$§;
      }
      
      public function get §'B§() : Boolean
      {
         return this.§%!-§;
      }
      
      public function get radius() : Number
      {
         return this.§0!$§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§[<§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set § !L§(param1:Number) : void
      {
         this.§=$§ = param1;
      }
      
      public function get §0"%§() : Number
      {
         return this.§-!&§;
      }
      
      public function set §0"%§(param1:Number) : void
      {
         this.§-!&§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§1+§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§1+§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§@!-§;
      }
      
      public function get y() : Number
      {
         return this.§'!0§;
      }
      
      public function get §="4§() : Number
      {
         return this.§<p§;
      }
      
      public function get §;!O§() : Number
      {
         return this.§`i§;
      }
   }
}
