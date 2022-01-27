package §6"R§
{
   import §1"s§.Sprite;
   import §1x§.b2Body;
   import §1x§.b2World;
   import §3"$§.§[a§;
   import §4"F§.§^d§;
   import §;[§.§ !Z§;
   import §>P§.§&"§;
   import §>P§.§=!,§;
   import §^>§.b2Vec2;
   import com.angrybirds.§;!e§;
   import flash.events.Event;
   
   public class §3#+§ extends § !v§
   {
      
      public static const §^!3§:String = "PinkBird";
      
      public static var mSpecialtyBeamPhase1Time:Number;
      
      public static var mSpecialtyBeamPhase2Time:Number;
       
      
      private var §`!H§:Number;
      
      private var §'"#§:Number;
      
      private var §]z§:Number;
      
      private var §@L§:Number;
      
      private var §4!y§:Number;
      
      private var §0"6§:Number;
      
      private var §6!-§:int = -1;
      
      private var §%!4§:Vector.<§7"T§>;
      
      private var §9#$§:Boolean = false;
      
      private var §7"1§:§ !Z§;
      
      private var §"I§:Vector.<§4!w§>;
      
      private var §@"?§:b2Vec2;
      
      public function §3#+§(param1:Sprite, param2:§[a§, param3:b2World, param4:§&"§, param5:§^d§, param6:Number = 1.0, param7:Boolean = false)
      {
         this.§"I§ = new Vector.<§4!w§>();
         super(param1,param2,param3,param4,param5,param6,param7);
         this.§%!4§ = new Vector.<§7"T§>();
         this.§`!H§ = param4.getNumberProperty("specialtySpaceGravityMultiplier");
         this.§'"#§ = param4.getNumberProperty("specialtyMaximumVelocity");
         this.§]z§ = param4.getNumberProperty("specialtyClassicGravityMultiplier");
         this.§@L§ = param4.getNumberProperty("specialtyDuration") * 1000;
         this.§4!y§ = param4.getNumberProperty("specialtyStartImpulse");
         this.§0"6§ = param4.getNumberProperty("specialtyRadius");
         mSpecialtyBeamPhase1Time = param4.getNumberProperty("specialtyBeamPhase1Time") * 1000;
         mSpecialtyBeamPhase2Time = param4.getNumberProperty("specialtyBeamPhase2Time") * 1000;
      }
      
      private static function §+#0§(param1:b2Body) : Boolean
      {
         if(param1.GetUserData() is §]"-§ || param1.GetUserData() is §6M§ || param1.GetUserData() is §3#+§)
         {
            return true;
         }
         return false;
      }
      
      private static function §8"S§(param1:§4!w§) : Boolean
      {
         var _loc2_:§=!,§ = param1.levelItem;
         if(_loc2_ && !(param1 is §-t§) && !param1.§8!3§() && param1.§?"Z§().GetMass() > 0)
         {
            return true;
         }
         return false;
      }
      
      override public function update(param1:Number, param2:§""M§) : void
      {
         super.update(param1,param2);
         if(§`!8§)
         {
            this.§6!-§ += param1;
            if(this.§9#$§)
            {
               if(this.§6!-§ > this.§@L§)
               {
                  this.§9#$§ = false;
               }
               this.§^2§();
            }
            else
            {
               this.§3!z§();
            }
         }
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         if(§`!8§ && this.§9#$§)
         {
            this.§'#5§(param1);
         }
      }
      
      override protected function specialPower(param1:§""M§, param2:Number = 0, param3:Number = 0) : void
      {
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Vector.<§4!w§> = null;
         var _loc18_:§4!w§ = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super.specialPower(param1,param2,param3);
         this.§@"?§ = new b2Vec2(param2,param3);
         this.§9#$§ = true;
         var _loc4_:§,"z§ = §,"z§(§;!e§.§<x§.levelObjects);
         var _loc5_:Number = param2 - §?"Z§().GetPosition().x;
         var _loc6_:Number = param3 - §?"Z§().GetPosition().y;
         var _loc7_:Number = Math.atan2(_loc6_,_loc5_);
         var _loc8_:Number = Math.abs(§;!e§.§<x§.§;#!§.§^!u§ - §;!e§.§<x§.§;#!§.§-A§);
         var _loc9_:Number = Math.abs(§;!e§.§<x§.§;#!§.§8!2§ - §;!e§.§<x§.§;#!§.§-b§);
         var _loc10_:b2Vec2;
         var _loc11_:Number = (_loc10_ = new b2Vec2(_loc8_,_loc9_)).Length();
         var _loc12_:Number = §?"Z§().GetPosition().x + Math.cos(_loc7_) * _loc11_;
         var _loc13_:Number = §?"Z§().GetPosition().y + Math.sin(_loc7_) * _loc11_;
         this.§7"1§ = new § !Z§(§?"Z§().GetPosition().x,§?"Z§().GetPosition().y,_loc12_,_loc13_);
         this.§7"1§.§+d§();
         if(this.§7"1§.§]"]§() && §+#0§(this.§7"1§.§59§[0].body))
         {
            this.§7"1§.§59§ = this.§7"1§.§59§.slice(1,this.§7"1§.§59§.length);
         }
         if(this.§7"1§.§]"]§())
         {
            _loc15_ = this.§7"1§.§59§[0].collisionPoint.x;
            _loc16_ = this.§7"1§.§59§[0].collisionPoint.y;
            _loc17_ = _loc4_.§9"%§(this.§7"1§.§59§[0].collisionPoint.x,this.§7"1§.§59§[0].collisionPoint.y,-this.§0"6§,this.§0"6§,-this.§0"6§,this.§0"6§);
            for each(_loc18_ in _loc17_)
            {
               if(§8"S§(_loc18_))
               {
                  _loc19_ = 0;
                  _loc20_ = 0;
                  if(levelItem.getItemHeight() > 0 && levelItem.getItemWidth() > 0)
                  {
                     _loc19_ = levelItem.getItemWidth();
                     _loc20_ = levelItem.getItemHeight();
                  }
                  this.§"I§.push(_loc18_);
               }
            }
         }
         this.§]"B§();
         this.§,![§();
         var _loc14_:§4"d§;
         if(_loc14_ = param1 as §4"d§)
         {
            _loc14_.§8#3§(100,1200,400,0.3);
            param1.addObject(reticleSprite,param2,param3,0,§super§.§4"D§,false,false,false,1,true);
         }
      }
      
      public function get specialtyBeamPhase1Time() : int
      {
         return mSpecialtyBeamPhase1Time;
      }
      
      public function get specialtyBeamPhase2Time() : int
      {
         return mSpecialtyBeamPhase2Time;
      }
      
      private function §]"B§() : void
      {
         var _loc2_:§4!w§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:b2Vec2 = null;
         var _loc7_:b2Vec2 = null;
         var _loc1_:§,"z§ = §,"z§(§;!e§.§<x§.levelObjects);
         for each(_loc2_ in this.§"I§)
         {
            _loc2_.§+s§ = GravityFilterCategory.LEIA_FORCE_OBJECT;
            _loc2_.§"d§ = -this.§`!H§;
            _loc1_.§]o§(_loc2_,"PINK",2500);
            _loc3_ = Math.atan2(_loc2_.§?"Z§().GetPosition().y - §?"Z§().GetPosition().y,_loc2_.§?"Z§().GetPosition().x - §?"Z§().GetPosition().x);
            _loc4_ = this.§4!y§ * Math.cos(_loc3_);
            _loc5_ = this.§4!y§ * Math.sin(_loc3_);
            _loc6_ = new b2Vec2(_loc4_ * _loc2_.§?"Z§().GetMass(),_loc5_ * _loc2_.§?"Z§().GetMass());
            _loc7_ = new b2Vec2(_loc2_.§#"v§(),_loc2_.§2!;§());
            _loc2_.§?"Z§().ApplyImpulse(_loc6_,_loc7_);
            _loc1_.§<>§(Math.abs(this.§4!y§),_loc2_.§?"Z§());
         }
      }
      
      private function §^2§() : void
      {
         var _loc1_:§4!w§ = null;
         if(this.§"I§)
         {
            for each(_loc1_ in this.§"I§)
            {
               if(_loc1_)
               {
                  if(_loc1_.§?"Z§())
                  {
                     if(!this.§9#$§)
                     {
                        _loc1_.§+s§ = GravityFilterCategory.DEFAULT;
                     }
                     else if(_loc1_.§?"Z§().GetLinearVelocity().Length() >= this.§'"#§)
                     {
                        _loc1_.§+s§ = GravityFilterCategory.DEFAULT;
                     }
                     else if(_loc1_.§+s§ != GravityFilterCategory.LEIA_FORCE_DISABLED_OBJECT)
                     {
                        _loc1_.§+s§ = GravityFilterCategory.LEIA_FORCE_OBJECT;
                     }
                  }
               }
            }
         }
      }
      
      private function §,![§() : void
      {
         var _loc1_:§7"T§ = null;
         if(this.§"I§ && this.§"I§.length > 0)
         {
            _loc1_ = new §7"T§(this,this.§"I§[0],§7"T§.§7"B§);
         }
         else
         {
            _loc1_ = new §7"T§(this,null,§7"T§.§7"B§,this.§@"?§);
         }
         _loc1_.addEventListener(§7"T§.§0!E§,this.§#"j§);
         this.§%!4§.push(_loc1_);
      }
      
      private function §#"j§(param1:Event) : void
      {
         this.§%!4§[0].removeEventListener(§7"T§.§0!E§,this.§#"j§);
         this.§]!S§();
      }
      
      private function §]!S§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:§7"T§ = null;
         if(this.§"I§ && this.§"I§.length > 1)
         {
            _loc1_ = 1;
            while(_loc1_ < this.§"I§.length)
            {
               _loc2_ = new §7"T§(this,this.§"I§[_loc1_],§7"T§.§3"K§);
               this.§%!4§.push(_loc2_);
               _loc1_++;
            }
         }
         else if(!this.§"I§ || this.§"I§.length == 0)
         {
            this.§9#$§ = false;
         }
      }
      
      private function §'#5§(param1:Number) : void
      {
         var _loc2_:§7"T§ = null;
         if(this.§%!4§)
         {
            for each(_loc2_ in this.§%!4§)
            {
               _loc2_.update(param1);
            }
         }
      }
      
      private function §3!z§() : void
      {
         var _loc1_:§7"T§ = null;
         if(this.§%!4§)
         {
            for each(_loc1_ in this.§%!4§)
            {
               _loc1_.dispose();
            }
            this.§%!4§ = null;
         }
      }
      
      override protected function get hasTargetedSpecialPowerParticles() : Boolean
      {
         return true;
      }
   }
}
