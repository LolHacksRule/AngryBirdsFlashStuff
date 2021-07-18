package §1!c§
{
   import §%!B§.§0![§;
   import §'!3§.§?W§;
   import §,M§.§+f§;
   import §0!m§.§@!S§;
   import §1`§.§7I§;
   import §1`§.§9%§;
   import §4[§.§2P§;
   
   public class §;"2§ extends §7X§
   {
      
      public static const §8"%§:String = "LevelEndFailStateRio";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §8"%§ = "LevelEndFailStateRio";
         }
      }
      
      private var §>o§:§?W§;
      
      public function §;"2§(param1:§0![§, param2:Boolean, param3:String, param4:§+f§)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param2)
         {
            super(param1,param2,param3,param4);
            do
            {
               this.§>o§ = new §?W§(this);
            }
            while(_loc5_ && param2);
            
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §^!T§ = new §9%§(this);
         }
         do
         {
            §^!T§.init(this.§'!,§());
         }
         while(_loc2_ && _loc1_);
         
      }
      
      protected function §'!,§() : XML
      {
         return §7I§.§7!%§.Views.ViewLevelEndFailCustom[0];
      }
      
      public function §0!W§() : String
      {
         return StateEpisodeSelection.§8"%§;
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            super.activate(param1);
            while(true)
            {
               §§push(§ !4§.§%"7§);
               loop1:
               while(true)
               {
                  §§push(§§pop().§+!J§);
                  addr121:
                  while(true)
                  {
                     §§pop().closeAllPopups();
                     addr122:
                     while(true)
                     {
                        §§push(§ !4§.§%"7§);
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr106);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(nextState.length > 0)
            {
               while(true)
               {
                  §@!S§.§2A§.clearLevel();
                  addr65:
                  while(true)
                  {
                  }
               }
               addr62:
            }
            while(true)
            {
               this.§>o§.update(param1);
               if(!_loc2_)
               {
                  continue;
               }
               if(_loc2_)
               {
                  break;
               }
               §§goto(addr62);
            }
            return;
         }
         §§goto(addr65);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.deActivate();
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.cleanup();
         }
      }
      
      public function §9!"§() : String
      {
         return §'8§.§8"%§;
      }
      
      public function §'!#§() : String
      {
         return §^j§.§8"%§;
      }
      
      public function §'l§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §7"6§(param1);
         }
      }
      
      public function get §[!,§() : §0![§
      {
         return §4a§;
      }
      
      public function §,"#§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:String = §4a§.getValidLevelId(this.§[!,§.getNextLevelId());
         if(_loc2_ || _loc1_)
         {
            if(!§2P§.§0!a§(_loc1_))
            {
               §7"6§(§^j§.§8"%§);
               if(!_loc3_)
               {
                  if(_loc2_ || _loc1_)
                  {
                     if(_loc3_ && _loc1_)
                     {
                        addr89:
                        §4a§.loadLevel(_loc1_);
                        §7"6§(StateCutScene.§8"%§);
                        addr92:
                        addr84:
                     }
                     return;
                  }
                  §§goto(addr92);
               }
               §§goto(addr84);
            }
         }
         §§goto(addr89);
      }
   }
}
