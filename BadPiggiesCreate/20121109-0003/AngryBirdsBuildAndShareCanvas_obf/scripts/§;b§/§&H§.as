package §;b§
{
   import §#";§.§0"#§;
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §@y§.§0=§;
   import §^U§.§7!r§;
   
   public class §&H§ extends §7!r§
   {
      
      public static const §%!Q§:String = "LevelEndEditorFailState";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §&H§)
         {
            §%!Q§ = "LevelEndEditorFailState";
         }
      }
      
      public function §&H§(param1:Boolean = false, param2:String = "LevelEndEditorFailState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.init();
         }
         while(true)
         {
            §`!v§ = new §>!V§(this);
            while(_loc1_)
            {
               §`!v§.init(§]!M§.§"!V§.Views.View_LevelEndFailEditor[0]);
               if(_loc1_ || _loc2_)
               {
                  return;
               }
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0=§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(!(_loc6_ && this))
         {
            if("REPLAY" !== _loc4_)
            {
               if("MENU" === _loc4_)
               {
                  §§goto(addr122);
               }
               else
               {
                  §§push(2);
               }
               addr145:
               switch(§§pop())
               {
                  case 0:
                     §@"0§.§%P§(StateLevelEditorTestPlay.§%!Q§);
                     mNextState = §@"0§.§%!Q§;
                     break;
                     addr94:
                  case 1:
                     §0"#§.§4"#§();
                     while(true)
                     {
                        §@"0§.§%P§(StateLevelEditor.§%!Q§);
                        if(!(_loc5_ || param1))
                        {
                           break;
                        }
                        if(_loc6_ && param2)
                        {
                           continue;
                        }
                        if(_loc5_)
                        {
                           addr36:
                           mNextState = §@"0§.§%!Q§;
                           if(_loc5_)
                           {
                              break;
                           }
                           break;
                        }
                        §§goto(addr94);
                     }
                     §§goto(addr147);
                  default:
                     super.uiInteractionHandler(param1,param2,param3);
                     if(_loc5_)
                     {
                        if(!(_loc5_ || param2))
                        {
                           break;
                        }
                        if(false)
                        {
                           §§goto(addr36);
                        }
                     }
                     §§goto(addr147);
               }
               addr147:
               return;
            }
            if(_loc5_ || param1)
            {
               §§push(0);
               if(!_loc5_)
               {
               }
            }
            else
            {
               addr122:
               §§push(1);
               if(_loc5_ || param1)
               {
               }
            }
            §§goto(addr145);
         }
         §§goto(addr122);
      }
   }
}
