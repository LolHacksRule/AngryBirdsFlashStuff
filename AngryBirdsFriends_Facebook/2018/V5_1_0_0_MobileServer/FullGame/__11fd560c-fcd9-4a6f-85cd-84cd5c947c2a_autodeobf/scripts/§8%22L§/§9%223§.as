package §8"L§
{
   import §`7§.§0t§;
   import §`7§.§6#I§;
   
   public class §9"3§ extends §`"!§
   {
       
      
      protected var §&8§:Object;
      
      public function §9"3§()
      {
         super();
      }
      
      public function §3g§(param1:String, param2:String) : void
      {
         this.§2a§(param1);
         this.§?t§(§6#I§.§#!§(param2));
      }
      
      public function §?t§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:Object = null;
         var _loc4_:§?"b§ = null;
         var _loc5_:§`!D§ = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         §6!'§ = §6!'§ || new §0t§();
         for(_loc2_ in param1)
         {
            _loc3_ = param1[_loc2_];
            _loc4_ = this.§-"J§(_loc2_,_loc3_);
            if(_loc3_.damageFactors != undefined)
            {
               if((_loc5_ = this.§&8§[_loc3_.damageFactors] as §`!D§) == null)
               {
                  throw new Error("Cannot find damageFactors \'" + _loc3_.damageFactors + "\' for material \'" + _loc2_ + "\'!");
               }
               for(_loc6_ in _loc5_.§>^§)
               {
                  _loc4_.§>!v§(_loc6_,_loc5_.§>^§[_loc6_]);
               }
               for(_loc7_ in _loc5_.§-#_§)
               {
                  _loc4_.§[>§(_loc7_,_loc5_.§-#_§[_loc7_]);
               }
            }
            §6!'§[_loc2_] = _loc4_;
         }
      }
      
      protected function §2a§(param1:String) : void
      {
         var _loc3_:* = null;
         var _loc4_:§`!D§ = null;
         this.§&8§ = {};
         var _loc2_:Object = §6#I§.§#!§(param1);
         for(_loc3_ in _loc2_)
         {
            (_loc4_ = new §`!D§()).§>^§ = _loc2_[_loc3_].damageMultiplier;
            _loc4_.§-#_§ = _loc2_[_loc3_].velocityMultiplier;
            this.§&8§[_loc3_] = _loc4_;
         }
      }
      
      protected function §-"J§(param1:String, param2:Object) : §?"b§
      {
         var _loc3_:int = param2.density != undefined && param2.density == 0 ? int(§?"b§.BODY_TYPE_STATIC) : int(§?"b§.§#O§);
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
         var _loc22_:§%t§ = new §%t§(param1,_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,0,_loc10_,_loc11_,_loc12_,_loc13_,_loc14_,_loc15_,_loc16_,_loc17_,_loc18_,_loc19_,_loc20_,_loc21_);
         §6!'§[param1] = _loc22_;
         return _loc22_;
      }
   }
}
