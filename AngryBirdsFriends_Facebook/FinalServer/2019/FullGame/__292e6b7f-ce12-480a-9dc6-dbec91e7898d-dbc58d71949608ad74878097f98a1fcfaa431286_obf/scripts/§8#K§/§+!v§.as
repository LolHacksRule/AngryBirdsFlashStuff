package §8#K§
{
   import §#"4§.§%#F§;
   import §#"4§.§&r§;
   
   public class §+!v§ extends §<!E§
   {
       
      
      protected var §&!?§:Object;
      
      public function §+!v§()
      {
         super();
      }
      
      public function §7!-§(param1:String, param2:String) : void
      {
         this.§`"U§(param1);
         this.§##%§(§%#F§.§@"b§(param2));
      }
      
      public function §##%§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:Object = null;
         var _loc4_:§+#y§ = null;
         var _loc5_:§0#8§ = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         §?S§ = §?S§ || new §&r§();
         for(_loc2_ in param1)
         {
            _loc3_ = param1[_loc2_];
            _loc4_ = this.§;$3§(_loc2_,_loc3_);
            if(_loc3_.damageFactors != undefined)
            {
               if((_loc5_ = this.§&!?§[_loc3_.damageFactors] as §0#8§) == null)
               {
                  throw new Error("Cannot find damageFactors \'" + _loc3_.damageFactors + "\' for material \'" + _loc2_ + "\'!");
               }
               for(_loc6_ in _loc5_.§<!O§)
               {
                  _loc4_.§class§(_loc6_,_loc5_.§<!O§[_loc6_]);
               }
               for(_loc7_ in _loc5_.§""^§)
               {
                  _loc4_.§^!'§(_loc7_,_loc5_.§""^§[_loc7_]);
               }
            }
            §?S§[_loc2_] = _loc4_;
         }
      }
      
      protected function §`"U§(param1:String) : void
      {
         var _loc3_:* = null;
         var _loc4_:§0#8§ = null;
         this.§&!?§ = {};
         var _loc2_:Object = §%#F§.§@"b§(param1);
         for(_loc3_ in _loc2_)
         {
            (_loc4_ = new §0#8§()).§<!O§ = _loc2_[_loc3_].damageMultiplier;
            _loc4_.§""^§ = _loc2_[_loc3_].velocityMultiplier;
            this.§&!?§[_loc3_] = _loc4_;
         }
      }
      
      protected function §;$3§(param1:String, param2:Object) : §+#y§
      {
         var _loc3_:int = param2.density != undefined && param2.density == 0 ? int(§+#y§.BODY_TYPE_STATIC) : int(§+#y§.§#"%§);
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
         var _loc22_:§!$B§ = new §!$B§(param1,_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,0,_loc10_,_loc11_,_loc12_,_loc13_,_loc14_,_loc15_,_loc16_,_loc17_,_loc18_,_loc19_,_loc20_,_loc21_);
         §?S§[param1] = _loc22_;
         return _loc22_;
      }
   }
}
