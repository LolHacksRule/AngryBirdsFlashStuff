package §3>§
{
   import §4u§.§"!+§;
   import §4u§.§5!t§;
   
   public class §'v§ extends §]V§
   {
       
      
      protected var §@"2§:Object;
      
      public function §'v§()
      {
         super();
      }
      
      public function §1!>§(param1:String, param2:String) : void
      {
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:§!4§ = null;
         var _loc7_:§,w§ = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         this.§-!M§(param1);
         var _loc3_:Object = §"!+§.§%$§(param2);
         §>M§ = new §5!t§();
         for(_loc4_ in _loc3_)
         {
            _loc5_ = _loc3_[_loc4_];
            _loc6_ = this.§`g§(_loc4_,_loc5_);
            if(_loc5_.damageFactors != undefined)
            {
               if((_loc7_ = this.§@"2§[_loc5_.damageFactors] as §,w§) == null)
               {
                  throw new Error("Cannot find damageFactors \'" + _loc5_.damageFactors + "\' for material \'" + _loc4_ + "\'!");
               }
               for(_loc8_ in _loc7_.§84§)
               {
                  _loc6_.§`!z§(_loc8_,_loc7_.§84§[_loc8_]);
               }
               for(_loc9_ in _loc7_.§9!%§)
               {
                  _loc6_.§9b§(_loc9_,_loc7_.§9!%§[_loc9_]);
               }
            }
            §>M§[_loc4_] = _loc6_;
         }
      }
      
      protected function §-!M§(param1:String) : void
      {
         var _loc3_:* = null;
         var _loc4_:§,w§ = null;
         this.§@"2§ = {};
         var _loc2_:Object = §"!+§.§%$§(param1);
         for(_loc3_ in _loc2_)
         {
            (_loc4_ = new §,w§()).§84§ = _loc2_[_loc3_].damageMultiplier;
            _loc4_.§9!%§ = _loc2_[_loc3_].velocityMultiplier;
            this.§@"2§[_loc3_] = _loc4_;
         }
      }
      
      protected function §`g§(param1:String, param2:Object) : §!4§
      {
         var _loc3_:int = param2.density != undefined && param2.density == 0 ? int(§!4§.§4y§) : int(§!4§.§<@§);
         var _loc4_:Number = param2.density;
         var _loc5_:Number = param2.friction;
         var _loc6_:Number = param2.restitution;
         var _loc7_:Number = param2.strength;
         var _loc8_:Number = param2.defence;
         var _loc10_:* = param2.bouncesLaser == true;
         var _loc11_:* = param2.bouncesLaserTargeted == true;
         var _loc12_:String = param2.particlesDestroyed;
         var _loc13_:String = param2.collisionSound;
         var _loc14_:String = param2.damageSound;
         var _loc15_:String = param2.destroyedSound;
         var _loc16_:String = param2.rollingSound;
         var _loc17_:String = param2.damageFactors;
         var _loc18_:int = param2.z_order;
         var _loc19_:§1!0§ = new §1!0§(param1,_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,0,_loc10_,_loc11_,_loc12_,_loc13_,_loc14_,_loc15_,_loc16_,_loc17_,_loc18_);
         §>M§[param1] = _loc19_;
         return _loc19_;
      }
   }
}
