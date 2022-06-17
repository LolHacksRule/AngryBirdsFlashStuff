package §?§#3
{
   import § O§.§#!B§;
   import §"$=§.§>"?§;
   import §-#R§.§0!w§;
   import §=!2§.§%"T§;
   import §^"[§.§&M§;
   import flash.utils.Dictionary;
   
   public class §#!-§ extends §?!e§
   {
       
      
      private var §"$5§:Object;
      
      protected var §9!T§:§#!B§;
      
      private var §&"1§:Dictionary;
      
      public function §#!-§()
      {
         super();
         this.§9!T§ = new §#!B§();
      }
      
      public function §0$"§(param1:Object, param2:Object, param3:Object) : void
      {
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:§+"%§ = null;
         this.§"$5§ = param1;
         §^k§(param1.particles);
         §["I§(§#!x§).§!$E§(param1.dynamicBlocks.materials);
         §["I§(§#!x§).§!$E§(param2.materials);
         §["I§(§#!x§).§!$E§(param3.dynamicBlocks.materials);
         if(param1.behaviors)
         {
            §+X§.initBehaviorsDefinition(param1.behaviors);
         }
         §#"E§("{}");
         for(_loc4_ in param1.dynamicBlocks.blocks)
         {
            _loc5_ = param1.dynamicBlocks.blocks[_loc4_];
            _loc5_.definition = _loc5_.definition || _loc4_;
            _loc6_ = §#"D§(_loc5_);
            if(_loc4_.indexOf("BLUEPRINT") > -1)
            {
               if(!this.§&"1§)
               {
                  this.§&"1§ = new Dictionary();
               }
               this.§&"1§[_loc4_] = _loc6_;
            }
            else
            {
               §>#&§(_loc6_,_loc4_.toLowerCase());
            }
         }
         for(_loc4_ in param3.dynamicBlocks.blocks)
         {
            _loc5_ = param3.dynamicBlocks.blocks[_loc4_];
            _loc5_.definition = _loc5_.definition || _loc4_;
            _loc6_ = §#"D§(_loc5_);
            §>#&§(_loc6_,_loc4_.toLowerCase());
         }
      }
      
      public function §6"j§(param1:Object, param2:Boolean = false) : Array
      {
         var _loc5_:String = null;
         var _loc6_:* = null;
         var _loc8_:Object = null;
         var _loc9_:Object = null;
         var _loc10_:§["+§ = null;
         var _loc11_:* = null;
         var _loc12_:Object = null;
         var _loc13_:§+"%§ = null;
         var _loc3_:Array = [];
         var _loc4_:Object = param1.particles;
         for(_loc6_ in _loc4_)
         {
            if((_loc9_ = _loc4_[_loc6_]).definition == undefined)
            {
               _loc9_.definition = _loc6_;
            }
            _loc10_ = §>!x§(_loc9_);
            _loc5_ = _loc6_.toLowerCase();
            §,#i§[_loc5_] = _loc10_;
            §="X§[_loc5_] = _loc10_;
            _loc3_.push(_loc10_);
         }
         if(param1.dynamicBlocks)
         {
            if(param1.dynamicBlocks.materials)
            {
               §["I§(§#!x§).§!$E§(param1.dynamicBlocks.materials);
            }
         }
         if(param1.behaviors)
         {
            §+X§.initBehaviorsDefinition(param1.behaviors);
         }
         else if(param1.dynamicBlocks && param1.dynamicBlocks.behaviors)
         {
            §+X§.initBehaviorsDefinition(param1.dynamicBlocks.behaviors);
         }
         if(param1.dynamicBlocks)
         {
            for(_loc11_ in param1.dynamicBlocks.blocks)
            {
               if(this.§&"1§ && this.§&"1§[_loc11_])
               {
                  delete this.§&"1§[_loc11_];
               }
               _loc12_ = param1.dynamicBlocks.blocks[_loc11_];
               _loc12_.definition = _loc12_.definition || _loc11_;
               _loc13_ = §#"D§(_loc12_);
               if(_loc12_.spawnBlock != undefined)
               {
                  _loc13_.§#!R§(_loc12_.spawnBlock);
               }
               if(_loc12_.spawnParticles != undefined)
               {
                  _loc13_.§@"R§(_loc12_.spawnParticles);
               }
               if(param2)
               {
                  if(§,#i§.hasOwnProperty(_loc11_.toLocaleLowerCase()))
                  {
                     _loc13_.§^"8§ = true;
                  }
               }
               _loc5_ = _loc11_.toLowerCase();
               §>#&§(_loc13_,_loc5_);
               _loc3_.push(_loc13_);
            }
         }
         var _loc7_:Array = this.§!"@§();
         for each(_loc8_ in _loc7_)
         {
            _loc3_.push(_loc8_);
         }
         return _loc3_;
      }
      
      public function §!"@§() : Array
      {
         var _loc2_:* = null;
         var _loc1_:Array = [];
         if(this.§&"1§)
         {
            for(_loc2_ in this.§&"1§)
            {
               §>#&§(this.§&"1§[_loc2_],_loc2_.toLowerCase());
               _loc1_.push(this.§&"1§[_loc2_]);
            }
            this.§&"1§ = new Dictionary();
         }
         return _loc1_;
      }
      
      override protected function createLevelItem(param1:Object, param2:int) : §+"%§
      {
         var _loc3_:String = param1.material || param1.materialName;
         var _loc4_:§4I§ = !!_loc3_ ? §8]§.getSoundResource(_loc3_) : §8]§.getSoundResource("MISC_SOUNDS");
         return new §]# §(param1,param2,!!_loc3_ ? §#!x§.getMaterial(_loc3_) : null,_loc4_,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§!#i§),false,§3!h§);
      }
      
      override public function loadItems(param1:XML) : void
      {
         super.loadItems(param1);
         this.§%+§(§ <§.Powerup_Damage_Multipliers);
         this.§'"H§(§ <§.Powerup_Velocity_Multipliers);
         this.§=G§(§ <§.Material_Damage_Factor_Limits);
         this.§9!T§.§2S§(§ <§.Slingshot_Bonus_Damages_Multipliers);
         this.§9!T§.§-!D§(§ <§.Slingshot_Bird_Materials);
         this.§9!T§.§8X§(§ <§.Slingshot_Bird_Collision_Effects);
      }
      
      protected function §%+§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:XML = null;
         for each(_loc2_ in param1.Powerup_BirdFood)
         {
            for each(_loc3_ in _loc2_.Bird)
            {
               §0!w§.§3#D§.§2#h§(_loc3_);
            }
         }
      }
      
      protected function §'"H§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:XML = null;
         for each(_loc2_ in param1.Powerup_BirdFood)
         {
            for each(_loc3_ in _loc2_.Bird)
            {
               §0!w§.§3#D§.§?!g§(_loc3_);
            }
         }
      }
      
      protected function §=G§(param1:XMLList) : void
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
                  _loc3_[§>"?§.§;!"§(_loc4_.name())] = _loc4_.valueOf();
               }
            }
            §1q§.§7"F§(_loc2_.@id,_loc3_);
         }
      }
      
      public function §>3§(param1:String = "") : void
      {
         this.§+#W§(param1);
         this.§ " §(param1);
      }
      
      private function § " §(param1:String) : void
      {
         var _loc4_:* = null;
         var _loc5_:String = null;
         var _loc6_:Dictionary = null;
         var _loc7_:* = null;
         var _loc8_:Boolean = false;
         var _loc9_:int = 0;
         var _loc10_:Object = null;
         var _loc2_:Array = [];
         if(this.§"$5§.dynamicBlocks.brandanims && this.§"$5§.dynamicBlocks.brandanims["brands"])
         {
            for each(_loc5_ in this.§"$5§.dynamicBlocks.brandanims["brands"])
            {
               _loc2_.push(_loc5_);
            }
         }
         var _loc3_:§&M§ = §&M§(§%"T§.§;`§.animationManager);
         for(_loc4_ in this.§"$5§.dynamicBlocks.brandanims.anims)
         {
            _loc6_ = new Dictionary();
            for(_loc7_ in this.§"$5§.dynamicBlocks.brandanims.anims[_loc4_])
            {
               _loc10_ = this.§"$5§.dynamicBlocks.brandanims.anims[_loc4_][_loc7_];
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
            _loc3_.§?#J§(_loc4_,_loc6_,param1);
         }
      }
      
      private function §+#W§(param1:String) : void
      {
         var _loc4_:* = null;
         var _loc5_:Dictionary = null;
         var _loc6_:* = null;
         var _loc7_:Object = null;
         var _loc2_:String = "";
         if(this.§"$5§.dynamicBlocks.birds && this.§"$5§.dynamicBlocks.birds["brand"])
         {
            _loc2_ = this.§"$5§.dynamicBlocks.birds["brand"];
         }
         var _loc3_:§&M§ = §&M§(§%"T§.§;`§.animationManager);
         for(_loc4_ in this.§"$5§.dynamicBlocks.birds)
         {
            if(_loc4_ != "brand")
            {
               _loc5_ = new Dictionary();
               for(_loc6_ in this.§"$5§.dynamicBlocks.birds[_loc4_])
               {
                  _loc7_ = this.§"$5§.dynamicBlocks.birds[_loc4_][_loc6_];
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
               _loc3_.§-v§(_loc4_,_loc5_,param1);
            }
         }
      }
      
      override protected function initMaterialManager() : void
      {
         §#!x§ = new §["I§();
      }
   }
}
