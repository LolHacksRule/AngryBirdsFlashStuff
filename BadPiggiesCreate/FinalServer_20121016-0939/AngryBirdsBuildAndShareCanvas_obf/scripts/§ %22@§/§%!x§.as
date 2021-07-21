package § "@§
{
   import §%_§.§4m§;
   import §'!A§.§-!S§;
   import §0![§.§@l§;
   import §1"2§.§`7§;
   
   public class §%!x§ extends §@l§
   {
      
      public static const §'=§:String = "PauseStateEditor";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §'=§ = "PauseStateEditor";
         }
      }
      
      public function §%!x§(param1:Boolean = false, param2:String = "PauseStateEditor")
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
         if(!(_loc2_ && _loc2_))
         {
            super.init();
            do
            {
               §?E§.init(§`7§.§>"?§.Views.View_LevelPauseEditor[0]);
            }
            while(!_loc1_);
            
         }
      }
      
      override protected function getPlayState() : String
      {
         return StateLevelEditorTestPlay.§'=§;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!S§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(!(_loc5_ && this))
         {
            if("MENU" !== _loc4_)
            {
               if("FULLSCREEN_BUTTON" === _loc4_)
               {
                  §§goto(addr103);
               }
               else
               {
                  §§push(2);
               }
               addr121:
               switch(§§pop())
               {
                  case 0:
                     §%!3§.§4[§(StateLevelEditor.§'=§);
                     loop0:
                     while(true)
                     {
                        mNextState = §%!3§.§'=§;
                        addr66:
                        while(true)
                        {
                           if(_loc6_ || param3)
                           {
                              break loop0;
                           }
                           continue loop0;
                        }
                     }
                     break;
                  case 1:
                     §4m§.doJsCall("onFullscreenToggle");
                     if(_loc6_)
                     {
                        if(!(_loc6_ || this))
                        {
                           §§goto(addr66);
                        }
                     }
                     §§goto(addr123);
                  default:
                     super.uiInteractionHandler(param1,param2,param3);
                     if(!(_loc5_ && param3))
                     {
                        if(false)
                        {
                           break;
                        }
                     }
                     §§goto(addr123);
               }
               addr123:
               return;
            }
            if(_loc6_)
            {
               addr96:
               §§push(0);
               if(!_loc6_)
               {
               }
            }
            else
            {
               addr103:
               §§push(1);
               if(!_loc6_)
               {
               }
            }
            §§goto(addr121);
            §§goto(addr103);
         }
         §§goto(addr96);
      }
   }
}
