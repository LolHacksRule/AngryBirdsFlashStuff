package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2Body;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §2"Y§.§=+§;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   import §[""§.§]"4§;
   import §[R§.b2Vec2;
   import com.angrybirds.§,!q§;
   import flash.events.Event;
   
   public class §8!?§ extends §9"k§
   {
      
      public static const §+"§:String = "PinkBird";
      
      public static var mSpecialtyBeamPhase1Time:Number;
      
      public static var mSpecialtyBeamPhase2Time:Number;
       
      
      private var §3#0§:Number;
      
      private var §4!q§:Number;
      
      private var §?!E§:Number;
      
      private var §+!;§:Number;
      
      private var §6!j§:Number;
      
      private var §,#§:Number;
      
      private var §-"4§:int = -1;
      
      private var §!!z§:Vector.<§2"L§>;
      
      private var §2!K§:Boolean = false;
      
      private var §3#6§:§]"4§;
      
      private var §&!j§:Vector.<§&#=§>;
      
      private var §="m§:b2Vec2;
      
      public function §8!?§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§=+§, param5:§94§, param6:Number = 1.0, param7:Boolean = false)
      {
         this.§&!j§ = new Vector.<§&#=§>();
         super(param1,param2,param3,param4,param5,param6,param7);
         this.§!!z§ = new Vector.<§2"L§>();
         this.§3#0§ = param4.getNumberProperty("specialtySpaceGravityMultiplier");
         this.§4!q§ = param4.getNumberProperty("specialtyMaximumVelocity");
         this.§?!E§ = param4.getNumberProperty("specialtyClassicGravityMultiplier");
         this.§+!;§ = param4.getNumberProperty("specialtyDuration") * 1000;
         this.§6!j§ = param4.getNumberProperty("specialtyStartImpulse");
         this.§,#§ = param4.getNumberProperty("specialtyRadius");
         mSpecialtyBeamPhase1Time = param4.getNumberProperty("specialtyBeamPhase1Time") * 1000;
         mSpecialtyBeamPhase2Time = param4.getNumberProperty("specialtyBeamPhase2Time") * 1000;
      }
      
      private static function §?!k§(param1:b2Body) : Boolean
      {
         if(param1.GetUserData() is §3C§ || param1.GetUserData() is §=T§ || param1.GetUserData() is §8!?§)
         {
            return true;
         }
         return false;
      }
      
      private static function § "L§(param1:§&#=§) : Boolean
      {
         var _loc2_:§"t§ = param1.levelItem;
         if(_loc2_ && !(param1 is §1#E§) && !param1.§[#L§() && param1.§3!t§().GetMass() > 0)
         {
            return true;
         }
         return false;
      }
      
      override public function update(param1:Number, param2:§;$§) : void
      {
         super.update(param1,param2);
         if(§[!o§)
         {
            this.§-"4§ += param1;
            if(this.§2!K§)
            {
               if(this.§-"4§ > this.§+!;§)
               {
                  this.§2!K§ = false;
               }
               this.§;#>§();
            }
            else
            {
               this.§"#;§();
            }
         }
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         if(§[!o§ && this.§2!K§)
         {
            this.§4V§(param1);
         }
      }
      
      override protected function specialPower(param1:§;$§, param2:Number = 0, param3:Number = 0) : void
      {
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Vector.<§&#=§> = null;
         var _loc18_:§&#=§ = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super.specialPower(param1,param2,param3);
         this.§="m§ = new b2Vec2(param2,param3);
         this.§2!K§ = true;
         var _loc4_:§^!K§ = §^!K§(§,!q§.§9!,§.levelObjects);
         var _loc5_:Number = param2 - §3!t§().GetPosition().x;
         var _loc6_:Number = param3 - §3!t§().GetPosition().y;
         var _loc7_:Number = Math.atan2(_loc6_,_loc5_);
         var _loc8_:Number = Math.abs(§,!q§.§9!,§.§""?§.§="q§ - §,!q§.§9!,§.§""?§.§!M§);
         var _loc9_:Number = Math.abs(§,!q§.§9!,§.§""?§.§9!p§ - §,!q§.§9!,§.§""?§.§""p§);
         var _loc10_:b2Vec2;
         var _loc11_:Number = (_loc10_ = new b2Vec2(_loc8_,_loc9_)).Length();
         var _loc12_:Number = §3!t§().GetPosition().x + Math.cos(_loc7_) * _loc11_;
         var _loc13_:Number = §3!t§().GetPosition().y + Math.sin(_loc7_) * _loc11_;
         this.§3#6§ = new §]"4§(§3!t§().GetPosition().x,§3!t§().GetPosition().y,_loc12_,_loc13_);
         this.§3#6§.§6n§();
         if(this.§3#6§.§-!I§() && §?!k§(this.§3#6§.§;"b§[0].body))
         {
            this.§3#6§.§;"b§ = this.§3#6§.§;"b§.slice(1,this.§3#6§.§;"b§.length);
         }
         if(this.§3#6§.§-!I§())
         {
            _loc15_ = this.§3#6§.§;"b§[0].collisionPoint.x;
            _loc16_ = this.§3#6§.§;"b§[0].collisionPoint.y;
            _loc17_ = _loc4_.§-!f§(this.§3#6§.§;"b§[0].collisionPoint.x,this.§3#6§.§;"b§[0].collisionPoint.y,-this.§,#§,this.§,#§,-this.§,#§,this.§,#§);
            for each(_loc18_ in _loc17_)
            {
               if(§ "L§(_loc18_))
               {
                  _loc19_ = 0;
                  _loc20_ = 0;
                  if(levelItem.getItemHeight() > 0 && levelItem.getItemWidth() > 0)
                  {
                     _loc19_ = levelItem.getItemWidth();
                     _loc20_ = levelItem.getItemHeight();
                  }
                  this.§&!j§.push(_loc18_);
               }
            }
         }
         this.§ !G§();
         this.§8V§();
         var _loc14_:§ [§;
         if(_loc14_ = param1 as § [§)
         {
            _loc14_.§&Q§(100,1200,400,0.3);
            param1.addObject(reticleSprite,param2,param3,0,§;=§.§""3§,false,false,false,1,true);
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
      
      private function § !G§() : void
      {
         var _loc2_:§&#=§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:b2Vec2 = null;
         var _loc7_:b2Vec2 = null;
         var _loc1_:§^!K§ = §^!K§(§,!q§.§9!,§.levelObjects);
         for each(_loc2_ in this.§&!j§)
         {
            _loc2_.§=G§ = GravityFilterCategory.LEIA_FORCE_OBJECT;
            _loc2_.§=5§ = -this.§3#0§;
            _loc1_.§ a§(_loc2_,"PINK",2500);
            _loc3_ = Math.atan2(_loc2_.§3!t§().GetPosition().y - §3!t§().GetPosition().y,_loc2_.§3!t§().GetPosition().x - §3!t§().GetPosition().x);
            _loc4_ = this.§6!j§ * Math.cos(_loc3_);
            _loc5_ = this.§6!j§ * Math.sin(_loc3_);
            _loc6_ = new b2Vec2(_loc4_ * _loc2_.§3!t§().GetMass(),_loc5_ * _loc2_.§3!t§().GetMass());
            _loc7_ = new b2Vec2(_loc2_.§'"8§(),_loc2_.§;">§());
            _loc2_.§3!t§().ApplyImpulse(_loc6_,_loc7_);
            _loc1_.§`2§(Math.abs(this.§6!j§),_loc2_.§3!t§());
         }
      }
      
      private function §;#>§() : void
      {
         var _loc1_:§&#=§ = null;
         if(this.§&!j§)
         {
            for each(_loc1_ in this.§&!j§)
            {
               if(_loc1_)
               {
                  if(_loc1_.§3!t§())
                  {
                     if(!this.§2!K§)
                     {
                        _loc1_.§=G§ = GravityFilterCategory.DEFAULT;
                     }
                     else if(_loc1_.§3!t§().GetLinearVelocity().Length() >= this.§4!q§)
                     {
                        _loc1_.§=G§ = GravityFilterCategory.DEFAULT;
                     }
                     else if(_loc1_.§=G§ != GravityFilterCategory.LEIA_FORCE_DISABLED_OBJECT)
                     {
                        _loc1_.§=G§ = GravityFilterCategory.LEIA_FORCE_OBJECT;
                     }
                  }
               }
            }
         }
      }
      
      private function §8V§() : void
      {
         var _loc1_:§2"L§ = null;
         if(this.§&!j§ && this.§&!j§.length > 0)
         {
            _loc1_ = new §2"L§(this,this.§&!j§[0],§2"L§.§#!P§);
         }
         else
         {
            _loc1_ = new §2"L§(this,null,§2"L§.§#!P§,this.§="m§);
         }
         _loc1_.addEventListener(§2"L§.§%m§,this.§?"&§);
         this.§!!z§.push(_loc1_);
      }
      
      private function §?"&§(param1:Event) : void
      {
         this.§!!z§[0].removeEventListener(§2"L§.§%m§,this.§?"&§);
         this.§!"H§();
      }
      
      private function §!"H§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:§2"L§ = null;
         if(this.§&!j§ && this.§&!j§.length > 1)
         {
            _loc1_ = 1;
            while(_loc1_ < this.§&!j§.length)
            {
               _loc2_ = new §2"L§(this,this.§&!j§[_loc1_],§2"L§.§6o§);
               this.§!!z§.push(_loc2_);
               _loc1_++;
            }
         }
         else if(!this.§&!j§ || this.§&!j§.length == 0)
         {
            this.§2!K§ = false;
         }
      }
      
      private function §4V§(param1:Number) : void
      {
         var _loc2_:§2"L§ = null;
         if(this.§!!z§)
         {
            for each(_loc2_ in this.§!!z§)
            {
               _loc2_.update(param1);
            }
         }
      }
      
      private function §"#;§() : void
      {
         var _loc1_:§2"L§ = null;
         if(this.§!!z§)
         {
            for each(_loc1_ in this.§!!z§)
            {
               _loc1_.dispose();
            }
            this.§!!z§ = null;
         }
      }
      
      override protected function get hasTargetedSpecialPowerParticles() : Boolean
      {
         return true;
      }
   }
}
