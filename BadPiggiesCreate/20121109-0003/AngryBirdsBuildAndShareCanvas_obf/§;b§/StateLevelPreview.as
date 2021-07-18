package §;b§
{
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §6]§.§8!W§;
   import §=!7§.§9"8§;
   import §@y§.§0=§;
   import flash.events.KeyboardEvent;
   
   public class StateLevelPreview extends StateLevelEditorTestPlay
   {
      
      public static const §%!Q§:String = "StateLevelPreview";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §%!Q§ = "StateLevelPreview";
         }
      }
      
      private var §>"&§:Boolean = true;
      
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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.init();
         }
         do
         {
            §`!v§ = new §>!V§(this);
            do
            {
               §`!v§.init(§]!M§.§"!V§.Views.View_LevelPreview[0]);
            }
            while(!_loc2_);
            
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0=§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            if(param3 is §9"8§)
            {
               loop0:
               while(true)
               {
                  §§push(param1);
                  loop1:
                  while(true)
                  {
                     §§push(§0=§.LISTENER_EVENT_MOUSE_DOWN);
                     while(true)
                     {
                        if(§§pop() == §§pop())
                        {
                           if(!_loc6_)
                           {
                              §8!W§.§for§();
                           }
                        }
                        §§push(param1);
                        if(_loc6_)
                        {
                           continue loop1;
                        }
                        §§push(§0=§.LISTENER_EVENT_MOUSE_UP);
                        if(_loc5_ || this)
                        {
                           if(§§pop() == §§pop())
                           {
                              if(_loc5_)
                              {
                                 if(!_loc6_)
                                 {
                                    if(_loc5_)
                                    {
                                       §8!W§.§^!R§();
                                       addr76:
                                       break;
                                    }
                                    continue loop0;
                                 }
                              }
                              §§goto(addr76);
                           }
                           break;
                        }
                     }
                  }
               }
            }
            loop3:
            while(true)
            {
               var _loc4_:* = param2;
               if(!(_loc6_ && this))
               {
                  if("RESTART_LEVEL" === _loc4_)
                  {
                     addr105:
                     §§push(0);
                     if(_loc6_)
                     {
                     }
                  }
                  else
                  {
                     §§push(1);
                  }
                  loop5:
                  switch(§§pop())
                  {
                     case 0:
                        §@"0§.§%P§(§%!Q§);
                        while(true)
                        {
                           mNextState = §@"0§.§%!Q§;
                           if(!(_loc5_ || this))
                           {
                              break loop5;
                           }
                           if(_loc5_)
                           {
                              if(true)
                              {
                                 break loop5;
                              }
                              continue loop3;
                           }
                        }
                  }
                  return;
               }
               §§goto(addr105);
            }
         }
         §§goto(addr76);
      }
      
      override public function getVictoryState() : String
      {
         return §0C§.§%!Q§;
      }
      
      override public function getLoserState() : String
      {
         return §<b§.§%!Q§;
      }
   }
}
