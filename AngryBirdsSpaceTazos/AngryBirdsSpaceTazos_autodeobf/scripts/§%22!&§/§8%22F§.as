package §"!&§
{
   import § !Y§.§9k§;
   
   public class §8"F§ extends §-!M§
   {
      
      protected static const § -§:int = 300;
      
      protected static const §1!$§:int = 5000;
      
      protected static const §][§:int = 10000;
       
      
      private var §@q§:Object;
      
      protected var §9"3§:§="D§;
      
      public function §8"F§()
      {
         this.§@q§ = {};
         super();
      }
      
      public function get soundManager() : §="D§
      {
         return this.§9"3§;
      }
      
      override protected function initMaterialManager() : void
      {
         §]X§ = new §]§();
      }
      
      public function §[J§(param1:String, param2:String) : void
      {
         this.§4P§.§[J§(param1,param2);
      }
      
      public function §[!v§(param1:String) : void
      {
         this.§9"3§ = new §="D§();
         var _loc2_:Object = §9k§.§9"@§(param1);
         this.§9"3§.§?O§(_loc2_);
      }
      
      public function §,! §(param1:String) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§+W§ = null;
         var _loc2_:Object = §9k§.§9"@§(param1);
         for each(_loc3_ in _loc2_.birds)
         {
            _loc4_ = this.createLevelItemBird(_loc3_);
            §1"0§[_loc3_.definition.toLowerCase()] = _loc4_;
            this.§@q§[_loc3_.definition.toLowerCase()] = _loc4_;
         }
      }
      
      public function §&!j§(param1:String) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§`D§ = null;
         var _loc2_:Object = §9k§.§9"@§(param1);
         for each(_loc3_ in _loc2_.levelGoals)
         {
            _loc4_ = null;
            if(_loc3_.levelGoal == true)
            {
               _loc4_ = this.createLevelItemPig(_loc3_);
            }
            else
            {
               _loc4_ = this.createLevelItem(_loc3_,§8X§.§5x§);
            }
            §1"0§[_loc3_.definition.toLowerCase()] = _loc4_;
            this.§@q§[_loc3_.definition.toLowerCase()] = _loc4_;
         }
      }
      
      public function §-y§(param1:String) : void
      {
         var _loc3_:* = null;
         var _loc4_:Object = null;
         var _loc5_:§%F§ = null;
         var _loc2_:Object = §9k§.§9"@§(param1);
         for(_loc3_ in _loc2_.particles)
         {
            if((_loc4_ = _loc2_.particles[_loc3_]).definition == undefined)
            {
               _loc4_.definition = _loc3_;
            }
            _loc5_ = this.createLevelItemParticle(_loc4_);
            §1"0§[_loc3_.toLowerCase()] = _loc5_;
            this.§@q§[_loc3_.toLowerCase()] = _loc5_;
         }
      }
      
      public function §]!J§(param1:String) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:§`D§ = null;
         var _loc2_:Object = §9k§.§9"@§(param1);
         for each(_loc3_ in _loc2_)
         {
            for each(_loc4_ in _loc3_)
            {
               _loc5_ = this.§-"!§(_loc4_);
               §1"0§[_loc4_.definition.toLowerCase()] = _loc5_;
               this.§@q§[_loc4_.definition.toLowerCase()] = _loc5_;
            }
         }
      }
      
      private function §-"!§(param1:Object) : §`D§
      {
         var _loc2_:int = 0;
         if(param1.material == "pig")
         {
            _loc2_ = §8X§.§<g§;
         }
         else if(param1.material && param1.material.indexOf("staticGround") == 0)
         {
            if(param1.themed === true)
            {
               _loc2_ = §8X§.§1!Q§;
            }
            else
            {
               _loc2_ = §8X§.§5x§;
            }
         }
         else
         {
            _loc2_ = §8X§.§5x§;
         }
         return this.createLevelItem(param1,_loc2_);
      }
      
      protected function createLevelItem(param1:Object, param2:int) : §`D§
      {
         var _loc3_:String = param1.material;
         return new §`D§(param1,param2,!!_loc3_ ? §]X§.getMaterial(_loc3_) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§ -§));
      }
      
      protected function createLevelItemBird(param1:Object) : §+W§
      {
         return new §+W§(param1,§8X§.§1!K§,!!param1.material ? §]X§.getMaterial(param1.material) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§][§));
      }
      
      protected function createLevelItemPig(param1:Object) : §3",§
      {
         return new §3",§(param1,§8X§.§<g§,!!param1.material ? §]X§.getMaterial(param1.material) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§1!$§));
      }
      
      protected function createLevelItemParticle(param1:Object) : §%F§
      {
         return new §%F§(param1,§8X§.§,"4§,!!param1.material ? §]X§.getMaterial(param1.material) : null,null,0);
      }
      
      protected function get §4P§() : §]§
      {
         return §]X§ as §]§;
      }
   }
}
