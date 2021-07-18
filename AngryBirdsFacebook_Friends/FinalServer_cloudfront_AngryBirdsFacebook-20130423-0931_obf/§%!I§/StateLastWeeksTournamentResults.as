package §%!I§
{
   import §%i§.§^n§;
   import §,l§.§#!>§;
   import §,l§.§1U§;
   import §,l§.§7"L§;
   import §0D§.§3!R§;
   import §0D§.§`!k§;
   import §1!t§.§""B§;
   import §2"4§.§&k§;
   import §2"4§.§@"E§;
   import §8";§.§+d§;
   import §;u§.§&"[§;
   import §;u§.§9!V§;
   import §@!"§.§?l§;
   import §["6§.§^!C§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.display.MovieClip;
   
   public class StateLastWeeksTournamentResults extends §+d§
   {
      
      public static const STATE_NAME:String = "StateLastWeeksTournamentResults";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            STATE_NAME = "StateLastWeeksTournamentResults";
         }
      }
      
      private var §%!d§:§^!C§;
      
      private var §;"3§:§7"L§;
      
      private var §="8§:§`!k§;
      
      private var §#k§:§`!k§;
      
      private var §,!a§:§`!k§;
      
      public function StateLastWeeksTournamentResults(param1:Boolean = false, param2:String = "StateLastWeeksTournamentResults")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.init();
            while(true)
            {
               §2"@§ = new §`_§(this);
               §§goto(addr74);
            }
         }
         addr74:
         while(true)
         {
            §2"@§.init(§ "<§.§%I§.Views.View_TournamentPrevious[0]);
            if(_loc2_ || this)
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.activate();
         }
         loop0:
         while(true)
         {
            §§push(this.§%!d§);
            while(true)
            {
               if(§§pop() == null)
               {
                  while(true)
                  {
                     this.§%!d§ = new §^!C§((§2"@§.getItemByName("FireworksArea") as §^n§).mClip);
                     addr105:
                     while(true)
                     {
                     }
                  }
                  addr95:
               }
               while(true)
               {
                  §§push(this.§%!d§);
                  if(!_loc1_)
                  {
                     break;
                  }
                  §§pop().activate();
                  loop5:
                  while(true)
                  {
                     this.injectData();
                     while(_loc1_ || _loc1_)
                     {
                        if(_loc1_)
                        {
                           §%"S§.§!C§.§]"Y§("Last week\'s scores");
                           if(!(_loc1_ || _loc1_))
                           {
                              continue;
                           }
                           if(_loc2_)
                           {
                              continue loop5;
                           }
                           if(!(_loc2_ && _loc2_))
                           {
                              return;
                           }
                           §§goto(addr95);
                           continue;
                        }
                        continue loop0;
                     }
                     §§goto(addr105);
                  }
               }
            }
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§%!d§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§%!d§);
                     addr110:
                     while(true)
                     {
                        §§pop().deActivate();
                        addr111:
                        while(true)
                        {
                        }
                     }
                     loop9:
                     while(true)
                     {
                        if(_loc2_ || _loc1_)
                        {
                           addr102:
                           loop3:
                           while(true)
                           {
                              §§push(this.§#k§);
                              if(!_loc1_)
                              {
                                 if(§§pop())
                                 {
                                    loop4:
                                    while(true)
                                    {
                                       if(!_loc1_)
                                       {
                                          §§push(this.§#k§);
                                          while(true)
                                          {
                                             §§pop().dispose();
                                             loop7:
                                             while(true)
                                             {
                                                if(_loc1_)
                                                {
                                                   continue loop9;
                                                }
                                                addr83:
                                                if(!_loc1_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(this.§,!a§);
                                                      if(_loc2_ || _loc2_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!_loc1_)
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  continue loop4;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(this.§,!a§);
                                                                  addr51:
                                                                  while(true)
                                                                  {
                                                                     §§pop().dispose();
                                                                  }
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               if(!(_loc1_ && this))
                                                               {
                                                                  break loop3;
                                                               }
                                                               continue loop7;
                                                            }
                                                         }
                                                         break loop3;
                                                      }
                                                      §§goto(addr51);
                                                      §§goto(addr83);
                                                   }
                                                   §§goto(addr111);
                                                   addr24:
                                                }
                                                else
                                                {
                                                   §§goto(addr111);
                                                }
                                                while(true)
                                                {
                                                   §§push(this.§="8§);
                                                   if(!_loc1_)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         continue loop3;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(this.§="8§);
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§pop().dispose();
                                                      continue loop9;
                                                   }
                                                   §§goto(addr111);
                                                }
                                             }
                                          }
                                          addr70:
                                       }
                                       §§goto(addr92);
                                    }
                                    continue loop9;
                                 }
                                 §§goto(addr24);
                              }
                              §§goto(addr70);
                           }
                           return;
                        }
                        continue loop0;
                     }
                  }
               }
               §§goto(addr86);
            }
            §§goto(addr110);
         }
         §§goto(addr39);
      }
      
      public function injectData() : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc3_:Object = null;
         var _loc4_:§#!>§ = null;
         var _loc5_:§#!>§ = null;
         var _loc6_:§@"E§ = null;
         if(_loc9_ || _loc3_)
         {
            this.§;"3§ = new §7"L§();
            loop0:
            while(true)
            {
               §§push(this.§;"3§);
               addr88:
               while(true)
               {
                  §§push(this.§1!S§(1));
                  addr91:
                  while(true)
                  {
                     §§pop().§;"O§ = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            while(true)
            {
               §§push(this.§;"3§);
               loop6:
               while(!_loc10_)
               {
                  §§push(this.§1!S§(2));
                  loop7:
                  while(true)
                  {
                     §§pop().§ !e§ = §§pop();
                     addr84:
                     while(true)
                     {
                        §§push(this.§;"3§);
                        if(!_loc10_)
                        {
                           continue loop7;
                        }
                        continue loop6;
                     }
                     §§goto(addr91);
                  }
               }
               §§goto(addr88);
            }
         }
      }
      
      private function §1!S§(param1:int) : §1U§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:Object = null;
         var _loc3_:§@"E§ = null;
         if(_loc6_)
         {
            §§push(§3!R§.§&"5§);
            if(_loc6_ || _loc3_)
            {
               if(§§pop().previousTournament)
               {
                  if(_loc6_)
                  {
                     addr39:
                     addr37:
                     if(!§3!R§.§&"5§.previousTournament.players)
                     {
                     }
                     §§goto(addr133);
                  }
                  var _loc4_:int = 0;
                  var _loc5_:* = §3!R§.§&"5§.previousTournament.players;
                  while(true)
                  {
                     for each(_loc2_ in _loc5_)
                     {
                        if(!(_loc7_ && _loc2_))
                        {
                           if(!_loc2_)
                           {
                              continue;
                           }
                           if(!_loc7_)
                           {
                              addr78:
                              if(_loc2_.r != param1)
                              {
                                 continue;
                              }
                           }
                           _loc3_ = §&k§.§`!]§(_loc2_.u);
                           if(_loc6_ || _loc3_)
                           {
                              if(!_loc3_)
                              {
                                 break;
                              }
                              if(_loc7_ && _loc2_)
                              {
                                 break;
                              }
                              addr114:
                              _loc2_.n = _loc3_.name;
                              if(!(_loc7_ && _loc2_))
                              {
                                 break;
                              }
                              continue;
                           }
                           §§goto(addr114);
                        }
                        §§goto(addr78);
                     }
                  }
                  return §1U§.§?$§(_loc2_);
               }
               addr133:
               return null;
            }
            §§goto(addr39);
         }
         §§goto(addr37);
      }
      
      private function §""$§(param1:§7"L§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §2"@§.setText("" + param1.bronzeTrophies,"BronzeTrophiesTextfield");
            while(true)
            {
               §2"@§.setText("" + param1.silverTrophies,"SilverTrophiesTextfield");
               §§goto(addr79);
            }
         }
         addr79:
         while(true)
         {
            §2"@§.setText("" + param1.goldTrophies,"GoldTrophiesTextfield");
            if(!(_loc3_ && _loc2_))
            {
               if(_loc2_ || this)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §`&§() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:MovieClip = null;
         if(_loc7_)
         {
            if(this.§;"3§ == null)
            {
               if(!_loc8_)
               {
                  return;
               }
            }
         }
         var _loc1_:MovieClip = §2"@§.getItemByName("BronzeAvatarHolder").mClip;
         var _loc2_:MovieClip = §2"@§.getItemByName("BronzeTrophy").mClip;
         if(_loc7_)
         {
            if(!this.§;"3§.§3J§)
            {
               _loc1_.visible = false;
               loop0:
               while(_loc7_)
               {
                  _loc2_.visible = false;
                  if(!_loc7_)
                  {
                     continue;
                  }
                  if(_loc7_ || this)
                  {
                     if(!_loc8_)
                     {
                        if(false)
                        {
                           addr60:
                        }
                        var _loc3_:MovieClip = §2"@§.getItemByName("SilverAvatarHolder").mClip;
                        _loc4_ = §2"@§.getItemByName("SilverTrophy").mClip;
                        if(_loc7_)
                        {
                           if(!this.§;"3§.§ !e§)
                           {
                              _loc3_.visible = false;
                              loop2:
                              while(_loc7_ || this)
                              {
                                 while(true)
                                 {
                                    _loc4_.visible = false;
                                    if(_loc8_)
                                    {
                                       continue loop2;
                                    }
                                    if(!(_loc8_ && _loc1_))
                                    {
                                       if(false)
                                       {
                                          addr150:
                                       }
                                       var _loc5_:MovieClip = §2"@§.getItemByName("GoldAvatarHolder").mClip;
                                       var _loc6_:MovieClip = §2"@§.getItemByName("GoldTrophy").mClip;
                                       if(_loc7_)
                                       {
                                          if(!this.§;"3§.§;"O§)
                                          {
                                             _loc5_.visible = false;
                                             while(_loc7_ || _loc1_)
                                             {
                                                _loc6_.visible = false;
                                                if(!_loc8_)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      if(_loc7_ || _loc3_)
                                                      {
                                                         §§goto(addr222);
                                                      }
                                                      loop6:
                                                      while(true)
                                                      {
                                                         §2"@§.setText(this.§;"3§.§;"O§.userName,"TextField_Podium1");
                                                         addr286:
                                                         addr293:
                                                         while(_loc7_)
                                                         {
                                                            _loc5_.visible = true;
                                                         }
                                                         while(true)
                                                         {
                                                            this.§,!a§ = new §`!k§(_loc5_,this.§;"3§.§;"O§);
                                                            continue loop6;
                                                         }
                                                      }
                                                   }
                                                   while(_loc8_)
                                                   {
                                                      §§goto(addr286);
                                                   }
                                                   _loc6_.visible = true;
                                                   break;
                                                }
                                             }
                                             addr222:
                                             return;
                                             addr260:
                                          }
                                          §§goto(addr293);
                                       }
                                       §§goto(addr260);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          _loc4_.visible = true;
                                          break loop2;
                                       }
                                       addr175:
                                    }
                                 }
                              }
                              while(!_loc7_)
                              {
                                 loop4:
                                 while(true)
                                 {
                                    if(_loc7_)
                                    {
                                       if(_loc7_ || _loc2_)
                                       {
                                          break;
                                       }
                                       addr198:
                                       while(true)
                                       {
                                          this.§#k§ = new §`!k§(_loc3_,this.§;"3§.§ !e§);
                                       }
                                    }
                                    while(true)
                                    {
                                       §2"@§.setText(this.§;"3§.§ !e§.userName,"TextField_Podium2");
                                       continue loop4;
                                    }
                                 }
                                 _loc3_.visible = true;
                                 §§goto(addr175);
                              }
                              §§goto(addr150);
                           }
                           §§goto(addr198);
                        }
                        §§goto(addr163);
                     }
                     else
                     {
                        loop1:
                        while(_loc8_ && _loc2_)
                        {
                           while(true)
                           {
                              this.§="8§ = new §`!k§(_loc1_,this.§;"3§.§3J§);
                              addr109:
                              while(true)
                              {
                                 §2"@§.setText(this.§;"3§.§3J§.userName,"TextField_Podium3");
                                 break loop0;
                              }
                           }
                           while(true)
                           {
                              _loc1_.visible = true;
                              continue loop1;
                           }
                        }
                        _loc2_.visible = true;
                        addr73:
                     }
                     §§goto(addr60);
                  }
                  §§goto(addr73);
               }
               while(true)
               {
                  if(!_loc7_)
                  {
                     continue;
                  }
                  §§goto(addr96);
               }
            }
            §§goto(addr101);
         }
         §§goto(addr96);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(!_loc6_)
         {
            §§push("BACK");
            if(!(_loc6_ && this))
            {
               §§push(_loc4_);
               if(!(_loc6_ && param2))
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc5_)
                     {
                        addr83:
                        §§push(0);
                        if(!(_loc5_ || param1))
                        {
                           addr131:
                        }
                     }
                     else
                     {
                        addr123:
                        §§push(2);
                        if(!(_loc6_ && param3))
                        {
                           §§goto(addr131);
                        }
                     }
                     §§goto(addr136);
                  }
                  else
                  {
                     §§push("CURRENT_TOURNAMENT");
                     if(_loc5_)
                     {
                        §§goto(addr95);
                     }
                     §§goto(addr121);
                  }
               }
               §§goto(addr98);
            }
            addr95:
            §§push(_loc4_);
            if(!_loc6_)
            {
               addr98:
               if(§§pop() === §§pop())
               {
                  if(!(_loc6_ && this))
                  {
                     §§push(1);
                     if(!_loc5_)
                     {
                        §§goto(addr131);
                     }
                  }
                  else
                  {
                     §§goto(addr123);
                  }
                  §§goto(addr136);
               }
               else
               {
                  addr121:
                  §§push("showCredits");
                  §§push(_loc4_);
               }
               §§goto(addr123);
            }
            if(§§pop() === §§pop())
            {
               §§goto(addr123);
            }
            else
            {
               §§push(3);
            }
            addr136:
            switch(§§pop())
            {
               case 0:
                  mNextState = §9!V§.STATE_NAME;
                  if(!_loc6_)
                  {
                     addr28:
                     break;
                  }
                  break;
               case 1:
                  mNextState = §]!M§.STATE_NAME;
                  if(!_loc6_)
                  {
                     break;
                  }
                  break;
               case 2:
                  mNextState = §&"[§.STATE_NAME;
                  if(!_loc6_)
                  {
                     if(true)
                     {
                        break;
                     }
                     §§goto(addr28);
                  }
            }
            return;
         }
         §§goto(addr83);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(_loc3_ || _loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               if(§§pop() == §+d§.STATE_STATUS_RUNNING)
               {
                  while(mNextState.length > 0)
                  {
                     if(!(_loc3_ || _loc3_))
                     {
                        if(!(_loc4_ && param1))
                        {
                           break;
                        }
                        addr93:
                     }
                     if(_loc3_ || _loc3_)
                     {
                        return §+d§.STATE_STATUS_COMPLETED;
                     }
                     continue;
                     return _loc2_;
                  }
                  return §+d§.STATE_STATUS_RUNNING;
               }
            }
         }
         §§goto(addr93);
      }
   }
}
