package §,!"§
{
   import §6v§.§`M§;
   import §8!B§.§#! §;
   import §]!-§.§`Z§;
   
   public class §0H§ extends §]g§
   {
       
      
      public function §0H§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
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
         }
      }
      
      override protected function getViewXML() : XML
      {
         return §`Z§.§5c§.Views.View_LevelEndEmbedFailRio[0];
      }
      
      override protected function showButtons() : void
      {
      }
      
      override protected function hideButtons() : void
      {
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.activate();
         }
         do
         {
            §#! §.§`'§.background.§,+§();
         }
         while(!_loc2_);
         
      }
      
      override protected function setButtonStates(param1:String) : void
      {
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§`M§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(_loc6_)
         {
            §§push("REPLAY");
            if(!(_loc5_ && param3))
            {
               §§push(_loc4_);
               if(!(_loc5_ && this))
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc6_ || param2)
                     {
                        addr125:
                        §§push(0);
                        if(!(_loc6_ || param3))
                        {
                           addr145:
                        }
                     }
                     else
                     {
                        addr137:
                        §§push(1);
                        if(!(_loc5_ && param3))
                        {
                           §§goto(addr145);
                        }
                     }
                     §§goto(addr150);
                  }
                  else
                  {
                     §§goto(addr136);
                  }
               }
               §§goto(addr136);
            }
            addr136:
            if("MENU" === _loc4_)
            {
               §§goto(addr137);
            }
            else
            {
               §§push(2);
            }
            addr150:
            switch(§§pop())
            {
               case 0:
                  §-O§.§8!5§();
                  mNextState = §5!'§();
                  addr56:
                  break;
                  addr84:
                  addr79:
               case 1:
                  mNextState = §@f§.§-A§;
                  break;
                  addr73:
               default:
                  super.uiInteractionHandler(param1,param2,param3);
                  if(_loc6_ || param2)
                  {
                     if(!(_loc5_ && this))
                     {
                        if(_loc6_ || param3)
                        {
                           if(!(_loc5_ && param2))
                           {
                              if(true)
                              {
                                 break;
                              }
                           }
                           else
                           {
                              §§goto(addr84);
                           }
                           §§goto(addr56);
                        }
                        §§goto(addr79);
                     }
                     else
                     {
                        §§goto(addr73);
                     }
                  }
            }
            return;
         }
         §§goto(addr125);
      }
   }
}
