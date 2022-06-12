package §`#C§
{
   import §>!#§.§'"R§;
   import §>!#§.§1""§;
   
   public class §?"V§ extends §;$0§
   {
       
      
      protected var §@"P§:Object;
      
      public function §?"V§()
      {
         super();
      }
      
      public function §`$8§(param1:String, param2:String) : void
      {
         this.§4]§(param1);
         this.§?!X§(§1""§.§]!e§(param2));
      }
      
      public function §?!X§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:Object = null;
         var _loc4_:§^#A§ = null;
         var _loc5_:§;"b§ = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         §+$6§ = §+$6§ || new §'"R§();
         for(_loc2_ in param1)
         {
            _loc3_ = param1[_loc2_];
            _loc4_ = this.§ #_§(_loc2_,_loc3_);
            if(_loc3_.damageFactors != undefined)
            {
               if((_loc5_ = this.§@"P§[_loc3_.damageFactors] as §;"b§) == null)
               {
                  throw new Error("Cannot find damageFactors \'" + _loc3_.damageFactors + "\' for material \'" + _loc2_ + "\'!");
               }
               for(_loc6_ in _loc5_.§<$1§)
               {
                  _loc4_.§+"n§(_loc6_,_loc5_.§<$1§[_loc6_]);
               }
               for(_loc7_ in _loc5_.§;"r§)
               {
                  _loc4_.§4#z§(_loc7_,_loc5_.§;"r§[_loc7_]);
               }
            }
            §+$6§[_loc2_] = _loc4_;
         }
      }
      
      protected function §4]§(param1:String) : void
      {
         var _loc3_:* = null;
         var _loc4_:§;"b§ = null;
         this.§@"P§ = {};
         var _loc2_:Object = §1""§.§]!e§(param1);
         for(_loc3_ in _loc2_)
         {
            (_loc4_ = new §;"b§()).§<$1§ = _loc2_[_loc3_].damageMultiplier;
            _loc4_.§;"r§ = _loc2_[_loc3_].velocityMultiplier;
            this.§@"P§[_loc3_] = _loc4_;
         }
      }
      
      protected function § #_§(param1:String, param2:Object) : §^#A§
      {
         var _loc3_:int = param2.density != undefined && param2.density == 0 ? int(§^#A§.§&M§) : int(§^#A§.§=G§);
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
         var _loc19_:String = param2.soundChannel;
         var _loc20_:§;">§ = new §;">§(param1,_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,0,_loc10_,_loc11_,_loc12_,_loc13_,_loc14_,_loc15_,_loc16_,_loc17_,_loc18_,_loc19_);
         §+$6§[param1] = _loc20_;
         return _loc20_;
      }
   }
}
