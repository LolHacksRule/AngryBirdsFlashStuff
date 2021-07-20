package §-;§
{
   import §!#C§.§ $?§;
   import §&!_§.§0I§;
   import §&$3§.§7$C§;
   import §'G§.§3$B§;
   import §,"v§.§ T§;
   import §,"v§.§;"n§;
   import §,"v§.§;#A§;
   import §-$!§.§0$@§;
   import §-$!§.§<U§;
   import §0!s§.§]"Y§;
   import §1#u§.§6"s§;
   import §1#u§.§;"Q§;
   import §1L§.§!!o§;
   import §1L§.§;#&§;
   import §1L§.§>5§;
   import §2";§.§#$"§;
   import §4§.§9#i§;
   import §4§.§;!X§;
   import §6!3§.§'!§;
   import §6!3§.§4!o§;
   import §6!3§.§8$B§;
   import §6!3§.§9"+§;
   import §6!3§.§;!U§;
   import §6!3§.§>#p§;
   import §6!3§.§@!_§;
   import §6!3§.§^#x§;
   import §6#H§.Sprite;
   import §7"p§.§%6§;
   import §7"p§.§6!9§;
   import §7"p§.§<#]§;
   import §8#K§.§-!o§;
   import §8#K§.§3Z§;
   import §<!r§.§'##§;
   import §>2§.§!!W§;
   import §>2§.§""y§;
   import §>2§.§"§;
   import §>2§.§&!T§;
   import §>2§.§4$C§;
   import §>2§.§5!`§;
   import §>2§.§6#t§;
   import §>2§.§7#;§;
   import §>2§.§>#!§;
   import §>2§.§?##§;
   import §>z§.§#"l§;
   import §>z§.ErrorPopup;
   import §>z§.WarningPopup;
   import §?!C§.b2Vec2;
   import §`#@§.§7n§;
   import com.rovio.assets.§6$A§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Point;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §^=§ extends EventDispatcher
   {
      
      private static const §5!]§:Number = 500;
       
      
      private var §[!x§:§""y§;
      
      protected var §2#6§:Boolean = false;
      
      private var §?#=§:int = -1;
      
      private var §0#A§:Number;
      
      private var §1!T§:int;
      
      private var §8"K§:Function;
      
      private var §="S§:Array;
      
      private var §<"W§:Number = -1;
      
      private var §?#p§:§@!_§;
      
      private var §1R§:Number = -1;
      
      private var §>S§:§-!o§;
      
      private var §%#!§:Vector.<§@!_§>;
      
      private var §&!j§:§7$C§ = null;
      
      private var §5#^§:§7$C§ = null;
      
      private var §8$2§:Vector.<§?!p§>;
      
      private var §,$,§:§?!p§;
      
      private var §&!Y§:§;!X§;
      
      private var mLevelManager:§;"n§;
      
      private var §,#0§:Array;
      
      private var §1$B§:Boolean = false;
      
      private var §]"h§:Boolean;
      
      private var §4#j§:Number = 500;
      
      private var §5!F§:Boolean;
      
      public function §^=§(param1:§;"n§)
      {
         this.§="S§ = [];
         this.§8$2§ = new Vector.<§?!p§>();
         super();
         this.mLevelManager = param1;
      }
      
      public function get §[f§() : int
      {
         return this.§8$2§.length;
      }
      
      public function init() : void
      {
         this.§?#=§ = -1;
         this.§<"W§ = -1;
         this.§1R§ = -1;
         this.§?#p§ = null;
         this.§8"K§ = null;
         this.§="S§ = [];
         this.§&!Y§.mouseEnabled = true;
         this.§5!F§ = false;
         this.§1!T§ = 0;
         this.§%#!§ = new Vector.<§@!_§>();
         var _loc1_:§3$B§ = this.§&!Y§.§1$'§.textureManager.getTexture("LASER_DOT");
         if(this.§[!x§)
         {
            this.§[!x§.dispose();
         }
         this.§[!x§ = new §4$C§(this.§&!Y§,new Sprite(),_loc1_.texture,0,0);
         §7n§.§6#K§.objects.backgroundSprite.addChild(this.§[!x§.sprite);
         this.§'"o§();
      }
      
      public function reset() : void
      {
         while(this.§8$2§.length > 0)
         {
            this.§8$2§.shift();
         }
         if(this.§,$,§)
         {
            this.§#!q§(this.§,$,§.§3"!§);
            try
            {
               this.§,$,§.§3"!§.close();
            }
            catch(e:Error)
            {
            }
            this.§,$,§ = null;
         }
      }
      
      public function setController(param1:§;!X§) : void
      {
         if(this.§&!Y§ == param1)
         {
            return;
         }
         this.§&!Y§ = param1;
         this.init();
      }
      
      public function run(param1:Number, param2:§8$B§) : void
      {
         var _loc5_:§&!T§ = null;
         var _loc6_:Object = null;
         if(!this.§&!Y§)
         {
            return;
         }
         this.§1"e§(param1);
         this.§%k§(param1,param2);
         var _loc3_:Vector.<§>#!§> = this.§&!Y§.§1$'§.slingshot.mBirds;
         if(_loc3_.length > 0)
         {
            if((_loc5_ = _loc3_[this.§&!Y§.§1$'§.slingshot.mNextBirdIndex] as §&!T§).§+#'§)
            {
               this.§7!j§(param1,param2);
            }
         }
         if(!this.§2#6§)
         {
            this.§%$6§(param1,param2);
         }
         var _loc4_:Boolean = (§7n§.§6#K§.slingshot as §7#;§).mSlingShotState == §6#t§.§5"#§ || (§7n§.§6#K§.slingshot as §7#;§).mSlingShotState == §7#;§.§%"d§;
         if(this.§<"W§ > 0)
         {
            if(this.§8"K§ != this.§6"W§ || this.§8"K§ == this.§6"W§ && _loc4_)
            {
               this.§<"W§ -= param1;
            }
            if(this.§<"W§ <= 0)
            {
               this.§8"K§();
               this.§8"K§ = null;
               this.§&!Y§.mouseEnabled = true;
               if(this.§="S§.length > 0)
               {
                  _loc6_ = this.§="S§.shift();
                  this.§2#j§(_loc6_.powerupFunction,_loc6_.gotoCastleSide);
               }
            }
         }
      }
      
      private function §7!j§(param1:Number, param2:§8$B§) : void
      {
         var _loc3_:§7#;§ = null;
         var _loc4_:Vector.<§>#!§> = null;
         var _loc5_:§&!T§ = null;
         var _loc6_:§%6§ = null;
         var _loc7_:Number = NaN;
         if(!this.§]"h§)
         {
            this.§]"h§ = true;
            _loc3_ = this.§&!Y§.§1$'§.slingshot as §7#;§;
            _loc5_ = (_loc4_ = _loc3_.mBirds)[_loc3_.mNextBirdIndex] as §&!T§;
            _loc6_ = §7n§.§6#K§.particles as §%6§;
            _loc7_ = 0.4;
            _loc6_.§"p§(_loc5_.x + _loc5_.radius,_loc5_.y - _loc5_.radius,_loc7_,0,0,(3 + Math.random() * 4) * -1,_loc5_.radius);
         }
         if(this.§]"h§)
         {
            this.§4#j§ -= param1;
            if(this.§4#j§ <= 0)
            {
               this.§4#j§ = §5!]§ + Math.random() * 300;
               this.§]"h§ = false;
            }
         }
      }
      
      protected function §%k§(param1:Number, param2:§8$B§) : void
      {
         var _loc3_:§7#;§ = null;
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:* = false;
         if(this.§2#6§)
         {
            _loc3_ = this.§&!Y§.§1$'§.slingshot as §7#;§;
            _loc4_ = _loc3_.getPosition();
            if(_loc3_.canShootTheBird && _loc4_ != null && _loc3_.mDragging)
            {
               _loc5_ = -Math.cos(_loc3_.shootingAngle / 180 * Math.PI);
               _loc6_ = Math.sin(_loc3_.shootingAngle / 180 * Math.PI);
               _loc7_ = _loc3_.§1#6§.§?"O§() == §9"+§.§"!F§;
               this.§[!x§.§""_§(_loc4_,new Point(_loc5_,_loc6_),_loc3_.getLaunchSpeed(),param2,10,_loc7_,false,22);
               this.§[!x§.enabled = true;
            }
            else
            {
               this.§[!x§.enabled = false;
            }
         }
      }
      
      protected function §%$6§(param1:Number, param2:§8$B§) : void
      {
         var _loc3_:§7#;§ = null;
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:* = false;
         if(§<U§.§='§() == §0$@§.§9!§.§1#7§)
         {
            _loc3_ = this.§&!Y§.§1$'§.slingshot as §7#;§;
            _loc4_ = _loc3_.getPosition();
            if(_loc3_.getPosition())
            {
               _loc4_ = new Point(_loc3_.getPosition().x - Math.cos(_loc3_.shootingAngle / 180 * Math.PI) * 4,_loc3_.getPosition().y + Math.sin(_loc3_.shootingAngle / 180 * Math.PI) * 4);
            }
            if(_loc3_.canShootTheBird && _loc4_ != null && _loc3_.mDragging)
            {
               _loc5_ = -Math.cos(_loc3_.shootingAngle / 180 * Math.PI);
               _loc6_ = Math.sin(_loc3_.shootingAngle / 180 * Math.PI);
               _loc7_ = _loc3_.§1#6§.§?"O§() == §9"+§.§"!F§;
               this.§[!x§.§""_§(_loc4_,new Point(_loc5_,_loc6_),_loc3_.getLaunchSpeed(),param2,16,_loc7_,true,64);
               this.§[!x§.enabled = true;
            }
            else
            {
               this.§[!x§.enabled = false;
            }
         }
      }
      
      protected function §1"e§(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§@!_§ = null;
         if(this.§%#!§)
         {
            _loc2_ = this.§%#!§.length - 1;
            while(_loc2_ >= 0)
            {
               _loc3_ = this.§%#!§[_loc2_];
               if(_loc3_)
               {
                  if(_loc3_.§2!b§)
                  {
                     this.§%#!§.splice(_loc2_,1);
                  }
                  else
                  {
                     _loc3_.§1"e§(param1,§7n§.§6#K§.levelObjects);
                  }
               }
               _loc2_--;
            }
         }
      }
      
      public function useMightyEagle() : Boolean
      {
         var _loc1_:int = § $?§.§`"H§.§0#s§(§+"d§.§ !T§.§1#7§);
         if(_loc1_ <= 0)
         {
            return false;
         }
         this.§&!Y§.§;!-§();
         this.§'"R§();
         § $?§.§`"H§.§@!c§(§+"d§.§ !T§.§1#7§);
         this.§<!&§(§+"d§.§ !T§.§1#7§);
         this.§2#j§(this.§##d§,false);
         return true;
      }
      
      private function §##d§() : void
      {
         var _loc1_:String = this.mLevelManager.currentLevel;
         var _loc2_:String = this.mLevelManager.getCurrentEpisodeModel().name;
         §0I§.§]F§(§+"d§.§ !T§.§1#7§,_loc1_);
         var _loc3_:§7#;§ = §7n§.§6#K§.slingshot as §7#;§;
         if(_loc3_.mSlingShotState == §6#t§.§2Y§)
         {
            _loc3_.setSlingShotState(§6#t§.§5"#§);
         }
      }
      
      public function update(param1:Number) : void
      {
         this.§;F§(param1);
         this.§1y§(param1);
      }
      
      private function §1y§(param1:Number) : void
      {
         if(this.§1!T§ > 0)
         {
            this.§1!T§ -= param1;
         }
      }
      
      protected function §;F§(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:b2Vec2 = null;
         if(this.§?#=§ >= 0 && this.§?#=§ < §?##§.§?#;§)
         {
            _loc2_ = Math.sin(this.§?#=§ / §?##§.§?#;§ * (Math.PI * §?##§.§@i§) + this.§0#A§);
            _loc3_ = _loc2_ * §?##§.§-"u§;
            _loc4_ = new b2Vec2(_loc3_,this.§&!Y§.§1$'§.mLevelEngine.mWorld.GetGravity().y);
            this.§&!Y§.§1$'§.mLevelEngine.mWorld.SetGravity(_loc4_);
            ++this.§?#=§;
            this.§]4§();
         }
         else if(this.§?#=§ == §?##§.§?#;§)
         {
            this.§?#=§ = -1;
            §7n§.§6#K§.mLevelEngine.mWorld.SetGravity(new b2Vec2(0,this.§&!Y§.§1$'§.mLevelEngine.mWorld.GetGravity().y));
         }
      }
      
      private function §]4§() : void
      {
         var _loc1_:Number = this.§&!Y§.§1$'§.camera.centerX;
         var _loc2_:Number = §;"Q§.§[$8§ / §;"Q§.§>m§;
         var _loc3_:Number = §;"Q§.§`"N§ / §;"Q§.§>m§;
         var _loc4_:Number = _loc1_ + (Math.random() - 0.5) * _loc2_;
         var _loc5_:§%6§ = this.§&!Y§.§1$'§.particles as §%6§;
         if(this.§?#=§ % 2)
         {
            _loc5_.§1"G§(_loc4_,this.§&!Y§.§1$'§.§;$5§.ground);
         }
         if(§'##§.§`"H§.§<Z§())
         {
            _loc5_.§5!1§(_loc1_ + (Math.random() - 0.5) * _loc2_,0,2);
         }
         _loc4_ = _loc1_ + (Math.random() - 0.5) * _loc2_;
         _loc5_.§2y§(_loc4_,this.§&!Y§.§1$'§.§;$5§.ground + Math.random() * _loc3_ / 20);
      }
      
      public function §?!2§() : Boolean
      {
         return this.§?#=§ > -1;
      }
      
      public function §%#y§() : Boolean
      {
         return this.§1!T§ > 0;
      }
      
      private function §2#j§(param1:Function, param2:Boolean = true) : void
      {
         if(this.§8"K§ != null)
         {
            this.§="S§.push({
               "powerupFunction":param1,
               "gotoCastleSide":param2
            });
         }
         else
         {
            this.§8"K§ = param1;
            (§7n§.§ "'§ as §9#i§).mouseEnabled = false;
            this.§<"W§ = param1 == this.§6"W§ ? Number(§!!W§.§1""§ * 1.5) : Number(§!!W§.§1""§);
            this.§&!Y§.§1$'§.camera.setAction(!!param2 ? int(§;"Q§.§4s§) : int(§;"Q§.§"8§));
            this.§[#§(this.§8"K§);
         }
      }
      
      protected function §[#§(param1:Function) : void
      {
         var _loc2_:String = null;
         switch(param1)
         {
            case this.§6"W§:
               _loc2_ = §+"d§.§1J§.§1#7§;
               break;
            case this.§>"'§:
               _loc2_ = §+"d§.§&!w§.§1#7§;
               break;
            case this.§?"U§:
               _loc2_ = §+"d§.§[p§.§1#7§;
               break;
            case this.§""D§:
               _loc2_ = §+"d§.§?"$§.§1#7§;
               break;
            case this.§80§:
               _loc2_ = §+"d§.§#T§.§1#7§;
               break;
            case this.§2#e§:
               _loc2_ = §+"d§.§]#_§.§1#7§;
               break;
            case this.§%#_§:
               _loc2_ = §+"d§.§!"§.§1#7§;
               break;
            case this.§1#k§:
               _loc2_ = §+"d§.§true §.§1#7§;
               break;
            case this.§'Q§:
               _loc2_ = §+"d§.§]#_§.§1#7§;
               break;
            case this.§]#0§:
               _loc2_ = §+"d§.§,!$§.§1#7§;
         }
         var _loc3_:§#$"§ = AngryBirdsBase.singleton.§-j§() as §#$"§;
         if(_loc3_ && _loc2_)
         {
            dispatchEvent(new §2,§(§2,§.§'#n§,_loc2_));
            if(_loc2_ == §+"d§.§]#_§.§1#7§)
            {
               §3Z§.playSound("wingman_animation","ChannelPowerups");
            }
            else if(_loc2_ == §+"d§.§true §.§1#7§)
            {
               §3Z§.playSound("pumpkin_activation","ChannelPowerups");
            }
            else
            {
               §3Z§.playSound("powerup_intro","ChannelPowerups");
            }
         }
         else
         {
            §3Z§.playSound("powerup_intro","ChannelPowerups");
         }
      }
      
      private function §6"W§() : void
      {
         var _loc4_:§&!T§ = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:int = 0;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:String = null;
         var _loc1_:§7#;§ = this.§&!Y§.§1$'§.slingshot as §7#;§;
         var _loc2_:Vector.<§>#!§> = _loc1_.mBirds;
         var _loc3_:Number = §?##§.§#E§;
         if(_loc2_.length > 0 && _loc1_.mNextBirdIndex < _loc2_.length)
         {
            (_loc4_ = _loc2_[_loc1_.mNextBirdIndex] as §&!T§).§+#'§ = true;
            switch(_loc4_.name)
            {
               case "BIRD_BLACK":
                  _loc3_ = §?##§.§ m§;
                  break;
               case "BIRD_BLUE":
                  _loc3_ = §?##§.§extends§;
                  break;
               case "BIRD_GREEN":
                  _loc3_ = §?##§.§^8§;
                  break;
               case "BIRD_WHITE":
                  _loc3_ = §?##§.§'§;
                  break;
               case "BIRD_YELLOW":
                  _loc3_ = §?##§.§%$4§;
                  break;
               case "BIRD_RED":
                  _loc3_ = §?##§.§;#1§;
                  break;
               case "BIRD_ORANGE":
                  _loc3_ = §?##§.§5#;§;
                  break;
               case "BIRD_REDBIG":
                  _loc3_ = §?##§.§[$A§;
                  break;
               case "BIRD_WINGMAN":
                  _loc3_ = §?##§.§%#1§;
                  break;
               case "BIRD_SARDINE":
                  _loc3_ = 1;
                  _loc4_.§+#'§ = false;
                  break;
               case "POWERUP_BOOMBOX":
                  _loc3_ = §?##§.§%"U§;
            }
         }
         §3Z§.playSound("big_bird","ChannelPowerups");
         _loc1_.§&"O§(_loc3_,§+"d§.§1J§);
         if(_loc2_.length > 0)
         {
            _loc5_ = 5 + Math.random() * 10;
            _loc6_ = 8;
            _loc7_ = 1;
            _loc8_ = 0;
            while(_loc8_ < _loc5_)
            {
               _loc9_ = Math.random() * (Math.PI * 2);
               _loc10_ = 0.5 * _loc6_ + _loc6_ * (Math.random() * 0.5);
               if((_loc11_ = _loc2_[0].name) == "POWERUP_BOOMBOX")
               {
                  this.§&!Y§.§1$'§.particles.addParticle(§6!9§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§<#]§.PARTICLE_GROUP_GAME_EFFECTS,§6!9§.PARTICLE_TYPE_KINETIC_PARTICLE,_loc1_.x,_loc1_.y,1250,"",§6!9§.§9"W§,_loc10_ * Math.cos(_loc9_),-_loc10_ * Math.sin(_loc9_),10,_loc10_ * 50);
               }
               else
               {
                  if(_loc11_ == "BIRD_WINGMAN")
                  {
                     _loc11_ = "BIRD_RED";
                  }
                  this.§&!Y§.§1$'§.particles.addParticle(§6!9§.§?!R§,§<#]§.PARTICLE_GROUP_GAME_EFFECTS,§6!9§.PARTICLE_TYPE_KINETIC_PARTICLE,_loc1_.x,_loc1_.y,1250,"",§6!9§.getParticleMaterialFromEngineMaterial(_loc11_),_loc10_ * Math.cos(_loc9_) * _loc7_,-_loc10_ * Math.sin(_loc9_) * _loc7_,5,_loc10_ * 20,Math.sqrt(_loc7_));
               }
               _loc8_++;
            }
         }
         this.§`!9§();
         this.§5!F§ = false;
      }
      
      private function §#!i§() : void
      {
         var _loc3_:§&!T§ = null;
         var _loc1_:§7#;§ = this.§&!Y§.§1$'§.slingshot as §7#;§;
         var _loc2_:Vector.<§>#!§> = _loc1_.mBirds;
         if(_loc2_.length > 0 && _loc1_.mNextBirdIndex < _loc2_.length)
         {
            _loc3_ = _loc2_[_loc1_.mNextBirdIndex] as §&!T§;
            _loc3_.§+#'§ = false;
            _loc3_.§]!q§ = null;
            _loc3_.§+#?§ = null;
            _loc3_.scale = 1;
            _loc3_.sprite.scaleX = _loc3_.scale;
            _loc3_.sprite.scaleY = _loc3_.scale;
         }
         this.§5!F§ = false;
      }
      
      public function §`!9§() : void
      {
         var _loc1_:§7#;§ = this.§&!Y§.§1$'§.slingshot as §7#;§;
         var _loc2_:Vector.<§>#!§> = _loc1_.mBirds;
         var _loc3_:§&!T§ = _loc2_[_loc1_.mNextBirdIndex] as §&!T§;
         §7n§.§6#K§.particles.addSimpleParticle("POWERUP_EFFECT_BUBBLE",§6!9§.§5!L§,§<#]§.PARTICLE_GROUP_BACKGROUND_EFFECTS,§6!9§.PARTICLE_TYPE_STATIC_PARTICLE,_loc3_.x,_loc3_.y - _loc3_.radius,400,"",§6!9§.§'s§,0,0,0,0,1,8,true);
         if(_loc2_.length > 0)
         {
            §"#1§.§>!E§(_loc3_.x,_loc3_.y,40,0,40);
         }
         (this.§&!Y§.§1$'§.slingshot as §7#;§).§^#m§(_loc3_.x,_loc3_.y);
      }
      
      private function §`!q§() : void
      {
         var _loc1_:§7#;§ = this.§&!Y§.§1$'§.slingshot as §7#;§;
         _loc1_.setSlingShotState(§6#t§.§5"#§);
      }
      
      private function §?"U§() : void
      {
         §3Z§.playSound("super_slingshot","ChannelPowerups");
         (this.§&!Y§.§1$'§.slingshot as §7#;§).§;#=§();
      }
      
      private function §80§() : void
      {
         this.§2#6§ = true;
         this.§'"o§();
         §3Z§.playSound("laser_sight","ChannelPowerups");
         (this.§&!Y§.§1$'§.slingshot as §7#;§).§^"'§();
      }
      
      private function §%#_§() : void
      {
         var _loc8_:§;!U§ = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:§@!_§ = null;
         var _loc1_:Point = this.§&!Y§.§6!a§();
         _loc1_ = this.§&!Y§.§1$'§.screenToBox2D(_loc1_.x,_loc1_.y);
         this.§>S§ = §3Z§.playSound("Sound_Tnt_Gift_Powerup_Activation","ChannelPowerups");
         var _loc2_:Number = (this.§&!Y§.§1$'§.camera as §6"s§).§=!#§() + §!!W§.§2G§ / 2;
         var _loc3_:Number = (this.§&!Y§.§1$'§.camera as §6"s§).§["N§() + §!!W§.§2G§ / 2;
         var _loc4_:Number = this.§&!Y§.§1$'§.screenToBox2D(0,0).y;
         var _loc5_:Number = (_loc5_ = Number(-20)) < _loc4_ ? Number(_loc5_) : Number(_loc4_);
         var _loc6_:Vector.<§;!U§> = this.§>"!§().§0"t§(3);
         var _loc7_:int = 0;
         while(_loc7_ < 3)
         {
            _loc8_ = _loc6_[_loc7_];
            _loc10_ = _loc5_ - (Math.random() * 30 + _loc7_ * 10);
            if(_loc8_ == null)
            {
               _loc9_ = _loc2_ + (_loc3_ - _loc2_) * Math.random();
            }
            else
            {
               _loc9_ = _loc8_.§=!K§ + (Math.random() * §!!W§.§2G§ - §!!W§.§2G§ / 2);
            }
            _loc11_ = this.§>"!§().§,"r§(_loc9_,_loc10_,0);
            this.§%#!§[_loc7_] = _loc11_;
            _loc7_++;
         }
      }
      
      private function §1#k§() : void
      {
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Boolean = false;
         var _loc2_:Number = (this.§&!Y§.§1$'§.camera as §6"s§).§=!#§() + §!!W§.§2G§ / 2;
         var _loc3_:Number = (this.§&!Y§.§1$'§.camera as §6"s§).§["N§() + §!!W§.§2G§ / 2;
         var _loc4_:Number = this.§&!Y§.§1$'§.screenToBox2D(0,0).y;
         var _loc5_:Number = (_loc5_ = Number(-20)) < _loc4_ ? Number(_loc5_) : Number(_loc4_);
         var _loc6_:Number;
         var _loc7_:Number = (_loc6_ = _loc3_ - _loc2_) / (5 + 1);
         var _loc8_:int = 0;
         while(_loc8_ < 5)
         {
            _loc9_ = _loc2_ + _loc7_ + _loc8_ * _loc7_;
            _loc10_ = _loc5_ - Math.random() * 30;
            _loc11_ = this.§>"!§().§`"=§(_loc9_,_loc10_);
            while(_loc11_)
            {
               _loc10_++;
               _loc11_ = this.§>"!§().§`"=§(_loc9_,_loc10_);
            }
            §7n§.§6#K§.levelObjects.addObject("POWERUP_PUMPKIN",_loc9_,_loc10_,Math.random() * 360,§'!§.ID_NEXT_FREE,false,false,false,1,false,false,(Math.random() - 0.5) * 10,new b2Vec2((Math.random() - 0.5) * 10,0));
            _loc8_++;
         }
      }
      
      private function §>"'§() : void
      {
         var _loc8_:§;!U§ = null;
         this.§&!Y§.§'!H§(Math.round(§5!`§.§?!Q§ * §?##§.§?#;§));
         §3Z§.playSound("earthquake","ChannelPowerups");
         var _loc2_:String = "earthquake" + "_" + §'##§.§`"H§.brandedTournamentAssetId;
         if(§6$A§.§9"w§(_loc2_))
         {
            §3Z§.playSound(_loc2_,"ChannelPowerups");
         }
         this.§?#=§ = 0;
         this.§0#A§ = Math.random() * (Math.PI * 2);
         var _loc3_:int = this.§>"!§().§&P§();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if((_loc8_ = this.§>"!§().getObject(_loc4_) as §;!U§) is §^#x§ || _loc8_ is §>#p§)
            {
               _loc8_.getBody().SetAwake(true);
               if(_loc8_ is §>#p§)
               {
                  _loc8_.scream();
                  _loc8_.§[#w§();
               }
            }
            _loc4_++;
         }
         var _loc5_:Number = §!!W§.§1"C§;
         var _loc6_:Number = §!!W§.§5"L§;
         var _loc7_:Number = §!!W§.§;# §;
         this.§&!Y§.§1$'§.§&"!§(true,_loc5_,_loc6_,_loc7_);
         this.§&!Y§.§1$'§.§9"H§();
      }
      
      private function §2#e§() : void
      {
         var _loc3_:§>#!§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc1_:§6#t§ = this.§&!Y§.§1$'§.slingshot;
         if(_loc1_.mBirds.length > 0 && _loc1_.mNextBirdIndex < _loc1_.mBirds.length)
         {
            _loc3_ = _loc1_.mBirds[_loc1_.mNextBirdIndex];
            _loc4_ = _loc3_.originalX;
            if(_loc3_)
            {
               if((_loc5_ = _loc1_.x - _loc3_.originalX) < 1.5 && _loc5_ > 0)
               {
                  _loc4_ = _loc1_.x - 1.5;
               }
               _loc3_.§1'§();
               this.§&!j§ = (_loc3_ as §&!T§).§1#n§(_loc4_,_loc3_.originalY);
            }
         }
         var _loc2_:§>#!§ = this.§&!Y§.§1$'§.slingshot.addBirdStraightIntoSlingshot("BIRD_CHRISTMAS",_loc1_.x + 0.7,_loc1_.y + 0.1,0);
         §3Z§.playSound("Sound_Santa_Bomb_Bird_Arrival");
         this.§&!Y§.§<"Z§();
      }
      
      private function §'Q§() : void
      {
         this.§&!Y§.§;!-§();
         var _loc1_:§7#;§ = §7n§.§6#K§.slingshot as §7#;§;
         if(_loc1_.§^$ §())
         {
            this.§6"W§();
         }
         _loc1_.setSlingShotState(§6#t§.§5"#§);
      }
      
      private function §""D§() : void
      {
         var _loc4_:§&!T§ = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         this.§&!Y§.§;!-§();
         var _loc1_:§7#;§ = §7n§.§6#K§.slingshot as §7#;§;
         var _loc2_:Boolean = false;
         if(_loc1_.mBirds.length > 0 && _loc1_.mNextBirdIndex < _loc1_.mBirds.length)
         {
            if((_loc4_ = _loc1_.mBirds[_loc1_.mNextBirdIndex] as §&!T§).§+#'§)
            {
               this.§5!F§ = true;
               this.§#!i§();
               _loc2_ = true;
            }
            _loc5_ = _loc4_.originalX;
            _loc6_ = _loc4_.originalY;
            if(_loc4_.name == "BIRD_WINGMAN")
            {
               _loc5_ = _loc1_.§^>§().x;
               _loc6_ = _loc1_.§^>§().y;
            }
            if(_loc4_)
            {
               _loc4_.§1'§();
               this.§&!j§ = _loc4_.§1#n§(_loc5_,_loc6_);
            }
         }
         _loc1_.setSlingShotState(§6#t§.§5"#§);
         var _loc3_:§>#!§ = _loc1_.addBirdStraightIntoSlingshot("POWERUP_BOOMBOX",_loc1_.x + 0.7,_loc1_.y + 0.1,0);
         _loc3_.§&!-§ = false;
         this.§&!Y§.§<"Z§();
         if(_loc2_)
         {
            this.§5!F§ = true;
            this.§6"W§();
         }
         _loc1_.§`$2§(_loc1_.x + 0.7,_loc1_.y + 0.1);
         §3Z§.playSound("tnt_released_01","ChannelPowerups",0,0.5);
      }
      
      private function §>"!§() : §4!o§
      {
         return this.§&!Y§.§1$'§.levelObjects as §4!o§;
      }
      
      public function §@!c§(param1:String) : Boolean
      {
         switch(param1)
         {
            case §+"d§.§1J§.§1#7§:
               this.§5!F§ = true;
               this.§2#j§(this.§6"W§,false);
               break;
            case §+"d§.§[p§.§1#7§:
               this.§2#j§(this.§?"U§,false);
               break;
            case §+"d§.§?"$§.§1#7§:
               this.§2#j§(this.§""D§,false);
               break;
            case §+"d§.§#T§.§1#7§:
               this.§2#j§(this.§80§,false);
               break;
            case §+"d§.§&!w§.§1#7§:
               this.§2#j§(this.§>"'§,true);
               break;
            case §+"d§.§!"§.§1#7§:
               this.§2#j§(this.§%#_§,true);
               break;
            case §+"d§.§true §.§1#7§:
               this.§2#j§(this.§1#k§,true);
               break;
            case §+"d§.§]#_§.§1#7§:
               §7n§.§6#K§.slingshot.setSlingShotState(§7#;§.§%"d§);
               this.§2#j§(this.§'Q§,false);
               break;
            case §+"d§.§,!$§.§1#7§:
               this.§2#j§(this.§]#0§,true);
         }
         this.§["?§(param1);
         this.§<!&§(param1);
         this.§&!Y§.§1$'§.§@!c§(param1);
         § $?§.§`"H§.§@!c§(param1);
         var _loc2_:String = this.mLevelManager.currentLevel;
         var _loc3_:String = this.mLevelManager.getCurrentEpisodeModel().name;
         §0I§.§]F§(param1,_loc2_);
         var _loc4_:int = §7n§.§6#K§.slingshot.§=!q§();
         var _loc5_:int = §7n§.§6#K§.slingshot.§;O§();
         var _loc6_:String = "";
         if(§7n§.§6#K§.slingshot.mBirds.length > 0 && §7n§.§6#K§.slingshot.mBirds[0] as §>#!§)
         {
            _loc6_ = (§7n§.§6#K§.slingshot.mBirds[0] as §>#!§).name;
         }
         return true;
      }
      
      private function §]#0§() : void
      {
         this.§&!Y§.§'!H§(3 * Math.round(§5!`§.§?!Q§ * §?##§.§?#;§));
         (§7n§.§6#K§.levelObjects as §4!o§).§0#H§();
         this.§1!T§ = (§7n§.§6#K§.levelObjects as §4!o§).§>"R§;
      }
      
      public function §<!&§(param1:String) : void
      {
         if(§ $?§.§`"H§.§2"g§(param1) > 0)
         {
            return;
         }
         var _loc2_:Array = (§7n§.§6#K§ as §"#1§).§7"Z§();
         var _loc3_:§!!o§ = new §!!o§();
         _loc3_.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc4_:§?!p§ = new §?!p§(param1,_loc2_,_loc3_);
         if(this.§,$,§ != null)
         {
            this.§8$2§.push(_loc4_);
         }
         else
         {
            this.§<`§(_loc4_);
         }
      }
      
      protected function §<`§(param1:§?!p§) : void
      {
         var _loc2_:String = this.mLevelManager.currentLevel;
         var _loc3_:String = (this.mLevelManager as §;#A§).§`!-§(_loc2_);
         var _loc4_:int;
         if((_loc4_ = §'##§.§`"H§.levelIDs.indexOf(_loc2_)) > -1)
         {
            _loc3_ = String(§'##§.§`"H§.§6!D§(_loc2_));
         }
         var _loc6_:String = !!(_loc5_ = this.mLevelManager.getEpisodeForLevel(_loc2_)) ? _loc5_.name : "unknownEpisode";
         var _loc7_:URLRequest = §;#&§.§ #G§(AngryBirdsBase.SERVER_ROOT + "/useItem");
         var _loc8_:Object = {
            "item":param1.§[!?§,
            "levelId":this.mLevelManager.currentLevel,
            "episode":_loc6_,
            "actualLevel":_loc3_,
            "usedItems":param1.§1"p§
         };
         if(this.mLevelManager.getCurrentEpisodeModel().isTournament)
         {
            _loc8_["tournamentId"] = §'##§.§`"H§.§4"e§();
         }
         _loc7_.contentType = "application/json";
         _loc7_.method = URLRequestMethod.POST;
         _loc7_.data = JSON.stringify(_loc8_);
         this.§,$,§ = param1;
         this.§1!E§(param1.§3"!§);
         param1.§3"!§.load(_loc7_);
      }
      
      protected function §1!E§(param1:URLLoader) : void
      {
         this.§#!q§(param1);
         param1.addEventListener(Event.COMPLETE,this.§-!`§);
         param1.addEventListener(IOErrorEvent.IO_ERROR,this.§>"#§);
         param1.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§>"#§);
         param1.addEventListener(§>5§.§@!@§,this.§>"#§);
      }
      
      protected function §#!q§(param1:URLLoader) : void
      {
         param1.removeEventListener(Event.COMPLETE,this.§-!`§);
         param1.removeEventListener(IOErrorEvent.IO_ERROR,this.§>"#§);
         param1.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§>"#§);
         param1.removeEventListener(§>5§.§@!@§,this.§>"#§);
      }
      
      protected function §-!`§(param1:Event) : void
      {
         var _loc3_:Object = null;
         var _loc2_:§?!p§ = this.§,$,§;
         this.§#!q§(_loc2_.§3"!§);
         this.§,$,§ = null;
         _loc3_ = _loc2_.§3"!§.data;
         if(_loc3_.items)
         {
            § $?§.§`"H§.§ !t§(_loc3_.items);
         }
         if(_loc3_.error)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§@!x§,"Powerup activation unsuccessful. Server returned \'" + _loc3_.error + "\'"));
         }
         this.§+"w§(true);
      }
      
      protected function §>"#§(param1:Event) : void
      {
         var _loc2_:§?!p§ = this.§,$,§;
         this.§#!q§(_loc2_.§3"!§);
         this.§,$,§ = null;
         if(param1.type == §>5§.§@!@§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ $@§));
         }
         else
         {
            this.§+"w§(false);
         }
      }
      
      protected function §+"w§(param1:Boolean) : void
      {
         var _loc2_:§?!p§ = null;
         if(!param1)
         {
            this.§;%§();
         }
         if(this.§8$2§.length > 0)
         {
            _loc2_ = this.§8$2§.shift();
            this.§<`§(_loc2_);
         }
         else
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §;%§() : void
      {
         var _loc1_:WarningPopup = new WarningPopup(§#"l§.§?!b§,§]"Y§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
      
      public function §6#J§(param1:Boolean = true) : Boolean
      {
         if(param1)
         {
            return this.§,$,§ != null || this.§8$2§.length > 0 || this.§]$&§;
         }
         return this.§,$,§ != null || this.§8$2§.length > 0;
      }
      
      public function get §]$&§() : Boolean
      {
         return this.§5!F§ || (§7n§.§6#K§.slingshot as §7#;§).mSlingShotState == §7#;§.§%"d§;
      }
      
      public function dispose() : void
      {
         if(this.§&!Y§)
         {
            this.§&!Y§.mouseEnabled = true;
         }
         this.§1!T§ = 0;
         this.§?#=§ = -1;
         this.§1R§ = -1;
         this.§<"W§ = -1;
         this.§?#p§ = null;
         this.§8"K§ = null;
         this.§="S§ = [];
         if(this.§>S§)
         {
            this.§>S§.stop();
            this.§>S§ = null;
         }
         if(this.§[!x§)
         {
            this.§[!x§.dispose();
            this.§[!x§ = null;
         }
      }
      
      public function §'"R§() : void
      {
         if(this.§&!j§)
         {
            this.§&!j§.§%"#§();
            this.§&!j§ = null;
         }
         if(this.§5#^§)
         {
            this.§5#^§.§%"#§();
            this.§5#^§ = null;
         }
      }
      
      public function §=!x§(param1:String) : Boolean
      {
         return this.§,#0§ && this.§,#0§.indexOf(param1) > -1;
      }
      
      public function §2!+§() : void
      {
         this.§,#0§ = null;
      }
      
      private function §["?§(param1:String) : void
      {
         if(!this.§,#0§)
         {
            this.§,#0§ = new Array();
         }
         this.§,#0§[this.§,#0§.length] = param1;
      }
      
      public function get §>j§() : Boolean
      {
         return this.§1$B§;
      }
      
      public function set §>j§(param1:Boolean) : void
      {
         this.§1$B§ = param1;
      }
      
      public function §'"o§() : void
      {
         var _loc2_:§3$B§ = null;
         if(this.§[!x§)
         {
            this.§[!x§.dispose();
         }
         var _loc1_:String = "LASER_DOT";
         if(this.§2#6§)
         {
            _loc1_ = "LASER_DOT";
         }
         else if(§<U§.§='§() == §0$@§.§9!§.§1#7§)
         {
            _loc1_ = "POWERUP_TREESLING_AIMDOT";
         }
         if(this.§&!Y§)
         {
            _loc2_ = this.§&!Y§.§1$'§.textureManager.getTexture(_loc1_);
            this.§[!x§ = new §4$C§(this.§&!Y§,new Sprite(),_loc2_.texture,0,0);
            §7n§.§6#K§.objects.backgroundSprite.addChild(this.§[!x§.sprite);
         }
      }
      
      public function get §'"d§() : Boolean
      {
         return this.§2#6§;
      }
   }
}
