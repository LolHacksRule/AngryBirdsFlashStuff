package §;b§
{
   import §&!<§.§]!M§;
   import §05§.§?s§;
   import §@y§.§0=§;
   import §^U§.§4!T§;
   
   public class §!l§ extends §4!T§
   {
      
      public static const §%!Q§:String = "PauseStateEditor";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §%!Q§ = "PauseStateEditor";
         }
      }
      
      public function §!l§(param1:Boolean = false, param2:String = "PauseStateEditor")
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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.init();
            do
            {
               §`!v§.init(§]!M§.§"!V§.Views.View_LevelPauseEditor[0]);
            }
            while(!_loc2_);
            
         }
      }
      
      override protected function getPlayState() : String
      {
         return StateLevelEditorTestPlay.§%!Q§;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0=§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(_loc6_ || this)
         {
            if("MENU" === _loc4_)
            {
               if(_loc6_ || param3)
               {
                  §§push(0);
                  if(!(_loc6_ || this))
                  {
                     addr121:
                  }
               }
               else
               {
                  addr103:
                  §§push(1);
                  if(!(_loc5_ && param1))
                  {
                     §§goto(addr121);
                  }
               }
               addr126:
               switch(§§pop())
               {
                  case 0:
                     §@"0§.§%P§(StateLevelEditor.§%!Q§);
                     mNextState = §@"0§.§%!Q§;
                     break;
                     addr70:
                  case 1:
                     §?s§.doJsCall("onFullscreenToggle");
                     if(!_loc5_)
                     {
                        if(_loc5_)
                        {
                           §§goto(addr70);
                        }
                     }
                     §§goto(addr128);
                  default:
                     super.uiInteractionHandler(param1,param2,param3);
                     if(_loc6_)
                     {
                        if(!(_loc6_ || param2))
                        {
                           break;
                        }
                        if(false)
                        {
                           addr37:
                        }
                     }
                     addr128:
                     return;
               }
               §§goto(addr37);
            }
            else
            {
               if("FULLSCREEN_BUTTON" === _loc4_)
               {
                  §§goto(addr103);
               }
               else
               {
                  §§push(2);
               }
               §§goto(addr126);
            }
         }
         §§goto(addr103);
      }
   }
}
