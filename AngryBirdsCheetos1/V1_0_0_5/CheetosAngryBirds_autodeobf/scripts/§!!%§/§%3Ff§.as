package §!!%§
{
   import §!!R§.§#q§;
   import §!!R§.DisplayObject;
   import §!!R§.Sprite;
   import §!J§.§[&§;
   import §#v§.;
   import §&!W§.§&!$§;
   import §&!W§.§+=§;
   import §&!W§.§2z§;
   import §&!W§.§8!K§;
   import §&N§.§[$§;
   import §2k§.Texture;
   import §?'§.§'R§;
   import §?'§.§9N§;
   
   public class §?f§
   {
      
      public static const §[H§:int = 0;
      
      public static const §"z§:int = 1;
      
      public static const § ,§:int = 2;
      
      public static const §3!<§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §<6§:String = "Effect_TrailBig_Bird";
      
      public static const §%8§:String = "Effect_Trail_Sparkle";
      
      public static const §#%§:String = "Effect_Floating_Score";
      
      public static const §<M§:String = "Effect_Floating_Text";
      
      public static const § %§:String = "Effect_Explosion_Particle";
      
      public static const §,G§:String = "Effect_Explosion_Core";
      
      public static const §9'§:String = "Effect_Pig_Destruction";
      
      public static const §#!T§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §[!Y§:String = "Effect_Bird_Destruction";
      
      public static const §+H§:String = "Effect_Block_Destruction_Particles";
      
      public static const §2!K§:String = "Effect_Block_Destruction_Core";
      
      public static const §1U§:int = 0;
      
      public static const §[!$§:int = 1;
      
      public static const § j§:int = 2;
      
      public static const §implements§:int = 3;
      
      public static const §`!4§:int = 4;
      
      public static const §&!§:int = 5;
      
      public static const §3>§:int = 6;
      
      public static const §]!'§:int = 7;
      
      public static const §>>§:int = 8;
      
      public static const §?Y§:int = 9;
      
      public static const §#E§:int = 10;
      
      public static const §#!9§:int = 11;
      
      public static const §'=§:int = 12;
      
      public static const §`!L§:int = 13;
      
      public static const §=! §:int = 14;
      
      public static const §&=§:int = 15;
      
      public static const §!A§:int = 16;
      
      public static const §[!0§:int = 17;
      
      public static const §1'§:int = 18;
      
      public static const §&6§:Boolean = true;
       
      
      public var §-&§:int;
      
      public var §7[§:int;
      
      public var §`$§:String;
      
      public var §'n§:Number;
      
      public var § <§:Number;
      
      public var §'!J§:Number;
      
      public var §[!T§:Number;
      
      public var §&!;§:Number = 0;
      
      public var §7<§:Number;
      
      public var §>!%§:Number;
      
      public var §6V§:String;
      
      public var §[k§:Number = -1;
      
      public var §0W§:int;
      
      public var mX:Number;
      
      public var mY:Number;
      
      private var §'l§:Sprite;
      
      private var §#U§:§'R§;
      
      private var §23§:int;
      
      private var §>S§:int;
      
      private var §set §:Boolean;
      
      private var §9!A§:§+=§;
      
      private var §9r§:Boolean;
      
      private var §5<§:§2z§;
      
      private var §&U§:§8!K§;
      
      private var §@Z§:§#3§;
      
      public function §?f§(param1:§2z§, param2:§8!K§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§'l§ = new Sprite();
         super();
         this.§5<§ = param1;
         this.§&U§ = param2;
         this.§`$§ = param3;
         this.§-&§ = param5;
         this.§7[§ = param4;
         this.§0W§ = param10;
         this.§>S§ = param16;
         this.§set § = param17;
         this.§6V§ = param9;
         this.§'n§ = 0;
         this.§>!%§ = param8;
         this.mX = param6;
         this.mY = param7;
         this.§7<§ = param15;
         this.§'!J§ = param11;
         this.§ <§ = param12;
         this.§&!;§ = param14;
         this.§[!T§ = param13;
         this.§>y§();
         this.§>a§();
         if(this.§-&§ == §"z§)
         {
            this.§[k§ = §[&§.§&!'§.§#G§.§@y§ + this.§'l§.height * §9N§.§8!5§;
         }
      }
      
      public static function §+!Z§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §1U§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return § j§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §[!$§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §&!§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §`!4§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §implements§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §1'§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §3>§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §?Y§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §]!'§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §>>§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §#E§;
         }
         return §#!9§;
      }
      
      public static function §%6§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §'=§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §=! §;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §`!L§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §[!0§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §!A§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §&=§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §&=§;
         }
         return §!A§;
      }
      
      public function get § 7§() : DisplayObject
      {
         return this.§'l§;
      }
      
      public function §=M§(param1:Number, param2:Number) : void
      {
      }
      
      protected function §>y§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§+=§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§`$§)
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
            case §<6§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §%8§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §9'§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §#!T§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §2!K§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §,G§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case § %§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §#%§:
            case §<M§:
               if(parseInt(this.§6V§) == 10000 || parseInt(this.§6V§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§0W§)
                  {
                     case §'=§:
                        _loc8_ = 16058683;
                        break;
                     case §`!L§:
                        _loc8_ = 55294;
                        break;
                     case §&=§:
                        _loc8_ = 1878602;
                        break;
                     case §[!0§:
                        _loc8_ = 3552822;
                        break;
                     case §!A§:
                        break;
                     case §=! §:
                        _loc8_ = 16705792;
                  }
                  if(parseInt(this.§6V§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§5<§.§3Z§("NUMBERS");
                  this.§#U§ = new §'R§(_loc2_,_loc3_,true);
                  this.§#U§.§3L§(parseInt(this.§6V§));
                  this.§'l§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§5<§.§3Z§("NUMBERS");
               this.§#U§ = new §'R§(_loc2_,_loc3_);
               this.§#U§.§3L§(parseInt(this.§6V§));
               this.§'l§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §+H§:
               switch(this.§0W§)
               {
                  case §?Y§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §#E§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §]!'§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §>>§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §#!9§:
                     _loc6_ = 1 + _loc1_ % 5;
               }
               if(this.§'l§)
               {
                  this.§'l§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §[!Y§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§0W§)
               {
                  case §1U§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §&!§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §[!$§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §implements§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §`!4§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case § j§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §1'§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§'l§)
               {
                  this.§'l§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§`$§,null,this.§>S§,this.§set §);
         }
      }
      
      private function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§&!$§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§9!A§ = this.§5<§.§3Z§(param1);
         this.§9r§ = param4;
         if(this.§9!A§)
         {
            _loc6_ = (_loc5_ = this.§9!A§.getFrame(0)).texture;
            this.§7<§ *= _loc5_.scale;
         }
         else
         {
            _loc6_ = this.§&U§.§=r§();
         }
         this.§23§ = param3;
         var _loc7_:§#q§ = this.§'z§(_loc6_);
         _loc7_.scaleX = _loc7_.scaleY = this.§7<§;
         this.§'l§.addChild(_loc7_);
         if(_loc5_)
         {
            _loc7_.x = -_loc5_.pivotX * this.§7<§;
            _loc7_.y = -_loc5_.pivotY * this.§7<§;
         }
         else
         {
            _loc7_.x = -this.§'l§.width / 2;
            _loc7_.y = -this.§'l§.height / 2;
         }
      }
      
      protected function §'z§(param1:Texture) : §#q§
      {
         return new §#q§(param1,false);
      }
      
      public function §>a§() : void
      {
         if(this.§'l§)
         {
            this.§'l§.x = this.mX / §9N§.§8!5§;
            this.§'l§.y = this.mY / §9N§.§8!5§;
         }
      }
      
      public function §[c§(param1:§#3§) : void
      {
         this.§@Z§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§&!$§ = null;
         var _loc6_:Texture = null;
         var _loc7_:§#q§ = null;
         this.§'n§ += param1;
         var _loc2_:Boolean = false;
         if(this.§@Z§)
         {
            if(this.§@Z§.sprite == null || this.§@Z§.§9!V§ == null)
            {
               return false;
            }
            this.mX = this.§@Z§.§#a§().GetPosition().x;
            this.mY = this.§@Z§.§#a§().GetPosition().y;
         }
         if(this.§23§ > 0 && this.§9!A§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§'n§ / 1000 / (1 / _loc3_)) < this.§9!A§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§9!A§.getFrame(_loc4_)).texture;
               _loc7_ = new §#q§(_loc6_);
               this.§'l§.§>[§(0,-1,true);
               this.§'l§.addChild(_loc7_);
               _loc7_.x = -_loc5_.pivotX;
               _loc7_.y = -_loc5_.pivotY;
               _loc7_.scaleX = _loc7_.scaleY = this.§7<§;
            }
            else if(this.§9r§)
            {
               this.§'l§.§>[§(0,-1,true);
            }
         }
         if(this.§-&§ == §"z§)
         {
            this.§4,§(param1);
            _loc2_ = this.§0;§(param1);
            if(this.§[k§ > 0 && this.mY > this.§[k§)
            {
               return false;
            }
         }
         else
         {
            this.§4,§(param1);
            _loc2_ = this.§0;§(param1);
         }
         if(this.§>!%§ > 0 && this.§'n§ >= this.§>!%§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§>a§();
         }
         return true;
      }
      
      public function §4,§(param1:Number) : void
      {
         this.§ <§ += param1 * this.§[!T§ / 1000;
         this.mY += this.§ <§ * param1 / 1000;
         this.mX += this.§'!J§ * param1 / 1000;
         if(this.§&!;§ != 0)
         {
            this.§'l§.rotation += this.§&!;§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §0;§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§-&§ == §[H§)
         {
            if(this.§>!%§ > 0)
            {
               _loc2_ = 1;
               if(this.§`$§ == §<M§)
               {
                  if((_loc4_ = this.§'n§ / this.§>!%§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§6V§) / 5000);
               }
               this.§'l§.scaleX = _loc2_;
               this.§'l§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§-&§ == §"z§)
         {
            if(this.§`$§ == § %§)
            {
               this.§'l§.alpha = Math.max(0,Math.min(1,2 * §[$§.§%,§((this.§>!%§ - this.§'n§) / this.§>!%§,false)));
               _loc5_ = Math.atan2(-this.§ <§,this.§'!J§) * (180 / Math.PI);
               this.§'l§.scaleX = Math.max(0.2,this.§'l§.alpha);
               this.§'l§.scaleY = Math.max(0.2,this.§'l§.alpha);
               this.§'l§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§`$§ == §[!Y§ || this.§`$§ == §2!K§)
            {
               this.§'l§.scaleX = this.§'l§.scaleY = 0.2 + (this.§>!%§ - this.§'n§) / this.§>!%§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§#U§)
         {
            this.§#U§.clear();
            this.§#U§ = null;
         }
         if(this.§'l§)
         {
            this.§'l§.dispose();
            this.§'l§ = null;
         }
         if(this.§@Z§)
         {
            this.§@Z§ = null;
         }
      }
   }
}
