package §7"@§
{
   import §#!e§.§ <§;
   import §#!e§.§>x§;
   import §#!e§.LevelManager;
   import §'!s§.§%?§;
   import §+N§.§@!]§;
   import §2!i§.§'M§;
   import §4!e§.§^!D§;
   import §]!A§.;
   import com.AngryBirds.friendsbar.§ K§;
   
   public class §1G§ extends §8!u§
   {
       
      
      protected var §]4§:Array;
      
      public function §1G§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            this.§]4§ = [];
         }
         do
         {
            super(param1,param2);
         }
         while(!(_loc3_ || param1));
         
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.init();
            loop0:
            while(true)
            {
               §6w§.getItemByName("Button_Fullscreen").setVisibility(false);
               loop1:
               while(true)
               {
                  §§push(this.§]4§);
                  loop2:
                  while(true)
                  {
                     §§pop().push((§6w§.getItemByName("Button_Menu") as §^!D§).x);
                     loop3:
                     while(true)
                     {
                        §§push(this.§]4§);
                        addr64:
                        loop4:
                        while(_loc2_)
                        {
                           §§pop().push((§6w§.getItemByName("Button_Replay") as §^!D§).x);
                           while(_loc2_ || _loc1_)
                           {
                              if(!_loc1_)
                              {
                                 continue loop4;
                              }
                              continue loop0;
                              §§pop().push((§6w§.getItemByName("Button_MightyEagle") as §^!D§).x);
                              if(_loc2_)
                              {
                                 continue loop1;
                              }
                           }
                           continue loop3;
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§push(this.§]4§);
            if(_loc2_ || this)
            {
               §§goto(addr34);
            }
            §§goto(addr64);
         }
         §§goto(addr60);
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.activate();
            while(true)
            {
               (§#6§.§ q§ as §3T§).§`!P§(§ K§.§2_§);
               while(!_loc3_)
               {
                  loop4:
                  while(!(_loc3_ && this))
                  {
                     §6w§.getItemByName("Button_FreePowerups").setVisibility(§3T§.§67§.§0+§.§3"F§);
                     if(!_loc4_)
                     {
                        continue;
                     }
                     addr31:
                     if(false)
                     {
                        while(true)
                        {
                           §#6§.§6!z§.background.§^!P§();
                           continue loop4;
                           §§goto(addr31);
                        }
                        addr60:
                        §§push(LevelManager.§6!M§());
                        §§push(_loc3_ && _loc3_);
                        addr33:
                     }
                     else
                     {
                        §§goto(addr60);
                     }
                     if(!§§pop())
                     {
                        §§push(§§pop());
                     }
                     var _loc1_:* = §§pop();
                     §§push(LevelManager.§9"D§().name);
                     if(_loc4_ || this)
                     {
                        §§push(§§pop());
                     }
                     var _loc2_:* = §§pop();
                     if(_loc4_ || _loc2_)
                     {
                        §§push(_loc2_);
                        loop5:
                        while(true)
                        {
                           §§push("1000");
                           loop6:
                           while(true)
                           {
                              §§push(§§pop() == §§pop());
                              if(!_loc3_)
                              {
                                 §§push(§§pop());
                                 loop7:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       addr188:
                                       loop13:
                                       while(true)
                                       {
                                          §§pop();
                                          addr189:
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             addr161:
                                             while(true)
                                             {
                                                if(_loc3_)
                                                {
                                                   continue loop5;
                                                }
                                                §§push("3001");
                                                if(_loc3_)
                                                {
                                                   continue loop6;
                                                }
                                                §§push(§§pop() == §§pop());
                                             }
                                             continue loop13;
                                          }
                                       }
                                       addr188:
                                    }
                                    while(true)
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(_loc3_)
                                          {
                                             break;
                                          }
                                          if(!§§pop())
                                          {
                                             loop10:
                                             while(true)
                                             {
                                                if(!(_loc3_ && _loc1_))
                                                {
                                                   §§pop();
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§push(_loc1_);
                                                      if(!(_loc4_ || _loc3_))
                                                      {
                                                         break;
                                                      }
                                                      §§push(§§pop() == null);
                                                      if(_loc4_)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            while(§§pop())
                                                            {
                                                               if(_loc4_ || this)
                                                               {
                                                                  if(!(_loc4_ || _loc1_))
                                                                  {
                                                                     break loop10;
                                                                  }
                                                                  §6w§.getItemByName("Button_NextLevel").setVisibility(false);
                                                               }
                                                               continue loop11;
                                                            }
                                                            addr101:
                                                            return;
                                                            addr120:
                                                         }
                                                         continue loop9;
                                                      }
                                                      continue loop10;
                                                   }
                                                   §§goto(addr161);
                                                }
                                                §§goto(addr188);
                                             }
                                             §§goto(addr189);
                                          }
                                          §§goto(addr120);
                                       }
                                       continue loop7;
                                    }
                                    continue loop5;
                                 }
                              }
                              §§goto(addr188);
                           }
                        }
                     }
                     §§goto(addr189);
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr33);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super.deActivate();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            super.uiInteractionHandler(param1,param2,param3);
         }
         var _loc4_:* = param2;
         if(_loc5_ || param3)
         {
            §§push("SHOP");
            if(!(_loc6_ && param1))
            {
               §§push(_loc4_);
               if(!_loc6_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc6_)
                     {
                        §§push(0);
                        if(!_loc5_)
                        {
                           addr165:
                        }
                     }
                     else
                     {
                        addr202:
                        §§push(3);
                        if(!_loc6_)
                        {
                           addr205:
                        }
                     }
                     §§goto(addr210);
                  }
                  else
                  {
                     §§push("SHARE_DEFAULT");
                     if(_loc5_)
                     {
                        §§push(_loc4_);
                        if(!_loc6_)
                        {
                           addr154:
                           if(§§pop() === §§pop())
                           {
                              if(_loc5_ || param3)
                              {
                                 §§push(1);
                                 if(!_loc6_)
                                 {
                                    §§goto(addr165);
                                 }
                                 §§goto(addr210);
                              }
                              else
                              {
                                 §§goto(addr190);
                              }
                           }
                           else
                           {
                              §§push("EMBED");
                              if(_loc5_ || this)
                              {
                                 addr184:
                                 §§push(_loc4_);
                                 if(!_loc6_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!_loc6_)
                                       {
                                          addr190:
                                          §§push(2);
                                          if(_loc5_ || this)
                                          {
                                          }
                                          §§goto(addr210);
                                       }
                                       else
                                       {
                                          §§goto(addr202);
                                       }
                                    }
                                    else
                                    {
                                       §§push("FREE_POWERUPS");
                                    }
                                    §§goto(addr202);
                                 }
                                 addr201:
                                 if(§§pop() === §§pop())
                                 {
                                    §§goto(addr202);
                                 }
                                 else
                                 {
                                    addr210:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          §%?§.§#"9§();
                                          break;
                                          addr111:
                                       case 1:
                                          §§push(§@!]§);
                                          §§push("shareDefault");
                                          §§push(LevelManager.§'!O§);
                                          §§push(LevelManager.§9"D§().writtenName + "-");
                                          if(!(_loc6_ && this))
                                          {
                                             §§push(§§pop() + § <§.§2!V§(LevelManager.§'!O§));
                                          }
                                          §§pop().§9"'§(§§pop(),§§pop(),§§pop(),0,false);
                                          addr35:
                                          break;
                                          addr105:
                                       case 2:
                                          §§push(§%?§);
                                          §§push(LevelManager.§'!O§);
                                          §§push(LevelManager.§9"D§().writtenName + "-");
                                          if(_loc5_ || param1)
                                          {
                                             §§push(§§pop() + § <§.§2!V§(LevelManager.§'!O§));
                                          }
                                          §§pop().§"!C§(§§pop(),§§pop(),§#6§.§'" §.getScore(),"");
                                          addr63:
                                          if(_loc5_)
                                          {
                                             if(!_loc6_)
                                             {
                                                break;
                                             }
                                             §§goto(addr111);
                                          }
                                          else
                                          {
                                             §§goto(addr105);
                                          }
                                          break;
                                       case 3:
                                          §%?§.§-!?§();
                                          if(_loc5_)
                                          {
                                             if(!(_loc6_ && param3))
                                             {
                                                if(true)
                                                {
                                                   break;
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr63);
                                             }
                                             §§goto(addr35);
                                          }
                                    }
                                    return;
                                    §§push(4);
                                 }
                                 §§goto(addr210);
                              }
                              §§goto(addr201);
                              §§push(_loc4_);
                           }
                           §§goto(addr210);
                        }
                        §§goto(addr201);
                     }
                     §§goto(addr184);
                  }
               }
               §§goto(addr154);
            }
            §§goto(addr184);
         }
         §§goto(addr190);
      }
      
      override protected function getLevelSelectionState() : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = null;
         var _loc2_:§>x§ = LevelManager.§9"D§();
         if(_loc4_ || _loc1_)
         {
            §§push(_loc2_.name);
            if(!_loc3_)
            {
               §§push(§]!K§.§"!x§);
               loop0:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     loop14:
                     while(true)
                     {
                        §§push(§9!X§.STATE_NAME);
                        addr187:
                        loop12:
                        while(true)
                        {
                           §§push(§§pop());
                           loop13:
                           while(true)
                           {
                              _loc1_ = §§pop();
                              loop8:
                              while(true)
                              {
                                 loop9:
                                 while(true)
                                 {
                                    §§push(_loc1_);
                                    if(!_loc3_)
                                    {
                                       if(!_loc4_)
                                       {
                                          continue loop12;
                                       }
                                       if(§§pop() == null)
                                       {
                                          §§push(§8"D§.STATE_NAME);
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             §§goto(addr101);
                                          }
                                          break;
                                       }
                                       if(_loc4_ || this)
                                       {
                                          if(_loc4_ || _loc2_)
                                          {
                                             if(!(_loc4_ || this))
                                             {
                                                while(true)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      continue loop14;
                                                   }
                                                   §§push(_loc2_.name);
                                                   if(!(_loc3_ && this))
                                                   {
                                                      §§push(§]!K§.EPISODE_GREEN_DAY_EGG);
                                                      if(_loc3_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      §§push(§§pop() == §§pop());
                                                      if(!_loc4_)
                                                      {
                                                         continue;
                                                      }
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            continue loop9;
                                                         }
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                   }
                                                }
                                                continue loop8;
                                             }
                                             §§push(_loc1_);
                                             if(!_loc3_)
                                             {
                                                addr64:
                                                if(_loc4_ || _loc2_)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc4_ || _loc2_)
                                                   {
                                                      addr79:
                                                      if(_loc4_)
                                                      {
                                                         break;
                                                      }
                                                      addr150:
                                                      while(true)
                                                      {
                                                         §§push(§]!K§.§9a§);
                                                         continue loop0;
                                                         §§goto(addr79);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr101:
                                                      if(_loc4_ || _loc3_)
                                                      {
                                                         if(_loc4_ || _loc2_)
                                                         {
                                                            §§push(§§pop());
                                                            break;
                                                         }
                                                         continue loop13;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                      }
                                                      addr140:
                                                   }
                                                }
                                                while(true)
                                                {
                                                   _loc1_ = §§pop();
                                                   addr142:
                                                   while(true)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         continue loop9;
                                                      }
                                                      continue loop8;
                                                   }
                                                }
                                             }
                                             §§goto(addr101);
                                             §§goto(addr140);
                                          }
                                          §§goto(addr138);
                                       }
                                       §§goto(addr142);
                                       §§goto(addr101);
                                    }
                                    §§goto(addr64);
                                 }
                                 return §§pop();
                              }
                           }
                        }
                     }
                     addr185:
                  }
                  else
                  {
                     §§push(_loc2_.name);
                  }
                  §§goto(addr150);
               }
            }
            §§goto(addr187);
         }
         §§goto(addr185);
      }
   }
}
