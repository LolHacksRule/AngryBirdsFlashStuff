package § "@§
{
   import §'!A§.§-!S§;
   import §'p§.§="#§;
   import §1"2§.§'s§;
   import §1"2§.§`7§;
   import §=!M§.§"o§;
   import flash.events.KeyboardEvent;
   
   public class StateLevelPreview extends StateLevelEditorTestPlay
   {
      
      public static const §'=§:String = "StateLevelPreview";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && StateLevelPreview))
         {
            §'=§ = "StateLevelPreview";
         }
      }
      
      private var §^'§:Boolean = true;
      
      public function StateLevelPreview(param1:Boolean = true, param2:String = "StateLevelPreview")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
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
         }
         while(true)
         {
            §?E§ = new §'s§(this);
            while(!(_loc2_ && this))
            {
               §?E§.init(§`7§.§>"?§.Views.View_LevelPreview[0]);
               if(!(_loc2_ && _loc1_))
               {
                  return;
               }
            }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!S§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param2)
         {
            if(param3 is §="#§)
            {
               if(!_loc5_)
               {
                  §§push(param1);
                  loop0:
                  while(true)
                  {
                     §§push(§-!S§.LISTENER_EVENT_MOUSE_DOWN);
                     while(§§pop() != §§pop())
                     {
                        §§push(param1);
                        if(!_loc6_)
                        {
                           continue loop0;
                        }
                        §§push(§-!S§.LISTENER_EVENT_MOUSE_UP);
                        if(_loc5_)
                        {
                           continue;
                        }
                        if(§§pop() == §§pop())
                        {
                           if(!(_loc5_ && param1))
                           {
                              §"o§.§[!?§();
                           }
                           if(_loc6_ || param2)
                           {
                              if(!(_loc6_ || this))
                              {
                                 break;
                              }
                              loop2:
                              while(true)
                              {
                                 var _loc4_:* = param2;
                                 if(_loc6_ || param2)
                                 {
                                    if("RESTART_LEVEL" === _loc4_)
                                    {
                                       addr116:
                                       §§push(0);
                                       if(_loc5_ && param1)
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
                                          §%!3§.§4[§(§'=§);
                                          if(_loc5_)
                                          {
                                             break loop2;
                                          }
                                          continue;
                                    }
                                 }
                                 §§goto(addr116);
                              }
                              return;
                              addr34:
                           }
                        }
                        §§goto(addr34);
                     }
                     addr98:
                     §"o§.§2!a§();
                  }
               }
            }
            §§goto(addr34);
         }
         §§goto(addr98);
      }
      
      override public function getVictoryState() : String
      {
         return §-m§.§'=§;
      }
      
      override public function getLoserState() : String
      {
         return §#"?§.§'=§;
      }
   }
}
