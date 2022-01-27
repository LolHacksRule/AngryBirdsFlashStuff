package §2!`§
{
   import §0"I§.§2>§;
   import §1"s§.§-i§;
   import §1"s§.DisplayObject;
   import §1"s§.Sprite;
   import §3"$§.§&"0§;
   import §3"$§.§[a§;
   import §3"$§.§]!h§;
   import §3"$§.§]k§;
   import §5!q§.§'"t§;
   import §5!q§.§3"X§;
   import §6"R§.§4!w§;
   import §<"L§.Texture;
   import com.angrybirds.§;!e§;
   
   public class §;6§
   {
      
      public static const §@"H§:int = 0;
      
      public static const §7'§:int = 1;
      
      public static const §7!X§:int = 2;
      
      public static const §3!1§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §[!A§:String = "Effect_TrailBig_Bird";
      
      public static const §%!E§:String = "Effect_Trail_Sparkle";
      
      public static const §+!8§:String = "Effect_Floating_Score";
      
      public static const §4! §:String = "Effect_Floating_Text";
      
      public static const §?"o§:String = "Effect_Explosion_Particle";
      
      public static const §3x§:String = "Effect_Explosion_Core";
      
      public static const §%V§:String = "Effect_Pig_Destruction";
      
      public static const §9!K§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §>!B§:String = "Effect_Bird_Destruction";
      
      public static const §+"8§:String = "Effect_Block_Destruction_Particles";
      
      public static const §1"`§:String = "Effect_Block_Destruction_Core";
      
      public static const §+0§:String = "Effect_TrailBig_Bird_Rebel";
      
      public static const §+![§:int = 0;
      
      public static const §^" §:int = 1;
      
      public static const §"!<§:int = 2;
      
      public static const §"#+§:int = 3;
      
      public static const §;!L§:int = 4;
      
      public static const §#c§:int = 5;
      
      public static const §^!"§:int = 6;
      
      public static const §!!n§:int = 7;
      
      public static const §9"@§:int = 8;
      
      public static const §<!8§:int = 9;
      
      public static const §3"t§:int = 10;
      
      public static const §^X§:int = 11;
      
      public static const §5!A§:int = 12;
      
      public static const §^!;§:int = 13;
      
      public static const §]]§:int = 14;
      
      public static const §+"u§:int = 15;
      
      public static const §1"R§:int = 16;
      
      public static const §6"_§:int = 17;
      
      public static const §9'§:int = 18;
       
      
      public var § "K§:int;
      
      public var §]"§:int;
      
      public var §%"m§:String;
      
      public var §use§:Number;
      
      public var §3"+§:Number;
      
      public var §@O§:Number;
      
      public var §+!Z§:Number;
      
      public var § !r§:Number = 0;
      
      public var §"r§:Number;
      
      public var §]"@§:Number;
      
      public var §=!o§:String;
      
      public var §&!3§:Number = -1;
      
      public var §]!o§:int;
      
      public var §]!_§:Number;
      
      public var §#j§:Number;
      
      private var §7"+§:Sprite;
      
      private var §&"5§:§'"t§;
      
      private var §2!I§:int;
      
      private var §5"O§:int;
      
      private var §!q§:Boolean;
      
      private var §3-§:§[a§;
      
      private var §"!S§:Boolean;
      
      private var §5#&§:§]k§;
      
      private var §-#7§:§&"0§;
      
      private var §+3§:§4!w§;
      
      public function §;6§(param1:§]k§, param2:§&"0§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§7"+§ = new Sprite();
         super();
         this.§5#&§ = param1;
         this.§-#7§ = param2;
         this.§%"m§ = param3;
         this.§ "K§ = param5;
         this.§]"§ = param4;
         this.§]!o§ = param10;
         this.§5"O§ = param16;
         this.§!q§ = param17;
         this.§=!o§ = param9;
         this.§use§ = 0;
         this.§]"@§ = param8;
         this.§]!_§ = param6;
         this.§#j§ = param7;
         this.§"r§ = param15;
         this.§@O§ = param11;
         this.§3"+§ = param12;
         this.§ !r§ = param14;
         this.§+!Z§ = param13;
         this.§8H§();
         this.updateRenderer();
         if(this.§ "K§ == §7'§)
         {
            this.§&!3§ = §;!e§.§<x§.§;#!§.ground + this.§7"+§.height * §3"X§.§;"l§;
         }
      }
      
      public static function § "'§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §+![§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §"!<§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §^" §;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §#c§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §;!L§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §"#+§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §9'§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §^!"§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §<!8§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §!!n§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §9"@§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §3"t§;
         }
         return §^X§;
      }
      
      public static function §@# §(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §5!A§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §]]§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §^!;§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §6"_§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §1"R§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §+"u§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §+"u§;
         }
         return §1"R§;
      }
      
      public function get §^1§() : DisplayObject
      {
         return this.§7"+§;
      }
      
      public function §]3§(param1:Number, param2:Number) : void
      {
      }
      
      protected function getParticleType() : String
      {
         return this.§%"m§;
      }
      
      protected function §8H§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§[a§ = null;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         _loc1_ = Math.random() * 100;
         var _loc4_:String = this.getParticleType();
         switch(_loc4_)
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
            case §[!A§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §+0§:
               this.createParticle("SMOKE_BUFF_SMALL",null,15,false);
               break;
            case §%!E§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §%V§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §9!K§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §1"`§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §3x§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §?"o§:
               _loc5_ = 1 + _loc1_ % 5;
               _loc6_ = "particle" + _loc5_;
               break;
            case §+!8§:
            case §4! §:
               if(parseInt(this.§=!o§) == 10000 || parseInt(this.§=!o§) == 5000)
               {
                  _loc9_ = 16777215;
                  switch(this.§]!o§)
                  {
                     case §5!A§:
                        _loc9_ = 16058683;
                        break;
                     case §^!;§:
                        _loc9_ = 55294;
                        break;
                     case §+"u§:
                        _loc9_ = 1878602;
                        break;
                     case §6"_§:
                        _loc9_ = 3552822;
                        break;
                     case §1"R§:
                        break;
                     case §]]§:
                        _loc9_ = 16705792;
                  }
                  if(parseInt(this.§=!o§) == 5000)
                  {
                     _loc9_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§5#&§.getAnimation("NUMBERS");
                  this.§&"5§ = new §'"t§(_loc2_,_loc3_,true);
                  this.§&"5§.§3w§(parseInt(this.§=!o§));
                  this.§7"+§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc9_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§5#&§.getAnimation("NUMBERS");
               this.§&"5§ = new §'"t§(_loc2_,_loc3_);
               this.§&"5§.§3w§(parseInt(this.§=!o§));
               this.§7"+§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §+"8§:
               switch(this.§]!o§)
               {
                  case §<!8§:
                     _loc7_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc7_);
                     break;
                  case §3"t§:
                     _loc7_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §!!n§:
                     _loc7_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc7_);
                     break;
                  case §9"@§:
                     _loc7_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc7_);
                     break;
                  case §^X§:
                     _loc7_ = 1 + _loc1_ % 5;
               }
               if(this.§7"+§)
               {
                  this.§7"+§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §>!B§:
               _loc8_ = 1 + _loc1_ % 3;
               switch(this.§]!o§)
               {
                  case §+![§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc8_);
                     break;
                  case §#c§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc8_);
                     break;
                  case §^" §:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc8_);
                     break;
                  case §"#+§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc8_);
                     break;
                  case §;!L§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc8_);
                     break;
                  case §"!<§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc8_);
                     break;
                  case §9'§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc8_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc8_);
               }
               if(this.§7"+§)
               {
                  this.§7"+§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(_loc4_,null,this.§5"O§,this.§!q§);
         }
      }
      
      private function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§]!h§ = null;
         var _loc6_:Texture = null;
         var _loc8_:DisplayObject = null;
         if(param1 == "??")
         {
            return;
         }
         this.§"!S§ = param4;
         var _loc7_:Number = 1;
         this.§3-§ = this.§5#&§.getAnimation(param1);
         this.§"!S§ = param4;
         if(this.§3-§)
         {
            _loc8_ = this.§3-§.getFrame(0);
         }
         else
         {
            if(!(_loc5_ = this.§-#7§.getTexture(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
            _loc8_ = new §-i§(_loc6_,false);
         }
         this.§2!I§ = param3;
         _loc8_.scaleX *= this.§"r§;
         _loc8_.scaleY *= this.§"r§;
         this.§7"+§.addChild(_loc8_);
         _loc8_.x = -this.§7"+§.width / 2;
         _loc8_.y = -this.§7"+§.height / 2;
      }
      
      public function updateRenderer() : void
      {
         if(this.§7"+§)
         {
            this.§7"+§.x = this.§]!_§ / §3"X§.§;"l§;
            this.§7"+§.y = this.§#j§ / §3"X§.§;"l§;
         }
      }
      
      public function §,!K§(param1:§4!w§) : void
      {
         this.§+3§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:DisplayObject = null;
         this.§use§ += param1;
         var _loc2_:Boolean = false;
         if(this.§+3§)
         {
            if(this.§+3§.sprite == null || this.§+3§.levelItem == null)
            {
               return false;
            }
            this.§]!_§ = this.§+3§.§?"Z§().GetPosition().x;
            this.§#j§ = this.§+3§.§?"Z§().GetPosition().y;
         }
         if(this.§2!I§ > 0 && this.§3-§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§use§ / 1000 / (1 / _loc3_)) < this.§3-§.frameCount)
            {
               _loc5_ = this.§3-§.getFrame(_loc4_);
               this.§7"+§.§%!2§(0,-1,true);
               this.§7"+§.addChild(_loc5_);
               _loc5_.scaleX *= this.§"r§;
               _loc5_.scaleY *= this.§"r§;
            }
            else if(this.§"!S§)
            {
               this.§7"+§.§%!2§(0,-1,true);
            }
         }
         if(this.§ "K§ == §7'§)
         {
            this.§"#1§(param1);
            _loc2_ = this.§@!b§(param1);
            if(this.§&!3§ > 0 && this.§#j§ > this.§&!3§)
            {
               return false;
            }
         }
         else
         {
            this.§"#1§(param1);
            _loc2_ = this.§@!b§(param1);
         }
         if(this.§]"@§ > 0 && this.§use§ >= this.§]"@§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.updateRenderer();
         }
         return true;
      }
      
      public function §"#1§(param1:Number) : void
      {
         this.§3"+§ += param1 * this.§+!Z§ / 1000;
         this.§#j§ += this.§3"+§ * param1 / 1000;
         this.§]!_§ += this.§@O§ * param1 / 1000;
         if(this.§ !r§ != 0)
         {
            this.§7"+§.rotation += this.§ !r§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §@!b§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§ "K§ == §@"H§)
         {
            if(this.§]"@§ > 0)
            {
               _loc2_ = 1;
               if(this.§%"m§ == §4! §)
               {
                  if((_loc4_ = this.§use§ / this.§]"@§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§=!o§) / 5000);
               }
               this.§7"+§.scaleX = _loc2_;
               this.§7"+§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§ "K§ == §7'§)
         {
            if(this.§%"m§ == §?"o§)
            {
               this.§7"+§.alpha = Math.max(0,Math.min(1,2 * §2>§.§8!Z§((this.§]"@§ - this.§use§) / this.§]"@§,false)));
               _loc5_ = Math.atan2(-this.§3"+§,this.§@O§) * (180 / Math.PI);
               this.§7"+§.scaleX = Math.max(0.2,this.§7"+§.alpha);
               this.§7"+§.scaleY = Math.max(0.2,this.§7"+§.alpha);
               this.§7"+§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§%"m§ == §>!B§ || this.§%"m§ == §1"`§)
            {
               this.§7"+§.scaleX = this.§7"+§.scaleY = 0.2 + (this.§]"@§ - this.§use§) / this.§]"@§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§&"5§)
         {
            this.§&"5§.clear();
            this.§&"5§ = null;
         }
         if(this.§7"+§)
         {
            this.§7"+§.dispose();
            this.§7"+§ = null;
         }
         if(this.§+3§)
         {
            this.§+3§ = null;
         }
      }
   }
}
