package §_-N3§
{
   import §_-0BH§.§_-0a§;
   import §_-8d§.§_-0FF§;
   import §_-8d§.§_-Ew§;
   import §_-8d§.§_-J§;
   import §_-8d§.§_-vz§;
   import §_-TG§.§_-00u§;
   import §_-TG§.§_-8I§;
   import §_-lt§.§_-eZ§;
   import §_-qO§.§ in§;
   import §_-uY§.DisplayObject;
   import §_-uY§.Sprite;
   import §_-uY§.§_-09b§;
   import §_-z4§.Texture;
   
   public class §_-Hv§
   {
      
      public static const §_-5K§:int = 0;
      
      public static const §_-vg§:int = 1;
      
      public static const §_-4y§:int = 2;
      
      public static const §_-0EM§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §_-Xr§:String = "Effect_TrailBig_Bird";
      
      public static const §_-KU§:String = "Effect_Trail_Sparkle";
      
      public static const §_-A6§:String = "Effect_Floating_Score";
      
      public static const §_-Pq§:String = "Effect_Floating_Text";
      
      public static const §_-Qs§:String = "Effect_Explosion_Particle";
      
      public static const §_-09R§:String = "Effect_Explosion_Core";
      
      public static const §_-O5§:String = "Effect_Pig_Destruction";
      
      public static const §_-K7§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §_-gA§:String = "Effect_Bird_Destruction";
      
      public static const §_-0o§:String = "Effect_Block_Destruction_Particles";
      
      public static const §_-0AR§:String = "Effect_Block_Destruction_Core";
      
      public static const §_-Do§:int = 0;
      
      public static const §_-S6§:int = 1;
      
      public static const §_-Nk§:int = 2;
      
      public static const §_-kI§:int = 3;
      
      public static const §_-L1§:int = 4;
      
      public static const §_-LP§:int = 5;
      
      public static const §_-TD§:int = 6;
      
      public static const §_-mt§:int = 7;
      
      public static const §_-Li§:int = 8;
      
      public static const §_-074§:int = 9;
      
      public static const §_-Gf§:int = 10;
      
      public static const §_-bP§:int = 11;
      
      public static const §_-zk§:int = 12;
      
      public static const §_-Dq§:int = 13;
      
      public static const §_-08T§:int = 14;
      
      public static const §_-IT§:int = 15;
      
      public static const §_-rq§:int = 16;
      
      public static const §_-Rg§:int = 17;
      
      public static const §_-Ic§:int = 18;
      
      public static const §_-2-§:Boolean = true;
       
      
      public var §_-4c§:int;
      
      public var §_-Xs§:int;
      
      public var §_-077§:String;
      
      public var §_-0CK§:Number;
      
      public var §_-0A9§:Number;
      
      public var §_-G6§:Number;
      
      public var §_-8W§:Number;
      
      public var §_-0Cn§:Number = 0;
      
      public var §_-XE§:Number;
      
      public var §_-047§:Number;
      
      public var §_-XL§:String;
      
      public var §_-Ai§:Number = -1;
      
      public var §_-01s§:int;
      
      public var §_-c§:Number;
      
      public var §_-l1§:Number;
      
      private var §_-xc§:Sprite;
      
      private var §_-0-a§:§_-8I§;
      
      private var §_-pg§:int;
      
      protected var §_-jR§:int;
      
      protected var §_-xi§:Boolean;
      
      private var §_-0BJ§:§_-J§;
      
      private var §_-XQ§:Boolean;
      
      private var §_-P4§:§_-Ew§;
      
      private var §_-00g§:§_-0FF§;
      
      private var §_-fI§:§_-eZ§;
      
      public function §_-Hv§(param1:§_-Ew§, param2:§_-0FF§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§_-xc§ = new Sprite();
         super();
         this.§_-P4§ = param1;
         this.§_-00g§ = param2;
         this.§_-077§ = param3;
         this.§_-4c§ = param5;
         this.§_-Xs§ = param4;
         this.§_-01s§ = param10;
         this.§_-jR§ = param16;
         this.§_-xi§ = param17;
         this.§_-XL§ = param9;
         this.§_-0CK§ = 0;
         this.§_-047§ = param8;
         this.§_-c§ = param6;
         this.§_-l1§ = param7;
         this.§_-XE§ = param15;
         this.§_-G6§ = param11;
         this.§_-0A9§ = param12;
         this.§_-0Cn§ = param14;
         this.§_-8W§ = param13;
         this.createVisuals();
         this.§_-Hr§();
         if(this.§_-4c§ == §_-vg§)
         {
            this.§_-Ai§ = § in§.§_-Dc§.§_-Uv§.§_-GV§ + this.§_-xc§.height * §_-00u§.§_-lY§;
         }
      }
      
      public static function §_-08L§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §_-Do§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §_-Nk§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §_-S6§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §_-LP§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §_-L1§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §_-kI§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §_-Ic§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §_-TD§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §_-074§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §_-mt§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §_-Li§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §_-Gf§;
         }
         return §_-bP§;
      }
      
      public static function §_-04e§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §_-zk§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §_-08T§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §_-Dq§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §_-Rg§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §_-rq§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §_-IT§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §_-IT§;
         }
         return §_-rq§;
      }
      
      public function get §_-IN§() : DisplayObject
      {
         return this.§_-xc§;
      }
      
      public function §_-qT§(param1:Number, param2:Number) : void
      {
      }
      
      protected function createVisuals() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§_-J§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§_-077§)
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
            case §_-Xr§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §_-KU§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §_-O5§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §_-K7§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §_-0AR§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §_-09R§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §_-Qs§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §_-A6§:
            case §_-Pq§:
               if(parseInt(this.§_-XL§) == 10000 || parseInt(this.§_-XL§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§_-01s§)
                  {
                     case §_-zk§:
                        _loc8_ = 16058683;
                        break;
                     case §_-Dq§:
                        _loc8_ = 55294;
                        break;
                     case §_-IT§:
                        _loc8_ = 1878602;
                        break;
                     case §_-Rg§:
                        _loc8_ = 3552822;
                        break;
                     case §_-rq§:
                        break;
                     case §_-08T§:
                        _loc8_ = 16705792;
                  }
                  if(parseInt(this.§_-XL§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§_-P4§.getAnimation("NUMBERS");
                  this.§_-0-a§ = new §_-8I§(_loc2_,_loc3_,true);
                  this.§_-0-a§.§_-04T§(parseInt(this.§_-XL§));
                  this.§_-xc§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§_-P4§.getAnimation("NUMBERS");
               this.§_-0-a§ = new §_-8I§(_loc2_,_loc3_);
               this.§_-0-a§.§_-04T§(parseInt(this.§_-XL§));
               this.§_-xc§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §_-0o§:
               switch(this.§_-01s§)
               {
                  case §_-074§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §_-Gf§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §_-mt§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §_-Li§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §_-bP§:
                     _loc6_ = 1 + _loc1_ % 3;
               }
               if(this.§_-xc§)
               {
                  this.§_-xc§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §_-gA§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§_-01s§)
               {
                  case §_-Do§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §_-LP§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §_-S6§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §_-kI§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §_-L1§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §_-Nk§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §_-Ic§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§_-xc§)
               {
                  this.§_-xc§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§_-077§,null,this.§_-jR§,this.§_-xi§);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§_-vz§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§_-XQ§ = param4;
         var _loc7_:Number = 1;
         this.§_-0BJ§ = this.§_-P4§.getAnimation(param1);
         if(this.§_-0BJ§)
         {
            _loc6_ = (_loc5_ = this.§_-0BJ§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            if(!(_loc5_ = this.§_-00g§.§_-70§(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         this.§_-pg§ = param3;
         var _loc8_:§_-09b§ = this.§_-qi§(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§_-XE§ * _loc7_;
         this.§_-xc§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§_-XE§;
            _loc8_.y = -_loc5_.pivotY * this.§_-XE§;
         }
         else
         {
            _loc8_.x = -this.§_-xc§.width / 2;
            _loc8_.y = -this.§_-xc§.height / 2;
         }
      }
      
      protected function §_-qi§(param1:Texture) : §_-09b§
      {
         return new §_-09b§(param1,false);
      }
      
      public function §_-Hr§() : void
      {
         if(this.§_-xc§)
         {
            this.§_-xc§.x = this.§_-c§ / §_-00u§.§_-lY§;
            this.§_-xc§.y = this.§_-l1§ / §_-00u§.§_-lY§;
         }
      }
      
      public function §_-tR§(param1:§_-eZ§) : void
      {
         this.§_-fI§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§_-vz§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§_-09b§ = null;
         this.§_-0CK§ += param1;
         var _loc2_:Boolean = false;
         if(this.§_-fI§)
         {
            if(this.§_-fI§.sprite == null || this.§_-fI§.§_-zm§ == null)
            {
               return false;
            }
            this.§_-c§ = this.§_-fI§.§_-SJ§().GetPosition().x;
            this.§_-l1§ = this.§_-fI§.§_-SJ§().GetPosition().y;
         }
         if(this.§_-pg§ > 0 && this.§_-0BJ§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§_-0CK§ / 1000 / (1 / _loc3_)) < this.§_-0BJ§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§_-0BJ§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.§_-qi§(_loc6_);
               this.§_-xc§.§_-0BM§(0,-1,true);
               this.§_-xc§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§_-XE§;
               _loc8_.y = -_loc5_.pivotY * this.§_-XE§;
               _loc8_.scaleX = _loc8_.scaleY = this.§_-XE§ * _loc7_;
            }
            else if(this.§_-XQ§)
            {
               this.§_-xc§.§_-0BM§(0,-1,true);
            }
         }
         if(this.§_-4c§ == §_-vg§)
         {
            this.§_-P2§(param1);
            _loc2_ = this.§_-mC§(param1);
            if(this.§_-Ai§ > 0 && this.§_-l1§ > this.§_-Ai§)
            {
               return false;
            }
         }
         else
         {
            this.§_-P2§(param1);
            _loc2_ = this.§_-mC§(param1);
         }
         if(this.§_-047§ > 0 && this.§_-0CK§ >= this.§_-047§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§_-Hr§();
         }
         return true;
      }
      
      public function §_-P2§(param1:Number) : void
      {
         this.§_-0A9§ += param1 * this.§_-8W§ / 1000;
         this.§_-l1§ += this.§_-0A9§ * param1 / 1000;
         this.§_-c§ += this.§_-G6§ * param1 / 1000;
         if(this.§_-0Cn§ != 0)
         {
            this.§_-xc§.rotation += this.§_-0Cn§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §_-mC§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§_-4c§ == §_-5K§)
         {
            if(this.§_-047§ > 0)
            {
               _loc2_ = 1;
               if(this.§_-077§ == §_-Pq§)
               {
                  if((_loc4_ = this.§_-0CK§ / this.§_-047§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§_-XL§) / 5000);
               }
               this.§_-xc§.scaleX = _loc2_;
               this.§_-xc§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§_-4c§ == §_-vg§)
         {
            if(this.§_-077§ == §_-Qs§)
            {
               this.§_-xc§.alpha = Math.max(0,Math.min(1,2 * §_-0a§.§_-0Ay§((this.§_-047§ - this.§_-0CK§) / this.§_-047§,false)));
               _loc5_ = Math.atan2(-this.§_-0A9§,this.§_-G6§) * (180 / Math.PI);
               this.§_-xc§.scaleX = Math.max(0.2,this.§_-xc§.alpha);
               this.§_-xc§.scaleY = Math.max(0.2,this.§_-xc§.alpha);
               this.§_-xc§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§_-077§ == §_-gA§ || this.§_-077§ == §_-0AR§)
            {
               this.§_-xc§.scaleX = this.§_-xc§.scaleY = 0.2 + (this.§_-047§ - this.§_-0CK§) / this.§_-047§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§_-0-a§)
         {
            this.§_-0-a§.clear();
            this.§_-0-a§ = null;
         }
         if(this.§_-xc§)
         {
            this.§_-xc§.dispose();
            this.§_-xc§ = null;
         }
         if(this.§_-fI§)
         {
            this.§_-fI§ = null;
         }
      }
   }
}
