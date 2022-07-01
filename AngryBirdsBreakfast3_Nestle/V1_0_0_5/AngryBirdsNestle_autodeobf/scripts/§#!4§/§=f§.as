package §#!4§
{
   import §,!q§.DisplayObject;
   import §,!q§.Sprite;
   import §-!b§.§,"1§;
   import §-!b§.§<W§;
   import §-!b§.§[E§;
   import §0!$§.§9e§;
   import §=!`§.§^^§;
   import §]k§.§!@§;
   import §]k§.§<S§;
   import com.angrybirds.§6!E§;
   
   public class §=f§
   {
      
      public static const §[u§:int = 0;
      
      public static const §@m§:int = 1;
      
      public static const §<!m§:int = 2;
      
      public static const §"!Y§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §>!A§:String = "Effect_TrailBig_Bird";
      
      public static const §^l§:String = "Effect_Trail_Sparkle";
      
      public static const §2T§:String = "Effect_Floating_Score";
      
      public static const §3;§:String = "Effect_Floating_Text";
      
      public static const §]]§:String = "Effect_Explosion_Particle";
      
      public static const § I§:String = "Effect_Explosion_Core";
      
      public static const §3Q§:String = "Effect_Pig_Destruction";
      
      public static const §5d§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §,!3§:String = "Effect_Bird_Destruction";
      
      public static const §@"5§:String = "Effect_Block_Destruction_Particles";
      
      public static const §<#§:String = "Effect_Block_Destruction_Core";
      
      public static const §"!2§:int = 0;
      
      public static const §-b§:int = 1;
      
      public static const §3!@§:int = 2;
      
      public static const §[!m§:int = 3;
      
      public static const §4n§:int = 4;
      
      public static const §19§:int = 5;
      
      public static const §2!W§:int = 6;
      
      public static const §,!O§:int = 7;
      
      public static const §=!]§:int = 8;
      
      public static const §[@§:int = 9;
      
      public static const §1!b§:int = 10;
      
      public static const §8J§:int = 11;
      
      public static const §`m§:int = 12;
      
      public static const §9+§:int = 13;
      
      public static const §!"$§:int = 14;
      
      public static const §[[§:int = 15;
      
      public static const §1i§:int = 16;
      
      public static const §9k§:int = 17;
      
      public static const §^T§:int = 18;
       
      
      public var §@!W§:int;
      
      public var §"7§:int;
      
      public var §7"3§:String;
      
      public var §0!z§:Number;
      
      public var §"m§:Number;
      
      public var §0!§:Number;
      
      public var §4!g§:Number;
      
      public var §'j§:Number = 0;
      
      public var §?!C§:Number;
      
      public var §>! §:Number;
      
      public var §!!S§:String;
      
      public var §#C§:Number = -1;
      
      public var §]!A§:int;
      
      public var §@S§:Number;
      
      public var §#B§:Number;
      
      protected var § v§:Sprite;
      
      private var §9&§:§!@§;
      
      private var §7" §:int;
      
      private var §4j§:int;
      
      private var §?0§:Boolean;
      
      private var §6!A§:§<W§;
      
      private var §3"+§:Boolean;
      
      private var §+-§:§,"1§;
      
      private var §@=§:§[E§;
      
      private var §>!Z§:§^^§;
      
      public function §=f§(param1:§,"1§, param2:§[E§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§ v§ = new Sprite();
         super();
         this.§+-§ = param1;
         this.§@=§ = param2;
         this.§7"3§ = param3;
         this.§@!W§ = param5;
         this.§"7§ = param4;
         this.§]!A§ = param10;
         this.§4j§ = param16;
         this.§?0§ = param17;
         this.§!!S§ = param9;
         this.§0!z§ = 0;
         this.§>! § = param8;
         this.§@S§ = param6;
         this.§#B§ = param7;
         this.§?!C§ = param15;
         this.§0!§ = param11;
         this.§"m§ = param12;
         this.§'j§ = param14;
         this.§4!g§ = param13;
         this.§3!m§();
         this.updateRenderer();
         if(this.§@!W§ == §@m§)
         {
            this.§#C§ = §6!E§.§7I§.§-"3§.ground + this.§ v§.height * §<S§.§;!Q§;
         }
      }
      
      public static function §6!M§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §"!2§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §3!@§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §-b§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §19§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §4n§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §[!m§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §^T§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WINGMAN") >= 0)
         {
            return §"!2§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §2!W§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §[@§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §,!O§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §=!]§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §1!b§;
         }
         return §8J§;
      }
      
      public static function §;"2§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §`m§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §!"$§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §9+§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §9k§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §1i§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §[[§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §[[§;
         }
         return §1i§;
      }
      
      public function get displayObject() : DisplayObject
      {
         return this.§ v§;
      }
      
      public function §9x§(param1:Number, param2:Number) : void
      {
      }
      
      protected function getParticleType() : String
      {
         return this.§7"3§;
      }
      
      protected function §3!m§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§<W§ = null;
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
            case §>!A§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §^l§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §3Q§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §5d§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §<#§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case § I§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §]]§:
               _loc5_ = 1 + _loc1_ % 5;
               _loc6_ = "particle" + _loc5_;
               break;
            case §2T§:
            case §3;§:
               if(parseInt(this.§!!S§) == 10000 || parseInt(this.§!!S§) == 5000)
               {
                  _loc9_ = 16777215;
                  switch(this.§]!A§)
                  {
                     case §`m§:
                        _loc9_ = 16058683;
                        break;
                     case §9+§:
                        _loc9_ = 55294;
                        break;
                     case §[[§:
                        _loc9_ = 1878602;
                        break;
                     case §9k§:
                        _loc9_ = 3552822;
                        break;
                     case §1i§:
                        break;
                     case §!"$§:
                        _loc9_ = 16705792;
                  }
                  if(parseInt(this.§!!S§) == 5000)
                  {
                     _loc9_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§+-§.§ !u§("NUMBERS");
                  this.§9&§ = new §!@§(_loc2_,_loc3_,true);
                  this.§9&§.§0d§(parseInt(this.§!!S§));
                  this.§ v§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc9_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§+-§.§ !u§("NUMBERS");
               this.§9&§ = new §!@§(_loc2_,_loc3_);
               this.§9&§.§0d§(parseInt(this.§!!S§));
               this.§ v§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §@"5§:
               switch(this.§]!A§)
               {
                  case §[@§:
                     _loc7_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc7_);
                     break;
                  case §1!b§:
                     _loc7_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §,!O§:
                     _loc7_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc7_);
                     break;
                  case §=!]§:
                     _loc7_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc7_);
                     break;
                  case §8J§:
                     _loc7_ = 1 + _loc1_ % 5;
               }
               if(this.§ v§)
               {
                  this.§ v§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §,!3§:
               _loc8_ = 1 + _loc1_ % 3;
               switch(this.§]!A§)
               {
                  case §"!2§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc8_);
                     break;
                  case §19§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc8_);
                     break;
                  case §-b§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc8_);
                     break;
                  case §[!m§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc8_);
                     break;
                  case §4n§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc8_);
                     break;
                  case §3!@§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc8_);
                     break;
                  case §^T§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc8_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc8_);
               }
               if(this.§ v§)
               {
                  this.§ v§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(_loc4_,null,this.§4j§,this.§?0§);
         }
      }
      
      private function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:DisplayObject = null;
         if(param1 == "??")
         {
            return;
         }
         this.§6!A§ = this.§+-§.§ !u§(param1);
         this.§3"+§ = param4;
         if(this.§6!A§)
         {
            _loc5_ = this.§6!A§.getFrame(0);
            this.§7" § = param3;
            _loc5_.scaleX *= this.§?!C§;
            _loc5_.scaleY *= this.§?!C§;
            this.§ v§.addChild(_loc5_);
            _loc5_.x = -this.§ v§.width / 2;
            _loc5_.y = -this.§ v§.height / 2;
            return;
         }
      }
      
      public function updateRenderer() : void
      {
         if(this.§ v§)
         {
            this.§ v§.x = this.§@S§ / §<S§.§;!Q§;
            this.§ v§.y = this.§#B§ / §<S§.§;!Q§;
         }
      }
      
      public function § !6§(param1:§^^§) : void
      {
         this.§>!Z§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:DisplayObject = null;
         this.§0!z§ += param1;
         var _loc2_:Boolean = false;
         if(this.§>!Z§)
         {
            if(this.§>!Z§.sprite == null || this.§>!Z§.levelItem == null)
            {
               return false;
            }
            this.§@S§ = this.§>!Z§.§^",§().GetPosition().x;
            this.§#B§ = this.§>!Z§.§^",§().GetPosition().y;
         }
         if(this.§7" § > 0 && this.§6!A§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§0!z§ / 1000 / (1 / _loc3_)) < this.§6!A§.frameCount)
            {
               _loc5_ = this.§6!A§.getFrame(_loc4_);
               this.§ v§.§-H§(0,-1,true);
               this.§ v§.addChild(_loc5_);
               _loc5_.scaleX *= this.§?!C§;
               _loc5_.scaleY *= this.§?!C§;
            }
            else if(this.§3"+§)
            {
               this.§ v§.§-H§(0,-1,true);
            }
         }
         if(this.§@!W§ == §@m§)
         {
            this.§'Q§(param1);
            _loc2_ = this.§8!W§(param1);
            if(this.§#C§ > 0 && this.§#B§ > this.§#C§)
            {
               return false;
            }
         }
         else
         {
            this.§'Q§(param1);
            _loc2_ = this.§8!W§(param1);
         }
         if(this.§>! § > 0 && this.§0!z§ >= this.§>! §)
         {
            return false;
         }
         if(_loc2_)
         {
            this.updateRenderer();
         }
         return true;
      }
      
      public function §'Q§(param1:Number) : void
      {
         this.§"m§ += param1 * this.§4!g§ / 1000;
         this.§#B§ += this.§"m§ * param1 / 1000;
         this.§@S§ += this.§0!§ * param1 / 1000;
         if(this.§'j§ != 0)
         {
            this.§ v§.rotation += this.§'j§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §8!W§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§@!W§ == §[u§)
         {
            if(this.§>! § > 0)
            {
               _loc2_ = 1;
               if(this.§7"3§ == §3;§)
               {
                  if((_loc4_ = this.§0!z§ / this.§>! §) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§!!S§) / 5000);
               }
               this.§ v§.scaleX = _loc2_;
               this.§ v§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§@!W§ == §@m§)
         {
            if(this.§7"3§ == §]]§)
            {
               this.§ v§.alpha = Math.max(0,Math.min(1,2 * §9e§.§]",§((this.§>! § - this.§0!z§) / this.§>! §,false)));
               _loc5_ = Math.atan2(-this.§"m§,this.§0!§) * (180 / Math.PI);
               this.§ v§.scaleX = Math.max(0.2,this.§ v§.alpha);
               this.§ v§.scaleY = Math.max(0.2,this.§ v§.alpha);
               this.§ v§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§7"3§ == §,!3§ || this.§7"3§ == §<#§)
            {
               this.§ v§.scaleX = this.§ v§.scaleY = 0.2 + (this.§>! § - this.§0!z§) / this.§>! § * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§9&§)
         {
            this.§9&§.clear();
            this.§9&§ = null;
         }
         if(this.§ v§)
         {
            this.§ v§.dispose();
            this.§ v§ = null;
         }
         if(this.§>!Z§)
         {
            this.§>!Z§ = null;
         }
      }
   }
}
