package §52§
{
   import §!x§.§`#E§;
   import §0m§.b2Vec2;
   import §9$§.DisplayObject;
   import §9$§.Sprite;
   import §@"§.§`"W§;
   import §[#a§.§="@§;
   import §`#C§.§-"L§;
   import §`#C§.§0!y§;
   import §`#C§.§3#U§;
   import §`#C§.§8K§;
   
   public class §5!&§
   {
      
      public static const §>"&§:String = "ChannelSlingshot";
      
      public static const §0#x§:Number = 900;
      
      public static const §>V§:Number = 200;
      
      public static const §+#+§:Number = 200;
      
      public static const §+#'§:Number = 1500;
      
      public static const §>W§:Number = 5000;
      
      public static const §>"W§:Number = 1000;
      
      public static const §>#g§:Number = 1000;
      
      public static const §+!B§:Number = 46.25;
      
      public static const §&#,§:Number = 52.5;
       
      
      protected var §2!4§:String;
      
      protected var §+!5§:Number;
      
      protected var §'! §:Number;
      
      protected var §!M§:Number;
      
      protected var §2!?§:Number;
      
      protected var §''§:Number;
      
      protected var §`!k§:Number;
      
      private var §<"M§:§0!y§;
      
      protected var §%##§:Number;
      
      protected var §^5§:Number = 1;
      
      private var §]Y§:Sprite;
      
      private var §6M§:Sprite;
      
      protected var §"!c§:§`"W§;
      
      private var §2d§:DisplayObject;
      
      protected var §@!x§:§@M§;
      
      private var §!!1§:Number;
      
      protected var §#"[§:Boolean = false;
      
      private var §#$7§:Boolean = false;
      
      protected var §4"=§:Boolean = false;
      
      private var §2"X§:Number;
      
      private var §3$"§:Number = 0;
      
      private var §&#=§:Number = 0;
      
      private var §'%§:Number = 0;
      
      private var §-!-§:Number = 1000;
      
      private var §&!G§:Number;
      
      private var §[!!§:Number;
      
      private var §5#y§:int;
      
      private var §2!S§:Number = 0;
      
      protected var §6z§:Number;
      
      protected var §6"Y§:Number;
      
      private var §#!9§:Number = 1;
      
      private var §^S§:Number = 0;
      
      private var §%"§:b2Vec2;
      
      private var §]"?§:Number = 1;
      
      private var §`=§:§-"L§;
      
      protected var §`!w§:§8K§;
      
      protected var §-"A§:Boolean = true;
      
      private var §"$;§:int;
      
      protected var yOffset:Number = 0;
      
      protected var xOffset:Number = 0;
      
      public var scoreCounted:Boolean;
      
      public function §5!&§(param1:§@M§, param2:Sprite, param3:String, param4:§8K§, param5:Number, param6:Number, param7:Number, param8:int)
      {
         super();
         this.§`!w§ = param4;
         this.§"$;§ = param8;
         this.§@!x§ = param1;
         this.§]Y§ = param2;
         this.§2!4§ = param3;
         this.§`=§ = param4.shape;
         this.§<"M§ = param4.soundResource;
         this.§+!5§ = param5;
         this.§'! § = param6;
         this.§!M§ = param7 / Math.PI * 180;
         this.§`!k§ = this.§!M§;
         this.§2!?§ = param5;
         this.§''§ = param6;
         this.§#"[§ = false;
         this.§#$7§ = false;
         this.§%##§ = 0;
         this.§3$"§ = 0;
         this.§6z§ = 0;
         this.§%x§();
         this.§,!5§();
      }
      
      public function get launchIndex() : int
      {
         return this.§"$;§;
      }
      
      public function set launchIndex(param1:int) : void
      {
         this.§"$;§ = param1;
      }
      
      public function get backgroundSprite() : Sprite
      {
         return this.§6M§;
      }
      
      public function dispose() : void
      {
         if(this.§]Y§)
         {
            this.§]Y§.dispose();
            this.§]Y§ = null;
         }
         if(this.§6M§)
         {
            this.§6M§.dispose();
            this.§6M§ = null;
         }
      }
      
      public function §6y§() : void
      {
         if(!this.§6M§)
         {
            this.§6M§ = new Sprite();
            this.backgroundSprite.x = this.§]Y§.x;
            this.backgroundSprite.y = this.§]Y§.y;
            this.backgroundSprite.rotation = this.§]Y§.rotation;
         }
      }
      
      public function set color(param1:uint) : void
      {
         if(this.§2d§)
         {
            this.§2d§.color = param1;
         }
      }
      
      public function get levelItem() : §8K§
      {
         return this.§`!w§;
      }
      
      public function §1#j§(param1:Boolean) : void
      {
         this.§#"[§ = param1;
         if(!this.§;#v§)
         {
            this.§+!5§ = this.§2!?§;
            this.§'! § = this.§''§;
            this.§%##§ = this.§!M§;
            this.updateRenderer();
         }
      }
      
      public function set animationsEnabled(param1:Boolean) : void
      {
         this.§-"A§ = param1;
      }
      
      public function get §-f§() : Number
      {
         if(this.name.toUpperCase() == "BIRD_GREEN")
         {
            return §&#,§;
         }
         return §+!B§;
      }
      
      public function approachSlingshot(param1:Number) : void
      {
         if(!this.§#$7§ || this.§#"[§)
         {
            return;
         }
         if(this.§^5§ != 0)
         {
            this.§'%§ = 0;
            this.§2!S§ = 0;
            this.§%##§ = 0;
            this.§[!!§ = 0;
            this.§^5§ = 0;
         }
         param1 = Math.min(param1,this.§2"X§);
         this.§+!5§ += param1 * (this.§@!x§.x - this.§+!5§ + this.xOffset) / this.§2"X§;
         this.§'! § += param1 * (this.§@!x§.y - this.§'! § + this.yOffset) / this.§2"X§;
         this.§'! § -= param1 / 50 * (this.§2"X§ / §0#x§);
         this.§%##§ += param1 * (360 - this.§%##§) / this.§2"X§;
         this.§2"X§ -= param1;
         if(this.§2"X§ <= 0)
         {
            this.§+!5§ = this.§@!x§.x;
            this.§'! § = this.§@!x§.y;
            this.§#$7§ = false;
            this.§1#j§(true);
            this.§%##§ = 0;
            this.§!M§ = this.§@!x§.angle / Math.PI * 180;
         }
         this.updateRenderer();
      }
      
      public function §;"a§() : void
      {
         this.§#$7§ = true;
         this.§2"X§ = §0#x§;
         this.§"!0§(§0!y§.§,%§);
         if(this.§2!S§ != 0)
         {
            this.§'! § += this.§2!S§;
            this.§2!S§ = 0;
         }
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§="@§ = null;
         if(!this.§#"[§ && this.§6z§ >= 0)
         {
            if(this.§6"Y§ > this.§@!x§.§#""§.§8!X§.ground)
            {
               this.applyGravity(this.§@!x§.§#""§.§8!X§.ground - this.§6"Y§);
               this.§6z§ = -1;
            }
            this.§6z§ -= param1;
            if(this.§6z§ <= 0)
            {
               if(this.§'%§ > 0)
               {
                  this.§6z§ = this.§'%§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§6"Y§))
               {
                  _loc2_ = this.§@!x§.§#""§.objects.§>#!§(this.§+!5§,this.§6"Y§);
               }
               if(_loc2_ < 0)
               {
                  if(this.applyGravity(param1 / 100))
                  {
                     this.§6z§ = -1;
                  }
                  else
                  {
                     this.§6z§ = 0;
                  }
               }
               else
               {
                  _loc3_ = this.§@!x§.§#""§.objects.getObject(_loc2_) as §="@§;
                  if(_loc3_ && _loc3_.§]7§)
                  {
                     this.§4"=§ = false;
                     this.§6z§ = -1;
                  }
                  else if(_loc3_ && _loc3_.§[!K§())
                  {
                     this.§4"=§ = false;
                     this.§6z§ = 2000;
                  }
                  else
                  {
                     this.§6z§ = 500;
                  }
               }
            }
         }
      }
      
      public function applyGravity(param1:Number) : Boolean
      {
         this.§'! § += param1;
         this.§6"Y§ += param1;
         if(this.§6"Y§ > this.§@!x§.§#""§.§8!X§.ground)
         {
            param1 = this.§6"Y§ - this.§@!x§.§#""§.§8!X§.ground;
            this.§'! § -= param1;
            this.§6"Y§ -= param1;
            this.updateRenderer();
            return true;
         }
         this.updateRenderer();
         return false;
      }
      
      protected function §%x§() : void
      {
         var _loc1_:§3#U§ = null;
         if(this.§`=§ is §3#U§)
         {
            _loc1_ = §3#U§(this.§`=§);
            this.§%"§ = new b2Vec2(_loc1_.pivot.x,_loc1_.pivot.y);
            this.§!!1§ = _loc1_.radius;
         }
         else
         {
            this.§%"§ = new b2Vec2(0,0);
            this.§!!1§ = 1.5;
         }
      }
      
      protected function §,!5§() : void
      {
         this.§"!c§ = this.§@!x§.§#""§.animationManager.getAnimation(this.§2!4§);
         if(!this.§"!c§)
         {
            this.§#"C§(null);
         }
         else
         {
            this.§9#&§();
         }
      }
      
      public function §#"C§(param1:DisplayObject) : void
      {
         this.§2d§ = param1;
         if(this.§2d§ && this.§2d§.parent != this.§]Y§)
         {
            this.§]Y§.addChild(this.§2d§);
         }
         if(this.§2d§)
         {
            this.§2d§.pivotX -= this.§%"§.x / §#!,§.§?$#§;
            this.§2d§.pivotY -= this.§%"§.y / §#!,§.§?$#§;
         }
         this.updateRenderer();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.updateGroundControl(param1);
         if(this.§#$7§)
         {
            this.§'%§ = 0;
            _loc4_ = false;
         }
         if(this.§-"A§)
         {
            this.§7"k§(param1);
            this.§+#L§(param1);
            if(_loc4_ && param3)
            {
               this.§^#a§(param1,param2);
            }
         }
      }
      
      public function §7"k§(param1:Number) : void
      {
         if(this.§3$"§ > 0)
         {
            this.§3$"§ -= param1;
            if(this.§3$"§ <= 0)
            {
               this.§4=§();
            }
         }
         else if(this.§&#=§ <= 0 && Math.random() * §+#'§ < param1 && this.§@!x§.mSlingShotState)
         {
            this.§"E§();
         }
      }
      
      public function §4=§() : void
      {
         this.§3$"§ = 0;
         this.§9#&§();
      }
      
      public function §"E§() : void
      {
         if(!this.§-"A§)
         {
            return;
         }
         this.§3$"§ = §>V§;
         this.§]=§();
      }
      
      protected function §]=§() : void
      {
         this.§#"C§(this.§"!c§.getSubAnimation("blink").getFrame(0,this.§2d§));
      }
      
      public function §+#L§(param1:Number) : void
      {
         if(this.§&#=§ > 0)
         {
            this.§&#=§ -= param1;
            if(this.§&#=§ <= 0)
            {
               this.§'#q§();
            }
         }
         else if(this.§3$"§ <= 0 && Math.random() * §>W§ < param1)
         {
            this.§"!0§();
         }
      }
      
      public function §'#q§() : void
      {
         this.§&#=§ = 0;
         this.§9#&§();
      }
      
      protected function §9#&§() : void
      {
         this.§#"C§(this.§"!c§.getFrame(0,this.§2d§));
      }
      
      public function §"!0§(param1:int = -1, param2:Boolean = false) : void
      {
         if(!this.§-"A§)
         {
            return;
         }
         if(this.§&#=§ > 0)
         {
            this.§'#q§();
         }
         if(this.§3$"§ > 0)
         {
            this.§4=§();
         }
         if(param1 < 0)
         {
            param1 = §0!y§.§3D§;
         }
         this.§&#=§ = §+#+§;
         this.§<#6§();
         if(this.§#"[§ || this.§#$7§ || param2)
         {
            §="@§.§<#,§(param1,this.§<"M§);
         }
         else
         {
            §="@§.§<#,§(param1,this.§<"M§,§>"&§);
         }
      }
      
      protected function §<#6§() : void
      {
         this.§#"C§(this.§"!c§.getSubAnimation("yell").getFrame(0,this.§2d§));
      }
      
      public function §^#a§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§'%§ > 0)
         {
            this.§'%§ -= param1;
            if(this.§'%§ <= 0)
            {
               ++this.§5#y§;
               this.§[!!§ *= 0.4;
               if(!this.§#"[§ && this.§5#y§ < 2)
               {
                  if(this.§5#y§ > 1 && this.§[!!§ < -1)
                  {
                     this.§[!!§ = -1;
                  }
                  this.§&!G§ = this.§[!!§;
                  this.§'%§ = §>#g§;
                  this.§'%§ *= Math.abs(this.§&!G§) / 2;
                  this.§-!-§ = this.§'%§;
                  this.§%##§ = 0;
                  this.§^5§ = 0;
               }
               else if(!this.§#"[§ && param2)
               {
                  this.§<#d§(1.5);
               }
               else
               {
                  this.§'%§ = 0;
                  this.§2!S§ = 0;
                  this.§%##§ = 0;
                  this.§[!!§ = 0;
               }
            }
            else
            {
               if(this.§'%§ >= this.§-!-§ / 2)
               {
                  _loc3_ = (this.§-!-§ - this.§'%§) / (this.§-!-§ / 2);
                  _loc3_ = §`#E§.§`"k§(_loc3_);
                  this.§2!S§ = _loc3_ * this.§&!G§;
               }
               else
               {
                  _loc3_ = (this.§-!-§ / 2 - this.§'%§) / (this.§-!-§ / 2);
                  _loc3_ = §`#E§.§`"k§(_loc3_,false);
                  this.§2!S§ = this.§&!G§ + _loc3_ * -this.§&!G§;
               }
               this.§%##§ = 360 * §`#E§.§`"k§((this.§-!-§ - this.§'%§) / this.§-!-§) * this.§^5§;
            }
            this.updateRenderer();
         }
         else if(Math.random() * §>"W§ < param1 && !this.§#"[§ && !this.§#$7§ && !this.§4"=§)
         {
            this.§<#d§();
         }
      }
      
      public function §<#d§(param1:Number = 1) : void
      {
         if(!this.§-"A§)
         {
            return;
         }
         this.§5#y§ = 0;
         this.§'%§ = §>#g§;
         this.§2!S§ = 0;
         this.§&!G§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§[!!§ = this.§&!G§;
         this.§'%§ *= Math.abs(this.§&!G§) / 3;
         this.§-!-§ = this.§'%§;
         if(this.§2!4§ == "BIRD_WHITE" || this.§2!4§ == "BIRD_BLACK" || this.§2!4§ == "RED_BIG")
         {
            this.§^5§ = 0;
         }
         else if(this.§'%§ < 350)
         {
            this.§^5§ = 0;
         }
         else
         {
            this.§^5§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§^5§ = Math.random() > 0.5 ? Number(this.§^5§) : Number(0);
         }
      }
      
      public function updateRenderer() : void
      {
         if(this.§@!x§.§2"x§)
         {
            this.§]Y§.x = this.§+!5§ / §#!,§.§?$#§;
            this.§]Y§.y = (this.§'! § + this.§2!S§) / §#!,§.§?$#§;
         }
         else
         {
            this.§]Y§.x = (this.§+!5§ + this.§2!S§ * Math.cos((this.§!M§ + 90) / 180 * Math.PI)) / §#!,§.§?$#§;
            this.§]Y§.y = (this.§'! § + this.§2!S§ * Math.sin((this.§!M§ + 90) / 180 * Math.PI)) / §#!,§.§?$#§;
         }
         if(this.§@!x§.§&#z§)
         {
            this.§]Y§.rotation = (this.§%##§ + this.§!M§) / 180 * Math.PI;
         }
         if(this.backgroundSprite)
         {
            this.backgroundSprite.x = this.§]Y§.x;
            this.backgroundSprite.y = this.§]Y§.y;
            this.backgroundSprite.rotation = this.§]Y§.rotation;
         }
      }
      
      public function § "&§() : void
      {
         this.§4"=§ = true;
         this.§#"[§ = false;
         this.§#$7§ = false;
         this.§5#y§ = 0;
         this.§6z§ = 0;
         this.§'%§ = 0;
         this.§'%§ = 0;
         this.§2!S§ = 0;
         this.§%##§ = 0;
         this.§[!!§ = 0;
         this.§^5§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§+!5§) * (param1 - this.§+!5§) + (param2 - this.§'! §) * (param2 - this.§'! §));
         if(_loc3_ <= this.§!!1§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§+!5§ >= param3 && this.§+!5§ <= param4 && this.§'! § >= param1 && this.§'! § <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = false;
         if(this.§+!5§ != param1 || this.§'! § != param2)
         {
            _loc4_ = true;
         }
         this.§+!5§ = param1;
         this.§'! § = param2;
         this.§%##§ = param3;
         this.§6z§ = 100;
         this.updateRenderer();
         if(_loc4_)
         {
            this.§@!x§.§4-§();
         }
      }
      
      public function get §=g§() : Number
      {
         return this.§'%§;
      }
      
      public function get §@!P§() : Number
      {
         return this.§6z§;
      }
      
      public function set §@!P§(param1:Number) : void
      {
         this.§6z§ = param1;
      }
      
      public function get §=#8§() : Number
      {
         return this.§#!9§;
      }
      
      public function get §;#v§() : Boolean
      {
         return this.§#"[§;
      }
      
      public function get radius() : Number
      {
         return this.§!!1§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§]Y§;
      }
      
      public function get name() : String
      {
         return this.§2!4§;
      }
      
      public function set §=#8§(param1:Number) : void
      {
         this.§#!9§ = param1;
      }
      
      public function get §4"?§() : Number
      {
         return this.§^S§;
      }
      
      public function set §4"?§(param1:Number) : void
      {
         this.§^S§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§]"?§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§]"?§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§+!5§;
      }
      
      public function get y() : Number
      {
         return this.§'! §;
      }
      
      public function get § "4§() : Number
      {
         return this.§2!?§;
      }
      
      public function get §[#K§() : Number
      {
         return this.§''§;
      }
   }
}
