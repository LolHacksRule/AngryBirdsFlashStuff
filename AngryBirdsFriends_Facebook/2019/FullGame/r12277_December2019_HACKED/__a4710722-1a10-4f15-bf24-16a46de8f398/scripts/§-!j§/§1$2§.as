package §-!j§
{
   import §2E§.§&#a§;
   import §2E§.§6h§;
   
   public class §1$2§ extends §^"q§
   {
       
      
      protected var §7i§:Object;
      
      public function §1$2§()
      {
         super();
      }
      
      public function §^"Z§(param1:String, param2:String) : void
      {
         this.§"!]§(param1);
         this.§'#1§(§6h§.§<#E§(param2));
      }
      
      public function §'#1§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:Object = null;
         var _loc4_:§5!,§ = null;
         var _loc5_:§[#m§ = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         §^e§ = §^e§ || new §&#a§();
         for(_loc2_ in param1)
         {
            _loc3_ = param1[_loc2_];
            _loc4_ = this.§@h§(_loc2_,_loc3_);
            if(_loc3_.damageFactors != undefined)
            {
               if((_loc5_ = this.§7i§[_loc3_.damageFactors] as §[#m§) == null)
               {
                  throw new Error("Cannot find damageFactors \'" + _loc3_.damageFactors + "\' for material \'" + _loc2_ + "\'!");
               }
               for(_loc6_ in _loc5_.§#!M§)
               {
                  _loc4_.§89§(_loc6_,_loc5_.§#!M§[_loc6_]);
               }
               for(_loc7_ in _loc5_.§=!1§)
               {
                  _loc4_.§=6§(_loc7_,_loc5_.§=!1§[_loc7_]);
               }
            }
            §^e§[_loc2_] = _loc4_;
         }
      }
      
      protected function §"!]§(param1:String) : void
      {
         var _loc3_:* = null;
         var _loc4_:§[#m§ = null;
         this.§7i§ = {};
         var _loc2_:Object = §6h§.§<#E§(param1);
         for(_loc3_ in _loc2_)
         {
            (_loc4_ = new §[#m§()).§#!M§ = _loc2_[_loc3_].damageMultiplier;
            _loc4_.§=!1§ = _loc2_[_loc3_].velocityMultiplier;
            this.§7i§[_loc3_] = _loc4_;
         }
      }
      
      protected function §@h§(param1:String, param2:Object) : §5!,§
      {
         var _loc3_:int = param2.density != undefined && param2.density == 0 ? int(§5!,§.BODY_TYPE_STATIC) : int(§5!,§.§8L§);
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
         var _loc22_:§#J§ = new §#J§(param1,_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,0,_loc10_,_loc11_,_loc12_,_loc13_,_loc14_,_loc15_,_loc16_,_loc17_,_loc18_,_loc19_,_loc20_,_loc21_);
         §^e§[param1] = _loc22_;
         return _loc22_;
      }
   }
}
