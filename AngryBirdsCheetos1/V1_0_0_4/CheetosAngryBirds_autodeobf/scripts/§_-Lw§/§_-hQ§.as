package §_-Lw§
{
   import §_-0-K§.§_-Bq§;
   import §_-0-K§.§_-FL§;
   import §_-4I§.§_-14§;
   import §_-4I§.§_-EA§;
   import §_-4I§.§_-ok§;
   import §_-4I§.§_-v8§;
   import §_-Fk§.§_-Cb§;
   import §_-TX§.§_-0X§;
   import §_-i9§.Texture;
   import §_-r6§.§_-zU§;
   import §case §.DisplayObject;
   import §case §.Sprite;
   import §case §.§_-G3§;
   
   public class §_-hQ§
   {
      
      public static const §_-oo§:int = 0;
      
      public static const §_-Wf§:int = 1;
      
      public static const §_-Wn§:int = 2;
      
      public static const §_-ep§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §_-Hu§:String = "Effect_TrailBig_Bird";
      
      public static const §_-om§:String = "Effect_Trail_Sparkle";
      
      public static const §_-Kl§:String = "Effect_Floating_Score";
      
      public static const §_-Mq§:String = "Effect_Floating_Text";
      
      public static const §_-o2§:String = "Effect_Explosion_Particle";
      
      public static const §_-kO§:String = "Effect_Explosion_Core";
      
      public static const §_-wo§:String = "Effect_Pig_Destruction";
      
      public static const §_-0i§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §_-Wc§:String = "Effect_Bird_Destruction";
      
      public static const §_-7w§:String = "Effect_Block_Destruction_Particles";
      
      public static const §_-Ff§:String = "Effect_Block_Destruction_Core";
      
      public static const §_-Q6§:int = 0;
      
      public static const §_-pW§:int = 1;
      
      public static const §_-H-§:int = 2;
      
      public static const §_-ov§:int = 3;
      
      public static const §_-BD§:int = 4;
      
      public static const §_-RQ§:int = 5;
      
      public static const §_-OG§:int = 6;
      
      public static const §_-xW§:int = 7;
      
      public static const §_-eF§:int = 8;
      
      public static const §_-py§:int = 9;
      
      public static const §_-hL§:int = 10;
      
      public static const §_-An§:int = 11;
      
      public static const §_-m9§:int = 12;
      
      public static const §_-00T§:int = 13;
      
      public static const §_-2n§:int = 14;
      
      public static const §_-L3§:int = 15;
      
      public static const §_-9J§:int = 16;
      
      public static const §_-Hz§:int = 17;
      
      public static const §_-b2§:int = 18;
      
      public static const §_-d2§:Boolean = true;
       
      
      public var §_-tU§:int;
      
      public var §_-0-d§:int;
      
      public var §_-Hq§:String;
      
      public var §_-28§:Number;
      
      public var §_-hy§:Number;
      
      public var §_-HF§:Number;
      
      public var §_-AH§:Number;
      
      public var §_-EO§:Number = 0;
      
      public var §_-6L§:Number;
      
      public var §_-co§:Number;
      
      public var §_-K-§:String;
      
      public var §_-PR§:Number = -1;
      
      public var §_-F0§:int;
      
      public var mX:Number;
      
      public var mY:Number;
      
      private var §_-4T§:Sprite;
      
      private var §_-EJ§:§_-Bq§;
      
      private var §_-Hf§:int;
      
      private var §_-QC§:int;
      
      private var §_-66§:Boolean;
      
      private var §_-wN§:§_-14§;
      
      private var §_-yo§:Boolean;
      
      private var §_-Ms§:§_-ok§;
      
      private var §_-BB§:§_-v8§;
      
      private var §_-dv§:§_-Cb§;
      
      public function §_-hQ§(param1:§_-ok§, param2:§_-v8§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§_-4T§ = new Sprite();
         super();
         this.§_-Ms§ = param1;
         this.§_-BB§ = param2;
         this.§_-Hq§ = param3;
         this.§_-tU§ = param5;
         this.§_-0-d§ = param4;
         this.§_-F0§ = param10;
         this.§_-QC§ = param16;
         this.§_-66§ = param17;
         this.§_-K-§ = param9;
         this.§_-28§ = 0;
         this.§_-co§ = param8;
         this.mX = param6;
         this.mY = param7;
         this.§_-6L§ = param15;
         this.§_-HF§ = param11;
         this.§_-hy§ = param12;
         this.§_-EO§ = param14;
         this.§_-AH§ = param13;
         this.§_-3r§();
         this.§_-ac§();
         if(this.§_-tU§ == §_-Wf§)
         {
            this.§_-PR§ = §_-0X§.§_-O2§.§_-v5§.§_-gM§ + this.§_-4T§.height * §_-FL§.§_-NU§;
         }
      }
      
      public static function §_-kW§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §_-Q6§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §_-H-§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §_-pW§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §_-RQ§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §_-BD§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §_-ov§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §_-b2§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §_-OG§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §_-py§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §_-xW§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §_-eF§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §_-hL§;
         }
         return §_-An§;
      }
      
      public static function §_-Ct§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §_-m9§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §_-2n§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §_-00T§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §_-Hz§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §_-9J§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §_-L3§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §_-L3§;
         }
         return §_-9J§;
      }
      
      public function get §_-Sp§() : DisplayObject
      {
         return this.§_-4T§;
      }
      
      public function §_-tH§(param1:Number, param2:Number) : void
      {
      }
      
      protected function §_-3r§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§_-14§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§_-Hq§)
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
            case §_-Hu§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §_-om§:
               this.createParticle("??");
               break;
            case §_-wo§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §_-0i§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §_-Ff§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §_-kO§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §_-o2§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §_-Kl§:
            case §_-Mq§:
               if(parseInt(this.§_-K-§) == 10000 || parseInt(this.§_-K-§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§_-F0§)
                  {
                     case §_-m9§:
                        _loc8_ = 16058683;
                        break;
                     case §_-00T§:
                        _loc8_ = 55294;
                        break;
                     case §_-L3§:
                        _loc8_ = 1878602;
                        break;
                     case §_-Hz§:
                        _loc8_ = 3552822;
                        break;
                     case §_-9J§:
                        break;
                     case §_-2n§:
                        _loc8_ = 16705792;
                  }
                  if(parseInt(this.§_-K-§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§_-Ms§.§_-Sv§("NUMBERS");
                  this.§_-EJ§ = new §_-Bq§(_loc2_,_loc3_,true);
                  this.§_-EJ§.§_-dO§(parseInt(this.§_-K-§));
                  this.§_-4T§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§_-Ms§.§_-Sv§("NUMBERS");
               this.§_-EJ§ = new §_-Bq§(_loc2_,_loc3_);
               this.§_-EJ§.§_-dO§(parseInt(this.§_-K-§));
               this.§_-4T§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §_-7w§:
               switch(this.§_-F0§)
               {
                  case §_-py§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §_-hL§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §_-xW§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §_-eF§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §_-An§:
                     _loc6_ = 1 + _loc1_ % 5;
               }
               if(this.§_-4T§)
               {
                  this.§_-4T§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            case §_-Wc§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§_-F0§)
               {
                  case §_-Q6§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §_-RQ§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §_-pW§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §_-ov§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §_-BD§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §_-H-§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §_-b2§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§_-4T§)
               {
                  this.§_-4T§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§_-Hq§,null,this.§_-QC§,this.§_-66§);
         }
      }
      
      private function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§_-EA§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§_-wN§ = this.§_-Ms§.§_-Sv§(param1);
         this.§_-yo§ = param4;
         if(this.§_-wN§)
         {
            _loc6_ = (_loc5_ = this.§_-wN§.getFrame(0)).texture;
            this.§_-6L§ *= _loc5_.scale;
         }
         else
         {
            _loc6_ = this.§_-BB§.§_-T-§();
         }
         this.§_-Hf§ = param3;
         var _loc7_:§_-G3§ = this.§_-9z§(_loc6_);
         _loc7_.scaleX = _loc7_.scaleY = this.§_-6L§;
         this.§_-4T§.addChild(_loc7_);
         if(_loc5_)
         {
            _loc7_.x = -_loc5_.pivotX * this.§_-6L§;
            _loc7_.y = -_loc5_.pivotY * this.§_-6L§;
         }
         else
         {
            _loc7_.x = -this.§_-4T§.width / 2;
            _loc7_.y = -this.§_-4T§.height / 2;
         }
      }
      
      protected function §_-9z§(param1:Texture) : §_-G3§
      {
         return new §_-G3§(param1,false);
      }
      
      public function §_-ac§() : void
      {
         if(this.§_-4T§)
         {
            this.§_-4T§.x = this.mX / §_-FL§.§_-NU§;
            this.§_-4T§.y = this.mY / §_-FL§.§_-NU§;
         }
      }
      
      public function §_-Gw§(param1:§_-Cb§) : void
      {
         this.§_-dv§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§_-EA§ = null;
         var _loc6_:Texture = null;
         var _loc7_:§_-G3§ = null;
         this.§_-28§ += param1;
         var _loc2_:Boolean = false;
         if(this.§_-dv§)
         {
            if(this.§_-dv§.sprite == null || this.§_-dv§.§_-Lf§ == null)
            {
               return false;
            }
            this.mX = this.§_-dv§.§_-Zv§().GetPosition().x;
            this.mY = this.§_-dv§.§_-Zv§().GetPosition().y;
         }
         if(this.§_-Hf§ > 0 && this.§_-wN§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§_-28§ / 1000 / (1 / _loc3_)) < this.§_-wN§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§_-wN§.getFrame(_loc4_)).texture;
               _loc7_ = new §_-G3§(_loc6_);
               this.§_-4T§.§_-Bx§(0,-1,true);
               this.§_-4T§.addChild(_loc7_);
               _loc7_.x = -_loc5_.pivotX;
               _loc7_.y = -_loc5_.pivotY;
               _loc7_.scaleX = _loc7_.scaleY = this.§_-6L§;
            }
            else if(this.§_-yo§)
            {
               this.§_-4T§.§_-Bx§(0,-1,true);
            }
         }
         if(this.§_-tU§ == §_-Wf§)
         {
            this.§_-8a§(param1);
            _loc2_ = this.§ true§(param1);
            if(this.§_-PR§ > 0 && this.mY > this.§_-PR§)
            {
               return false;
            }
         }
         else
         {
            this.§_-8a§(param1);
            _loc2_ = this.§ true§(param1);
         }
         if(this.§_-co§ > 0 && this.§_-28§ >= this.§_-co§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§_-ac§();
         }
         return true;
      }
      
      public function §_-8a§(param1:Number) : void
      {
         this.§_-hy§ += param1 * this.§_-AH§ / 1000;
         this.mY += this.§_-hy§ * param1 / 1000;
         this.mX += this.§_-HF§ * param1 / 1000;
         if(this.§_-EO§ != 0)
         {
            this.§_-4T§.rotation += this.§_-EO§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function § true§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§_-tU§ == §_-oo§)
         {
            if(this.§_-co§ > 0)
            {
               _loc2_ = 1;
               if(this.§_-Hq§ == §_-Mq§)
               {
                  if((_loc4_ = this.§_-28§ / this.§_-co§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§_-K-§) / 5000);
               }
               this.§_-4T§.scaleX = _loc2_;
               this.§_-4T§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§_-tU§ == §_-Wf§)
         {
            if(this.§_-Hq§ == §_-o2§)
            {
               this.§_-4T§.alpha = Math.max(0,Math.min(1,2 * §_-zU§.§_-Af§((this.§_-co§ - this.§_-28§) / this.§_-co§,false)));
               _loc5_ = Math.atan2(-this.§_-hy§,this.§_-HF§) * (180 / Math.PI);
               this.§_-4T§.scaleX = Math.max(0.2,this.§_-4T§.alpha);
               this.§_-4T§.scaleY = Math.max(0.2,this.§_-4T§.alpha);
               this.§_-4T§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§_-Hq§ == §_-Wc§ || this.§_-Hq§ == §_-Ff§)
            {
               this.§_-4T§.scaleX = this.§_-4T§.scaleY = 0.2 + (this.§_-co§ - this.§_-28§) / this.§_-co§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§_-EJ§)
         {
            this.§_-EJ§.clear();
            this.§_-EJ§ = null;
         }
         if(this.§_-4T§)
         {
            this.§_-4T§.dispose();
            this.§_-4T§ = null;
         }
         if(this.§_-dv§)
         {
            this.§_-dv§ = null;
         }
      }
   }
}
