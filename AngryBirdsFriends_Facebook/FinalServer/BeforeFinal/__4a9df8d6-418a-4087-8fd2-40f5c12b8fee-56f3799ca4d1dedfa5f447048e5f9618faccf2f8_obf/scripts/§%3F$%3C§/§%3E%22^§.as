package §?$<§
{
   import §'G§.§=g§;
   import §,"v§.§^!b§;
   import §-$!§.§-N§;
   import §-;§.§+"d§;
   import §`#@§.§7n§;
   import flash.utils.Dictionary;
   
   public class §>"^§ extends §]#A§
   {
       
      
      private var §["T§:Object;
      
      protected var §'$0§:§-N§;
      
      private var §4# §:Dictionary;
      
      public function §>"^§()
      {
         super();
         this.§'$0§ = new §-N§();
      }
      
      public function § 4§(param1:Object, param2:Object, param3:Object) : void
      {
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:§@"q§ = null;
         this.§["T§ = param1;
         §8!`§(param1.particles);
         §for §(§%"e§).§[J§(param1.dynamicBlocks.materials);
         §for §(§%"e§).§[J§(param2.materials);
         §for §(§%"e§).§[J§(param3.dynamicBlocks.materials);
         if(param1.behaviors)
         {
            §'$4§.initBehaviorsDefinition(param1.behaviors);
         }
         §;#%§({});
         for(_loc4_ in param1.dynamicBlocks.blocks)
         {
            _loc5_ = param1.dynamicBlocks.blocks[_loc4_];
            _loc5_.definition = _loc5_.definition || _loc4_;
            _loc6_ = §?#§(_loc5_);
            if(_loc4_.indexOf("BLUEPRINT") > -1)
            {
               if(!this.§4# §)
               {
                  this.§4# § = new Dictionary();
               }
               this.§4# §[_loc4_] = _loc6_;
            }
            else
            {
               §;$?§(_loc6_,_loc4_.toLowerCase());
            }
         }
         for(_loc4_ in param3.dynamicBlocks.blocks)
         {
            _loc5_ = param3.dynamicBlocks.blocks[_loc4_];
            _loc5_.definition = _loc5_.definition || _loc4_;
            _loc6_ = §?#§(_loc5_);
            §;$?§(_loc6_,_loc4_.toLowerCase());
         }
      }
      
      public function §;!#§(param1:Object, param2:Boolean = false) : Array
      {
         var _loc5_:String = null;
         var _loc6_:* = null;
         var _loc8_:Object = null;
         var _loc9_:Object = null;
         var _loc10_:§,#q§ = null;
         var _loc11_:* = null;
         var _loc12_:Object = null;
         var _loc13_:§@"q§ = null;
         var _loc3_:Array = [];
         var _loc4_:Object = param1.particles;
         for(_loc6_ in _loc4_)
         {
            if((_loc9_ = _loc4_[_loc6_]).definition == undefined)
            {
               _loc9_.definition = _loc6_;
            }
            _loc10_ = §,#'§(_loc9_);
            _loc5_ = _loc6_.toLowerCase();
            §!$"§[_loc5_] = _loc10_;
            §7"y§[_loc5_] = _loc10_;
            _loc3_.push(_loc10_);
         }
         if(param1.dynamicBlocks)
         {
            if(param1.dynamicBlocks.materials)
            {
               §for §(§%"e§).§[J§(param1.dynamicBlocks.materials);
            }
         }
         if(param1.behaviors)
         {
            §'$4§.initBehaviorsDefinition(param1.behaviors);
         }
         else if(param1.dynamicBlocks && param1.dynamicBlocks.behaviors)
         {
            §'$4§.initBehaviorsDefinition(param1.dynamicBlocks.behaviors);
         }
         if(param1.dynamicBlocks)
         {
            for(_loc11_ in param1.dynamicBlocks.blocks)
            {
               if(this.§4# § && this.§4# §[_loc11_])
               {
                  delete this.§4# §[_loc11_];
               }
               _loc12_ = param1.dynamicBlocks.blocks[_loc11_];
               _loc12_.definition = _loc12_.definition || _loc11_;
               _loc13_ = §?#§(_loc12_);
               if(_loc12_.spawnBlock != undefined)
               {
                  _loc13_.§3!g§(_loc12_.spawnBlock);
               }
               if(_loc12_.spawnParticles != undefined)
               {
                  _loc13_.§="z§(_loc12_.spawnParticles);
               }
               if(param2)
               {
                  if(§!$"§.hasOwnProperty(_loc11_.toLocaleLowerCase()))
                  {
                     _loc13_.§+#9§ = true;
                  }
               }
               _loc5_ = _loc11_.toLowerCase();
               §;$?§(_loc13_,_loc5_);
               _loc3_.push(_loc13_);
            }
         }
         var _loc7_:Array = this.§%#m§();
         for each(_loc8_ in _loc7_)
         {
            _loc3_.push(_loc8_);
         }
         return _loc3_;
      }
      
      public function §%#m§() : Array
      {
         var _loc2_:* = null;
         var _loc1_:Array = [];
         if(this.§4# §)
         {
            for(_loc2_ in this.§4# §)
            {
               §;$?§(this.§4# §[_loc2_],_loc2_.toLowerCase());
               _loc1_.push(this.§4# §[_loc2_]);
            }
            this.§4# § = new Dictionary();
         }
         return _loc1_;
      }
      
      override protected function createLevelItem(param1:Object, param2:int) : §@"q§
      {
         var _loc3_:String = param1.material || param1.materialName;
         var _loc4_:§9!V§ = !!_loc3_ ? §`!3§.getSoundResource(_loc3_) : §`!3§.getSoundResource("MISC_SOUNDS");
         return new §=$"§(param1,param2,!!_loc3_ ? §%"e§.getMaterial(_loc3_) : null,_loc4_,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§4#1§),false,soundManager);
      }
      
      override public function loadItems(param1:XML) : void
      {
         super.loadItems(param1);
         this.§;"§(§^#6§.Powerup_Damage_Multipliers);
         this.§&§(§^#6§.Powerup_Velocity_Multipliers);
         this.§1#a§(§^#6§.Material_Damage_Factor_Limits);
         this.§'$0§.§&"z§(§^#6§.Slingshot_Bonus_Damages_Multipliers);
         this.§'$0§.§@#]§(§^#6§.Slingshot_Bird_Materials);
         this.§'$0§.§="v§(§^#6§.Slingshot_Bird_Collision_Effects);
      }
      
      protected function §;"§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:XML = null;
         for each(_loc2_ in param1.Powerup_BirdFood)
         {
            for each(_loc3_ in _loc2_.Bird)
            {
               §+"d§.§1J§.§'"5§(_loc3_);
            }
         }
      }
      
      protected function §&§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:XML = null;
         for each(_loc2_ in param1.Powerup_BirdFood)
         {
            for each(_loc3_ in _loc2_.Bird)
            {
               §+"d§.§1J§.§=$§(_loc3_);
            }
         }
      }
      
      protected function §1#a§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:Object = null;
         var _loc4_:XML = null;
         for each(_loc2_ in param1.Bird)
         {
            _loc3_ = new Object();
            for each(_loc4_ in _loc2_.attributes())
            {
               if(_loc4_.name() != "id")
               {
                  _loc3_[§^!b§.§2X§(_loc4_.name())] = _loc4_.valueOf();
               }
            }
            §6f§.§'"'§(_loc2_.@id,_loc3_);
         }
      }
      
      public function §+N§(param1:String = "") : void
      {
         this.§,#k§(param1);
         this.§=T§(param1);
      }
      
      private function §=T§(param1:String) : void
      {
         var _loc4_:* = null;
         var _loc5_:String = null;
         var _loc6_:Dictionary = null;
         var _loc7_:* = null;
         var _loc8_:Boolean = false;
         var _loc9_:int = 0;
         var _loc10_:Object = null;
         var _loc11_:String = null;
         var _loc2_:Array = [];
         if(this.§["T§.dynamicBlocks.brandanims && this.§["T§.dynamicBlocks.brandanims["brands"])
         {
            for each(_loc5_ in this.§["T§.dynamicBlocks.brandanims["brands"])
            {
               _loc2_.push(_loc5_);
            }
         }
         var _loc3_:§=g§ = §=g§(§7n§.§6#K§.animationManager);
         for(_loc4_ in this.§["T§.dynamicBlocks.brandanims.anims)
         {
            _loc6_ = new Dictionary();
            for(_loc7_ in this.§["T§.dynamicBlocks.brandanims.anims[_loc4_])
            {
               _loc10_ = this.§["T§.dynamicBlocks.brandanims.anims[_loc4_][_loc7_];
               if(_loc7_)
               {
                  if(_loc10_ is String)
                  {
                     _loc6_[_loc7_] = _loc10_;
                  }
                  else if(_loc10_ is Array)
                  {
                     _loc6_[_loc7_] = _loc10_;
                  }
               }
            }
            _loc8_ = false;
            _loc9_ = 0;
            while(_loc9_ < _loc2_.length)
            {
               if((_loc11_ = _loc2_[_loc9_]) == param1)
               {
                  _loc8_ = true;
                  break;
               }
               _loc9_++;
            }
            if(!_loc8_)
            {
               param1 = "";
            }
            _loc3_.§^!2§(_loc4_,_loc6_,param1);
         }
      }
      
      private function §,#k§(param1:String) : void
      {
         var _loc4_:* = null;
         var _loc5_:Dictionary = null;
         var _loc6_:* = null;
         var _loc7_:Object = null;
         var _loc2_:String = "";
         if(this.§["T§.dynamicBlocks.birds && this.§["T§.dynamicBlocks.birds["brand"])
         {
            _loc2_ = this.§["T§.dynamicBlocks.birds["brand"];
         }
         var _loc3_:§=g§ = §=g§(§7n§.§6#K§.animationManager);
         for(_loc4_ in this.§["T§.dynamicBlocks.birds)
         {
            if(_loc4_ != "brand")
            {
               _loc5_ = new Dictionary();
               for(_loc6_ in this.§["T§.dynamicBlocks.birds[_loc4_])
               {
                  _loc7_ = this.§["T§.dynamicBlocks.birds[_loc4_][_loc6_];
                  if(_loc6_)
                  {
                     if(_loc7_ is String)
                     {
                        _loc5_[_loc6_] = _loc7_;
                     }
                     else if(_loc7_ is Array)
                     {
                        _loc5_[_loc6_] = _loc7_;
                     }
                  }
               }
               if(param1 != _loc2_)
               {
                  param1 = "";
               }
               _loc3_.§0#G§(_loc4_,_loc5_,param1);
            }
         }
      }
      
      override protected function initMaterialManager() : void
      {
         §%"e§ = new §for §();
      }
   }
}
