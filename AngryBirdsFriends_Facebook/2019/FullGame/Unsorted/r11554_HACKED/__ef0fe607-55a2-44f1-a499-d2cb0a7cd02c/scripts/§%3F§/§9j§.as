package §?§#3
{
   import §+#B§.§#k§;
   import §+#B§.§4"[§;
   
   public class §9j§ extends §1q§
   {
       
      
      protected var §;#P§:Object;
      
      public function §9j§()
      {
         super();
      }
      
      public function §?#U§(param1:String, param2:String) : void
      {
         this.§&O§(param1);
         this.§!$E§(§#k§.§?"m§(param2));
      }
      
      public function §!$E§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:Object = null;
         var _loc4_:§7!$§ = null;
         var _loc5_:§1R§ = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         §use § = §use § || new §4"[§();
         for(_loc2_ in param1)
         {
            _loc3_ = param1[_loc2_];
            _loc4_ = this.§92§(_loc2_,_loc3_);
            if(_loc3_.damageFactors != undefined)
            {
               if((_loc5_ = this.§;#P§[_loc3_.damageFactors] as §1R§) == null)
               {
                  throw new Error("Cannot find damageFactors \'" + _loc3_.damageFactors + "\' for material \'" + _loc2_ + "\'!");
               }
               for(_loc6_ in _loc5_.§50§)
               {
                  _loc4_.§@g§(_loc6_,_loc5_.§50§[_loc6_]);
               }
               for(_loc7_ in _loc5_.§`m§)
               {
                  _loc4_.§0"^§(_loc7_,_loc5_.§`m§[_loc7_]);
               }
            }
            §use §[_loc2_] = _loc4_;
         }
      }
      
      protected function §&O§(param1:String) : void
      {
         var _loc3_:* = null;
         var _loc4_:§1R§ = null;
         this.§;#P§ = {};
         var _loc2_:Object = §#k§.§?"m§(param1);
         for(_loc3_ in _loc2_)
         {
            (_loc4_ = new §1R§()).§50§ = _loc2_[_loc3_].damageMultiplier;
            _loc4_.§`m§ = _loc2_[_loc3_].velocityMultiplier;
            this.§;#P§[_loc3_] = _loc4_;
         }
      }
      
      protected function §92§(param1:String, param2:Object) : §7!$§
      {
         var _loc3_:int = param2.density != undefined && param2.density == 0 ? int(§7!$§.BODY_TYPE_STATIC) : int(§7!$§.§'"n§);
         var _loc4_:Number = param2.density;
         var _loc5_:Number = param2.friction;
         var _loc6_:Number = param2.restitution;
         var _loc7_:Number = param2.strength;
         var _loc8_:Number = param2.defence;
         var _loc10_:* = param2.bouncesLaser == true;
         var _loc11_:* = param2.bouncesLaserTargeted == true;
         var _loc12_:String = !!param2.particlesDestroyed ? param2.particlesDestroyed : param2.particles;
         var _loc13_:String = param2.collisionSound;
         var _loc14_:String = param2.damageSound;
         var _loc15_:String = param2.destroyedSound;
         var _loc16_:String = param2.rollingSound;
         var _loc17_:String = param2.damageFactors;
         var _loc18_:int = param2.z_order;
         var _loc19_:String = param2.soundChannel;
         var _loc20_:Number = !!param2.forceX ? Number(param2.forceX) : Number(0);
         var _loc21_:Number = !!param2.forceY ? Number(param2.forceY) : Number(0);
         var _loc22_:§0Q§ = new §0Q§(param1,_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,0,_loc10_,_loc11_,_loc12_,_loc13_,_loc14_,_loc15_,_loc16_,_loc17_,_loc18_,_loc19_,_loc20_,_loc21_);
         §use §[param1] = _loc22_;
         return _loc22_;
      }
   }
}
