package §#g§
{
   import §+d§.§^!Y§;
   
   public class §>"-§ extends §2"m§
   {
      
      protected static const §8;§:int = 300;
      
      protected static const §!W§:int = 5000;
      
      protected static const §;![§:int = 10000;
       
      
      private var §-#5§:Object;
      
      protected var §?$§:§?B§;
      
      public function §>"-§()
      {
         this.§-#5§ = {};
         super();
      }
      
      public function get soundManager() : §?B§
      {
         return this.§?$§;
      }
      
      override protected function initMaterialManager() : void
      {
         § "%§ = new §["u§();
      }
      
      public function §%"K§(param1:String, param2:String) : void
      {
         this.§-!u§.§%"K§(param1,param2);
      }
      
      public function §6!8§(param1:String) : void
      {
         this.§?$§ = new §?B§();
         var _loc2_:Object = §^!Y§.§&S§(param1);
         this.§?$§.§<!$§(_loc2_);
      }
      
      public function §8!>§(param1:String) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§11§ = null;
         var _loc2_:Object = §^!Y§.§&S§(param1);
         for each(_loc3_ in _loc2_.birds)
         {
            _loc4_ = this.createLevelItemBird(_loc3_);
            §true §[_loc3_.definition.toLowerCase()] = _loc4_;
            this.§-#5§[_loc3_.definition.toLowerCase()] = _loc4_;
         }
      }
      
      public function §@!z§(param1:Array) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§[!F§ = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = null;
            if(_loc2_.levelGoal == true)
            {
               _loc3_ = this.createLevelItemPig(_loc2_);
            }
            else
            {
               _loc3_ = this.createLevelItem(_loc2_,§["%§.§9!y§);
            }
            §true §[_loc2_.definition.toLowerCase()] = _loc3_;
            this.§-#5§[_loc2_.definition.toLowerCase()] = _loc3_;
         }
      }
      
      public function §1"J§(param1:String) : void
      {
         var _loc3_:* = null;
         var _loc4_:Object = null;
         var _loc5_:§^"y§ = null;
         var _loc2_:Object = §^!Y§.§&S§(param1);
         for(_loc3_ in _loc2_.particles)
         {
            if((_loc4_ = _loc2_.particles[_loc3_]).definition == undefined)
            {
               _loc4_.definition = _loc3_;
            }
            _loc5_ = this.§ !`§(_loc4_);
            §true §[_loc3_.toLowerCase()] = _loc5_;
            this.§-#5§[_loc3_.toLowerCase()] = _loc5_;
         }
      }
      
      public function §>!;§(param1:String) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:§[!F§ = null;
         var _loc2_:Object = §^!Y§.§&S§(param1);
         for each(_loc3_ in _loc2_)
         {
            for each(_loc4_ in _loc3_)
            {
               _loc5_ = this.§1u§(_loc4_);
               this.§5!j§(_loc5_,_loc4_.definition.toLowerCase());
            }
         }
      }
      
      protected function §5!j§(param1:§[!F§, param2:String) : void
      {
         §true §[param2] = param1;
         this.§-#5§[param2] = param1;
      }
      
      protected function §1u§(param1:Object) : §[!F§
      {
         var _loc2_:int = 0;
         if(param1.material == "pig")
         {
            _loc2_ = §["%§.§7##§;
         }
         else if(param1.material && param1.material.indexOf("staticGround") == 0)
         {
            if(param1.themed === true)
            {
               _loc2_ = §["%§.§ !c§;
            }
            else
            {
               _loc2_ = §["%§.§9!y§;
            }
         }
         else
         {
            _loc2_ = §["%§.§9!y§;
         }
         return this.createLevelItem(param1,_loc2_);
      }
      
      protected function createLevelItem(param1:Object, param2:int) : §[!F§
      {
         var _loc3_:String = param1.material;
         return new §[!F§(param1,param2,!!_loc3_ ? § "%§.getMaterial(_loc3_) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§8;§));
      }
      
      protected function createLevelItemBird(param1:Object) : §11§
      {
         return new §11§(param1,§["%§.§8!w§,!!param1.material ? § "%§.getMaterial(param1.material) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§;![§));
      }
      
      protected function createLevelItemPig(param1:Object) : §]_§
      {
         return new §]_§(param1,§["%§.§7##§,!!param1.material ? § "%§.getMaterial(param1.material) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§!W§));
      }
      
      protected function § !`§(param1:Object) : §^"y§
      {
         return new §^"y§(param1,§["%§.§%"v§,!!param1.material ? § "%§.getMaterial(param1.material) : null,null,0);
      }
      
      protected function get §-!u§() : §["u§
      {
         return § "%§ as §["u§;
      }
   }
}
