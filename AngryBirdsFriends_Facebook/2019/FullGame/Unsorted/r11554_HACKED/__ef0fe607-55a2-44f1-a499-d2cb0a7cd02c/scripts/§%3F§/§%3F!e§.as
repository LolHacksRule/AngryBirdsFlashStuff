package §?§#3
{
   import §+#B§.§#k§;
   
   public class §?!e§ extends §<"J§
   {
      
      protected static const §!#i§:int = 300;
      
      protected static const §&,§:int = 5000;
      
      protected static const §@$0§:int = 10000;
       
      
      protected var §="X§:Object;
      
      protected var §3<§:§`"N§;
      
      public function §?!e§()
      {
         this.§="X§ = {};
         super();
      }
      
      public function get §3!h§() : §`"N§
      {
         return this.§3<§;
      }
      
      override protected function initMaterialManager() : void
      {
         §#!x§ = new §9j§();
      }
      
      public function §?#U§(param1:String, param2:String) : void
      {
         this.§;"W§.§?#U§(param1,param2);
      }
      
      public function §#"E§(param1:String) : void
      {
         this.§3<§ = new §`"N§();
         var _loc2_:Object = §#k§.§?"m§(param1);
         this.§3<§.§&#i§(_loc2_);
      }
      
      public function §?"P§(param1:String) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§!#<§ = null;
         var _loc2_:Object = §#k§.§?"m§(param1);
         for each(_loc3_ in _loc2_.birds)
         {
            _loc4_ = this.§?#C§(_loc3_);
            §,#i§[_loc3_.definition.toLowerCase()] = _loc4_;
            this.§="X§[_loc3_.definition.toLowerCase()] = _loc4_;
         }
      }
      
      public function §9">§(param1:Array) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§+"%§ = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = null;
            if(_loc2_.levelGoal == true)
            {
               _loc3_ = this.§8"U§(_loc2_);
            }
            else
            {
               _loc3_ = this.createLevelItem(_loc2_,§,Y§.§^N§);
            }
            §,#i§[_loc2_.definition.toLowerCase()] = _loc3_;
            this.§="X§[_loc2_.definition.toLowerCase()] = _loc3_;
         }
      }
      
      public function §-5§(param1:String) : void
      {
         this.§^k§(§#k§.§?"m§(param1).particles);
      }
      
      public function §^k§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:Object = null;
         var _loc4_:§["+§ = null;
         for(_loc2_ in param1)
         {
            _loc3_ = param1[_loc2_];
            if(_loc3_.definition == undefined)
            {
               _loc3_.definition = _loc2_;
            }
            _loc4_ = this.§>!x§(_loc3_);
            §,#i§[_loc2_.toLowerCase()] = _loc4_;
            this.§="X§[_loc2_.toLowerCase()] = _loc4_;
         }
      }
      
      public function §8"%§(param1:String) : void
      {
         var _loc3_:Object = null;
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:§+"%§ = null;
         var _loc2_:Object = §#k§.§?"m§(param1);
         for each(_loc3_ in _loc2_)
         {
            for(_loc4_ in _loc3_)
            {
               _loc5_ = _loc3_[_loc4_];
               _loc5_.definition = _loc5_.definition || _loc4_;
               _loc6_ = this.§#"D§(_loc5_);
               this.§>#&§(_loc6_,_loc5_.definition.toLowerCase());
            }
         }
      }
      
      protected function §>#&§(param1:§+"%§, param2:String) : void
      {
         §,#i§[param2] = param1;
         this.§="X§[param2] = param1;
      }
      
      protected function §#"D§(param1:Object) : §+"%§
      {
         var _loc2_:int = 0;
         if(param1.material == "pig")
         {
            _loc2_ = §,Y§.§^O§;
         }
         else if(param1.material && param1.material.indexOf("staticGround") == 0)
         {
            if(param1.themed === true)
            {
               _loc2_ = §,Y§.§-$B§;
            }
            else
            {
               _loc2_ = §,Y§.§^N§;
            }
         }
         else
         {
            _loc2_ = §,Y§.§^N§;
         }
         return this.createLevelItem(param1,_loc2_);
      }
      
      protected function createLevelItem(param1:Object, param2:int) : §+"%§
      {
         var _loc3_:String = param1.material || param1.materialName;
         return new §7E§(param1,param2,!!_loc3_ ? §#!x§.getMaterial(_loc3_) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§!#i§));
      }
      
      protected function §?#C§(param1:Object) : §!#<§
      {
         return new §!#<§(param1,§,Y§.§=#s§,!!param1.material ? §#!x§.getMaterial(param1.material) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§@$0§));
      }
      
      protected function §8"U§(param1:Object) : §,!T§
      {
         return new §,!T§(param1,§,Y§.§^O§,!!param1.material ? §#!x§.getMaterial(param1.material) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§&,§));
      }
      
      protected function §>!x§(param1:Object) : §["+§
      {
         return new §["+§(param1,§,Y§.§2q§,!!param1.material ? §#!x§.getMaterial(param1.material) : null,null,0);
      }
      
      protected function get §;"W§() : §9j§
      {
         return §#!x§ as §9j§;
      }
   }
}
