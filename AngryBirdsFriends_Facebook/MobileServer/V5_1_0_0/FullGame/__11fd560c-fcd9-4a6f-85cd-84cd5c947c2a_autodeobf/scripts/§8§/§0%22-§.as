package §8§#8
{
   import §!'§.§@>§;
   import §!'§.§[p§;
   import §4"O§.b2World;
   import §8"L§.§6!0§;
   import §8"L§.§9"T§;
   import §8"L§.§]$$§;
   import §>M§.§["z§;
   import §^"S§.Sprite;
   import §`"8§.§0$2§;
   import flash.geom.Point;
   
   public class §0"-§ extends §?F§
   {
      
      public static const §1$§:String = "timer";
       
      
      protected var §0#z§:Boolean = false;
      
      protected var § !F§:§]$$§;
      
      protected var §0$1§:Number = 0;
      
      protected var §1u§:Boolean = false;
      
      protected var §3$%§:Point;
      
      protected var §""b§:int;
      
      private var §!!f§:Boolean;
      
      private var §<"X§:Boolean;
      
      public function §0"-§(param1:Sprite, param2:§0$2§, param3:b2World, param4:§9"T§, param5:§["z§, param6:Number = 1.0, param7:Boolean = true)
      {
         this.§ !F§ = param4 as §]$$§;
         this.§!!f§ = Math.random() > 0.5 ? true : false;
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override protected function playCollisionSound() : void
      {
         var _loc1_:String = this.§ !F§.§-!w§(§6!0§.§%>§);
         this.§ !F§.§0#R§(_loc1_);
      }
      
      override public function scream() : void
      {
         super.scream();
         var _loc1_:String = this.§ !F§.§-!w§(§6!0§.§""2§);
         this.§ !F§.§0#R§(_loc1_);
      }
      
      override protected function addTrail(param1:§&#V§) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(!isLeavingTrail)
         {
            return false;
         }
         if(param1)
         {
            if(!this.§<"X§)
            {
               _loc2_ = getBody().GetPosition().x;
               _loc3_ = getBody().GetPosition().y;
               param1.addParticle(this.§ !F§.normalTrailSprite,§[p§.§7"+§,§@>§.§3!E§,_loc2_,_loc3_,-1,"",§@>§.§%#5§);
            }
            this.§<"X§ = !this.§<"X§;
         }
         return true;
      }
      
      override public function enteredSensor(param1:§7!0§) : void
      {
         super.enteredSensor(param1);
         if(param1 is §&$B§)
         {
            ++this.§""b§;
            if(this.§""b§ == 1)
            {
               this.§1u§ = true;
               this.§ !F§.§0#R§(§6!0§.§1[§);
            }
            this.§3$%§ = new Point(getBody().GetPosition().x,getBody().GetPosition().y);
         }
      }
      
      override public function leftSensor(param1:§7!0§) : void
      {
         super.leftSensor(param1);
         if(param1 is §&$B§)
         {
            --this.§""b§;
            if(this.§""b§ == 0 && !param1.§8#@§)
            {
               this.§ !F§.§0#R§(§6!0§.§&#I§);
            }
         }
      }
      
      protected function get §3"u§() : Boolean
      {
         return false;
      }
      
      override public function activateSpecialPower(param1:§&#V§, param2:Number, param3:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:String = null;
         var _loc4_:Boolean;
         if(_loc4_ = super.activateSpecialPower(param1,param2,param3))
         {
            _loc5_ = 0;
            if(this.§3"u§)
            {
               _loc5_ = this.§'#t§(param2,param3);
            }
            this.§'p§(param1,_loc5_);
            _loc6_ = this.§ !F§.§-!w§(§6!0§.SPECIAL);
            this.§ !F§.§0#R§(_loc6_);
         }
         return _loc4_;
      }
      
      protected function §'p§(param1:§&#V§, param2:Number = 0.0) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         if(this.§ !F§.§;##§ > 0)
         {
            _loc3_ = getBody().GetPosition().x;
            _loc4_ = getBody().GetPosition().y;
            _loc5_ = 0;
            while(_loc5_ < this.§ !F§.§;##§)
            {
               _loc6_ = this.§ !F§.§;Z§(_loc5_);
               param1.addObject(_loc6_,_loc3_,_loc4_,param2,§!#L§.ID_NEXT_FREE,false,true,false);
               _loc5_++;
            }
         }
      }
      
      override protected function addDestructionParticles(param1:§&#V§) : void
      {
         var _loc5_:String = null;
         if(!param1)
         {
            return;
         }
         var _loc2_:Number = getBody().GetPosition().x;
         var _loc3_:Number = getBody().GetPosition().y;
         var _loc4_:int = 0;
         while(_loc4_ < this.§ !F§.§<#&§)
         {
            if(_loc5_ = this.§ !F§.§7#x§(_loc4_))
            {
               param1.addObject(_loc5_,_loc2_,_loc3_,0,§!#L§.ID_NEXT_FREE,false,true,false,1,true);
            }
            _loc4_++;
         }
      }
      
      override public function applyDamage(param1:Number, param2:§&#V§, param3:§4!y§, param4:Boolean = true) : Number
      {
         var _loc5_:Number = super.applyDamage(param1,param2,param3,param4);
         if(param1 >= 5)
         {
            this.addDamageParticles(param2,param1);
         }
         return _loc5_;
      }
      
      override public function addDamageParticles(param1:§&#V§, param2:int) : void
      {
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc3_:Number = getBody().GetPosition().x;
         var _loc4_:Number = getBody().GetPosition().y;
         if(this.§ !F§.§"#H§ > 0)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§ !F§.§<#&§)
            {
               if(_loc6_ = this.§ !F§.§58§(_loc5_))
               {
                  param1.addObject(_loc6_,_loc3_,_loc4_,0,§!#L§.ID_NEXT_FREE,false,true,false,1,true);
               }
               _loc5_++;
            }
         }
         else
         {
            _loc5_ = 0;
            while(_loc5_ < this.§ !F§.§<#&§)
            {
               if(_loc7_ = this.§ !F§.§7#x§(_loc5_))
               {
                  param1.addObject(_loc7_,_loc3_,_loc4_,0,§!#L§.ID_NEXT_FREE,false,true,false);
               }
               _loc5_++;
            }
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.§0#z§;
      }
      
      override public function update(param1:Number, param2:§&#V§) : void
      {
         if(this.§!!f§ && param2)
         {
            param2.addObject(this.§ !F§.enterGravitationParticles,this.getBody().GetPosition().x,this.getBody().GetPosition().y,0,§!#L§.ID_NEXT_FREE,false,true,false);
            this.§!!f§ = false;
         }
         if(isReadyToBeRemoved(param1))
         {
            this.§0#z§ = true;
         }
         super.update(param1,param2);
         this.§0$1§ += param1;
         if(isFlying)
         {
            if(this.§0$1§ > 1000 / 60)
            {
               this.§0$1§ = 0;
               this.§>"g§(param2);
            }
         }
         if(this.§1u§)
         {
            this.§1u§ = false;
            if(param2)
            {
               param2.addObject(this.§ !F§.enterGravitationParticles,this.§3$%§.x,this.§3$%§.y,0,§!#L§.ID_NEXT_FREE,false,true,false);
            }
         }
      }
      
      private function §>"g§(param1:§&#V§) : void
      {
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param1 && this.§ !F§)
         {
            if(this.§""b§ > 0 && this.§ !F§.atmosphereTailParticles)
            {
               _loc2_ = this.§ !F§.atmosphereTailParticles;
            }
            else
            {
               _loc2_ = this.§ !F§.normalTailParticles;
            }
            if(_loc2_)
            {
               _loc3_ = getBody().GetPosition().x;
               _loc4_ = getBody().GetPosition().y;
               _loc5_ = getBody().GetAngle();
               param1.§;"o§(_loc2_,_loc3_,_loc4_,_loc5_,§!#L§.ID_NEXT_FREE,1,3);
            }
         }
      }
      
      protected function §'#t§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Number = getBody().GetPosition().x;
         var _loc4_:Number = getBody().GetPosition().y;
         var _loc5_:Number;
         if((_loc5_ = Math.atan2(param2 - _loc4_,param1 - _loc3_)) < 0)
         {
            _loc5_ += Math.PI * 2;
         }
         return _loc5_;
      }
   }
}
