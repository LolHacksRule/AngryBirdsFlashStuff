package §2!H§
{
   import §&L§.b2Vec2;
   import §,!_§.§;K§;
   import §,!_§.Animation;
   import §3p§.LevelObject;
   import §6!7§.§-m§;
   import §6!7§.Sprite;
   import §6b§.§]n§;
   import §7i§.Texture;
   import §;T§.LevelItemManager;
   import §;T§.LevelItemShape;
   import §;T§.LevelItemSoundResource;
   
   public class LevelSlingshotObject
   {
      
      public static const §%!j§:String = "ChannelSlingshot";
      
      public static const §<_§:Number = 900;
      
      public static const §[W§:Number = 200;
      
      public static const §2!e§:Number = 200;
      
      public static const §;§:Number = 1500;
      
      public static const §=!H§:Number = 5000;
      
      public static const §4"§:Number = 1000;
      
      public static const §!!5§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var §`!%§:Number;
      
      protected var §else§:Number;
      
      protected var §-!c§:Number;
      
      protected var §%!#§:Number;
      
      private var §0!_§:LevelItemSoundResource;
      
      protected var §1!8§:Number;
      
      protected var §4P§:Number = 1;
      
      private var §'6§:Sprite;
      
      protected var §=n§:Animation;
      
      private var §"!P§:§-m§;
      
      protected var §8E§:LevelSlingshot;
      
      private var §2!§:Number;
      
      private var §+%§:Boolean = false;
      
      private var §&!=§:Boolean = false;
      
      protected var §0V§:Boolean = false;
      
      private var §%!X§:Number;
      
      private var §79§:Number = 0;
      
      private var §-!d§:Number = 0;
      
      private var §-Q§:Number = 0;
      
      private var §0a§:Number = 1000;
      
      private var §><§:Number;
      
      private var §,r§:Number;
      
      private var §+!M§:int;
      
      private var §7h§:Number = 0;
      
      protected var §]§:Number;
      
      protected var §'0§:Number;
      
      private var §[t§:Number = 1;
      
      private var §#6§:Number = 0;
      
      private var §2!V§:b2Vec2;
      
      private var §7!H§:Number = 1;
      
      public function LevelSlingshotObject(param1:LevelSlingshot, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§8E§ = param1;
         this.§'6§ = param2;
         this.mName = param3;
         this.§0!_§ = LevelItemManager.§&!i§(this.mName).§,!9§;
         this.§`!%§ = param4;
         this.§else§ = param5;
         this.§-!c§ = param4;
         this.§%!#§ = param5;
         this.§1!8§ = 0;
         this.§+%§ = false;
         this.§&!=§ = false;
         this.§79§ = 0;
         this.§?E§();
         this.§]§ = 0;
      }
      
      public function §&#§() : void
      {
         this.§+%§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§'6§)
         {
            this.§'6§.dispose();
            this.§'6§ = null;
         }
      }
      
      public function §&!A§(param1:Number) : void
      {
         if(!this.§&!=§ || this.§+%§)
         {
            return;
         }
         if(this.§4P§ != 0)
         {
            this.§-Q§ = 0;
            this.§7h§ = 0;
            this.§1!8§ = 0;
            this.§,r§ = 0;
            this.§4P§ = 0;
         }
         param1 = Math.min(param1,this.§%!X§);
         this.§`!%§ += param1 * (this.§8E§.§`!%§ - this.§`!%§) / this.§%!X§;
         this.§else§ += param1 * (this.§8E§.§else§ - this.§else§) / this.§%!X§;
         this.§else§ -= param1 / 50 * (this.§%!X§ / §<_§);
         this.§1!8§ += param1 * (360 - this.§1!8§) / this.§%!X§;
         this.§%!X§ -= param1;
         if(this.§%!X§ <= 0)
         {
            this.§`!%§ = this.§8E§.§`!%§;
            this.§else§ = this.§8E§.§else§;
            this.§&!=§ = false;
            this.§+%§ = true;
            this.§1!8§ = 0;
         }
         this.§;E§();
      }
      
      public function §61§() : void
      {
         this.§&!=§ = true;
         this.§%!X§ = §<_§;
         this.§&_§(LevelItemSoundResource.§!H§);
         if(this.§7h§ != 0)
         {
            this.§else§ += this.§7h§;
            this.§7h§ = 0;
         }
      }
      
      public function §=!F§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§+%§ && this.§]§ >= 0)
         {
            if(this.§'0§ > this.§8E§.§"!>§.§'g§.§ !c§)
            {
               this.§3T§(this.§8E§.§"!>§.§'g§.§ !c§ - this.§'0§);
               this.§]§ = -1;
            }
            this.§]§ -= param1;
            if(this.§]§ <= 0)
            {
               if(this.§-Q§ > 0)
               {
                  this.§]§ = this.§-Q§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§'0§))
               {
                  _loc2_ = this.§8E§.§"!>§.objects.§ !f§(this.§`!%§,this.§'0§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§3T§(param1 / 100))
                  {
                     this.§]§ = -1;
                  }
                  else
                  {
                     this.§]§ = 0;
                  }
               }
               else if(!this.§8E§.§"!>§.objects.§`T§(_loc2_).§9!-§)
               {
                  this.§0V§ = false;
                  this.§]§ = -1;
               }
               else if(this.§8E§.§"!>§.objects.§`T§(_loc2_).§&E§())
               {
                  this.§0V§ = false;
                  this.§]§ = 2000;
               }
               else
               {
                  this.§]§ = 500;
               }
            }
         }
      }
      
      public function §3T§(param1:Number) : Boolean
      {
         this.§else§ += param1;
         this.§'0§ += param1;
         if(this.§'0§ > this.§8E§.§"!>§.§'g§.§ !c§)
         {
            param1 = this.§'0§ - this.§8E§.§"!>§.§'g§.§ !c§;
            this.§else§ -= param1;
            this.§'0§ -= param1;
            this.§;E§();
            return true;
         }
         this.§;E§();
         return false;
      }
      
      public function §?E§() : void
      {
         var _loc1_:LevelItemShape = LevelItemManager.§&!i§(this.mName).shape;
         if(_loc1_.§^c§() == LevelItemShape.§,!4§)
         {
            this.§2!V§ = _loc1_.§6!^§()[0];
            this.§2!§ = _loc1_.§[v§;
         }
         else if(_loc1_.§^c§() == LevelItemShape.§ h§)
         {
            this.§2!V§ = new b2Vec2(0,0);
            this.§2!§ = 1.5;
         }
         this.§=n§ = this.§8E§.§"!>§.animationManager.getAnimation(this.mName);
         if(!this.§=n§)
         {
            this.§9!1§(null);
         }
         else
         {
            this.§9!1§(this.§=n§.getFrame(0));
         }
      }
      
      public function §9!1§(param1:§;K§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§8E§.levelMain.textureManager.§;?§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§"!P§ == null)
         {
            this.§"!P§ = new §-m§(_loc2_);
            this.§'6§.addChild(this.§"!P§);
         }
         else
         {
            this.§"!P§.texture = _loc2_;
         }
         if(param1)
         {
            this.§"!P§.x = -param1.pivotX - this.§2!V§.x / LevelMain.§8N§;
            this.§"!P§.y = -param1.pivotY - this.§2!V§.y / LevelMain.§8N§;
         }
         else
         {
            this.§"!P§.x = -this.§"!P§.width / 2;
            this.§"!P§.y = -this.§"!P§.height / 2;
         }
         this.§"!P§.scaleX = _loc3_;
         this.§"!P§.scaleY = _loc3_;
         this.§;E§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§=!F§(param1);
         if(this.§&!=§)
         {
            this.§-Q§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§<!e§(param1);
            this.§%!c§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§!F§(param1,param2);
            }
         }
      }
      
      public function §<!e§(param1:Number) : void
      {
         if(this.§79§ > 0)
         {
            this.§79§ -= param1;
            if(this.§79§ <= 0)
            {
               this.§3!'§();
            }
         }
         else if(this.§-!d§ <= 0 && Math.random() * §;§ < param1 && this.§8E§.mSlingShotState)
         {
            this.§ !9§();
         }
      }
      
      public function §3!'§() : void
      {
         this.§79§ = 0;
         this.§9!1§(this.§=n§.getFrame(0));
      }
      
      public function § !9§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§79§ = §[W§;
         this.§9!1§(this.§=n§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §%!c§(param1:Number) : void
      {
         if(this.§-!d§ > 0)
         {
            this.§-!d§ -= param1;
            if(this.§-!d§ <= 0)
            {
               this.§,3§();
            }
         }
         else if(this.§79§ <= 0 && Math.random() * §=!H§ < param1)
         {
            this.§&_§();
         }
      }
      
      public function §,3§() : void
      {
         this.§-!d§ = 0;
         this.§9!1§(this.§=n§.getFrame(0));
      }
      
      public function §&_§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§-!d§ > 0)
         {
            this.§,3§();
         }
         if(this.§79§ > 0)
         {
            this.§3!'§();
         }
         if(param1 < 0)
         {
            param1 = LevelItemSoundResource.§?!,§;
         }
         this.§-!d§ = §2!e§;
         this.§9!1§(this.§=n§.getSubAnimation("yell").getFrame(0));
         if(this.§+%§ || this.§&!=§ || param2)
         {
            LevelObject.§=I§(param1,this.§0!_§);
         }
         else
         {
            LevelObject.§=I§(param1,this.§0!_§,§%!j§);
         }
      }
      
      public function §!F§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§-Q§ > 0)
         {
            this.§-Q§ -= param1;
            if(this.§-Q§ <= 0)
            {
               ++this.§+!M§;
               this.§,r§ *= 0.4;
               if(!this.§+%§ && this.§+!M§ < 2)
               {
                  if(this.§+!M§ > 1 && this.§,r§ < -1)
                  {
                     this.§,r§ = -1;
                  }
                  this.§><§ = this.§,r§;
                  this.§-Q§ = §!!5§;
                  this.§-Q§ *= Math.abs(this.§><§) / 2;
                  this.§0a§ = this.§-Q§;
                  this.§1!8§ = 0;
                  this.§4P§ = 0;
               }
               else if(!this.§+%§ && param2)
               {
                  this.§?!'§(2.25);
               }
               else
               {
                  this.§-Q§ = 0;
                  this.§7h§ = 0;
                  this.§1!8§ = 0;
                  this.§,r§ = 0;
               }
            }
            else
            {
               if(this.§-Q§ >= this.§0a§ / 2)
               {
                  _loc3_ = (this.§0a§ - this.§-Q§) / (this.§0a§ / 2);
                  _loc3_ = §]n§.§1!R§(_loc3_);
                  this.§7h§ = _loc3_ * this.§><§;
               }
               else
               {
                  _loc3_ = (this.§0a§ / 2 - this.§-Q§) / (this.§0a§ / 2);
                  _loc3_ = §]n§.§1!R§(_loc3_,false);
                  this.§7h§ = this.§><§ + _loc3_ * -this.§><§;
               }
               this.§1!8§ = 360 * §]n§.§1!R§((this.§0a§ - this.§-Q§) / this.§0a§) * this.§4P§;
            }
            this.§;E§();
         }
         else if(Math.random() * §4"§ < param1 && !this.§+%§ && !this.§&!=§ && !this.§0V§)
         {
            this.§?!'§();
         }
      }
      
      public function §?!'§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§+!M§ = 0;
         this.§-Q§ = §!!5§;
         this.§7h§ = 0;
         this.§><§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§,r§ = this.§><§;
         this.§-Q§ *= Math.abs(this.§><§) / 3;
         this.§0a§ = this.§-Q§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§4P§ = 0;
         }
         else if(this.§-Q§ < 350)
         {
            this.§4P§ = 0;
         }
         else
         {
            this.§4P§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§4P§ = Math.random() > 0.5 ? Number(this.§4P§) : Number(0);
         }
      }
      
      public function §;E§() : void
      {
         this.§'6§.x = this.§`!%§ / LevelMain.§8N§;
         this.§'6§.y = (this.§else§ + this.§7h§) / LevelMain.§8N§;
         this.§'6§.rotation = this.§1!8§ / 180 * Math.PI;
      }
      
      public function §3=§() : void
      {
         this.§0V§ = true;
         this.§+%§ = false;
         this.§&!=§ = false;
         this.§+!M§ = 0;
         this.§]§ = 0;
         this.§-Q§ = 0;
         this.§-Q§ = 0;
         this.§7h§ = 0;
         this.§1!8§ = 0;
         this.§,r§ = 0;
         this.§4P§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§`!%§) * (param1 - this.§`!%§) + (param2 - this.§else§) * (param2 - this.§else§));
         if(_loc3_ <= this.§2!§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§`!%§ >= param3 && this.§`!%§ <= param4 && this.§else§ >= param1 && this.§else§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.§`!%§ != param1 || this.§else§ != param2)
         {
            _loc3_ = true;
         }
         this.§`!%§ = param1;
         this.§else§ = param2;
         this.§]§ = 100;
         this.§;E§();
         if(_loc3_)
         {
            this.§8E§.§<!i§();
         }
      }
      
      public function § !d§() : §-m§
      {
         return this.§"!P§;
      }
      
      public function get §,!$§() : Number
      {
         return this.§-Q§;
      }
      
      public function get §4O§() : Number
      {
         return this.§]§;
      }
      
      public function set §4O§(param1:Number) : void
      {
         this.§]§ = param1;
      }
      
      public function get §?!h§() : Number
      {
         return this.§[t§;
      }
      
      public function get §%!7§() : Boolean
      {
         return this.§+%§;
      }
      
      public function get radius() : Number
      {
         return this.§2!§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§'6§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §?!h§(param1:Number) : void
      {
         this.§[t§ = param1;
      }
      
      public function get §9S§() : Number
      {
         return this.§#6§;
      }
      
      public function set §9S§(param1:Number) : void
      {
         this.§#6§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§7!H§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§7!H§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§`!%§;
      }
      
      public function get y() : Number
      {
         return this.§else§;
      }
      
      public function get §6!1§() : Number
      {
         return this.§-!c§;
      }
      
      public function get §!3§() : Number
      {
         return this.§%!#§;
      }
   }
}
