package §@0§
{
   import § "%§.b2Vec2;
   import §8"L§.§!!C§;
   import §8"L§.§+"L§;
   import §8"L§.§4U§;
   import §8"L§.§8g§;
   import §8§.§4!y§;
   import §@!M§.§!"p§;
   import §]!6§.§9!9§;
   import §^"S§.DisplayObject;
   import §^"S§.Sprite;
   import §`"8§.§0$2§;
   
   public class §4!_§
   {
      
      public static const §-"E§:String = "ChannelSlingshot";
      
      public static const §="=§:Number = 900;
      
      public static const §3!h§:Number = 200;
      
      public static const §7"j§:Number = 200;
      
      public static const §6"%§:Number = 1500;
      
      public static const §-"C§:Number = 5000;
      
      public static const §9$8§:Number = 1000;
      
      public static const §1#-§:Number = 1000;
      
      public static const §'$8§:Number = 46.25;
      
      public static const §@"=§:Number = 55.5;
      
      private static const §1"K§:Array = ["bird_misc_a1","bird_misc_a2","bird_misc_a3","bird_misc_a4","bird_misc_a5","bird_misc_a6","bird_misc_a7","bird_misc_a8","bird_misc_a9","bird_misc_a10","bird_misc_a11","bird_misc_a12"];
       
      
      protected var §=q§:String;
      
      protected var §8u§:Number;
      
      protected var §!#§:Number;
      
      protected var §7"I§:Number;
      
      protected var §8!2§:Number;
      
      protected var §&"e§:Number;
      
      protected var §##F§:Number;
      
      private var §%$@§:§+"L§;
      
      protected var §]#8§:Number;
      
      protected var §'" §:Number = 1;
      
      private var §4"D§:Sprite;
      
      private var §;"J§:Sprite;
      
      protected var §&n§:§0$2§;
      
      private var §[$%§:DisplayObject;
      
      protected var §<!'§:§ !o§;
      
      private var §4#&§:Number;
      
      protected var §="B§:Boolean = false;
      
      private var §&"Z§:Boolean = false;
      
      protected var §[$ §:Boolean = false;
      
      private var §<#K§:Number;
      
      private var §6"P§:Number = 0;
      
      private var §>#m§:Number = 0;
      
      private var §'#Q§:Number = 0;
      
      private var §=!'§:Number = 1000;
      
      private var §0!n§:Number;
      
      private var §'"j§:Number;
      
      private var §?"3§:int;
      
      private var §%#B§:Number = 0;
      
      protected var §[$7§:Number;
      
      protected var §["&§:Number;
      
      private var §+# §:Object;
      
      private var §+§:Object;
      
      private var §=#6§:Number = 0;
      
      private var §]!-§:b2Vec2;
      
      private var §^#5§:Number = 1;
      
      private var §`"5§:§!!C§;
      
      protected var §'!i§:§4U§;
      
      protected var §9!Y§:Boolean = true;
      
      private var §'b§:int;
      
      protected var yOffset:Number = 0;
      
      protected var xOffset:Number = 0;
      
      public var scoreCounted:Boolean;
      
      protected var §["9§:Boolean;
      
      public function §4!_§(param1:§ !o§, param2:Sprite, param3:String, param4:§4U§, param5:Number, param6:Number, param7:Number, param8:int)
      {
         super();
         this.§'!i§ = param4;
         this.§'b§ = param8;
         this.§<!'§ = param1;
         this.§4"D§ = param2;
         this.§=q§ = param3;
         this.§`"5§ = param4.shape;
         this.§%$@§ = param4.soundResource;
         this.§8u§ = param5;
         this.§!#§ = param6;
         this.§7"I§ = param7 / Math.PI * 180;
         this.§##F§ = this.§7"I§;
         this.§8!2§ = param5;
         this.§&"e§ = param6;
         this.§="B§ = false;
         this.§&"Z§ = false;
         this.§]#8§ = 0;
         this.§6"P§ = 0;
         this.§[$7§ = 0;
         this.§9"m§();
         this.§`##§();
         this.§;#t§ = true;
      }
      
      public static function §]"D§() : Number
      {
         return §@"=§ / §'$8§;
      }
      
      public function get launchIndex() : int
      {
         return this.§'b§;
      }
      
      public function set launchIndex(param1:int) : void
      {
         this.§'b§ = param1;
      }
      
      public function get backgroundSprite() : Sprite
      {
         return this.§;"J§;
      }
      
      public function dispose() : void
      {
         if(this.§4"D§)
         {
            this.§4"D§.dispose();
            this.§4"D§ = null;
         }
         if(this.§;"J§)
         {
            this.§;"J§.dispose();
            this.§;"J§ = null;
         }
      }
      
      public function §&##§() : void
      {
         if(!this.§;"J§)
         {
            this.§;"J§ = new Sprite();
            this.backgroundSprite.x = this.§4"D§.x;
            this.backgroundSprite.y = this.§4"D§.y;
            this.backgroundSprite.rotation = this.§4"D§.rotation;
         }
      }
      
      public function set color(param1:uint) : void
      {
         if(this.§[$%§)
         {
            this.§[$%§.color = param1;
         }
      }
      
      public function get levelItem() : §4U§
      {
         return this.§'!i§;
      }
      
      public function §>!d§(param1:Boolean) : void
      {
         this.§="B§ = param1;
         if(!this.§1"U§)
         {
            this.§8u§ = this.§8!2§;
            this.§!#§ = this.§&"e§;
            this.§]#8§ = this.§7"I§;
            this.updateRenderer();
         }
      }
      
      public function set animationsEnabled(param1:Boolean) : void
      {
         this.§9!Y§ = param1;
      }
      
      public function get §-$0§() : Number
      {
         if(this.name.toUpperCase() == "BIRD_GREEN")
         {
            return §@"=§;
         }
         return §'$8§;
      }
      
      public function approachSlingshot(param1:Number) : void
      {
         if(!this.§&"Z§ || this.§="B§)
         {
            return;
         }
         if(this.§'" § != 0)
         {
            this.§'#Q§ = 0;
            this.§%#B§ = 0;
            this.§]#8§ = 0;
            this.§'"j§ = 0;
            this.§'" § = 0;
         }
         param1 = Math.min(param1,this.§<#K§);
         this.§8u§ += param1 * (this.§<!'§.x - this.§8u§ + this.xOffset) / this.§<#K§;
         this.§!#§ += param1 * (this.§<!'§.y - this.§!#§ + this.yOffset) / this.§<#K§;
         this.§!#§ -= param1 / 50 * (this.§<#K§ / §="=§);
         this.§]#8§ += param1 * (360 - this.§]#8§) / this.§<#K§;
         this.§<#K§ -= param1;
         if(this.§<#K§ <= 0)
         {
            this.§8u§ = this.§<!'§.x;
            this.§!#§ = this.§<!'§.y;
            this.§&"Z§ = false;
            this.§>!d§(true);
            this.§]#8§ = 0;
            this.§7"I§ = this.§<!'§.angle / Math.PI * 180;
         }
         this.updateRenderer();
      }
      
      public function §+"j§() : void
      {
         this.§&"Z§ = true;
         this.§<#K§ = §="=§;
         §!"p§.playSound(this.§%$@§.§"^§(),this.§%$@§.channelName);
         if(this.§%#B§ != 0)
         {
            this.§!#§ += this.§%#B§;
            this.§%#B§ = 0;
         }
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§4!y§ = null;
         if(!this.§="B§ && this.§[$7§ >= 0)
         {
            if(this.§["&§ > this.§<!'§.§'"`§.§^n§.ground)
            {
               this.applyGravity(this.§<!'§.§'"`§.§^n§.ground - this.§["&§);
               this.§[$7§ = -1;
            }
            this.§[$7§ -= param1;
            if(this.§[$7§ <= 0)
            {
               if(this.§'#Q§ > 0)
               {
                  this.§[$7§ = this.§'#Q§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§["&§))
               {
                  _loc2_ = this.§<!'§.§'"`§.objects.§;""§(this.§8u§,this.§["&§);
               }
               if(_loc2_ < 0)
               {
                  if(this.applyGravity(param1 / 100))
                  {
                     this.§[$7§ = -1;
                  }
                  else
                  {
                     this.§[$7§ = 0;
                  }
               }
               else
               {
                  _loc3_ = this.§<!'§.§'"`§.objects.getObject(_loc2_) as §4!y§;
                  if(_loc3_ && _loc3_.§]",§)
                  {
                     this.§[$ § = false;
                     this.§[$7§ = -1;
                  }
                  else if(_loc3_ && _loc3_.§7#]§())
                  {
                     this.§[$ § = false;
                     this.§[$7§ = 2000;
                  }
                  else
                  {
                     this.§[$7§ = 500;
                  }
               }
            }
         }
      }
      
      public function applyGravity(param1:Number) : Boolean
      {
         this.§!#§ += param1;
         this.§["&§ += param1;
         if(this.§["&§ > this.§<!'§.§'"`§.§^n§.ground)
         {
            param1 = this.§["&§ - this.§<!'§.§'"`§.§^n§.ground;
            this.§!#§ -= param1;
            this.§["&§ -= param1;
            this.updateRenderer();
            return true;
         }
         this.updateRenderer();
         return false;
      }
      
      protected function §9"m§() : void
      {
         var _loc1_:§8g§ = null;
         if(this.§`"5§ is §8g§)
         {
            _loc1_ = §8g§(this.§`"5§);
            this.§]!-§ = new b2Vec2(_loc1_.pivot.x,_loc1_.pivot.y);
            this.§4#&§ = _loc1_.radius;
         }
         else
         {
            this.§]!-§ = new b2Vec2(0,0);
            this.§4#&§ = 1.5;
         }
      }
      
      protected function §`##§() : void
      {
         this.§&n§ = this.§<!'§.§'"`§.animationManager.getAnimation(this.§=q§);
         if(!this.§&n§)
         {
            this.§&#f§(null);
         }
         else
         {
            this.§9#V§();
         }
      }
      
      public function §&#f§(param1:DisplayObject) : void
      {
         this.§[$%§ = param1;
         if(this.§[$%§ && this.§[$%§.parent != this.§4"D§)
         {
            this.§4"D§.addChild(this.§[$%§);
         }
         if(this.§[$%§)
         {
            this.§[$%§.pivotX -= this.§]!-§.x / §%!q§.§6q§;
            this.§[$%§.pivotY -= this.§]!-§.y / §%!q§.§6q§;
         }
         this.updateRenderer();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.updateGroundControl(param1);
         if(this.§&"Z§)
         {
            this.§'#Q§ = 0;
            _loc4_ = false;
         }
         if(this.§9!Y§)
         {
            this.§`S§(param1);
            this.§`!A§(param1);
            if(_loc4_ && param3)
            {
               this.§7#X§(param1,param2);
            }
         }
      }
      
      public function §`S§(param1:Number) : void
      {
         if(this.§6"P§ > 0)
         {
            this.§6"P§ -= param1;
            if(this.§6"P§ <= 0)
            {
               this.§=#w§();
            }
         }
         else if(this.§>#m§ <= 0 && Math.random() * §6"%§ < param1 && this.§<!'§.mSlingShotState)
         {
            this.§8"g§();
         }
      }
      
      public function §=#w§() : void
      {
         this.§6"P§ = 0;
         this.§9#V§();
      }
      
      public function §8"g§() : void
      {
         if(!this.§9!Y§)
         {
            return;
         }
         this.§6"P§ = §3!h§;
         this.§<#<§();
      }
      
      protected function §<#<§() : void
      {
         this.§&#f§(this.§&n§.getSubAnimation("blink").getFrame(0,this.§[$%§));
      }
      
      public function §`!A§(param1:Number) : void
      {
         if(this.§>#m§ > 0)
         {
            this.§>#m§ -= param1;
            if(this.§>#m§ <= 0)
            {
               this.§?1§();
            }
         }
         else if(this.§6"P§ <= 0 && Math.random() * §-"C§ < param1)
         {
            this.§]"^§();
         }
      }
      
      public function §?1§() : void
      {
         this.§>#m§ = 0;
         this.§9#V§();
      }
      
      protected function §9#V§() : void
      {
         this.§&#f§(this.§&n§.getFrame(0,this.§[$%§));
      }
      
      public function §]"^§(param1:Boolean = false) : void
      {
         if(!this.§9!Y§)
         {
            return;
         }
         if(this.§>#m§ > 0)
         {
            this.§?1§();
         }
         if(this.§6"P§ > 0)
         {
            this.§=#w§();
         }
         this.§>#m§ = §7"j§;
         this.§?$;§();
         var _loc2_:String = this.§%$@§.getIdleSounds();
         if(!_loc2_)
         {
            _loc2_ = §1"K§[int(Math.random() * §1"K§.length)];
         }
         if(this.§="B§ || this.§&"Z§ || param1)
         {
            §!"p§.playSound(_loc2_,this.§%$@§.channelName);
         }
         else
         {
            §!"p§.playSound(_loc2_,§-"E§);
         }
      }
      
      protected function §?$;§() : void
      {
         this.§&#f§(this.§&n§.getSubAnimation("yell").getFrame(0,this.§[$%§));
      }
      
      public function §7#X§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§'#Q§ > 0)
         {
            this.§'#Q§ -= param1;
            if(this.§'#Q§ <= 0)
            {
               ++this.§?"3§;
               this.§'"j§ *= 0.4;
               if(!this.§="B§ && this.§?"3§ < 2)
               {
                  if(this.§?"3§ > 1 && this.§'"j§ < -1)
                  {
                     this.§'"j§ = -1;
                  }
                  this.§0!n§ = this.§'"j§;
                  this.§'#Q§ = §1#-§;
                  this.§'#Q§ *= Math.abs(this.§0!n§) / 2;
                  this.§=!'§ = this.§'#Q§;
                  this.§]#8§ = 0;
                  this.§'" § = 0;
               }
               else if(!this.§="B§ && param2)
               {
                  this.§4"t§(1.5);
               }
               else
               {
                  this.§'#Q§ = 0;
                  this.§%#B§ = 0;
                  this.§]#8§ = 0;
                  this.§'"j§ = 0;
               }
            }
            else
            {
               if(this.§'#Q§ >= this.§=!'§ / 2)
               {
                  _loc3_ = (this.§=!'§ - this.§'#Q§) / (this.§=!'§ / 2);
                  _loc3_ = §9!9§.§0#K§(_loc3_);
                  this.§%#B§ = _loc3_ * this.§0!n§;
               }
               else
               {
                  _loc3_ = (this.§=!'§ / 2 - this.§'#Q§) / (this.§=!'§ / 2);
                  _loc3_ = §9!9§.§0#K§(_loc3_,false);
                  this.§%#B§ = this.§0!n§ + _loc3_ * -this.§0!n§;
               }
               this.§]#8§ = 360 * §9!9§.§0#K§((this.§=!'§ - this.§'#Q§) / this.§=!'§) * this.§'" §;
            }
            this.updateRenderer();
         }
         else if(Math.random() * §9$8§ < param1 && !this.§="B§ && !this.§&"Z§ && !this.§[$ §)
         {
            this.§4"t§();
         }
      }
      
      public function §4"t§(param1:Number = 1) : void
      {
         if(!this.§9!Y§)
         {
            return;
         }
         this.§?"3§ = 0;
         this.§'#Q§ = §1#-§;
         this.§%#B§ = 0;
         this.§0!n§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§'"j§ = this.§0!n§;
         this.§'#Q§ *= Math.abs(this.§0!n§) / 3;
         this.§=!'§ = this.§'#Q§;
         if(this.§=q§ == "BIRD_WHITE" || this.§=q§ == "BIRD_BLACK" || this.§=q§ == "RED_BIG")
         {
            this.§'" § = 0;
         }
         else if(this.§'#Q§ < 350)
         {
            this.§'" § = 0;
         }
         else
         {
            this.§'" § = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§'" § = Math.random() > 0.5 ? Number(this.§'" §) : Number(0);
         }
      }
      
      public function updateRenderer() : void
      {
         if(this.§<!'§.§7L§)
         {
            this.§4"D§.x = this.§8u§ / §%!q§.§6q§;
            this.§4"D§.y = (this.§!#§ + this.§%#B§) / §%!q§.§6q§;
         }
         else
         {
            this.§4"D§.x = (this.§8u§ + this.§%#B§ * Math.cos((this.§7"I§ + 90) / 180 * Math.PI)) / §%!q§.§6q§;
            this.§4"D§.y = (this.§!#§ + this.§%#B§ * Math.sin((this.§7"I§ + 90) / 180 * Math.PI)) / §%!q§.§6q§;
         }
         if(this.§<!'§.§3O§)
         {
            this.§4"D§.rotation = (this.§]#8§ + this.§7"I§) / 180 * Math.PI;
         }
         if(this.backgroundSprite)
         {
            this.backgroundSprite.x = this.§4"D§.x;
            this.backgroundSprite.y = this.§4"D§.y;
            this.backgroundSprite.rotation = this.§4"D§.rotation;
         }
      }
      
      public function §>k§() : void
      {
         this.§[$ § = true;
         this.§="B§ = false;
         this.§&"Z§ = false;
         this.§?"3§ = 0;
         this.§[$7§ = 0;
         this.§'#Q§ = 0;
         this.§'#Q§ = 0;
         this.§%#B§ = 0;
         this.§]#8§ = 0;
         this.§'"j§ = 0;
         this.§'" § = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§8u§) * (param1 - this.§8u§) + (param2 - this.§!#§) * (param2 - this.§!#§));
         if(_loc3_ <= this.§4#&§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§8u§ >= param3 && this.§8u§ <= param4 && this.§!#§ >= param1 && this.§!#§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = false;
         if(this.§8u§ != param1 || this.§!#§ != param2)
         {
            _loc4_ = true;
         }
         this.§8u§ = param1;
         this.§!#§ = param2;
         this.§]#8§ = param3;
         this.§[$7§ = 100;
         this.updateRenderer();
         if(_loc4_)
         {
            this.§<!'§.sortBirds();
         }
      }
      
      public function get §%"B§() : Number
      {
         return this.§'#Q§;
      }
      
      public function get §;#l§() : Number
      {
         return this.§[$7§;
      }
      
      public function set §;#l§(param1:Number) : void
      {
         this.§[$7§ = param1;
      }
      
      public function get §!a§() : Object
      {
         return this.§+# §;
      }
      
      public function get §7!x§() : Object
      {
         return this.§+§;
      }
      
      public function get §1"U§() : Boolean
      {
         return this.§="B§;
      }
      
      public function get radius() : Number
      {
         return this.§4#&§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§4"D§;
      }
      
      public function set name(param1:String) : void
      {
         this.§=q§ = param1;
      }
      
      public function get name() : String
      {
         return this.§=q§;
      }
      
      public function set §!a§(param1:Object) : void
      {
         this.§+# § = param1;
      }
      
      public function set §7!x§(param1:Object) : void
      {
         this.§+§ = param1;
      }
      
      public function get §'"]§() : Number
      {
         return this.§=#6§;
      }
      
      public function set §'"]§(param1:Number) : void
      {
         this.§=#6§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§^#5§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§^#5§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§8u§;
      }
      
      public function get y() : Number
      {
         return this.§!#§;
      }
      
      public function get originalX() : Number
      {
         return this.§8!2§;
      }
      
      public function get originalY() : Number
      {
         return this.§&"e§;
      }
      
      public function get §;#t§() : Boolean
      {
         return this.§["9§;
      }
      
      public function set §;#t§(param1:Boolean) : void
      {
         this.§["9§ = param1;
      }
   }
}
