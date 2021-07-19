package §`#C§
{
   import §>!#§.§1""§;
   
   public class §3Z§ extends §9#s§
   {
      
      protected static const §5"<§:int = 300;
      
      protected static const §3#?§:int = 5000;
      
      protected static const §&">§:int = 10000;
       
      
      protected var §;"x§:Object;
      
      protected var §1!v§:§8!h§;
      
      public function §3Z§()
      {
         this.§;"x§ = {};
         super();
      }
      
      public function get §?"E§() : §8!h§
      {
         return this.§1!v§;
      }
      
      override protected function initMaterialManager() : void
      {
         §3"z§ = new §?"V§();
      }
      
      public function §`$8§(param1:String, param2:String) : void
      {
         this.§[!o§.§`$8§(param1,param2);
      }
      
      public function §4!5§(param1:String) : void
      {
         this.§1!v§ = new §8!h§();
         var _loc2_:Object = §1""§.§]!e§(param1);
         this.§1!v§.§!#6§(_loc2_);
      }
      
      public function §5![§(param1:String) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§`$9§ = null;
         var _loc2_:Object = §1""§.§]!e§(param1);
         for each(_loc3_ in _loc2_.birds)
         {
            _loc4_ = this.§<#b§(_loc3_);
            §5&§[_loc3_.definition.toLowerCase()] = _loc4_;
            this.§;"x§[_loc3_.definition.toLowerCase()] = _loc4_;
         }
      }
      
      public function §[!y§(param1:Array) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§6!i§ = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = null;
            if(_loc2_.levelGoal == true)
            {
               _loc3_ = this.§^!Z§(_loc2_);
            }
            else
            {
               _loc3_ = this.createLevelItem(_loc2_,§8K§.§,"i§);
            }
            §5&§[_loc2_.definition.toLowerCase()] = _loc3_;
            this.§;"x§[_loc2_.definition.toLowerCase()] = _loc3_;
         }
      }
      
      public function §7"r§(param1:String) : void
      {
         this.§%!C§(§1""§.§]!e§(param1).particles);
      }
      
      public function §%!C§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:Object = null;
         var _loc4_:§'#g§ = null;
         for(_loc2_ in param1)
         {
            _loc3_ = param1[_loc2_];
            if(_loc3_.definition == undefined)
            {
               _loc3_.definition = _loc2_;
            }
            _loc4_ = this.§3"E§(_loc3_);
            §5&§[_loc2_.toLowerCase()] = _loc4_;
            this.§;"x§[_loc2_.toLowerCase()] = _loc4_;
         }
      }
      
      public function §@m§(param1:String) : void
      {
         var _loc3_:Object = null;
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:§6!i§ = null;
         var _loc2_:Object = §1""§.§]!e§(param1);
         for each(_loc3_ in _loc2_)
         {
            for(_loc4_ in _loc3_)
            {
               _loc5_ = _loc3_[_loc4_];
               _loc5_.definition = _loc5_.definition || _loc4_;
               _loc6_ = this.§[$8§(_loc5_);
               this.§45§(_loc6_,_loc5_.definition.toLowerCase());
            }
         }
      }
      
      protected function §45§(param1:§6!i§, param2:String) : void
      {
         §5&§[param2] = param1;
         this.§;"x§[param2] = param1;
      }
      
      protected function §[$8§(param1:Object) : §6!i§
      {
         var _loc2_:int = 0;
         if(param1.material == "pig")
         {
            _loc2_ = §8K§.§=l§;
         }
         else if(param1.material && param1.material.indexOf("staticGround") == 0)
         {
            if(param1.themed === true)
            {
               _loc2_ = §8K§.§;"f§;
            }
            else
            {
               _loc2_ = §8K§.§,"i§;
            }
         }
         else
         {
            _loc2_ = §8K§.§,"i§;
         }
         return this.createLevelItem(param1,_loc2_);
      }
      
      protected function createLevelItem(param1:Object, param2:int) : §6!i§
      {
         var _loc3_:String = param1.material || param1.materialName;
         return new §4o§(param1,param2,!!_loc3_ ? §3"z§.getMaterial(_loc3_) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§5"<§));
      }
      
      protected function §<#b§(param1:Object) : §`$9§
      {
         return new §`$9§(param1,§8K§.§%3§,!!param1.material ? §3"z§.getMaterial(param1.material) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§&">§));
      }
      
      protected function §^!Z§(param1:Object) : §<?§
      {
         return new §<?§(param1,§8K§.§=l§,!!param1.material ? §3"z§.getMaterial(param1.material) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§3#?§));
      }
      
      protected function §3"E§(param1:Object) : §'#g§
      {
         return new §'#g§(param1,§8K§.§?#b§,!!param1.material ? §3"z§.getMaterial(param1.material) : null,null,0);
      }
      
      protected function get §[!o§() : §?"V§
      {
         return §3"z§ as §?"V§;
      }
   }
}
