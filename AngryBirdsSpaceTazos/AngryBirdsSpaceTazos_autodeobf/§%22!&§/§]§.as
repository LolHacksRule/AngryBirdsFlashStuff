package §"!&§
{
   import § !Y§.§9k§;
   import § !Y§.§[!%§;
   
   public class §]§ extends §8!T§
   {
       
      
      protected var § !M§:Object;
      
      public function §]§()
      {
         super();
      }
      
      public function §[J§(param1:String, param2:String) : void
      {
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:§<s§ = null;
         var _loc7_:§5"1§ = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         this.§#!F§(param1);
         var _loc3_:Object = §9k§.§9"@§(param2);
         §9!>§ = new §[!%§();
         for(_loc4_ in _loc3_)
         {
            _loc5_ = _loc3_[_loc4_];
            _loc6_ = this.§7!1§(_loc4_,_loc5_);
            if(_loc5_.damageFactors != undefined)
            {
               if((_loc7_ = this.§ !M§[_loc5_.damageFactors] as §5"1§) == null)
               {
                  throw new Error("Cannot find damageFactors \'" + _loc5_.damageFactors + "\' for material \'" + _loc4_ + "\'!");
               }
               for(_loc8_ in _loc7_.§=o§)
               {
                  _loc6_.§+!;§(_loc8_,_loc7_.§=o§[_loc8_]);
               }
               for(_loc9_ in _loc7_.§0!"§)
               {
                  _loc6_.§@" §(_loc9_,_loc7_.§0!"§[_loc9_]);
               }
            }
            §9!>§[_loc4_] = _loc6_;
         }
      }
      
      protected function §#!F§(param1:String) : void
      {
         var _loc3_:* = null;
         var _loc4_:§5"1§ = null;
         this.§ !M§ = {};
         var _loc2_:Object = §9k§.§9"@§(param1);
         for(_loc3_ in _loc2_)
         {
            (_loc4_ = new §5"1§()).§=o§ = _loc2_[_loc3_].damageMultiplier;
            _loc4_.§0!"§ = _loc2_[_loc3_].velocityMultiplier;
            this.§ !M§[_loc3_] = _loc4_;
         }
      }
      
      protected function §7!1§(param1:String, param2:Object) : §<s§
      {
         var _loc3_:int = param2.density != undefined && param2.density == 0 ? int(§<s§.§%!2§) : int(§<s§.§6x§);
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
         var _loc19_:§]!<§ = new §]!<§(param1,_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,0,_loc10_,_loc11_,_loc12_,_loc13_,_loc14_,_loc15_,_loc16_,_loc17_,_loc18_);
         §9!>§[param1] = _loc19_;
         return _loc19_;
      }
   }
}
