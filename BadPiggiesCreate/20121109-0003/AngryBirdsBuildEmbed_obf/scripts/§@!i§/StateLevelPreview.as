package §@!i§
{
   import § !r§.§%s§;
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §"!E§.§#!'§;
   import §#!4§.§+!S§;
   import flash.events.KeyboardEvent;
   
   public class StateLevelPreview extends StateLevelEditorTestPlay
   {
      
      public static const STATE_NAME:String = "StateLevelPreview";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            STATE_NAME = "StateLevelPreview";
         }
      }
      
      private var §4-§:Boolean = true;
      
      public function StateLevelPreview(param1:Boolean = true, param2:String = "StateLevelPreview")
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
         if(_loc1_)
         {
            super.init();
            if(_loc1_ || _loc1_)
            {
               §§goto(addr37);
            }
            §§goto(addr44);
         }
         addr37:
         §+!$§ = new §2U§(this);
         if(_loc1_)
         {
            addr44:
            §+!$§.init(§=!Z§.§;K§.Views.View_LevelPreview[0]);
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            if(param3 is §#!'§)
            {
               if(!(_loc5_ && param3))
               {
                  §§push(param1);
                  if(!_loc5_)
                  {
                     §§push(§+!S§.LISTENER_EVENT_MOUSE_DOWN);
                     if(_loc6_ || this)
                     {
                        if(§§pop() == §§pop())
                        {
                           if(_loc6_ || param3)
                           {
                              addr50:
                              §%s§.§[!@§();
                              if(_loc6_ || param3)
                              {
                                 var _loc4_:* = param2;
                                 addr78:
                                 if(!(_loc5_ && param1))
                                 {
                                    if("RESTART_LEVEL" === _loc4_)
                                    {
                                       addr126:
                                       §§push(0);
                                       if(_loc5_)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       §§push(1);
                                    }
                                    switch(§§pop())
                                    {
                                       case 0:
                                          §@!n§.§!=§(STATE_NAME);
                                          if(!(_loc5_ && param1))
                                          {
                                             mNextState = §@!n§.STATE_NAME;
                                             if(_loc6_ || param3)
                                             {
                                             }
                                             break;
                                          }
                                    }
                                    return;
                                 }
                                 §§goto(addr126);
                                 addr78:
                              }
                              else
                              {
                                 addr76:
                                 §%s§.§<1§();
                                 §§goto(addr78);
                              }
                           }
                           §§goto(addr78);
                        }
                        else
                        {
                           addr71:
                           §§push(param1);
                           §§push(§+!S§.LISTENER_EVENT_MOUSE_UP);
                        }
                        §§goto(addr78);
                     }
                     if(§§pop() == §§pop())
                     {
                        if(_loc6_)
                        {
                           §§goto(addr76);
                        }
                     }
                     §§goto(addr78);
                  }
                  §§goto(addr71);
               }
               §§goto(addr50);
            }
            §§goto(addr78);
         }
         §§goto(addr76);
      }
      
      override public function getVictoryState() : String
      {
         return §,!F§.STATE_NAME;
      }
      
      override public function getLoserState() : String
      {
         return §?!q§.STATE_NAME;
      }
   }
}
