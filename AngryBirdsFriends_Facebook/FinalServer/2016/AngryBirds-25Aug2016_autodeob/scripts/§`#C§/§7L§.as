package §`#C§
{
   import §'"-§.§`j§;
   import §+!d§.§!b§;
   import §?§.§>"$§;
   import §@"§.§##V§;
   import flash.utils.Dictionary;
   
   public class §7L§ extends §3Z§
   {
       
      
      private var §7"!§:Object;
      
      protected var §[#z§:§!b§;
      
      public function §7L§()
      {
         super();
         this.§[#z§ = new §!b§();
      }
      
      public function §@!-§(param1:Object, param2:Object, param3:Object) : void
      {
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:§6!i§ = null;
         this.§7"!§ = param1;
         §%!C§(param1.particles);
         §?"V§(§3"z§).§?!X§(param1.dynamicBlocks.materials);
         §?"V§(§3"z§).§?!X§(param2.materials);
         §?"V§(§3"z§).§?!X§(param3.dynamicBlocks.materials);
         if(param1.behaviors)
         {
            §8!<§.initBehaviorsDefinition(param1.behaviors);
         }
         §4!5§("{}");
         for(_loc4_ in param1.dynamicBlocks.blocks)
         {
            if(_loc4_.indexOf("BLUEPRINT") <= -1)
            {
               _loc5_ = param1.dynamicBlocks.blocks[_loc4_];
               _loc5_.definition = _loc5_.definition || _loc4_;
               _loc6_ = §[$8§(_loc5_);
               §45§(_loc6_,_loc4_.toLowerCase());
            }
         }
         for(_loc4_ in param3.dynamicBlocks.blocks)
         {
            _loc5_ = param3.dynamicBlocks.blocks[_loc4_];
            _loc5_.definition = _loc5_.definition || _loc4_;
            _loc6_ = §[$8§(_loc5_);
            §45§(_loc6_,_loc4_.toLowerCase());
         }
      }
      
      public function §2R§(param1:Object, param2:Boolean = true) : Array
      {
         var _loc5_:String = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:Object = null;
         var _loc9_:§'#g§ = null;
         var _loc10_:Object = null;
         var _loc11_:§6!i§ = null;
         var _loc3_:Array = [];
         var _loc4_:Object = param1.particles;
         for(_loc6_ in _loc4_)
         {
            if((_loc8_ = _loc4_[_loc6_]).definition == undefined)
            {
               _loc8_.definition = _loc6_;
            }
            _loc9_ = §3"E§(_loc8_);
            _loc5_ = _loc6_.toLowerCase();
            §5&§[_loc5_] = _loc9_;
            §;"x§[_loc5_] = _loc9_;
            _loc3_.push(_loc9_);
         }
         if(param1.dynamicBlocks.materials)
         {
            §?"V§(§3"z§).§?!X§(param1.dynamicBlocks.materials);
         }
         if(param1.behaviors)
         {
            §8!<§.initBehaviorsDefinition(param1.behaviors);
         }
         for(_loc7_ in param1.dynamicBlocks.blocks)
         {
            if(!(!param2 && _loc7_.indexOf("BLUEPRINT") > -1))
            {
               _loc10_ = param1.dynamicBlocks.blocks[_loc7_];
               _loc10_.definition = _loc10_.definition || _loc7_;
               _loc11_ = §[$8§(_loc10_);
               _loc5_ = _loc7_.toLowerCase();
               §45§(_loc11_,_loc5_);
               _loc3_.push(_loc11_);
            }
         }
         return _loc3_;
      }
      
      override protected function createLevelItem(param1:Object, param2:int) : §6!i§
      {
         var _loc3_:String = param1.material || param1.materialName;
         return new §@!1§(param1,param2,!!_loc3_ ? §3"z§.getMaterial(_loc3_) : null,_loc3_ && _loc3_ == "brandBlock" ? §0#$§.getSoundResource("MISC_SOUNDS") : null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§5"<§),false,§?"E§);
      }
      
      override public function loadItems(param1:XML) : void
      {
         super.loadItems(param1);
         this.§#"g§(§5$+§.Powerup_Damage_Multipliers);
         this.§[#z§.§2H§(§5$+§.Slingshot_Bonus_Damages_Multipliers);
         this.§[#z§.§4E§(§5$+§.Slingshot_Bird_Materials);
         this.§[#z§.§-"m§(§5$+§.Slingshot_Bird_Collision_Effects);
      }
      
      protected function §#"g§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:XML = null;
         var _loc4_:Number = NaN;
         for each(_loc2_ in param1.Powerup_Damage)
         {
            for each(_loc3_ in _loc2_.Bird_Specific)
            {
               _loc4_ = 1;
               if(_loc3_.hasOwnProperty("@BirdFood"))
               {
                  _loc4_ = Number(_loc3_.@BirdFood);
                  §`j§.§6#z§.§+#c§(_loc3_.@id,_loc4_);
               }
            }
         }
      }
      
      public function §9"V§(param1:String = "") : void
      {
         this.§ for§(param1);
         this.§-!#§(param1);
      }
      
      private function §-!#§(param1:String) : void
      {
         var _loc4_:* = null;
         var _loc5_:String = null;
         var _loc6_:Dictionary = null;
         var _loc7_:* = null;
         var _loc8_:Boolean = false;
         var _loc9_:int = 0;
         var _loc10_:Object = null;
         var _loc2_:Array = [];
         if(this.§7"!§.dynamicBlocks.brandanims && this.§7"!§.dynamicBlocks.brandanims["brands"])
         {
            for each(_loc5_ in this.§7"!§.dynamicBlocks.brandanims["brands"])
            {
               _loc2_.push(_loc5_);
            }
         }
         var _loc3_:§##V§ = §##V§(§>"$§.§3#'§.animationManager);
         for(_loc4_ in this.§7"!§.dynamicBlocks.brandanims.anims)
         {
            _loc6_ = new Dictionary();
            for(_loc7_ in this.§7"!§.dynamicBlocks.brandanims.anims[_loc4_])
            {
               _loc10_ = this.§7"!§.dynamicBlocks.brandanims.anims[_loc4_][_loc7_];
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
            _loc3_.§8W§(_loc4_,_loc6_,param1);
         }
      }
      
      private function § for§(param1:String) : void
      {
         var _loc4_:* = null;
         var _loc5_:Dictionary = null;
         var _loc6_:* = null;
         var _loc7_:Object = null;
         var _loc2_:String = "";
         if(this.§7"!§.dynamicBlocks.birds && this.§7"!§.dynamicBlocks.birds["brand"])
         {
            _loc2_ = this.§7"!§.dynamicBlocks.birds["brand"];
         }
         var _loc3_:§##V§ = §##V§(§>"$§.§3#'§.animationManager);
         for(_loc4_ in this.§7"!§.dynamicBlocks.birds)
         {
            if(_loc4_ != "brand")
            {
               _loc5_ = new Dictionary();
               for(_loc6_ in this.§7"!§.dynamicBlocks.birds[_loc4_])
               {
                  _loc7_ = this.§7"!§.dynamicBlocks.birds[_loc4_][_loc6_];
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
               _loc3_.§5#a§(_loc4_,_loc5_,param1);
            }
         }
      }
   }
}
