package §3C§
{
   import §0N§.§0!g§;
   import §3"#§.§<!O§;
   import §5X§.§+!#§;
   import §7!H§.§1#§;
   import §7!H§.§8"6§;
   import §77§.§&!>§;
   import §77§.§@_§;
   import §8!_§.§?!#§;
   import §8!_§.StateEpisodeSelection;
   import §=u§.§!D§;
   import §=u§.§5!9§;
   
   public class §=!v§ extends §9!;§
   {
      
      private static var §="3§:Class;
      
      private static const §&!Q§:Number = 250;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §="3§ = §,!F§;
         }
         do
         {
            §&!Q§ = 250;
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      private var §0"F§:§5!9§ = null;
      
      private var §"+§:Number;
      
      private var §'!D§:String;
      
      public function §=!v§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §>"2§ = true;
            while(true)
            {
               §1"$§ = false;
               loop1:
               while(_loc2_ || param1)
               {
                  while(true)
                  {
                     super(§1#§.§=g§,§8"6§.§ K§,§0!g§.§[!y§(§="3§));
                     while(_loc2_)
                     {
                        this.§'!D§ = param1;
                        if(!_loc3_)
                        {
                           return;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr74);
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.init();
            loop0:
            while(true)
            {
               this.§"+§ = §[S§.getItemByName("Container_PauseMenu").x;
               do
               {
                  (§ !g§.§;!'§ as §`Y§).§&,§.§""8§(false);
                  continue loop0;
               }
               while(!(_loc1_ || this));
               
            }
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+!#§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(!(_loc5_ && param2))
         {
            if("RESTART_LEVEL" === _loc4_)
            {
               if(!_loc5_)
               {
                  addr137:
                  §§push(0);
                  if(!(_loc6_ || param2))
                  {
                     addr181:
                  }
               }
               else
               {
                  addr163:
                  §§push(2);
                  if(_loc6_ || param1)
                  {
                     §§goto(addr181);
                  }
               }
               §§goto(addr186);
            }
            else
            {
               if("RESUME_LEVEL" !== _loc4_)
               {
                  if("MENU" === _loc4_)
                  {
                     §§goto(addr163);
                  }
                  else
                  {
                     §§push(3);
                  }
                  addr186:
                  loop3:
                  switch(§§pop())
                  {
                     case 0:
                        §>"2§ = false;
                        close();
                        §?!#§.§90§();
                        if(_loc6_)
                        {
                           addr102:
                           § !g§.§;!'§.§8!^§(§?!#§.STATE_NAME);
                           break;
                           addr100:
                           addr103:
                        }
                        break;
                        addr119:
                        addr113:
                     case 1:
                        this.§,D§();
                        break;
                        addr96:
                     case 2:
                        §<!O§.§'N§();
                        loop0:
                        while(_loc6_ || param3)
                        {
                           §§push(§ !g§.§;!'§);
                           if(_loc6_ || param3)
                           {
                              §§push(StateEpisodeSelection.STATE_NAME);
                              if(_loc6_)
                              {
                                 §§pop().§8!^§(§§pop());
                                 loop1:
                                 while(true)
                                 {
                                    if(_loc6_)
                                    {
                                       if(!_loc5_)
                                       {
                                          while(true)
                                          {
                                             §>"2§ = false;
                                             if(_loc6_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   close();
                                                   if(!_loc6_)
                                                   {
                                                      break loop3;
                                                   }
                                                   continue loop1;
                                                }
                                                §§goto(addr96);
                                             }
                                             break loop3;
                                          }
                                          break loop3;
                                          addr39:
                                       }
                                       break;
                                    }
                                    continue loop0;
                                 }
                                 §§goto(addr113);
                              }
                              §§goto(addr102);
                           }
                           §§goto(addr100);
                        }
                        §§goto(addr103);
                  }
                  return;
               }
               if(!(_loc5_ && param2))
               {
                  §§push(1);
                  if(!_loc6_)
                  {
                  }
               }
               else
               {
                  §§goto(addr163);
               }
               §§goto(addr186);
            }
            §§goto(addr163);
         }
         §§goto(addr137);
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §1"$§ = false;
         }
         do
         {
            super.show(param1);
            do
            {
               this.§>@§();
            }
            while(_loc2_ && this);
            
         }
         while(_loc2_ && _loc2_);
         
      }
      
      private function §>@§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §[S§.getItemByName("Container_PauseMenu").x = this.§"+§ - §&!Q§;
            loop0:
            while(true)
            {
               this.§!"%§(false);
               loop1:
               while(true)
               {
                  §§push(this.§0"F§);
                  if(!(_loc2_ && this))
                  {
                     if(§§pop() != null)
                     {
                        if(_loc2_)
                        {
                           continue;
                        }
                        §§push(this.§0"F§);
                     }
                     else
                     {
                        while(true)
                        {
                           this.§0"F§ = §!D§.§[!1§.§1"<§(§[S§.getItemByName("Container_PauseMenu"),{"x":this.§"+§},null,0.25,§!D§.§<"G§);
                           loop4:
                           for(; _loc1_ || _loc2_; if(!(_loc2_ && _loc1_))
                           {
                              continue loop0;
                           })
                           {
                              §§push(this.§0"F§);
                              loop5:
                              while(true)
                              {
                                 §§pop().onComplete = this.§#!t§;
                                 while(true)
                                 {
                                    §§push(this.§0"F§);
                                    if(!_loc2_)
                                    {
                                       if(!(_loc1_ || _loc1_))
                                       {
                                          break;
                                       }
                                       §§pop().play();
                                       if(!_loc2_)
                                       {
                                          continue loop4;
                                       }
                                       continue;
                                    }
                                    continue loop5;
                                 }
                                 addr111:
                                 while(true)
                                 {
                                    §§pop().stop();
                                    break loop4;
                                 }
                              }
                           }
                           continue loop1;
                        }
                        addr60:
                     }
                  }
                  §§goto(addr111);
               }
               if(!(_loc1_ || _loc2_))
               {
                  continue;
               }
               return;
               addr52:
            }
         }
         §§goto(addr52);
      }
      
      private function §#!t§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§!"%§(true);
         }
      }
      
      private function §!"%§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            (§[S§.getItemByName("Button_Resume") as §@_§).setEnabled(param1);
         }
         while(true)
         {
            (§[S§.getItemByName("Button_Replay") as §@_§).setEnabled(param1);
            while(!(_loc3_ && param1))
            {
               (§[S§.getItemByName("Button_Menu") as §@_§).setEnabled(param1);
               if(_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      private function §,D§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§0"F§);
            loop0:
            while(true)
            {
               if(§§pop() != null)
               {
                  while(true)
                  {
                     §§push(this.§0"F§);
                     addr151:
                     while(true)
                     {
                        §§pop().stop();
                        addr152:
                        while(true)
                        {
                        }
                     }
                  }
                  addr149:
               }
               while(true)
               {
                  this.§0"F§ = §!D§.§[!1§.§1"<§(§[S§.getItemByName("Container_PauseMenu"),{"x":this.§"+§ - §&!Q§},null,0.25,§!D§.§ "#§);
                  loop5:
                  for(; _loc1_; while(!(_loc2_ && _loc2_))
                  {
                     (§ !g§.§;!'§ as §`Y§).§&,§.§""8§(true);
                     §§goto(addr47);
                  })
                  {
                     if(!_loc2_)
                     {
                        §§push(this.§0"F§);
                        loop6:
                        while(_loc1_ || _loc2_)
                        {
                           §§pop().§%S§ = false;
                           while(true)
                           {
                              §§push(this.§0"F§);
                              if(_loc1_ || _loc1_)
                              {
                                 continue loop0;
                              }
                              continue loop6;
                              addr54:
                              if(!(_loc2_ && this))
                              {
                                 hide();
                                 addr61:
                                 if(_loc2_ && this)
                                 {
                                    while(true)
                                    {
                                       if(_loc2_ && _loc2_)
                                       {
                                          continue loop5;
                                       }
                                       §§goto(addr54);
                                       §§goto(addr61);
                                    }
                                    addr47:
                                 }
                                 return;
                                 addr38:
                              }
                           }
                           continue loop0;
                        }
                     }
                     else
                     {
                        §§goto(addr149);
                     }
                     §§goto(addr151);
                  }
                  §§goto(addr152);
               }
            }
         }
         §§goto(addr38);
      }
   }
}
