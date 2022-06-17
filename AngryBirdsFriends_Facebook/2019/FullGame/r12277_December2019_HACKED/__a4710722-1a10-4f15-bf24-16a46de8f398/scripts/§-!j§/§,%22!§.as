package §-!j§
{
   import §2E§.§6h§;
   
   public class §,"!§ extends §#"+§
   {
      
      protected static const §"$+§:int = 300;
      
      protected static const §;"s§:int = 5000;
      
      protected static const §;t§:int = 10000;
       
      
      protected var §!"3§:Object;
      
      protected var §!8§:§4"-§;
      
      public function §,"!§()
      {
         this.§!"3§ = {};
         super();
      }
      
      public function get soundManager() : §4"-§
      {
         return this.§!8§;
      }
      
      override protected function initMaterialManager() : void
      {
         §2#P§ = new §1$2§();
      }
      
      public function §^"Z§(param1:String, param2:String) : void
      {
         this.§]"C§.§^"Z§(param1,param2);
      }
      
      public function §+"o§(param1:Object) : void
      {
         if(!this.§!8§)
         {
            this.§!8§ = new §4"-§();
         }
         this.§!8§.§'!I§(param1);
      }
      
      public function §7"v§(param1:String) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§>!g§ = null;
         var _loc2_:Object = §6h§.§<#E§(param1);
         for each(_loc3_ in _loc2_.birds)
         {
            _loc4_ = this.§7"-§(_loc3_);
            §#z§[_loc3_.definition.toLowerCase()] = _loc4_;
            this.§!"3§[_loc3_.definition.toLowerCase()] = _loc4_;
         }
      }
      
      public function §#"T§(param1:Array) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§@! § = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = null;
            if(_loc2_.levelGoal == true)
            {
               _loc3_ = this.§[$=§(_loc2_);
            }
            else
            {
               _loc3_ = this.createLevelItem(_loc2_,§-"8§.§""O§);
            }
            §#z§[_loc2_.definition.toLowerCase()] = _loc3_;
            this.§!"3§[_loc2_.definition.toLowerCase()] = _loc3_;
         }
      }
      
      public function §%!=§(param1:String) : void
      {
         this.§4!n§(§6h§.§<#E§(param1).particles);
      }
      
      public function §4!n§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:Object = null;
         var _loc4_:§4#"§ = null;
         for(_loc2_ in param1)
         {
            _loc3_ = param1[_loc2_];
            if(_loc3_.definition == undefined)
            {
               _loc3_.definition = _loc2_;
            }
            _loc4_ = this.§]# §(_loc3_);
            §#z§[_loc2_.toLowerCase()] = _loc4_;
            this.§!"3§[_loc2_.toLowerCase()] = _loc4_;
         }
      }
      
      public function §0#T§(param1:String) : void
      {
         var _loc3_:Object = null;
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:§@! § = null;
         var _loc2_:Object = §6h§.§<#E§(param1);
         for each(_loc3_ in _loc2_)
         {
            for(_loc4_ in _loc3_)
            {
               _loc5_ = _loc3_[_loc4_];
               _loc5_.definition = _loc5_.definition || _loc4_;
               _loc6_ = this.§=c§(_loc5_);
               this.§'"Q§(_loc6_,_loc5_.definition.toLowerCase());
            }
         }
      }
      
      protected function §'"Q§(param1:§@! §, param2:String) : void
      {
         §#z§[param2] = param1;
         this.§!"3§[param2] = param1;
      }
      
      protected function §=c§(param1:Object) : §@! §
      {
         var _loc2_:int = 0;
         if(param1.material == "pig")
         {
            _loc2_ = §-"8§.§3"J§;
         }
         else if(param1.material && param1.material.indexOf("staticGround") == 0)
         {
            if(param1.themed === true)
            {
               _loc2_ = §-"8§.§8$9§;
            }
            else
            {
               _loc2_ = §-"8§.§""O§;
            }
         }
         else
         {
            _loc2_ = §-"8§.§""O§;
         }
         return this.createLevelItem(param1,_loc2_);
      }
      
      protected function createLevelItem(param1:Object, param2:int) : §@! §
      {
         var _loc3_:String = param1.material || param1.materialName;
         return new §>!8§(param1,param2,!!_loc3_ ? §2#P§.getMaterial(_loc3_) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§"$+§));
      }
      
      protected function §7"-§(param1:Object) : §>!g§
      {
         return new §>!g§(param1,§-"8§.§?#%§,!!param1.material ? §2#P§.getMaterial(param1.material) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§;t§));
      }
      
      protected function §[$=§(param1:Object) : §]!e§
      {
         return new §]!e§(param1,§-"8§.§3"J§,!!param1.material ? §2#P§.getMaterial(param1.material) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§;"s§));
      }
      
      protected function §]# §(param1:Object) : §4#"§
      {
         return new §4#"§(param1,§-"8§.§?#-§,!!param1.material ? §2#P§.getMaterial(param1.material) : null,null,0);
      }
      
      protected function get §]"C§() : §1$2§
      {
         return §2#P§ as §1$2§;
      }
   }
}
