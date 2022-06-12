package §'!s§
{
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §%!v§.§[<§;
   import §,V§.§'"5§;
   import §2!i§.§'M§;
   import §[!K§.§-k§;
   
   public class § -§ extends Popup
   {
       
      
      private var §"!T§:StatePopupManager;
      
      public function § -§(param1:§7!A§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            super(§ "A§.§4[§.Views.PopupView_NewTournamentBranded[0],param1);
         }
         while(true)
         {
            this.§"!T§ = param2;
            while(!_loc4_)
            {
               this.§"!T§.addEventListener(§'"5§.§#2§,this.onUiInteraction);
               if(_loc3_ || param2)
               {
                  return;
               }
            }
         }
      }
      
      private function onUiInteraction(param1:§'"5§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.uiInteractionHandler(param1.§"!k§,param1.§[2§,param1.§1!`§);
         }
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(!_loc6_)
         {
            §§push("CLOSE_POPUP");
            if(!_loc6_)
            {
               §§push(_loc4_);
               if(_loc5_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc6_)
                     {
                        §§push(0);
                        if(_loc6_ && param3)
                        {
                           addr137:
                        }
                     }
                     else
                     {
                        addr129:
                        §§push(1);
                        if(!(_loc6_ && param3))
                        {
                           §§goto(addr137);
                        }
                     }
                     §§goto(addr142);
                  }
                  else
                  {
                     addr127:
                     §§push("GOTO_TOURNAMENT");
                     §§push(_loc4_);
                  }
                  §§goto(addr129);
               }
               if(§§pop() === §§pop())
               {
                  §§goto(addr129);
               }
               else
               {
                  §§push(2);
               }
               addr142:
               loop3:
               switch(§§pop())
               {
                  case 0:
                     addr85:
                     (AngryBirdsFP11.sUserProgress as §[<§).saveTutorialSeen(§[<§.§8l§);
                     this.close();
                     break;
                     addr80:
                     addr90:
                  case 1:
                     §§push(AngryBirdsFP11.sUserProgress);
                     if(!(_loc6_ && param1))
                     {
                        (§§pop() as §[<§).saveTutorialSeen(§[<§.§8l§);
                        loop0:
                        for(; _loc5_; if(!(_loc5_ || this))
                        {
                           continue;
                        },if(!_loc6_)
                        {
                           if(false)
                           {
                              §§goto(addr40);
                           }
                           break loop3;
                        })
                        {
                           while(true)
                           {
                              §3T§.§67§.§=!w§(§-k§.STATE_NAME);
                              while(true)
                              {
                                 this.close();
                                 if(_loc6_ && this)
                                 {
                                    break loop3;
                                 }
                                 if(_loc5_)
                                 {
                                    continue loop0;
                                 }
                              }
                              break loop3;
                           }
                        }
                        §§goto(addr80);
                     }
                     else
                     {
                        §§goto(addr85);
                     }
               }
               return;
            }
            §§goto(addr127);
         }
         §§goto(addr129);
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§"!T§.removeEventListener(§'"5§.§#2§,this.onUiInteraction);
            do
            {
               super.close();
            }
            while(!(_loc2_ || _loc1_));
            
         }
      }
   }
}
