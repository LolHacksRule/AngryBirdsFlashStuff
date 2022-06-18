package §-!j§
{
   import §+!n§.§+!p§;
   import §-"e§.§-?§;
   import §9#M§.§0#^§;
   import §<"I§.§<$B§;
   import §?o§.§#!P§;
   import flash.utils.Dictionary;
   
   public class §7#I§ extends §,"!§
   {
       
      
      private var §[#l§:Object;
      
      protected var §["e§:§-?§;
      
      private var §!#`§:Dictionary;
      
      public function §7#I§()
      {
         super();
         this.§["e§ = new §-?§();
      }
      
      public function §-"E§(param1:Object, param2:Object, param3:Object) : void
      {
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:§@! § = null;
         this.§[#l§ = param1;
         §4!n§(param1.particles);
         §?"U§(§2#P§).§'#1§(param1.dynamicBlocks.materials);
         §?"U§(§2#P§).§'#1§(param2.materials);
         §?"U§(§2#P§).§'#1§(param3.dynamicBlocks.materials);
         if(param1.behaviors)
         {
            §0$3§.initBehaviorsDefinition(param1.behaviors);
         }
         §+"o§({});
         for(_loc4_ in param1.dynamicBlocks.blocks)
         {
            _loc5_ = param1.dynamicBlocks.blocks[_loc4_];
            _loc5_.definition = _loc5_.definition || _loc4_;
            _loc6_ = §=c§(_loc5_);
            if(_loc4_.indexOf("BLUEPRINT") > -1)
            {
               if(!this.§!#`§)
               {
                  this.§!#`§ = new Dictionary();
               }
               this.§!#`§[_loc4_] = _loc6_;
            }
            else
            {
               §'"Q§(_loc6_,_loc4_.toLowerCase());
            }
         }
         for(_loc4_ in param3.dynamicBlocks.blocks)
         {
            _loc5_ = param3.dynamicBlocks.blocks[_loc4_];
            _loc5_.definition = _loc5_.definition || _loc4_;
            _loc6_ = §=c§(_loc5_);
            §'"Q§(_loc6_,_loc4_.toLowerCase());
         }
      }
      
      public function §'!W§(param1:Object, param2:Boolean = false) : Array
      {
         var _loc5_:String = null;
         var _loc6_:* = null;
         var _loc8_:Object = null;
         var _loc9_:Object = null;
         var _loc10_:§4#"§ = null;
         var _loc11_:* = null;
         var _loc12_:Object = null;
         var _loc13_:§@! § = null;
         var _loc3_:Array = [];
         var _loc4_:Object = param1.particles;
         for(_loc6_ in _loc4_)
         {
            if((_loc9_ = _loc4_[_loc6_]).definition == undefined)
            {
               _loc9_.definition = _loc6_;
            }
            _loc10_ = §]# §(_loc9_);
            _loc5_ = _loc6_.toLowerCase();
            §#z§[_loc5_] = _loc10_;
            §!"3§[_loc5_] = _loc10_;
            _loc3_.push(_loc10_);
         }
         if(param1.dynamicBlocks)
         {
            if(param1.dynamicBlocks.materials)
            {
               §?"U§(§2#P§).§'#1§(param1.dynamicBlocks.materials);
            }
         }
         if(param1.behaviors)
         {
            §0$3§.initBehaviorsDefinition(param1.behaviors);
         }
         else if(param1.dynamicBlocks && param1.dynamicBlocks.behaviors)
         {
            §0$3§.initBehaviorsDefinition(param1.dynamicBlocks.behaviors);
         }
         if(param1.dynamicBlocks)
         {
            for(_loc11_ in param1.dynamicBlocks.blocks)
            {
               if(this.§!#`§ && this.§!#`§[_loc11_])
               {
                  delete this.§!#`§[_loc11_];
               }
               _loc12_ = param1.dynamicBlocks.blocks[_loc11_];
               _loc12_.definition = _loc12_.definition || _loc11_;
               _loc13_ = §=c§(_loc12_);
               if(_loc12_.spawnBlock != undefined)
               {
                  _loc13_.§8$&§(_loc12_.spawnBlock);
               }
               if(_loc12_.spawnParticles != undefined)
               {
                  _loc13_.§'!A§(_loc12_.spawnParticles);
               }
               if(param2)
               {
                  if(§#z§.hasOwnProperty(_loc11_.toLocaleLowerCase()))
                  {
                     _loc13_.§3"r§ = true;
                  }
               }
               _loc5_ = _loc11_.toLowerCase();
               §'"Q§(_loc13_,_loc5_);
               _loc3_.push(_loc13_);
            }
         }
         var _loc7_:Array = this.§%A§();
         for each(_loc8_ in _loc7_)
         {
            _loc3_.push(_loc8_);
         }
         return _loc3_;
      }
      
      public function §%A§() : Array
      {
         var _loc2_:* = null;
         var _loc1_:Array = [];
         if(this.§!#`§)
         {
            for(_loc2_ in this.§!#`§)
            {
               §'"Q§(this.§!#`§[_loc2_],_loc2_.toLowerCase());
               _loc1_.push(this.§!#`§[_loc2_]);
            }
            this.§!#`§ = new Dictionary();
         }
         return _loc1_;
      }
      
      override protected function createLevelItem(param1:Object, param2:int) : §@! §
      {
         var _loc3_:String = param1.material || param1.materialName;
         var _loc4_:§&!@§ = !!_loc3_ ? §?"_§.getSoundResource(_loc3_) : §?"_§.getSoundResource("MISC_SOUNDS");
         return new §[#e§(param1,param2,!!_loc3_ ? §2#P§.getMaterial(_loc3_) : null,_loc4_,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§"$+§),false,soundManager);
      }
      
      override public function loadItems(param1:XML) : void
      {
         super.loadItems(param1);
         this.§84§(§4"+§.Powerup_Damage_Multipliers);
         this.§>?§(§4"+§.Powerup_Velocity_Multipliers);
         this.§&#9§(§4"+§.Material_Damage_Factor_Limits);
         this.§["e§.§8$ §(§4"+§.Slingshot_Bonus_Damages_Multipliers);
         this.§["e§.§^!u§(§4"+§.Slingshot_Bird_Materials);
         this.§["e§.§,O§(§4"+§.Slingshot_Bird_Collision_Effects);
      }
      
      protected function §84§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:XML = null;
         for each(_loc2_ in param1.Powerup_BirdFood)
         {
            for each(_loc3_ in _loc2_.Bird)
            {
               §<$B§.§+"4§.§5"3§(_loc3_);
            }
         }
      }
      
      protected function §>?§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:XML = null;
         for each(_loc2_ in param1.Powerup_BirdFood)
         {
            for each(_loc3_ in _loc2_.Bird)
            {
               §<$B§.§+"4§.§&"F§(_loc3_);
            }
         }
      }
      
      protected function §&#9§(param1:XMLList) : void
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
                  _loc3_[§#!P§.§<"h§(_loc4_.name())] = _loc4_.valueOf();
               }
            }
            §^"q§.§2#c§(_loc2_.@id,_loc3_);
         }
      }
      
      public function §9#]§(param1:String = "") : void
      {
         this.§?O§(param1);
         this.§>"?§(param1);
      }
      
      private function §>"?§(param1:String) : void
      {
         var _loc4_:* = null;
         var _loc5_:String = null;
         var _loc6_:Dictionary = null;
         var _loc7_:* = null;
         var _loc8_:Boolean = false;
         var _loc9_:int = 0;
         var _loc10_:Object = null;
         var _loc2_:Array = [];
         if(this.§[#l§.dynamicBlocks.brandanims && this.§[#l§.dynamicBlocks.brandanims["brands"])
         {
            for each(_loc5_ in this.§[#l§.dynamicBlocks.brandanims["brands"])
            {
               _loc2_.push(_loc5_);
            }
         }
         var _loc3_:§0#^§ = §0#^§(§+!p§.§`?§.animationManager);
         for(_loc4_ in this.§[#l§.dynamicBlocks.brandanims.anims)
         {
            _loc6_ = new Dictionary();
            for(_loc7_ in this.§[#l§.dynamicBlocks.brandanims.anims[_loc4_])
            {
               _loc10_ = this.§[#l§.dynamicBlocks.brandanims.anims[_loc4_][_loc7_];
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
               if(_loc2_[_loc9_] == param1)
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
            _loc3_.§!$-§(_loc4_,_loc6_,param1);
         }
      }
      
      private function §?O§(param1:String) : void
      {
         var _loc4_:* = null;
         var _loc5_:Dictionary = null;
         var _loc6_:* = null;
         var _loc7_:Object = null;
         var _loc2_:String = "";
         if(this.§[#l§.dynamicBlocks.birds && this.§[#l§.dynamicBlocks.birds["brand"])
         {
            _loc2_ = this.§[#l§.dynamicBlocks.birds["brand"];
         }
         var _loc3_:§0#^§ = §0#^§(§+!p§.§`?§.animationManager);
         for(_loc4_ in this.§[#l§.dynamicBlocks.birds)
         {
            if(_loc4_ != "brand")
            {
               _loc5_ = new Dictionary();
               for(_loc6_ in this.§[#l§.dynamicBlocks.birds[_loc4_])
               {
                  _loc7_ = this.§[#l§.dynamicBlocks.birds[_loc4_][_loc6_];
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
               _loc3_.§2v§(_loc4_,_loc5_,param1);
            }
         }
      }
      
      override protected function initMaterialManager() : void
      {
         §2#P§ = new §?"U§();
      }
   }
}
