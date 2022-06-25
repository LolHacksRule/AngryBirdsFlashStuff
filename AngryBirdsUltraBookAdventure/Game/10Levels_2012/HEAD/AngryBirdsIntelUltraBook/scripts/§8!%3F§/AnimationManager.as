package §8!?§
{
   import flash.utils.Dictionary;
   
   public class AnimationManager
   {
       
      
      private var §`_§:TextureManager;
      
      private var §@!1§:Dictionary;
      
      public function AnimationManager(param1:TextureManager)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§@!1§ = new Dictionary();
            while(true)
            {
               super();
               loop1:
               while(!_loc2_)
               {
                  while(true)
                  {
                     this.§`_§ = param1;
                     if(_loc3_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr46);
      }
      
      public function initializeAnimations(param1:Array) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         if(_loc7_ || param1)
         {
            this.§ C§(param1);
            loop0:
            while(true)
            {
               §§push(this.§[W§("PARTICLE_WOOD",["PARTICLE_WOOD_1"]));
               loop1:
               while(true)
               {
                  §§pop();
                  loop2:
                  while(true)
                  {
                     §§push(this.§[W§("SLINGSHOT",["SLING_SHOT_01_BACK","SLING_SHOT_01_FRONT"]));
                     loop3:
                     while(true)
                     {
                        §§pop();
                        while(true)
                        {
                           §§push(this.§[W§("EXPLOSION",["EXPLOSION_1","EXPLOSION_2","EXPLOSION_3","EXPLOSION_4","EXPLOSION_5","EXPLOSION_6","EXPLOSION_7"]));
                           loop5:
                           while(true)
                           {
                              §§pop();
                              loop6:
                              while(true)
                              {
                                 §§push(this.§[W§("SMOKE_BIG",["SMOKE_BIG_1","SMOKE_BIG_2","SMOKE_BIG_3","SMOKE_BIG_4","SMOKE_BIG_5","SMOKE_BIG_6"]));
                                 loop7:
                                 while(true)
                                 {
                                    §§pop();
                                    loop8:
                                    while(true)
                                    {
                                       §§push(this.§[W§("SMOKE_SMALL",["SMOKE_SMALL_1","SMOKE_SMALL_2","SMOKE_SMALL_3"]));
                                       loop9:
                                       while(true)
                                       {
                                          §§pop();
                                          loop10:
                                          while(!(_loc6_ && param1))
                                          {
                                             §§push(this.§[W§("FOREGROUND_12_LAYER_1",["FOREGROUND_12_LAYER_1"]));
                                             loop11:
                                             while(!_loc6_)
                                             {
                                                §§pop();
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(this.§[W§("BACKGROUND_12_MOON_1",["BACKGROUND_12_MOON_1"]));
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      addr119:
                                                      if(!(_loc7_ || this))
                                                      {
                                                         continue;
                                                      }
                                                      §§pop();
                                                      loop40:
                                                      while(true)
                                                      {
                                                         if(_loc7_ || _loc3_)
                                                         {
                                                            addr134:
                                                            if(!(_loc7_ || _loc3_))
                                                            {
                                                               break;
                                                            }
                                                            loop41:
                                                            while(true)
                                                            {
                                                               §§push(this.§[W§("SCORE_BIRD_YELLOW",["SCORE_BIRD_YELLOW"]));
                                                               loop42:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  while(true)
                                                                  {
                                                                     if(_loc7_ || _loc3_)
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(this.§[W§("SCORE_PIG",["SCORE_PIG"]));
                                                                        if(_loc6_ && _loc2_)
                                                                        {
                                                                           continue loop42;
                                                                        }
                                                                        addr43:
                                                                        if(_loc7_ || _loc2_)
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              addr52:
                                                                              if(!(_loc6_ && this))
                                                                              {
                                                                                 addr59:
                                                                                 if(_loc7_ || param1)
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       §§pop();
                                                                                       if(_loc7_ || this)
                                                                                       {
                                                                                          continue loop41;
                                                                                       }
                                                                                       continue;
                                                                                    }
                                                                                    continue loop1;
                                                                                 }
                                                                                 addr264:
                                                                                 loop25:
                                                                                 while(!(_loc6_ && _loc2_))
                                                                                 {
                                                                                    §§pop();
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§push(this.§[W§("BIRD_SARDINE",["BIRD_SARDINE"]));
                                                                                          loop27:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop();
                                                                                             loop28:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§[W§("BIRD_MIGHTY_EAGLE",["BIRD_ME_MOTION","BIRD_ME_RADIAL"]));
                                                                                                addr227:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   addr228:
                                                                                                   addr299:
                                                                                                   addr331:
                                                                                                   while(!_loc6_)
                                                                                                   {
                                                                                                      §§push(this.§[W§("SCORE_BIRD_RED",["SCORE_BIRD_RED"]));
                                                                                                      while(!_loc6_)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc7_ || param1)
                                                                                                            {
                                                                                                               continue loop12;
                                                                                                            }
                                                                                                            continue loop28;
                                                                                                         }
                                                                                                         continue loop12;
                                                                                                         if(_loc6_ && _loc2_)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            continue loop27;
                                                                                                         }
                                                                                                         §§goto(addr119);
                                                                                                      }
                                                                                                   }
                                                                                                   while(_loc7_ || _loc2_)
                                                                                                   {
                                                                                                      §§push(this.§[W§("BACKGROUND_12_LAYER_3",["BACKGROUND_12_LAYER_3"]));
                                                                                                      while(_loc7_)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         break loop40;
                                                                                                      }
                                                                                                      continue loop11;
                                                                                                   }
                                                                                                   loop18:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                      §§push(this.§[W§("BACKGROUND_12_LAYER_4",["BACKGROUND_12_LAYER_4"]));
                                                                                                      loop19:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         continue loop18;
                                                                                                         addr164:
                                                                                                         if(_loc7_ || this)
                                                                                                         {
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               addr279:
                                                                                                               loop36:
                                                                                                               while(!_loc6_)
                                                                                                               {
                                                                                                                  §§push(this.§[W§("SCORE_BIRD_BLACK",["SCORE_BIRD_BLACK"]));
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     addr149:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc7_)
                                                                                                                        {
                                                                                                                           continue loop36;
                                                                                                                        }
                                                                                                                        if(_loc7_)
                                                                                                                        {
                                                                                                                           if(!_loc7_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                              addr103:
                                                                                                                           }
                                                                                                                           §§push(this.§[W§("SCORE_BIRD_WHITE",["SCORE_BIRD_WHITE"]));
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc6_ && this)
                                                                                                                              {
                                                                                                                                 loop35:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc6_)
                                                                                                                                    {
                                                                                                                                       while(_loc7_)
                                                                                                                                       {
                                                                                                                                          §§pop();
                                                                                                                                          while(_loc7_ || param1)
                                                                                                                                          {
                                                                                                                                             §§push(this.§[W§("SCORE_BIRD_GREEN",["SCORE_BIRD_GREEN"]));
                                                                                                                                             continue loop35;
                                                                                                                                          }
                                                                                                                                          §§goto(addr228);
                                                                                                                                       }
                                                                                                                                       continue loop9;
                                                                                                                                       addr183:
                                                                                                                                    }
                                                                                                                                    §§goto(addr164);
                                                                                                                                 }
                                                                                                                                 continue loop19;
                                                                                                                              }
                                                                                                                              §§goto(addr110);
                                                                                                                              §§goto(addr200);
                                                                                                                              §§goto(addr43);
                                                                                                                           }
                                                                                                                           continue loop13;
                                                                                                                        }
                                                                                                                        §§goto(addr186);
                                                                                                                     }
                                                                                                                     §§goto(addr203);
                                                                                                                  }
                                                                                                               }
                                                                                                               while(!_loc6_)
                                                                                                               {
                                                                                                                  §§push(this.§[W§("BACKGROUND_12_LAYER_1",["BACKGROUND_12_LAYER_1"]));
                                                                                                                  §§goto(addr59);
                                                                                                                  continue loop25;
                                                                                                               }
                                                                                                               while(_loc7_)
                                                                                                               {
                                                                                                                  §§push(this.§[W§("BACKGROUND_12_MOON_2",["BACKGROUND_12_MOON_2"]));
                                                                                                                  continue loop7;
                                                                                                               }
                                                                                                               continue loop6;
                                                                                                               addr341:
                                                                                                               addr279:
                                                                                                            }
                                                                                                            continue loop3;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr52);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§[W§("BACKGROUND_12_VOLCANO",["BACKGROUND_12_VOLCANO"]));
                                                                                          }
                                                                                          addr351:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop();
                                                                                          §§goto(addr341);
                                                                                       }
                                                                                       break loop41;
                                                                                    }
                                                                                    continue loop10;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc7_ || _loc2_)
                                                                                    {
                                                                                       addr271:
                                                                                       if(!(_loc7_ || _loc3_))
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§pop();
                                                                                       §§goto(addr279);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr288);
                                                                                    }
                                                                                 }
                                                                                 addr245:
                                                                                 continue loop7;
                                                                              }
                                                                              §§goto(addr227);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr148);
                                                                           }
                                                                        }
                                                                        §§goto(addr103);
                                                                     }
                                                                     §§goto(addr149);
                                                                  }
                                                                  continue loop2;
                                                               }
                                                            }
                                                            continue;
                                                         }
                                                         §§goto(addr253);
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr264);
                                                         §§goto(addr134);
                                                      }
                                                   }
                                                }
                                             }
                                             continue loop5;
                                          }
                                          continue loop8;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr351);
      }
      
      private function § C§(param1:Array) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:Array = null;
         var _loc3_:String = null;
         if(_loc6_)
         {
            §§push(param1);
            if(_loc6_ || param1)
            {
               if(§§pop() != null)
               {
                  _loc2_ = this.§%!#§(param1);
                  addr47:
                  addr44:
                  for each(_loc3_ in _loc2_)
                  {
                     if(_loc6_ || this)
                     {
                        this.§2!]§(_loc3_);
                     }
                  }
               }
               return;
            }
            §§goto(addr47);
         }
         §§goto(addr44);
      }
      
      private function §2!]§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§[W§(param1,[param1 + "_1",param1 + "_2",param1 + "_3",param1 + "_4"]));
            if(_loc3_)
            {
               §§push(!§§pop());
               if(_loc3_)
               {
                  §§goto(addr40);
               }
               §§goto(addr126);
            }
            addr40:
            if(§§pop())
            {
               if(!_loc2_)
               {
                  §§push(this.§[W§(param1,[param1 + "_1",param1 + "_2",param1 + "_3"]));
                  if(_loc3_)
                  {
                     §§push(!§§pop());
                     if(_loc3_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc2_ && this))
                           {
                              addr79:
                              §§push(this.§[W§(param1,[param1 + "_1"]));
                              if(!(_loc2_ && param1))
                              {
                                 addr103:
                                 §§push(!§§pop());
                                 if(!_loc2_)
                                 {
                                    if(!§§pop())
                                    {
                                    }
                                    §§goto(addr128);
                                 }
                                 §§goto(addr126);
                              }
                           }
                           §§goto(addr114);
                        }
                        §§goto(addr128);
                     }
                     if(!§§pop())
                     {
                     }
                     §§goto(addr128);
                  }
                  §§goto(addr103);
               }
               §§goto(addr114);
            }
            addr128:
            if(_loc3_ || _loc2_)
            {
               addr114:
               §§push(this.§[W§(param1,[param1]));
               if(!(_loc2_ && _loc3_))
               {
                  addr126:
                  §§push(!§§pop());
               }
            }
            return;
         }
         §§goto(addr79);
      }
      
      private function §%!#§(param1:Array) : Array
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = null;
         var _loc2_:Array = [];
         var _loc4_:int = 0;
         var _loc5_:* = param1;
         loop0:
         while(§§hasnext(_loc5_,_loc4_))
         {
            §§push(§§nextvalue(_loc4_,_loc5_));
            loop1:
            while(true)
            {
               _loc3_ = §§pop();
               loop2:
               while(true)
               {
                  §§push(_loc3_);
                  loop3:
                  while(true)
                  {
                     §§push("PIG");
                     addr161:
                     while(true)
                     {
                        §§push(§§pop().indexOf(§§pop()) == 0);
                        loop5:
                        while(true)
                        {
                           §§push(!§§pop());
                           loop6:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              loop7:
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop8:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          loop19:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(_loc7_)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                             if(!(_loc7_ || param1))
                                             {
                                                break;
                                             }
                                             if(!(_loc7_ || param1))
                                             {
                                                continue loop8;
                                             }
                                             if(§§pop())
                                             {
                                                loop17:
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr60:
                                                   if(_loc6_ && _loc2_)
                                                   {
                                                      continue;
                                                   }
                                                   if(_loc7_)
                                                   {
                                                      addr70:
                                                      §§push(Boolean(§§pop()));
                                                      if(_loc6_ && param1)
                                                      {
                                                         while(_loc7_)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               continue loop5;
                                                            }
                                                            §§push(!§§pop());
                                                            if(_loc6_)
                                                            {
                                                               continue loop17;
                                                            }
                                                            §§push(Boolean(§§pop()));
                                                            while(!_loc6_)
                                                            {
                                                               continue loop19;
                                                            }
                                                            §§goto(addr169);
                                                         }
                                                         continue loop7;
                                                         addr126:
                                                      }
                                                      if(_loc6_)
                                                      {
                                                         continue loop6;
                                                      }
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            continue loop0;
                                                         }
                                                         if(_loc7_ || param1)
                                                         {
                                                            _loc2_.push(_loc3_);
                                                         }
                                                         if(_loc6_)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(_loc3_);
                                                               if(_loc7_ || _loc3_)
                                                               {
                                                                  continue loop3;
                                                               }
                                                               continue loop1;
                                                            }
                                                            continue loop0;
                                                            addr157:
                                                         }
                                                         if(!(_loc7_ || _loc2_))
                                                         {
                                                            addr170:
                                                            while(!(_loc6_ && _loc3_))
                                                            {
                                                            }
                                                            continue loop2;
                                                            addr170:
                                                         }
                                                         if(true)
                                                         {
                                                            continue loop0;
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(_loc3_);
                                                            continue loop1;
                                                         }
                                                      }
                                                      addr79:
                                                      §§goto(addr170);
                                                   }
                                                   §§goto(addr134);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr79);
                                             }
                                             §§goto(addr157);
                                          }
                                          continue;
                                       }
                                       while(true)
                                       {
                                          §§pop();
                                       }
                                       addr169:
                                       §§goto(addr170);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         if(_loc7_ || _loc2_)
         {
            _loc2_.sort();
         }
         return _loc2_;
      }
      
      protected function initializeBirdAnimations() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this);
            §§push("BIRD_BLACK");
            §§push(["normal",["BIRD_BLACK_1","BIRD_BLACK_2"]]);
            if(!_loc2_)
            {
               §§push(null);
            }
            §§pop().§=!7§(§§pop(),§§pop());
         }
         loop0:
         while(true)
         {
            §§push(this);
            §§push("BIRD_BLUE");
            §§push(["normal",["BIRD_BLUE_1","BIRD_BLUE_2"]]);
            if(!_loc2_)
            {
               §§push(null);
            }
            §§pop().§=!7§(§§pop(),§§pop());
            loop1:
            while(true)
            {
               §§push(this);
               §§push("BIRD_RED");
               §§push(["normal",["BIRD_RED_1","BIRD_RED_2"]]);
               if(!_loc2_)
               {
                  §§push(null);
               }
               §§pop().§=!7§(§§pop(),§§pop());
               loop2:
               while(true)
               {
                  §§push(this);
                  §§push("BIRD_WHITE");
                  §§push(["normal",["BIRD_WHITE_1","BIRD_WHITE_2"]]);
                  if(_loc1_)
                  {
                     §§push(null);
                  }
                  §§pop().§=!7§(§§pop(),§§pop());
                  loop3:
                  while(true)
                  {
                     §§push(this);
                     §§push("BIRD_YELLOW");
                     §§push(["normal",["BIRD_YELLOW_1","BIRD_YELLOW_2"]]);
                     if(!_loc2_)
                     {
                        §§push(null);
                     }
                     §§pop().§=!7§(§§pop(),§§pop());
                     loop4:
                     while(_loc1_)
                     {
                        §§push(this);
                        §§push("BIRD_GREEN");
                        §§push(["normal",["BIRD_GREEN_1","BIRD_GREEN_2"]]);
                        if(_loc1_ || _loc2_)
                        {
                           §§push(null);
                        }
                        §§pop().§=!7§(§§pop(),§§pop());
                        while(true)
                        {
                           if(!(_loc2_ && this))
                           {
                              if(_loc1_)
                              {
                                 continue loop2;
                              }
                              continue loop3;
                           }
                           §§push(this);
                           addr130:
                           §§push("BIRD_REDBIG");
                           §§push(["normal",["BIRD_REDBIG_1"]]);
                           continue loop4;
                           if(!(_loc2_ && _loc2_))
                           {
                              §§push(null);
                           }
                           §§pop().§=!7§(§§pop(),§§pop());
                           if(_loc1_ || _loc2_)
                           {
                              return;
                           }
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      protected function initializePigAnimations() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this);
            §§push("PIG_BASIC_SMALL");
            §§push(["normal",["PIG_BASIC_SMALL_01","PIG_BASIC_SMALL_02","PIG_BASIC_SMALL_03"]]);
            if(_loc2_)
            {
               §§push(null);
            }
            §§pop().§=!7§(§§pop(),§§pop());
            loop0:
            while(true)
            {
               §§push(this);
               §§push("PIG_BASIC_MEDIUM");
               §§push(["normal",["PIG_BASIC_MEDIUM_01","PIG_BASIC_MEDIUM_02","PIG_BASIC_MEDIUM_03"]]);
               if(_loc2_ || this)
               {
                  §§push(null);
               }
               §§pop().§=!7§(§§pop(),§§pop());
               do
               {
                  §§push(this);
                  §§push("PIG_BASIC_BIG");
                  §§push(["normal",["PIG_BASIC_BIG_01","PIG_BASIC_BIG_02","PIG_BASIC_BIG_03"]]);
                  if(!(_loc1_ && _loc1_))
                  {
                     §§push(null);
                  }
                  §§pop().§=!7§(§§pop(),§§pop());
                  continue loop0;
               }
               while(!_loc2_);
               
            }
         }
      }
      
      protected function §[W§(param1:String, param2:Array) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[1] = param1;
            loop1:
            while(true)
            {
               §§push(§§newactivation());
               loop2:
               while(true)
               {
                  §§pop().§§slot[2] = param2;
                  do
                  {
                     loop4:
                     while(!this.§@!1§[name])
                     {
                        while(true)
                        {
                           §§push(§§newactivation());
                           if(!_loc6_)
                           {
                              break;
                           }
                           if(_loc6_)
                           {
                              §§push(true);
                              if(!(_loc5_ && this))
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              §§pop().§§slot[3] = §§pop();
                              if(_loc6_ || _loc3_)
                              {
                                 if(_loc5_ && this)
                                 {
                                    break loop4;
                                 }
                                 if(_loc6_ || param1)
                                 {
                                    if(true)
                                    {
                                       try
                                       {
                                          this.§@!1§[name] = this.§`!C§(frameNames);
                                       }
                                       catch(e:Error)
                                       {
                                          if(_loc6_)
                                          {
                                             §§push(_loc3_);
                                             §§push(false);
                                             if(_loc6_)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                             §§pop().§§slot[3] = §§pop();
                                          }
                                       }
                                       return result;
                                    }
                                    continue loop4;
                                 }
                                 continue loop1;
                              }
                              continue;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                  }
                  while(!_loc6_);
                  
                  throw new Error("Trying to add a duplicate animation: " + name);
               }
            }
         }
      }
      
      private function §`!C§(param1:Array) : Animation
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:§?!B§ = null;
         var _loc2_:Animation = new Animation();
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§`_§.§"!'§(_loc3_);
            if(!(_loc8_ && this))
            {
               _loc2_.addFrame(_loc4_);
            }
         }
         return _loc2_;
      }
      
      protected function §=!7§(param1:String, param2:Array) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:Array = null;
         if(!(_loc9_ && this))
         {
            if(this.§@!1§[param1])
            {
               if(_loc10_)
               {
                  throw new Error("Trying to add a duplicate animation: " + param1);
               }
            }
         }
         var _loc3_:AnimationContainer = new AnimationContainer();
         for each(_loc4_ in param2)
         {
            if(_loc10_)
            {
               _loc5_ = _loc4_[0];
            }
            _loc6_ = _loc4_[1];
            if(!_loc9_)
            {
               _loc3_.§[W§(_loc5_,this.§`!C§(_loc6_));
            }
         }
         if(_loc10_ || this)
         {
            this.§@!1§[param1] = _loc3_;
         }
      }
      
      public function getAnimation(param1:String) : Animation
      {
         return this.§@!1§[param1];
      }
   }
}
