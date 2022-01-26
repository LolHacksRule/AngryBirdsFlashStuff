package §?f§
{
   import §!J§.§[&§;
   import §-!7§.§@m§;
   import §2!-§.Texture;
   import §4W§.§!]§;
   import §4W§.§2f§;
   import §4W§.§3!@§;
   import §4W§.§>c§;
   import §9N§.§-!P§;
   import §9N§.§9!%§;
   import §@,§.§%,§;
   import §`a§.§>?§;
   import §`a§.DisplayObject;
   import §`a§.Sprite;
   
   public class §-&§
   {
      
      public static const §"z§:int = 0;
      
      public static const § ,§:int = 1;
      
      public static const §3!<§:int = 2;
      
      public static const §<6§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §%8§:String = "Effect_TrailBig_Bird";
      
      public static const §#%§:String = "Effect_Trail_Sparkle";
      
      public static const §<M§:String = "Effect_Floating_Score";
      
      public static const § %§:String = "Effect_Floating_Text";
      
      public static const §,G§:String = "Effect_Explosion_Particle";
      
      public static const §9'§:String = "Effect_Explosion_Core";
      
      public static const §#!T§:String = "Effect_Pig_Destruction";
      
      public static const §[!Y§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §+H§:String = "Effect_Bird_Destruction";
      
      public static const §2!K§:String = "Effect_Block_Destruction_Particles";
      
      public static const §1U§:String = "Effect_Block_Destruction_Core";
      
      public static const §[!$§:int = 0;
      
      public static const § j§:int = 1;
      
      public static const §implements§:int = 2;
      
      public static const §`!4§:int = 3;
      
      public static const §&!§:int = 4;
      
      public static const §3>§:int = 5;
      
      public static const §]!'§:int = 6;
      
      public static const §>>§:int = 7;
      
      public static const §?Y§:int = 8;
      
      public static const §#E§:int = 9;
      
      public static const §#!9§:int = 10;
      
      public static const §'=§:int = 11;
      
      public static const §`!L§:int = 12;
      
      public static const §=! §:int = 13;
      
      public static const §&=§:int = 14;
      
      public static const §!A§:int = 15;
      
      public static const §[!0§:int = 16;
      
      public static const §1'§:int = 17;
      
      public static const §&6§:int = 18;
      
      public static const §+!Z§:Boolean = true;
       
      
      public var §7[§:int;
      
      public var §`$§:int;
      
      public var § <§:String;
      
      public var §1j§:Number;
      
      public var §'!J§:Number;
      
      public var §[!T§:Number;
      
      public var §6V§:Number;
      
      public var §,E§:Number = 0;
      
      public var §7<§:Number;
      
      public var §1!!§:Number;
      
      public var §[k§:String;
      
      public var §0W§:Number = -1;
      
      public var §'l§:int;
      
      public var mX:Number;
      
      public var mY:Number;
      
      private var §#U§:Sprite;
      
      private var §23§:§-!P§;
      
      private var §>S§:int;
      
      private var §set §:int;
      
      private var §9r§:Boolean;
      
      private var §]3§:§2f§;
      
      private var §@Z§:Boolean;
      
      private var §6N§:§3!@§;
      
      private var §5<§:§!]§;
      
      private var § 7§:§@m§;
      
      public function §-&§(param1:§3!@§, param2:§!]§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§#U§ = new Sprite();
         super();
         this.§6N§ = param1;
         this.§5<§ = param2;
         this.§ <§ = param3;
         this.§7[§ = param5;
         this.§`$§ = param4;
         this.§'l§ = param10;
         this.§set § = param16;
         this.§9r§ = param17;
         this.§[k§ = param9;
         this.§1j§ = 0;
         this.§1!!§ = param8;
         this.mX = param6;
         this.mY = param7;
         this.§7<§ = param15;
         this.§[!T§ = param11;
         this.§'!J§ = param12;
         this.§,E§ = param14;
         this.§6V§ = param13;
         this.§'z§();
         this.§[6§();
         if(this.§7[§ == § ,§)
         {
            this.§0W§ = §[&§.§&!'§.§null §.§;U§ + this.§#U§.height * §9!%§.§catch§;
         }
      }
      
      public static function §%6§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §[!$§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §implements§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return § j§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §3>§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §&!§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §`!4§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §&6§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §]!'§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §#E§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §>>§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §?Y§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §#!9§;
         }
         return §'=§;
      }
      
      public static function §7!W§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §`!L§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §&=§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §=! §;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §1'§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §[!0§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §!A§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §!A§;
         }
         return §[!0§;
      }
      
      public function get §=M§() : DisplayObject
      {
         return this.§#U§;
      }
      
      public function §>y§(param1:Number, param2:Number) : void
      {
      }
      
      protected function §'z§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§2f§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§ <§)
         {
            case PARTICLE_NAME_BIRD_TRAIL1:
               this.createParticle("TRAIL_1");
               break;
            case PARTICLE_NAME_BIRD_TRAIL2:
               this.createParticle("TRAIL_2");
               break;
            case PARTICLE_NAME_BIRD_TRAIL3:
               this.createParticle("TRAIL_3");
               break;
            case §%8§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §#%§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §#!T§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §[!Y§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §1U§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §9'§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §,G§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §<M§:
            case § %§:
               if(parseInt(this.§[k§) == 10000 || parseInt(this.§[k§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§'l§)
                  {
                     case §`!L§:
                        _loc8_ = 16058683;
                        break;
                     case §=! §:
                        _loc8_ = 55294;
                        break;
                     case §!A§:
                        _loc8_ = 1878602;
                        break;
                     case §1'§:
                        _loc8_ = 3552822;
                        break;
                     case §[!0§:
                        break;
                     case §&=§:
                        _loc8_ = 16705792;
                  }
                  if(parseInt(this.§[k§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§6N§.§2!'§("NUMBERS");
                  this.§23§ = new §-!P§(_loc2_,_loc3_,true);
                  this.§23§.§5!?§(parseInt(this.§[k§));
                  this.§#U§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§6N§.§2!'§("NUMBERS");
               this.§23§ = new §-!P§(_loc2_,_loc3_);
               this.§23§.§5!?§(parseInt(this.§[k§));
               this.§#U§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §2!K§:
               switch(this.§'l§)
               {
                  case §#E§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §#!9§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §>>§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §?Y§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §'=§:
                     _loc6_ = 1 + _loc1_ % 5;
               }
               if(this.§#U§)
               {
                  this.§#U§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §+H§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§'l§)
               {
                  case §[!$§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §3>§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case § j§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §`!4§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §&!§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §implements§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §&6§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§#U§)
               {
                  this.§#U§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§ <§,null,this.§set §,this.§9r§);
         }
      }
      
      private function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§>c§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§]3§ = this.§6N§.§2!'§(param1);
         this.§@Z§ = param4;
         if(this.§]3§)
         {
            _loc6_ = (_loc5_ = this.§]3§.getFrame(0)).texture;
            this.§7<§ *= _loc5_.scale;
         }
         else
         {
            _loc6_ = this.§5<§.§83§();
         }
         this.§>S§ = param3;
         var _loc7_:§>?§ = this.§[c§(_loc6_);
         _loc7_.scaleX = _loc7_.scaleY = this.§7<§;
         this.§#U§.addChild(_loc7_);
         if(_loc5_)
         {
            _loc7_.x = -_loc5_.pivotX * this.§7<§;
            _loc7_.y = -_loc5_.pivotY * this.§7<§;
         }
         else
         {
            _loc7_.x = -this.§#U§.width / 2;
            _loc7_.y = -this.§#U§.height / 2;
         }
      }
      
      protected function §[c§(param1:Texture) : §>?§
      {
         return new §>?§(param1,false);
      }
      
      public function §[6§() : void
      {
         if(this.§#U§)
         {
            this.§#U§.x = this.mX / §9!%§.§catch§;
            this.§#U§.y = this.mY / §9!%§.§catch§;
         }
      }
      
      public function §4,§(param1:§@m§) : void
      {
         this.§ 7§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§>c§ = null;
         var _loc6_:Texture = null;
         var _loc7_:§>?§ = null;
         this.§1j§ += param1;
         var _loc2_:Boolean = false;
         if(this.§ 7§)
         {
            if(this.§ 7§.sprite == null || this.§ 7§.§8!Q§ == null)
            {
               return false;
            }
            this.mX = this.§ 7§.§`!#§().GetPosition().x;
            this.mY = this.§ 7§.§`!#§().GetPosition().y;
         }
         if(this.§>S§ > 0 && this.§]3§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§1j§ / 1000 / (1 / _loc3_)) < this.§]3§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§]3§.getFrame(_loc4_)).texture;
               _loc7_ = new §>?§(_loc6_);
               this.§#U§.§[F§(0,-1,true);
               this.§#U§.addChild(_loc7_);
               _loc7_.x = -_loc5_.pivotX;
               _loc7_.y = -_loc5_.pivotY;
               _loc7_.scaleX = _loc7_.scaleY = this.§7<§;
            }
            else if(this.§@Z§)
            {
               this.§#U§.§[F§(0,-1,true);
            }
         }
         if(this.§7[§ == § ,§)
         {
            this.§0;§(param1);
            _loc2_ = this.§[H§(param1);
            if(this.§0W§ > 0 && this.mY > this.§0W§)
            {
               return false;
            }
         }
         else
         {
            this.§0;§(param1);
            _loc2_ = this.§[H§(param1);
         }
         if(this.§1!!§ > 0 && this.§1j§ >= this.§1!!§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§[6§();
         }
         return true;
      }
      
      public function §0;§(param1:Number) : void
      {
         this.§'!J§ += param1 * this.§6V§ / 1000;
         this.mY += this.§'!J§ * param1 / 1000;
         this.mX += this.§[!T§ * param1 / 1000;
         if(this.§,E§ != 0)
         {
            this.§#U§.rotation += this.§,E§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §[H§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§7[§ == §"z§)
         {
            if(this.§1!!§ > 0)
            {
               _loc2_ = 1;
               if(this.§ <§ == § %§)
               {
                  if((_loc4_ = this.§1j§ / this.§1!!§) <= 0.2)
                  {
                     _loc3_ = _loc4_ / 0.2;
                  }
                  else if(_loc4_ >= 0.8)
                  {
                     _loc3_ = 1 - (_loc4_ - 0.8) / 0.2;
                  }
                  else
                  {
                     _loc3_ = 1;
                  }
                  _loc2_ = _loc3_ * (0.5 + int(this.§[k§) / 5000);
               }
               this.§#U§.scaleX = _loc2_;
               this.§#U§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§7[§ == § ,§)
         {
            if(this.§ <§ == §,G§)
            {
               this.§#U§.alpha = Math.max(0,Math.min(1,2 * §%,§.§#8§((this.§1!!§ - this.§1j§) / this.§1!!§,false)));
               _loc5_ = Math.atan2(-this.§'!J§,this.§[!T§) * (180 / Math.PI);
               this.§#U§.scaleX = Math.max(0.2,this.§#U§.alpha);
               this.§#U§.scaleY = Math.max(0.2,this.§#U§.alpha);
               this.§#U§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§ <§ == §+H§ || this.§ <§ == §1U§)
            {
               this.§#U§.scaleX = this.§#U§.scaleY = 0.2 + (this.§1!!§ - this.§1j§) / this.§1!!§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§23§)
         {
            this.§23§.clear();
            this.§23§ = null;
         }
         if(this.§#U§)
         {
            this.§#U§.dispose();
            this.§#U§ = null;
         }
         if(this.§ 7§)
         {
            this.§ 7§ = null;
         }
      }
   }
}
