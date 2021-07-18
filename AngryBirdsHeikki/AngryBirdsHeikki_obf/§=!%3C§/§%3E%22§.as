package §=!<§
{
   import flash.utils.Dictionary;
   
   public class §>"§
   {
       
      
      private var §;u§:§>a§;
      
      private var §,!%§:Dictionary;
      
      public function §>"§(param1:§>a§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§,!%§ = new Dictionary();
            while(true)
            {
               super();
               §§goto(addr60);
            }
         }
         addr60:
         while(true)
         {
            this.§;u§ = param1;
            if(_loc2_)
            {
               if(_loc2_ || _loc3_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function initializeAnimations(param1:Array) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         if(!_loc7_)
         {
            this.§%X§(param1);
            while(true)
            {
               this.§7f§("PARTICLE_WOOD",["PARTICLE_WOOD_1"]);
               loop1:
               while(true)
               {
                  this.§7f§("SLINGSHOT",["SLING_SHOT_01_BACK","SLING_SHOT_01_FRONT"]);
                  addr300:
                  while(true)
                  {
                     this.§7f§("EXPLOSION",["EXPLOSION_1","EXPLOSION_2","EXPLOSION_3","EXPLOSION_4","EXPLOSION_5","EXPLOSION_6","EXPLOSION_7"]);
                     continue loop1;
                  }
               }
               if(_loc7_ && _loc3_)
               {
                  continue;
               }
               this.§7f§("SCORE_BIRD_BLUE",["SCORE_BIRD_BLUE"]);
               §§goto(addr125);
            }
         }
         §§goto(addr195);
      }
      
      private function §%X§(param1:Array) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:Array = null;
         var _loc3_:String = null;
         if(!_loc7_)
         {
            §§push(param1);
            if(_loc6_)
            {
               if(§§pop() != null)
               {
                  addr42:
                  _loc2_ = this.§5! §(param1);
                  addr29:
                  for each(_loc3_ in _loc2_)
                  {
                     if(!(_loc7_ && this))
                     {
                        this.§1N§(_loc3_);
                     }
                  }
               }
               return;
            }
            §§goto(addr42);
         }
         §§goto(addr29);
      }
      
      private function §1N§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§7f§(param1,[param1 + "_1",param1 + "_2",param1 + "_3",param1 + "_4"]));
            if(_loc2_ || this)
            {
               if(!§§pop())
               {
                  if(_loc2_ || this)
                  {
                     §§push(this.§7f§(param1,[param1 + "_1",param1 + "_2",param1 + "_3"]));
                     if(!(_loc3_ && _loc3_))
                     {
                        addr79:
                        if(!§§pop())
                        {
                           if(_loc2_ || _loc2_)
                           {
                              addr87:
                              §§push(this.§7f§(param1,[param1 + "_1"]));
                              if(_loc2_ || _loc3_)
                              {
                                 addr101:
                                 if(§§pop())
                                 {
                                 }
                                 §§goto(addr125);
                              }
                              if(§§pop())
                              {
                              }
                              §§goto(addr125);
                           }
                           §§goto(addr119);
                        }
                        §§goto(addr125);
                     }
                     §§goto(addr101);
                  }
                  §§goto(addr119);
               }
               addr125:
               if(!(_loc3_ && _loc3_))
               {
                  addr119:
                  §§push(this.§7f§(param1,[param1]));
               }
               return;
            }
            §§goto(addr79);
         }
         §§goto(addr87);
      }
      
      private function §5! §(param1:Array) : Array
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
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
                     §§push(§§pop().indexOf("PIG") == 0);
                     loop4:
                     while(true)
                     {
                        §§push(!§§pop());
                        loop5:
                        while(true)
                        {
                           §§push(§§pop());
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop14:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(_loc7_)
                                    {
                                       break;
                                    }
                                    if(§§pop())
                                    {
                                       loop12:
                                       while(_loc6_)
                                       {
                                          §§pop();
                                          §§push(§§pop().indexOf("_") > 0);
                                          if(_loc7_ && _loc2_)
                                          {
                                             continue;
                                          }
                                          addr55:
                                          if(!(_loc6_ || _loc2_))
                                          {
                                             while(true)
                                             {
                                                if(!_loc7_)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(!§§pop());
                                                   if(!_loc7_)
                                                   {
                                                      continue loop14;
                                                   }
                                                   continue loop12;
                                                }
                                                §§goto(addr140);
                                                §§goto(addr55);
                                             }
                                             continue loop5;
                                             addr115:
                                          }
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                continue loop0;
                                             }
                                             if(_loc6_)
                                             {
                                                if(_loc6_ || this)
                                                {
                                                   _loc2_.push(_loc3_);
                                                   addr86:
                                                   if(!(_loc6_ || this))
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(_loc3_);
                                                         if(!(_loc7_ && this))
                                                         {
                                                            continue loop3;
                                                         }
                                                         continue loop1;
                                                         §§goto(addr86);
                                                      }
                                                      continue loop0;
                                                      addr130:
                                                   }
                                                   if(_loc7_ && _loc3_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   if(true)
                                                   {
                                                      continue loop0;
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr141);
                                                }
                                                while(true)
                                                {
                                                   §§push(_loc3_);
                                                   continue loop1;
                                                }
                                                continue loop2;
                                                addr102:
                                             }
                                             §§goto(addr86);
                                          }
                                          addr62:
                                          §§goto(addr141);
                                       }
                                       continue loop4;
                                    }
                                    §§goto(addr62);
                                    §§goto(addr130);
                                 }
                                 continue;
                              }
                              while(true)
                              {
                                 §§pop();
                                 addr141:
                                 while(true)
                                 {
                                 }
                              }
                              addr140:
                              §§goto(addr102);
                           }
                        }
                     }
                  }
               }
            }
         }
         if(_loc6_)
         {
            _loc2_.sort();
         }
         return _loc2_;
      }
      
      protected function initializeBirdAnimations() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this);
            §§push("BIRD_BLACK");
            §§push(["normal",["BIRD_BLACK_1","BIRD_BLACK_2"]]);
            if(_loc1_)
            {
               §§push(null);
            }
            §§pop().§,0§(§§pop(),§§pop());
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
               §§pop().§,0§(§§pop(),§§pop());
               loop1:
               while(true)
               {
                  §§push(this);
                  §§push("BIRD_RED");
                  §§push(["normal",["BIRD_RED_1","BIRD_RED_2"]]);
                  if(_loc1_)
                  {
                     §§push(null);
                  }
                  §§pop().§,0§(§§pop(),§§pop());
                  addr192:
                  if(_loc2_ && this)
                  {
                     continue;
                  }
                  if(_loc2_)
                  {
                     continue loop0;
                  }
                  §§push(this);
                  §§push("BIRD_YELLOW");
                  §§push(["normal",["BIRD_YELLOW_1","BIRD_YELLOW_2"]]);
                  if(!(_loc2_ && this))
                  {
                     §§push(null);
                  }
                  §§pop().§,0§(§§pop(),§§pop());
                  loop4:
                  while(true)
                  {
                     §§push(this);
                     §§push("BIRD_GREEN");
                     §§push(["normal",["BIRD_GREEN_1","BIRD_GREEN_2"]]);
                     if(!(_loc2_ && this))
                     {
                        §§push(null);
                     }
                     §§pop().§,0§(§§pop(),§§pop());
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           if(!_loc1_)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop4;
                     }
                     loop3:
                     while(true)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           §§goto(addr192);
                        }
                        else
                        {
                           while(true)
                           {
                              §§push(this);
                              §§push("BIRD_WHITE");
                              §§push(["normal",["BIRD_WHITE_1","BIRD_WHITE_2"]]);
                              if(!_loc2_)
                              {
                                 §§push(null);
                              }
                              §§pop().§,0§(§§pop(),§§pop());
                              continue loop3;
                           }
                           addr230:
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr230);
      }
      
      protected function §1?§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this);
            §§push("PIG_BASIC_SMALL");
            §§push(["normal",["PIG_BASIC_SMALL_01","PIG_BASIC_SMALL_02","PIG_BASIC_SMALL_03"]]);
            if(_loc1_)
            {
               §§push(null);
            }
            §§pop().§,0§(§§pop(),§§pop());
            loop0:
            while(true)
            {
               §§push(this);
               §§push("PIG_BASIC_MEDIUM");
               §§push(["normal",["PIG_BASIC_MEDIUM_01","PIG_BASIC_MEDIUM_02","PIG_BASIC_MEDIUM_03"]]);
               if(!(_loc2_ && _loc2_))
               {
                  §§push(null);
               }
               §§pop().§,0§(§§pop(),§§pop());
               while(true)
               {
                  §§push(this);
                  §§push("PIG_BASIC_BIG");
                  §§push(["normal",["PIG_BASIC_BIG_01","PIG_BASIC_BIG_02","PIG_BASIC_BIG_03"]]);
                  if(_loc1_)
                  {
                     §§push(null);
                  }
                  §§pop().§,0§(§§pop(),§§pop());
                  loop2:
                  while(_loc1_)
                  {
                     §§push(this);
                     §§push("PIG_HELMET");
                     §§push(["normal",["PIG_HELMET_01","PIG_HELMET_02","PIG_HELMET_03"]]);
                     if(_loc1_)
                     {
                        §§push(null);
                     }
                     §§pop().§,0§(§§pop(),§§pop());
                     while(true)
                     {
                        §§push(this);
                        §§push("PIG_MUSTACHE");
                        §§push(["normal",["PIG_MUSTACHE_01","PIG_MUSTACHE_02","PIG_MUSTACHE_03"]]);
                        if(_loc1_)
                        {
                           §§push(null);
                        }
                        §§pop().§,0§(§§pop(),§§pop());
                        do
                        {
                           §§push(this);
                           §§push("PIG_KING");
                           §§push(["normal",["PIG_KING_01","PIG_KING_02","PIG_KING_03"]]);
                           if(!_loc2_)
                           {
                              §§push(null);
                           }
                           §§pop().§,0§(§§pop(),§§pop());
                        }
                        while(_loc2_);
                        
                        if(!(_loc2_ && this))
                        {
                           if(_loc1_ || _loc1_)
                           {
                              if(!_loc2_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           continue loop2;
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr133);
      }
      
      protected function §7f§(param1:String, param2:Array) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
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
                  loop3:
                  while(true)
                  {
                     loop4:
                     while(!this.§,!%§[name])
                     {
                        while(true)
                        {
                           §§push(§§newactivation());
                           if(!_loc5_)
                           {
                              break;
                           }
                           if(_loc5_)
                           {
                              §§pop().§§slot[3] = true;
                              if(!_loc6_)
                              {
                                 if(_loc5_)
                                 {
                                    if(true)
                                    {
                                       try
                                       {
                                          this.§,!%§[name] = this.§2j§(frameNames);
                                       }
                                       catch(e:Error)
                                       {
                                          if(_loc5_ || _loc3_)
                                          {
                                             var result:Boolean = false;
                                          }
                                       }
                                    }
                                    continue loop4;
                                    return result;
                                 }
                                 break loop4;
                              }
                              if(!(_loc6_ && param2))
                              {
                                 continue;
                              }
                              continue loop3;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                     if(_loc5_ || this)
                     {
                        throw new Error("Trying to add a duplicate animation: " + name);
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      private function §2j§(param1:Array) : §!x§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:String = null;
         var _loc4_:§8!!§ = null;
         var _loc2_:§!x§ = new §!x§();
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§;u§.§8t§(_loc3_);
            if(!_loc7_)
            {
               _loc2_.addFrame(_loc4_);
            }
         }
         return _loc2_;
      }
      
      protected function §,0§(param1:String, param2:Array) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:Array = null;
         if(_loc9_ || this)
         {
            if(this.§,!%§[param1])
            {
               if(_loc9_ || param1)
               {
                  §§goto(addr44);
               }
            }
            var _loc3_:§?U§ = new §?U§();
            for each(_loc4_ in param2)
            {
               _loc5_ = _loc4_[0];
               _loc6_ = _loc4_[1];
               if(_loc9_ || _loc3_)
               {
                  _loc3_.§7f§(_loc5_,this.§2j§(_loc6_));
               }
            }
            if(_loc9_ || _loc3_)
            {
               this.§,!%§[param1] = _loc3_;
            }
            return;
         }
         addr44:
         throw new Error("Trying to add a duplicate animation: " + param1);
      }
      
      public function §!5§(param1:String) : §!x§
      {
         return this.§,!%§[param1];
      }
   }
}
