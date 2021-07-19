package §_-dA§
{
   import §_-OJ§.§_-1W§;
   import §_-Ra§.§_-2X§;
   import §_-Ra§.§_-fR§;
   import §_-Ur§.§_-ru§;
   import §_-e3§.§_-JN§;
   import §_-gY§.§_-Vu§;
   import §_-hU§.§_-MB§;
   
   public class §_-FO§
   {
      
      private static var §_-6Q§:Class;
      
      private static var §_-Xd§:Array;
      
      private static var §_-I0§:§_-DX§ = null;
      
      public static var §_-GJ§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §_-6Q§ = §_-VR§;
            if(_loc1_)
            {
               §_-Xd§ = [];
               if(!(_loc2_ && §_-FO§))
               {
                  §_-I0§ = null;
                  if(!_loc1_)
                  {
                  }
               }
               §§goto(addr57);
            }
            §_-GJ§ = false;
         }
         addr57:
      }
      
      public function §_-FO§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
         }
      }
      
      private static function §_-Pi§(param1:String, param2:§_-ru§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(_loc5_)
         {
            §§pop().§§slot[4] = null;
            if(!(_loc6_ && _loc3_))
            {
               §§push(§§newactivation());
               if(_loc5_ || _loc3_)
               {
                  §§pop().§§slot[1] = param1;
                  if(_loc5_ || param1)
                  {
                     §§push(§§newactivation());
                     if(_loc5_)
                     {
                        addr50:
                        §§pop().§§slot[2] = param2;
                        §§goto(addr57);
                     }
                     §§pop().§§slot[3] = "";
                     addr57:
                     if(_loc5_)
                     {
                        addr54:
                        §§push(§§newactivation());
                     }
                     §§push(§§newactivation());
                     loop0:
                     while(true)
                     {
                        var _loc4_:* = §§pop().§§slot[1];
                        if("BIRD_BLACK" === _loc4_)
                        {
                           if(!_loc6_)
                           {
                              §§push(0);
                              if(_loc6_ && _loc3_)
                              {
                                 addr190:
                              }
                           }
                           else
                           {
                              addr199:
                              §§push(6);
                              if(_loc5_ || _loc3_)
                              {
                              }
                           }
                           addr224:
                           switch(§§pop())
                           {
                              case 0:
                                 var tutorialName:String = "TUTORIAL_BLACK";
                                 if(!(_loc6_ && param1))
                                 {
                                    break;
                                 }
                                 addr115:
                                 break;
                              case 1:
                                 continue;
                              case 2:
                                 §§push(§§newactivation());
                                 if(!_loc6_)
                                 {
                                    §§pop().§§slot[3] = "TUTORIAL_RED";
                                    break;
                                 }
                                 addr113:
                                 §§pop().§§slot[3] = "TUTORIAL_RED_BIG";
                                 §§goto(addr115);
                                 break;
                              case 3:
                                 tutorialName = "TUTORIAL_WHITE";
                                 if(_loc5_ || param2)
                                 {
                                    break;
                                 }
                                 break loop0;
                              case 4:
                                 tutorialName = "TUTORIAL_YELLOW";
                                 break;
                              case 5:
                                 tutorialName = "TUTORIAL_BOOMERANG";
                                 break;
                              case 6:
                                 §§goto(addr113);
                              case 7:
                                 tutorialName = "TUTORIAL_MIGHTYEAGLE";
                                 break;
                              default:
                                 §§newactivation();
                                 return;
                           }
                           try
                           {
                              addr228:
                              var tutorialPopup:§_-DX§ = new §_-DX§(§_-JN§.§_-Yd§(§_-6Q§),currentUIView,§_-fR§.§_-39§(tutorialName,§_-2X§.§_-mE§));
                              break;
                           }
                           catch(e:Error)
                           {
                              return;
                           }
                        }
                        else
                        {
                           if("BIRD_BLUE" === _loc4_)
                           {
                              §§push(1);
                           }
                           else if("BIRD_RED" === _loc4_)
                           {
                              §§push(2);
                           }
                           else
                           {
                              if("BIRD_WHITE" === _loc4_)
                              {
                                 if(_loc5_ || _loc3_)
                                 {
                                    §§goto(addr224);
                                    §§push(3);
                                 }
                              }
                              else if("BIRD_YELLOW" === _loc4_)
                              {
                                 if(!_loc6_)
                                 {
                                    §§push(4);
                                    if(_loc5_ || _loc3_)
                                    {
                                       §§goto(addr190);
                                    }
                                    else
                                    {
                                       addr195:
                                       §§goto(addr224);
                                    }
                                 }
                              }
                              else if("BIRD_GREEN" === _loc4_)
                              {
                                 §§goto(addr195);
                                 §§push(5);
                              }
                              else if("BIRD_RED_BIG" === _loc4_)
                              {
                                 §§goto(addr199);
                              }
                              else
                              {
                                 if("BIRD_SARDINE" !== _loc4_)
                                 {
                                    §§goto(addr224);
                                    §§push(8);
                                 }
                                 §§goto(addr224);
                              }
                              §§goto(addr224);
                              if(_loc5_ || param1)
                              {
                              }
                           }
                           §§goto(addr224);
                        }
                        §§goto(addr199);
                     }
                     §_-Xd§.push(tutorialPopup);
                     return;
                  }
                  §§goto(addr54);
               }
            }
         }
         §§goto(addr50);
      }
      
      public static function §_-I8§(param1:§_-ru§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§_-1W§ = null;
         for each(_loc2_ in §_-MB§.§_-A7§.slingshot.§_-zK§)
         {
            if(_loc5_ || _loc2_)
            {
               §§push(§_-Qu§.§_-di§);
               if(!(_loc6_ && param1))
               {
                  if(§§pop().§_-9w§[_loc2_.name] == true)
                  {
                     continue;
                  }
                  if(!(_loc6_ && param1))
                  {
                     §_-Vu§.§_-jT§.§_-ra§ = true;
                     if(!_loc6_)
                     {
                        addr73:
                        §_-Pi§(_loc2_.name,param1);
                        if(!_loc5_)
                        {
                        }
                        §_-Qu§.§_-di§.§_-Ak§(_loc2_.name);
                        addr91:
                        continue;
                     }
                     §_-aq§();
                     if(!_loc5_)
                     {
                        continue;
                     }
                     §§goto(addr91);
                  }
               }
            }
            §§goto(addr73);
         }
      }
      
      public static function §_-Ms§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§_-MB§.§_-A7§);
            if(!(_loc1_ && _loc2_))
            {
               §§push(Boolean(§§pop()));
               if(_loc2_)
               {
                  §§push(§§pop());
                  if(!_loc1_)
                  {
                     if(§§pop())
                     {
                        §§pop();
                        if(!_loc1_)
                        {
                           §§push(§_-MB§.§_-A7§);
                           if(_loc2_)
                           {
                              §§push(§§pop().slingshot);
                              if(!(_loc1_ && _loc1_))
                              {
                                 §§push(Boolean(§§pop()));
                                 if(!_loc1_)
                                 {
                                    §§goto(addr59);
                                 }
                                 §§goto(addr61);
                              }
                           }
                           §§goto(addr101);
                        }
                        §§goto(addr61);
                     }
                     §§goto(addr59);
                  }
                  addr59:
                  if(§§pop() && §_-MB§.§_-A7§)
                  {
                     if(!(_loc1_ && §_-FO§))
                     {
                        §§goto(addr98);
                     }
                     else
                     {
                        §§goto(addr106);
                     }
                  }
                  §§goto(addr106);
               }
               §§goto(addr101);
            }
            §§goto(addr100);
         }
         addr106:
         return false;
      }
      
      private static function §_-aq§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && §_-FO§))
         {
            §§push(§_-GJ§);
            if(!_loc2_)
            {
               §§push(false);
               if(_loc3_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc3_)
                  {
                     §§goto(addr31);
                  }
                  §§goto(addr46);
               }
               §§goto(addr31);
            }
            addr31:
            if(§§pop())
            {
               if(!(_loc2_ && _loc2_))
               {
                  addr46:
                  §§pop();
                  if(_loc3_)
                  {
                     §§goto(addr53);
                  }
                  §§goto(addr61);
               }
            }
            addr53:
            if(§_-Xd§.length > 0)
            {
               if(_loc3_ || §_-FO§)
               {
                  addr61:
                  §_-GJ§ = true;
                  if(_loc3_)
                  {
                     §_-I0§ = §_-Xd§.pop();
                     if(_loc3_ || param1)
                     {
                     }
                  }
                  §§goto(addr87);
               }
               §_-I0§.open(param1);
            }
            §§goto(addr87);
         }
         addr87:
      }
      
      public static function §_-OC§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(§_-GJ§ == true)
            {
               if(§_-Xd§.length > 0)
               {
                  §§push(§_-I0§);
                  if(_loc2_ || _loc2_)
                  {
                     §§push(false);
                     if(!(_loc1_ && _loc1_))
                     {
                        §§pop().preClose(§§pop());
                        addr52:
                        §_-GJ§ = false;
                        if(_loc2_)
                        {
                           §_-aq§(false);
                           §§goto(addr74);
                        }
                        else
                        {
                           addr72:
                           §§push(§_-I0§);
                           §§push(true);
                        }
                        §§goto(addr74);
                     }
                     §§pop().preClose(§§pop());
                     §§goto(addr74);
                  }
                  §§goto(addr72);
               }
               else
               {
                  §_-GJ§ = false;
               }
               §§goto(addr72);
            }
            addr74:
            return;
         }
         §§goto(addr52);
      }
   }
}
