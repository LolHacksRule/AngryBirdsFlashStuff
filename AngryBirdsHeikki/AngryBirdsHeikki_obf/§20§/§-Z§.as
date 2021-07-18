package §20§
{
   import §"!I§.§94§;
   import §9b§.§"!S§;
   import §<u§.§]!Q§;
   import §=!<§.§>a§;
   import §=!<§.§`[§;
   import §@R§.set;
   
   public class §-Z§
   {
      
      private static var §>^§:Class;
      
      private static var §-!Q§:Array;
      
      private static var §>!0§:§3!$§ = null;
      
      private static var §4C§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §-Z§))
         {
            §>^§ = §^!T§;
            while(true)
            {
               §-!Q§ = [];
               while(_loc2_ || _loc1_)
               {
                  §>!0§ = null;
                  loop2:
                  while(_loc2_)
                  {
                     while(true)
                     {
                        §4C§ = false;
                        if(!(_loc1_ && _loc2_))
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr57);
      }
      
      public function §-Z§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      private static function §=V§(param1:String, param2:§]!Q§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[4] = null;
            loop1:
            while(true)
            {
               §§push(§§newactivation());
               loop2:
               while(true)
               {
                  §§pop().§§slot[1] = param1;
                  loop3:
                  while(_loc5_)
                  {
                     §§push(§§newactivation());
                     loop4:
                     while(_loc5_)
                     {
                        if(_loc5_)
                        {
                           §§pop().§§slot[2] = param2;
                           while(!(_loc6_ && param1))
                           {
                              continue loop4;
                              §§pop().§§slot[3] = "";
                              if(!(_loc5_ || _loc3_))
                              {
                                 continue;
                              }
                              §§push(§§newactivation());
                              if(!_loc6_)
                              {
                                 addr203:
                                 var _loc4_:* = §§pop().§§slot[1];
                                 if(_loc5_ || _loc3_)
                                 {
                                    if("BIRD_BLACK" === _loc4_)
                                    {
                                       if(_loc5_ || param1)
                                       {
                                          §§push(0);
                                          if(_loc6_ && param1)
                                          {
                                          }
                                          addr316:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                §§push(§§newactivation());
                                                if(!_loc5_)
                                                {
                                                   §§goto(addr203);
                                                }
                                                §§pop().§§slot[3] = "TUTORIAL_BLACK";
                                                §§goto(addr372);
                                             case 7:
                                                §§push(§§newactivation());
                                                if(!_loc5_)
                                                {
                                                   §§goto(addr203);
                                                }
                                                if(_loc5_)
                                                {
                                                   §§pop().§§slot[3] = "TUTORIAL_MIGHTYEAGLE";
                                                   if(_loc5_ || §-Z§)
                                                   {
                                                   }
                                                }
                                                else
                                                {
                                                   addr53:
                                                   if(_loc5_)
                                                   {
                                                      §§pop().§§slot[3] = "TUTORIAL_HEIKKI_POWER";
                                                      if(_loc5_)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            §§goto(addr325);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr325);
                                                            addr130:
                                                         }
                                                         §§goto(addr325);
                                                      }
                                                      §§goto(addr372);
                                                   }
                                                   else
                                                   {
                                                      addr84:
                                                      if(_loc5_ || param2)
                                                      {
                                                         §§pop().§§slot[3] = "TUTORIAL_YELLOW";
                                                         addr93:
                                                      }
                                                      else
                                                      {
                                                         addr112:
                                                         §§pop().§§slot[3] = "TUTORIAL_RED";
                                                         if(_loc5_ || param2)
                                                         {
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr325);
                                             case 1:
                                                §§push(§§newactivation());
                                                if(_loc5_)
                                                {
                                                   §§pop().§§slot[3] = "TUTORIAL_BLUE";
                                                   §§goto(addr130);
                                                }
                                                break;
                                             case 2:
                                                §§goto(addr112);
                                             case 3:
                                                §§push(§§newactivation());
                                                §§push(§§newactivation());
                                                if(!(_loc6_ && §-Z§))
                                                {
                                                   §§pop().§§slot[3] = "TUTORIAL_WHITE";
                                                   §§goto(addr325);
                                                }
                                                break;
                                             case 4:
                                                §§goto(addr84);
                                             case 5:
                                                §§push(§§newactivation());
                                                §§push(§§newactivation());
                                                if(_loc5_)
                                                {
                                                   §§pop().§§slot[3] = "TUTORIAL_BOOMERANG";
                                                   if(!_loc6_)
                                                   {
                                                      if(_loc6_ && param1)
                                                      {
                                                         §§goto(addr93);
                                                      }
                                                      §§goto(addr325);
                                                   }
                                                   §-!Q§.push(tutorialPopup);
                                                   addr372:
                                                   if(_loc5_ || param2)
                                                   {
                                                      try
                                                      {
                                                         addr325:
                                                         break;
                                                      }
                                                      catch(e:Error)
                                                      {
                                                         return;
                                                      }
                                                      §§push(§§newactivation());
                                                   }
                                                   return;
                                                   addr343:
                                                }
                                                break;
                                             case 6:
                                                §§goto(addr53);
                                             default:
                                                §§newactivation();
                                                return;
                                          }
                                          §§pop().§§slot[4] = new §3!$§(set.§=!^§(§>^§),currentUIView,§`[§.§ !G§(tutorialName,§>a§.§ s§));
                                          if(_loc5_)
                                          {
                                             §§goto(addr343);
                                          }
                                          §§goto(addr372);
                                       }
                                       addr264:
                                       §§push(3);
                                       if(_loc6_)
                                       {
                                       }
                                       §§goto(addr316);
                                    }
                                    if("BIRD_BLUE" === _loc4_)
                                    {
                                       if(_loc5_)
                                       {
                                          §§push(1);
                                          if(_loc6_ && §-Z§)
                                          {
                                          }
                                          §§goto(addr316);
                                       }
                                       addr303:
                                       §§push(7);
                                       if(_loc5_ || §-Z§)
                                       {
                                          addr311:
                                       }
                                       §§goto(addr316);
                                    }
                                    if("BIRD_RED" === _loc4_)
                                    {
                                       if(!_loc6_)
                                       {
                                          §§push(2);
                                          if(!_loc6_)
                                          {
                                             §§goto(addr316);
                                          }
                                          §§goto(addr311);
                                       }
                                       addr296:
                                       §§push(6);
                                       if(!_loc6_)
                                       {
                                          addr299:
                                          §§goto(addr316);
                                       }
                                       §§goto(addr311);
                                    }
                                    if("BIRD_WHITE" === _loc4_)
                                    {
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          §§goto(addr264);
                                       }
                                       §§goto(addr296);
                                    }
                                    if("BIRD_YELLOW" === _loc4_)
                                    {
                                       if(!(_loc6_ && §-Z§))
                                       {
                                          §§push(4);
                                          if(_loc5_)
                                          {
                                             §§goto(addr264);
                                          }
                                          §§goto(addr299);
                                       }
                                       §§goto(addr303);
                                    }
                                    if("BIRD_GREEN" === _loc4_)
                                    {
                                       if(!_loc6_)
                                       {
                                          §§push(5);
                                          if(_loc5_)
                                          {
                                             §§goto(addr316);
                                          }
                                          §§goto(addr311);
                                       }
                                       §§goto(addr303);
                                    }
                                    if("BIRD_REDBIG_HEIKKI" === _loc4_)
                                    {
                                       if(!_loc6_)
                                       {
                                          §§goto(addr296);
                                       }
                                       §§goto(addr303);
                                    }
                                    if("BIRD_SARDINE" === _loc4_)
                                    {
                                       §§goto(addr303);
                                    }
                                    §§goto(addr316);
                                    §§push(8);
                                 }
                                 §§goto(addr264);
                              }
                              §§push(§§newactivation());
                              if(!_loc5_)
                              {
                                 continue loop4;
                              }
                              §§goto(addr151);
                              §§goto(addr316);
                           }
                           continue loop3;
                        }
                        continue loop0;
                     }
                     continue loop2;
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public static function §8G§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:String = null;
         for each(_loc1_ in §>!f§())
         {
            if(!_loc5_)
            {
               §,L§.§8!F§.§&0§(_loc1_,false);
            }
         }
      }
      
      private static function §>!f§() : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§94§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §"!S§.§-!7§.slingshot.§2!A§)
         {
            if(_loc5_ || §-Z§)
            {
               if(_loc1_.indexOf(_loc2_.name) >= 0)
               {
                  continue;
               }
               if(!_loc5_)
               {
                  continue;
               }
            }
            _loc1_.push(_loc2_.name);
         }
         if(_loc5_)
         {
            _loc1_.reverse();
         }
         return _loc1_;
      }
      
      public static function §0;§(param1:§]!Q§, param2:Boolean = false) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:* = null;
         var _loc6_:* = null;
         var _loc3_:Array = §>!f§();
         var _loc5_:int = _loc3_.length - 1;
         while(true)
         {
            §§push(_loc5_);
            if(_loc9_ || _loc3_)
            {
               loop1:
               while(true)
               {
                  if(§§pop() >= 0)
                  {
                     §§push(_loc3_[_loc5_]);
                     if(!_loc10_)
                     {
                        _loc4_ = §§pop();
                        while(true)
                        {
                           §§push(§,L§.§8!F§);
                           if(_loc9_ || param2)
                           {
                              §§push(_loc4_);
                              if(!_loc10_)
                              {
                                 §§push(§§pop().hasTutorialBeenSeen(§§pop()));
                                 if(_loc9_ || param2)
                                 {
                                    if(!§§pop())
                                    {
                                       §§push(§,L§.§8!F§);
                                       if(_loc9_)
                                       {
                                          §§push(_loc4_);
                                          if(_loc9_ || param1)
                                          {
                                             §§pop().§&0§(§§pop());
                                             if(_loc9_)
                                             {
                                                continue loop1;
                                             }
                                             §§goto(addr235);
                                          }
                                          §§goto(addr217);
                                       }
                                       break;
                                    }
                                    if(!_loc10_)
                                    {
                                       if(!_loc9_)
                                       {
                                          continue;
                                       }
                                       _loc3_.splice(_loc5_,1);
                                       if(!_loc10_)
                                       {
                                          while(true)
                                          {
                                             continue loop1;
                                          }
                                          addr54:
                                       }
                                       else
                                       {
                                          §§goto(addr240);
                                       }
                                    }
                                    §§goto(addr221);
                                    §§goto(addr217);
                                 }
                                 else
                                 {
                                    §§goto(addr186);
                                 }
                              }
                              §§goto(addr217);
                           }
                           break;
                        }
                        §§goto(addr216);
                     }
                     break;
                  }
                  if(_loc9_ || _loc3_)
                  {
                     addr144:
                     var _loc7_:int = 0;
                     if(!_loc10_)
                     {
                        var _loc8_:* = _loc3_;
                        if(_loc10_ && param1)
                        {
                        }
                        addr175:
                        for each(_loc4_ in _loc8_)
                        {
                           if(_loc9_ || param1)
                           {
                              §=V§(_loc4_,param1);
                           }
                           §§goto(addr175);
                        }
                     }
                     if(_loc9_)
                     {
                        addr186:
                        if(param2)
                        {
                           addr221:
                           if(§-!Q§.length > 0)
                           {
                              addr235:
                              §§push(_loc3_.join(","));
                              break;
                           }
                        }
                        §!!4§();
                        if(!(_loc10_ && §-Z§))
                        {
                           if(!(_loc10_ && §-Z§))
                           {
                              if(!_loc10_)
                              {
                                 if(_loc10_ && §-Z§)
                                 {
                                    §§goto(addr221);
                                 }
                                 return;
                                 addr212:
                              }
                              §§goto(addr235);
                           }
                           addr217:
                           §,L§.§8!F§.saveTutorialSeen(_loc6_);
                           addr218:
                           §§goto(addr186);
                           addr240:
                           addr216:
                        }
                        §§goto(addr218);
                     }
                     §§goto(addr212);
                  }
                  §§goto(addr218);
                  §§goto(addr217);
               }
               _loc6_ = §§pop();
               §§goto(addr217);
            }
            §§goto(addr144);
         }
      }
      
      private static function §!!4§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(§ !6§);
            if(!_loc3_)
            {
               §§push(false);
               if(!(_loc3_ && §-Z§))
               {
                  §§push(§§pop() == §§pop());
                  while(true)
                  {
                     §§push(§§pop());
                  }
                  addr176:
               }
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr179:
                        while(true)
                        {
                           §§push(§-!Q§.length > 0);
                           if(_loc3_ && _loc2_)
                           {
                              break;
                           }
                           if(!(_loc2_ || §-Z§))
                           {
                              continue loop0;
                           }
                        }
                     }
                  }
                  while(§§pop())
                  {
                     loop4:
                     while(_loc2_ || param1)
                     {
                        §4C§ = true;
                        loop5:
                        while(true)
                        {
                           §>!0§ = §-!Q§.pop();
                           loop6:
                           while(true)
                           {
                              §§push(§>!0§);
                              loop7:
                              while(true)
                              {
                                 §§pop().open(param1);
                                 loop8:
                                 while(!_loc3_)
                                 {
                                    while(true)
                                    {
                                       §§push(§>!0§);
                                       while(true)
                                       {
                                          §§push(§,L§.§1'§);
                                          loop12:
                                          while(true)
                                          {
                                             §§push(2);
                                             loop13:
                                             while(true)
                                             {
                                                §§push(§§pop() / §§pop());
                                                loop14:
                                                while(true)
                                                {
                                                   §§pop().x = §§pop();
                                                   loop15:
                                                   while(true)
                                                   {
                                                      §§push(§>!0§);
                                                      loop16:
                                                      while(true)
                                                      {
                                                         §§push(§,L§.§!!d§);
                                                         if(!_loc2_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(2);
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            §§push(§§pop() / §§pop());
                                                            if(!(_loc3_ && param1))
                                                            {
                                                               §§pop().y = §§pop();
                                                               while(true)
                                                               {
                                                                  if(_loc2_)
                                                                  {
                                                                     if(_loc2_)
                                                                     {
                                                                        continue loop16;
                                                                     }
                                                                     continue loop4;
                                                                  }
                                                                  continue loop8;
                                                                  addr41:
                                                                  §§pop().mClip.getChildByName("Container_Tutorial").visible = true;
                                                                  if(!(_loc3_ && _loc2_))
                                                                  {
                                                                     if(_loc2_)
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     continue loop15;
                                                                  }
                                                               }
                                                               continue;
                                                            }
                                                            continue loop14;
                                                         }
                                                         continue loop13;
                                                      }
                                                      continue loop12;
                                                   }
                                                }
                                             }
                                          }
                                          if(_loc2_ || _loc3_)
                                          {
                                             continue loop7;
                                          }
                                       }
                                    }
                                 }
                                 continue loop6;
                              }
                           }
                        }
                     }
                     §§goto(addr179);
                  }
                  return;
               }
            }
            §§goto(addr176);
         }
         §§goto(addr115);
      }
      
      public static function §5P§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(§ !6§ == true)
            {
               while(true)
               {
                  if(§-!Q§.length <= 0)
                  {
                     §4C§ = false;
                     loop1:
                     for(; !(_loc1_ && §-Z§); §§pop().preClose(§§pop()),if(_loc1_ && _loc1_)
                     {
                        continue;
                     },if(_loc2_ || _loc2_)
                     {
                        if(!(_loc2_ || §-Z§))
                        {
                           §§goto(addr122);
                        }
                     }
                     else
                     {
                        addr94:
                     })
                     {
                        if(!(_loc1_ && _loc1_))
                        {
                           §§push(§>!0§);
                           if(!_loc1_)
                           {
                              §§push(true);
                              if(!(_loc1_ && _loc2_))
                              {
                                 continue;
                              }
                           }
                           else
                           {
                              while(true)
                              {
                                 §§push(false);
                              }
                              addr120:
                           }
                           while(true)
                           {
                              §§pop().preClose(§§pop());
                              addr122:
                              while(true)
                              {
                                 §4C§ = false;
                                 break loop1;
                              }
                           }
                        }
                        else
                        {
                           addr119:
                           while(true)
                           {
                           }
                           addr119:
                        }
                        §§goto(addr120);
                     }
                     continue;
                  }
                  §§goto(addr119);
               }
               §!!4§(false);
               §§goto(addr94);
            }
            return;
         }
         §§goto(addr119);
      }
      
      public static function get § !6§() : Boolean
      {
         return §4C§;
      }
   }
}
