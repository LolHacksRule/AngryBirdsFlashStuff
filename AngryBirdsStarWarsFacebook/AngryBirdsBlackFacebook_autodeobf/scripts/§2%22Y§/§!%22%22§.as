package §2"Y§
{
   import §1!i§.§,#_§;
   import §1!i§.§7#&§;
   
   public class §!""§ extends §]#]§
   {
       
      
      protected var §2"p§:Object;
      
      public function §!""§()
      {
         super();
      }
      
      public function §'#P§(param1:String, param2:String) : void
      {
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:§&!x§ = null;
         var _loc7_:§<">§ = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         this.§+"5§(param1);
         var _loc3_:Object = §7#&§.§06§(param2);
         §'#8§ = new §,#_§();
         for(_loc4_ in _loc3_)
         {
            _loc5_ = _loc3_[_loc4_];
            _loc6_ = this.§,#>§(_loc4_,_loc5_);
            if(_loc5_.damageFactors != undefined)
            {
               if((_loc7_ = this.§2"p§[_loc5_.damageFactors] as §<">§) == null)
               {
                  throw new Error("Cannot find damageFactors \'" + _loc5_.damageFactors + "\' for material \'" + _loc4_ + "\'!");
               }
               for(_loc8_ in _loc7_.§&#5§)
               {
                  _loc6_.§>"I§(_loc8_,_loc7_.§&#5§[_loc8_]);
               }
               for(_loc9_ in _loc7_.§>"S§)
               {
                  _loc6_.§3"R§(_loc9_,_loc7_.§>"S§[_loc9_]);
               }
            }
            §'#8§[_loc4_] = _loc6_;
         }
      }
      
      protected function §+"5§(param1:String) : void
      {
         var _loc3_:* = null;
         var _loc4_:§<">§ = null;
         this.§2"p§ = {};
         var _loc2_:Object = §7#&§.§06§(param1);
         for(_loc3_ in _loc2_)
         {
            (_loc4_ = new §<">§()).§&#5§ = _loc2_[_loc3_].damageMultiplier;
            _loc4_.§>"S§ = _loc2_[_loc3_].velocityMultiplier;
            this.§2"p§[_loc3_] = _loc4_;
         }
      }
      
      protected function §,#>§(param1:String, param2:Object) : §&!x§
      {
         var _loc3_:int = param2.density != undefined && param2.density == 0 ? int(§&!x§.§&#_§) : int(§&!x§.§7!B§);
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
         var _loc19_:§-!Y§ = new §-!Y§(param1,_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,0,_loc10_,_loc11_,_loc12_,_loc13_,_loc14_,_loc15_,_loc16_,_loc17_,_loc18_);
         §'#8§[param1] = _loc19_;
         return _loc19_;
      }
   }
}
