package §!r§
{
   import §!!k§.§1!^§;
   import §#g§.§11§;
   import §#g§.§["%§;
   import §7"A§.b2Vec2;
   import §;"E§.§2"5§;
   import §=G§.§9v§;
   import §>"_§.b2Body;
   import §>"_§.b2World;
   import com.angrybirds.§<!J§;
   import flash.events.Event;
   import §use§.Sprite;
   
   public class §@]§ extends §2!a§
   {
      
      public static const §5!L§:String = "PinkBird";
      
      public static var mSpecialtyBeamPhase1Time:Number;
      
      public static var mSpecialtyBeamPhase2Time:Number;
       
      
      private var §[z§:Number;
      
      private var §4!9§:Number;
      
      private var §^"i§:Number;
      
      private var §-"U§:Number;
      
      private var §`#!§:Number;
      
      private var §7"h§:Number;
      
      private var §#!x§:int = -1;
      
      private var §-P§:Vector.<§=C§>;
      
      private var §@!V§:Boolean = false;
      
      private var §7k§:§2"5§;
      
      private var §<#1§:Vector.<§0N§>;
      
      private var §0!U§:b2Vec2;
      
      public function §@]§(param1:Sprite, param2:§1!^§, param3:b2World, param4:§11§, param5:§9v§, param6:Number = 1.0, param7:Boolean = false)
      {
         this.§<#1§ = new Vector.<§0N§>();
         super(param1,param2,param3,param4,param5,param6,param7);
         this.§-P§ = new Vector.<§=C§>();
         this.§[z§ = param4.getNumberProperty("specialtySpaceGravityMultiplier");
         this.§4!9§ = param4.getNumberProperty("specialtyMaximumVelocity");
         this.§^"i§ = param4.getNumberProperty("specialtyClassicGravityMultiplier");
         this.§-"U§ = param4.getNumberProperty("specialtyDuration") * 1000;
         this.§`#!§ = param4.getNumberProperty("specialtyStartImpulse");
         this.§7"h§ = param4.getNumberProperty("specialtyRadius");
         mSpecialtyBeamPhase1Time = param4.getNumberProperty("specialtyBeamPhase1Time") * 1000;
         mSpecialtyBeamPhase2Time = param4.getNumberProperty("specialtyBeamPhase2Time") * 1000;
      }
      
      private static function §6h§(param1:b2Body) : Boolean
      {
         if(param1.GetUserData() is §<#&§ || param1.GetUserData() is § ""§ || param1.GetUserData() is §@]§)
         {
            return true;
         }
         return false;
      }
      
      private static function §[Y§(param1:§0N§) : Boolean
      {
         var _loc2_:§["%§ = param1.levelItem;
         if(_loc2_ && !(param1 is §03§) && !param1.§0E§() && param1.§3"s§().GetMass() > 0)
         {
            return true;
         }
         return false;
      }
      
      override public function update(param1:Number, param2:§'=§) : void
      {
         super.update(param1,param2);
         if(§63§)
         {
            this.§#!x§ += param1;
            if(this.§@!V§)
            {
               if(this.§#!x§ > this.§-"U§)
               {
                  this.§@!V§ = false;
               }
               this.§7"i§();
            }
            else
            {
               this.§=!O§();
            }
         }
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         if(§63§ && this.§@!V§)
         {
            this.§'-§(param1);
         }
      }
      
      override protected function specialPower(param1:§'=§, param2:Number = 0, param3:Number = 0) : void
      {
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Vector.<§0N§> = null;
         var _loc18_:§0N§ = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super.specialPower(param1,param2,param3);
         this.§0!U§ = new b2Vec2(param2,param3);
         this.§@!V§ = true;
         var _loc4_:§%2§ = §%2§(§<!J§.§=!%§.levelObjects);
         var _loc5_:Number = param2 - §3"s§().GetPosition().x;
         var _loc6_:Number = param3 - §3"s§().GetPosition().y;
         var _loc7_:Number = Math.atan2(_loc6_,_loc5_);
         var _loc8_:Number = Math.abs(§<!J§.§=!%§.§""P§.§&"g§ - §<!J§.§=!%§.§""P§.§ !<§);
         var _loc9_:Number = Math.abs(§<!J§.§=!%§.§""P§.§`!T§ - §<!J§.§=!%§.§""P§.§70§);
         var _loc10_:b2Vec2;
         var _loc11_:Number = (_loc10_ = new b2Vec2(_loc8_,_loc9_)).Length();
         var _loc12_:Number = §3"s§().GetPosition().x + Math.cos(_loc7_) * _loc11_;
         var _loc13_:Number = §3"s§().GetPosition().y + Math.sin(_loc7_) * _loc11_;
         this.§7k§ = new §2"5§(§3"s§().GetPosition().x,§3"s§().GetPosition().y,_loc12_,_loc13_);
         this.§7k§.§!!P§();
         if(this.§7k§.§]!V§() && §6h§(this.§7k§.§9"E§[0].body))
         {
            this.§7k§.§9"E§ = this.§7k§.§9"E§.slice(1,this.§7k§.§9"E§.length);
         }
         if(this.§7k§.§]!V§())
         {
            _loc15_ = this.§7k§.§9"E§[0].collisionPoint.x;
            _loc16_ = this.§7k§.§9"E§[0].collisionPoint.y;
            _loc17_ = _loc4_.§@"t§(this.§7k§.§9"E§[0].collisionPoint.x,this.§7k§.§9"E§[0].collisionPoint.y,-this.§7"h§,this.§7"h§,-this.§7"h§,this.§7"h§);
            for each(_loc18_ in _loc17_)
            {
               if(§[Y§(_loc18_))
               {
                  _loc19_ = 0;
                  _loc20_ = 0;
                  if(levelItem.getItemHeight() > 0 && levelItem.getItemWidth() > 0)
                  {
                     _loc19_ = levelItem.getItemWidth();
                     _loc20_ = levelItem.getItemHeight();
                  }
                  this.§<#1§.push(_loc18_);
               }
            }
         }
         this.§0!-§();
         this.§6"I§();
         var _loc14_:§;"9§;
         if(_loc14_ = param1 as §;"9§)
         {
            _loc14_.§["a§(100,1200,400,0.3);
            param1.addObject(reticleSprite,param2,param3,0,§9"f§.§["_§,false,false,false,1,true);
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
      
      private function §0!-§() : void
      {
         var _loc2_:§0N§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:b2Vec2 = null;
         var _loc7_:b2Vec2 = null;
         var _loc1_:§%2§ = §%2§(§<!J§.§=!%§.levelObjects);
         for each(_loc2_ in this.§<#1§)
         {
            _loc2_.§1!E§ = GravityFilterCategory.LEIA_FORCE_OBJECT;
            _loc2_.§7#,§ = -this.§[z§;
            _loc1_.§'"X§(_loc2_,"PINK",2500);
            _loc3_ = Math.atan2(_loc2_.§3"s§().GetPosition().y - §3"s§().GetPosition().y,_loc2_.§3"s§().GetPosition().x - §3"s§().GetPosition().x);
            _loc4_ = this.§`#!§ * Math.cos(_loc3_);
            _loc5_ = this.§`#!§ * Math.sin(_loc3_);
            _loc6_ = new b2Vec2(_loc4_ * _loc2_.§3"s§().GetMass(),_loc5_ * _loc2_.§3"s§().GetMass());
            _loc7_ = new b2Vec2(_loc2_.§"!r§(),_loc2_.§8#1§());
            _loc2_.§3"s§().ApplyImpulse(_loc6_,_loc7_);
            _loc1_.§^,§(Math.abs(this.§`#!§),_loc2_.§3"s§());
         }
      }
      
      private function §7"i§() : void
      {
         var _loc1_:§0N§ = null;
         if(this.§<#1§)
         {
            for each(_loc1_ in this.§<#1§)
            {
               if(_loc1_)
               {
                  if(_loc1_.§3"s§())
                  {
                     if(!this.§@!V§)
                     {
                        _loc1_.§1!E§ = GravityFilterCategory.DEFAULT;
                     }
                     else if(_loc1_.§3"s§().GetLinearVelocity().Length() >= this.§4!9§)
                     {
                        _loc1_.§1!E§ = GravityFilterCategory.DEFAULT;
                     }
                     else if(_loc1_.§1!E§ != GravityFilterCategory.LEIA_FORCE_DISABLED_OBJECT)
                     {
                        _loc1_.§1!E§ = GravityFilterCategory.LEIA_FORCE_OBJECT;
                     }
                  }
               }
            }
         }
      }
      
      private function §6"I§() : void
      {
         var _loc1_:§=C§ = null;
         if(this.§<#1§ && this.§<#1§.length > 0)
         {
            _loc1_ = new §=C§(this,this.§<#1§[0],§=C§.§@"w§);
         }
         else
         {
            _loc1_ = new §=C§(this,null,§=C§.§@"w§,this.§0!U§);
         }
         _loc1_.addEventListener(§=C§.§&!,§,this.§?Y§);
         this.§-P§.push(_loc1_);
      }
      
      private function §?Y§(param1:Event) : void
      {
         this.§-P§[0].removeEventListener(§=C§.§&!,§,this.§?Y§);
         this.§1!m§();
      }
      
      private function §1!m§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:§=C§ = null;
         if(this.§<#1§ && this.§<#1§.length > 1)
         {
            _loc1_ = 1;
            while(_loc1_ < this.§<#1§.length)
            {
               _loc2_ = new §=C§(this,this.§<#1§[_loc1_],§=C§.§-"]§);
               this.§-P§.push(_loc2_);
               _loc1_++;
            }
         }
         else if(!this.§<#1§ || this.§<#1§.length == 0)
         {
            this.§@!V§ = false;
         }
      }
      
      private function §'-§(param1:Number) : void
      {
         var _loc2_:§=C§ = null;
         if(this.§-P§)
         {
            for each(_loc2_ in this.§-P§)
            {
               _loc2_.update(param1);
            }
         }
      }
      
      private function §=!O§() : void
      {
         var _loc1_:§=C§ = null;
         if(this.§-P§)
         {
            for each(_loc1_ in this.§-P§)
            {
               _loc1_.dispose();
            }
            this.§-P§ = null;
         }
      }
      
      override protected function get hasTargetedSpecialPowerParticles() : Boolean
      {
         return true;
      }
   }
}
