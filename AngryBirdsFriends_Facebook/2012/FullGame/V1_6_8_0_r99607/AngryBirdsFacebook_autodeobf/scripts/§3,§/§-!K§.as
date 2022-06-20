package §3,§
{
   import §!"8§.b2Vec2;
   import §'_§.§9V§;
   import §0!?§.§-m§;
   import §<%§.§%;§;
   import §<%§.§9q§;
   import §<%§.§=!D§;
   import §<L§.Texture;
   import §?"<§.§"d§;
   import §?"<§.§?n§;
   import §]&§.§-§;
   import §]&§.Sprite;
   
   public class §-!K§
   {
      
      public static const §>1§:String = "ChannelSlingshot";
      
      public static const §[P§:Number = 900;
      
      public static const §<p§:Number = 200;
      
      public static const §5!q§:Number = 200;
      
      public static const §#"B§:Number = 1500;
      
      public static const §-Y§:Number = 5000;
      
      public static const §#s§:Number = 1000;
      
      public static const §+""§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var §>U§:Number;
      
      protected var §>!c§:Number;
      
      protected var §7!X§:Number;
      
      protected var §!]§:Number;
      
      private var §,"7§:§9q§;
      
      protected var §8P§:Number;
      
      protected var §77§:Number = 1;
      
      private var §3!b§:Sprite;
      
      protected var §0!§:§"d§;
      
      private var §0" §:§-§;
      
      protected var §9j§:§,!;§;
      
      private var §>" §:Number;
      
      private var §%@§:Boolean = false;
      
      private var §2!?§:Boolean = false;
      
      protected var §8!m§:Boolean = false;
      
      private var §4?§:Number;
      
      private var §,X§:Number = 0;
      
      private var §+!m§:Number = 0;
      
      private var §%!V§:Number = 0;
      
      private var §-Q§:Number = 1000;
      
      private var § @§:Number;
      
      private var §<"9§:Number;
      
      private var §&!K§:int;
      
      private var §!!R§:Number = 0;
      
      protected var §&Q§:Number;
      
      protected var §4!v§:Number;
      
      private var §62§:Number = 1;
      
      private var § !8§:Number = 0;
      
      private var §?!#§:b2Vec2;
      
      private var §6!l§:Number = 1;
      
      public function §-!K§(param1:§,!;§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§9j§ = param1;
         this.§3!b§ = param2;
         this.mName = param3;
         this.§,"7§ = §%;§.§8!]§(this.mName).§#t§;
         this.§>U§ = param4;
         this.§>!c§ = param5;
         this.§7!X§ = param4;
         this.§!]§ = param5;
         this.§8P§ = 0;
         this.§%@§ = false;
         this.§2!?§ = false;
         this.§,X§ = 0;
         this.§<!r§();
         this.§&Q§ = 0;
      }
      
      public function §4L§() : void
      {
         this.§%@§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§3!b§)
         {
            this.§3!b§.dispose();
            this.§3!b§ = null;
         }
      }
      
      public function § !O§(param1:Number) : void
      {
         if(!this.§2!?§ || this.§%@§)
         {
            return;
         }
         if(this.§77§ != 0)
         {
            this.§%!V§ = 0;
            this.§!!R§ = 0;
            this.§8P§ = 0;
            this.§<"9§ = 0;
            this.§77§ = 0;
         }
         param1 = Math.min(param1,this.§4?§);
         this.§>U§ += param1 * (this.§9j§.§>U§ - this.§>U§) / this.§4?§;
         this.§>!c§ += param1 * (this.§9j§.§>!c§ - this.§>!c§) / this.§4?§;
         this.§>!c§ -= param1 / 50 * (this.§4?§ / §[P§);
         this.§8P§ += param1 * (360 - this.§8P§) / this.§4?§;
         this.§4?§ -= param1;
         if(this.§4?§ <= 0)
         {
            this.§>U§ = this.§9j§.§>U§;
            this.§>!c§ = this.§9j§.§>!c§;
            this.§2!?§ = false;
            this.§%@§ = true;
            this.§8P§ = 0;
         }
         this.§^![§();
      }
      
      public function §<!,§() : void
      {
         this.§2!?§ = true;
         this.§4?§ = §[P§;
         this.§9b§(§9q§.§&^§);
         if(this.§!!R§ != 0)
         {
            this.§>!c§ += this.§!!R§;
            this.§!!R§ = 0;
         }
      }
      
      public function §1E§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§%@§ && this.§&Q§ >= 0)
         {
            if(this.§4!v§ > this.§9j§.§0!J§.§1!>§.§[_§)
            {
               this.§^!r§(this.§9j§.§0!J§.§1!>§.§[_§ - this.§4!v§);
               this.§&Q§ = -1;
            }
            this.§&Q§ -= param1;
            if(this.§&Q§ <= 0)
            {
               if(this.§%!V§ > 0)
               {
                  this.§&Q§ = this.§%!V§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§4!v§))
               {
                  _loc2_ = this.§9j§.§0!J§.objects.§6";§(this.§>U§,this.§4!v§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§^!r§(param1 / 100))
                  {
                     this.§&Q§ = -1;
                  }
                  else
                  {
                     this.§&Q§ = 0;
                  }
               }
               else if(!this.§9j§.§0!J§.objects.§&J§(_loc2_).§1j§)
               {
                  this.§8!m§ = false;
                  this.§&Q§ = -1;
               }
               else if(this.§9j§.§0!J§.objects.§&J§(_loc2_).§'1§())
               {
                  this.§8!m§ = false;
                  this.§&Q§ = 2000;
               }
               else
               {
                  this.§&Q§ = 500;
               }
            }
         }
      }
      
      public function §^!r§(param1:Number) : Boolean
      {
         this.§>!c§ += param1;
         this.§4!v§ += param1;
         if(this.§4!v§ > this.§9j§.§0!J§.§1!>§.§[_§)
         {
            param1 = this.§4!v§ - this.§9j§.§0!J§.§1!>§.§[_§;
            this.§>!c§ -= param1;
            this.§4!v§ -= param1;
            this.§^![§();
            return true;
         }
         this.§^![§();
         return false;
      }
      
      public function §<!r§() : void
      {
         var _loc1_:§=!D§ = §%;§.§8!]§(this.mName).shape;
         if(_loc1_.§ _§() == §=!D§.§<c§)
         {
            this.§?!#§ = _loc1_.§`!l§()[0];
            this.§>" § = _loc1_.§]"A§;
         }
         else if(_loc1_.§ _§() == §=!D§.§+2§)
         {
            this.§?!#§ = new b2Vec2(0,0);
            this.§>" § = 1.5;
         }
         this.§0!§ = this.§9j§.§0!J§.animationManager.getAnimation(this.mName);
         if(!this.§0!§)
         {
            this.§-,§(null);
         }
         else
         {
            this.§-,§(this.§0!§.getFrame(0));
         }
      }
      
      public function §-,§(param1:§?n§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§9j§.§9">§.textureManager.§#!t§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§0" § == null)
         {
            this.§0" § = new §-§(_loc2_);
            this.§3!b§.addChild(this.§0" §);
         }
         else
         {
            this.§0" §.texture = _loc2_;
         }
         if(param1)
         {
            this.§0" §.x = -param1.pivotX - this.§?!#§.x / §[!;§.§4!O§;
            this.§0" §.y = -param1.pivotY - this.§?!#§.y / §[!;§.§4!O§;
         }
         else
         {
            this.§0" §.x = -this.§0" §.width / 2;
            this.§0" §.y = -this.§0" §.height / 2;
         }
         this.§0" §.scaleX = _loc3_;
         this.§0" §.scaleY = _loc3_;
         this.§^![§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§1E§(param1);
         if(this.§2!?§)
         {
            this.§%!V§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§;"2§(param1);
            this.§ !9§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§#!c§(param1,param2);
            }
         }
      }
      
      public function §;"2§(param1:Number) : void
      {
         if(this.§,X§ > 0)
         {
            this.§,X§ -= param1;
            if(this.§,X§ <= 0)
            {
               this.§0P§();
            }
         }
         else if(this.§+!m§ <= 0 && Math.random() * §#"B§ < param1 && this.§9j§.mSlingShotState)
         {
            this.§@V§();
         }
      }
      
      public function §0P§() : void
      {
         this.§,X§ = 0;
         this.§-,§(this.§0!§.getFrame(0));
      }
      
      public function §@V§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§,X§ = §<p§;
         this.§-,§(this.§0!§.getSubAnimation("blink").getFrame(0));
      }
      
      public function § !9§(param1:Number) : void
      {
         if(this.§+!m§ > 0)
         {
            this.§+!m§ -= param1;
            if(this.§+!m§ <= 0)
            {
               this.§9W§();
            }
         }
         else if(this.§,X§ <= 0 && Math.random() * §-Y§ < param1)
         {
            this.§9b§();
         }
      }
      
      public function §9W§() : void
      {
         this.§+!m§ = 0;
         this.§-,§(this.§0!§.getFrame(0));
      }
      
      public function §9b§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§+!m§ > 0)
         {
            this.§9W§();
         }
         if(this.§,X§ > 0)
         {
            this.§0P§();
         }
         if(param1 < 0)
         {
            param1 = §9q§.§,"A§;
         }
         this.§+!m§ = §5!q§;
         this.§-,§(this.§0!§.getSubAnimation("yell").getFrame(0));
         if(this.§%@§ || this.§2!?§ || param2)
         {
            §9V§.§?!k§(param1,this.§,"7§);
         }
         else
         {
            §9V§.§?!k§(param1,this.§,"7§,§>1§);
         }
      }
      
      public function §#!c§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§%!V§ > 0)
         {
            this.§%!V§ -= param1;
            if(this.§%!V§ <= 0)
            {
               ++this.§&!K§;
               this.§<"9§ *= 0.4;
               if(!this.§%@§ && this.§&!K§ < 2)
               {
                  if(this.§&!K§ > 1 && this.§<"9§ < -1)
                  {
                     this.§<"9§ = -1;
                  }
                  this.§ @§ = this.§<"9§;
                  this.§%!V§ = §+""§;
                  this.§%!V§ *= Math.abs(this.§ @§) / 2;
                  this.§-Q§ = this.§%!V§;
                  this.§8P§ = 0;
                  this.§77§ = 0;
               }
               else if(!this.§%@§ && param2)
               {
                  this.§4!&§(2.25);
               }
               else
               {
                  this.§%!V§ = 0;
                  this.§!!R§ = 0;
                  this.§8P§ = 0;
                  this.§<"9§ = 0;
               }
            }
            else
            {
               if(this.§%!V§ >= this.§-Q§ / 2)
               {
                  _loc3_ = (this.§-Q§ - this.§%!V§) / (this.§-Q§ / 2);
                  _loc3_ = §-m§.§^y§(_loc3_);
                  this.§!!R§ = _loc3_ * this.§ @§;
               }
               else
               {
                  _loc3_ = (this.§-Q§ / 2 - this.§%!V§) / (this.§-Q§ / 2);
                  _loc3_ = §-m§.§^y§(_loc3_,false);
                  this.§!!R§ = this.§ @§ + _loc3_ * -this.§ @§;
               }
               this.§8P§ = 360 * §-m§.§^y§((this.§-Q§ - this.§%!V§) / this.§-Q§) * this.§77§;
            }
            this.§^![§();
         }
         else if(Math.random() * §#s§ < param1 && !this.§%@§ && !this.§2!?§ && !this.§8!m§)
         {
            this.§4!&§();
         }
      }
      
      public function §4!&§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§&!K§ = 0;
         this.§%!V§ = §+""§;
         this.§!!R§ = 0;
         this.§ @§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§<"9§ = this.§ @§;
         this.§%!V§ *= Math.abs(this.§ @§) / 3;
         this.§-Q§ = this.§%!V§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§77§ = 0;
         }
         else if(this.§%!V§ < 350)
         {
            this.§77§ = 0;
         }
         else
         {
            this.§77§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§77§ = Math.random() > 0.5 ? Number(this.§77§) : Number(0);
         }
      }
      
      public function §^![§() : void
      {
         this.§3!b§.x = this.§>U§ / §[!;§.§4!O§;
         this.§3!b§.y = (this.§>!c§ + this.§!!R§) / §[!;§.§4!O§;
         this.§3!b§.rotation = this.§8P§ / 180 * Math.PI;
      }
      
      public function §5S§() : void
      {
         this.§8!m§ = true;
         this.§%@§ = false;
         this.§2!?§ = false;
         this.§&!K§ = 0;
         this.§&Q§ = 0;
         this.§%!V§ = 0;
         this.§%!V§ = 0;
         this.§!!R§ = 0;
         this.§8P§ = 0;
         this.§<"9§ = 0;
         this.§77§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§>U§) * (param1 - this.§>U§) + (param2 - this.§>!c§) * (param2 - this.§>!c§));
         if(_loc3_ <= this.§>" § * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§>U§ >= param3 && this.§>U§ <= param4 && this.§>!c§ >= param1 && this.§>!c§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.§>U§ != param1 || this.§>!c§ != param2)
         {
            _loc3_ = true;
         }
         this.§>U§ = param1;
         this.§>!c§ = param2;
         this.§&Q§ = 100;
         this.§^![§();
         if(_loc3_)
         {
            this.§9j§.§>!d§();
         }
      }
      
      public function §4C§() : §-§
      {
         return this.§0" §;
      }
      
      public function get §@!b§() : Number
      {
         return this.§%!V§;
      }
      
      public function get §`F§() : Number
      {
         return this.§&Q§;
      }
      
      public function set §`F§(param1:Number) : void
      {
         this.§&Q§ = param1;
      }
      
      public function get §>B§() : Number
      {
         return this.§62§;
      }
      
      public function get §'!s§() : Boolean
      {
         return this.§%@§;
      }
      
      public function get radius() : Number
      {
         return this.§>" §;
      }
      
      public function get sprite() : Sprite
      {
         return this.§3!b§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §>B§(param1:Number) : void
      {
         this.§62§ = param1;
      }
      
      public function get §6!8§() : Number
      {
         return this.§ !8§;
      }
      
      public function set §6!8§(param1:Number) : void
      {
         this.§ !8§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§6!l§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§6!l§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§>U§;
      }
      
      public function get y() : Number
      {
         return this.§>!c§;
      }
      
      public function get §9`§() : Number
      {
         return this.§7!X§;
      }
      
      public function get §0!&§() : Number
      {
         return this.§!]§;
      }
   }
}
