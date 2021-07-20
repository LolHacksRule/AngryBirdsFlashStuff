package §2!o§
{
   import §,l§.§1U§;
   import com.AngryBirds.friendsbar.TournamentScorePlateAsset;
   
   public class §[!$§ extends §`2§ implements §0!o§
   {
       
      
      private var § ;§:TournamentScorePlateAsset;
      
      public function §[!$§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
         do
         {
            this.init();
         }
         while(!(_loc2_ || this));
         
      }
      
      private static function §<Y§(param1:*, param2:int = 2, param3:Boolean = false, param4:Boolean = false) : String
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc11_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Number = Math.pow(10,param2);
         var _loc8_:*;
         var _loc7_:String;
         if(_loc8_ = (_loc7_ = String(Math.round(_loc6_ * Number(param1)) / _loc6_)).indexOf(".") == -1)
         {
            §§push(_loc7_);
            if(_loc13_)
            {
               §§push(int(§§pop().length));
               if(!_loc13_)
               {
               }
               addr61:
               §§push(int(§§pop()));
            }
            else
            {
               addr56:
               §§push(int(§§pop().indexOf(".")));
               if(!_loc14_)
               {
                  §§goto(addr61);
               }
            }
            var _loc9_:* = §§pop();
            if(_loc13_)
            {
               §§push(_loc8_);
               if(_loc13_ || param2)
               {
                  §§push(Boolean(§§pop()));
                  if(!_loc14_)
                  {
                     addr76:
                     if(§§pop())
                     {
                        if(!(_loc14_ && param3))
                        {
                           §§pop();
                           if(!_loc14_)
                           {
                              addr88:
                              §§push(param3);
                              if(!(_loc14_ && param2))
                              {
                                 §§push(!§§pop());
                                 if(_loc13_ || param2)
                                 {
                                    addr104:
                                    if(§§pop())
                                    {
                                       if(_loc13_)
                                       {
                                          addr126:
                                          var _loc10_:* = (_loc13_ || param3 ? §§pop() : §§pop()) + _loc7_.substr(_loc9_ + 1);
                                          §§push("");
                                          if(_loc13_)
                                          {
                                             if(param3)
                                             {
                                                if(_loc13_ || §[!$§)
                                                {
                                                   addr191:
                                                   _loc11_ = 0;
                                                }
                                                loop0:
                                                while(true)
                                                {
                                                   loop1:
                                                   while(true)
                                                   {
                                                      §§push(_loc11_);
                                                      if(_loc13_ || §[!$§)
                                                      {
                                                         §§push(param2);
                                                         if(!_loc14_)
                                                         {
                                                            if(§§pop() > §§pop() - (_loc7_.length - (!!_loc8_ ? _loc9_ - 1 : _loc9_)))
                                                            {
                                                               if(!(_loc14_ && param1))
                                                               {
                                                                  addr225:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc5_);
                                                                     break loop1;
                                                                  }
                                                                  addr261:
                                                               }
                                                               addr292:
                                                               §§push(_loc7_);
                                                            }
                                                            else
                                                            {
                                                               §§push(_loc10_);
                                                               if(_loc13_ || param1)
                                                               {
                                                                  §§push(§§pop() + "0");
                                                                  if(!_loc14_)
                                                                  {
                                                                     _loc10_ = §§pop();
                                                                     if(_loc13_ || param1)
                                                                     {
                                                                        _loc11_++;
                                                                        if(!(_loc14_ && §[!$§))
                                                                        {
                                                                           if(false)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                           continue;
                                                                        }
                                                                     }
                                                                     §§goto(addr225);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     addr238:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + _loc7_.substr(_loc9_ - (_loc5_ = _loc5_ + 3),3) + _loc10_);
                                                                        if(_loc13_)
                                                                        {
                                                                           _loc10_ = §§pop();
                                                                           if(_loc13_)
                                                                           {
                                                                              §§goto(addr261);
                                                                           }
                                                                           §§goto(addr292);
                                                                        }
                                                                        break;
                                                                     }
                                                                  }
                                                                  addr234:
                                                               }
                                                            }
                                                            return §§pop().substr(0,_loc9_ - _loc5_) + _loc10_;
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc14_)
                                                            {
                                                               if(_loc7_.substr(0,1) == "-")
                                                               {
                                                                  addr283:
                                                                  if(_loc9_ < (!_loc14_ ? §§pop() - 1 : §§pop()))
                                                                  {
                                                                     if(param4)
                                                                     {
                                                                        if(_loc13_)
                                                                        {
                                                                           §§push(".");
                                                                           if(!_loc14_)
                                                                           {
                                                                              §§goto(addr234);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr237:
                                                                              §§push(§§pop());
                                                                           }
                                                                           §§goto(addr238);
                                                                        }
                                                                        §§goto(addr292);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(",");
                                                                     }
                                                                     §§goto(addr237);
                                                                  }
                                                                  §§goto(addr292);
                                                               }
                                                               else
                                                               {
                                                                  §§push(_loc9_);
                                                               }
                                                               §§goto(addr290);
                                                            }
                                                            §§goto(addr283);
                                                         }
                                                         addr273:
                                                      }
                                                      break;
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr273);
                                                   }
                                                   §§goto(addr292);
                                                }
                                             }
                                             §§goto(addr225);
                                          }
                                          §§goto(addr191);
                                       }
                                       else
                                       {
                                          addr119:
                                          §§push(",");
                                          if(!_loc14_)
                                          {
                                             §§goto(addr122);
                                          }
                                          else
                                          {
                                             addr125:
                                             §§push(§§pop());
                                          }
                                          §§goto(addr126);
                                       }
                                    }
                                    else
                                    {
                                       addr118:
                                       if(param4)
                                       {
                                          §§goto(addr119);
                                       }
                                       else
                                       {
                                          §§push(".");
                                       }
                                       §§goto(addr125);
                                    }
                                 }
                                 §§goto(addr118);
                              }
                              §§goto(addr104);
                           }
                           §§goto(addr119);
                        }
                        §§goto(addr118);
                     }
                  }
                  §§goto(addr104);
               }
               §§goto(addr76);
            }
            §§goto(addr88);
         }
         else
         {
            §§push(_loc7_);
         }
         §§goto(addr56);
      }
      
      private function init() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            addChild(this.§ ;§ = new TournamentScorePlateAsset());
            if(_loc2_ || _loc1_)
            {
               addr45:
               this.§ ;§.§8%§.stop();
            }
            return;
         }
         §§goto(addr45);
      }
      
      override public function update() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!this.§`![§)
            {
               if(_loc2_)
               {
                  return;
               }
            }
            else
            {
               addr26:
               if(!§4"L§)
               {
               }
            }
            var _loc1_:* = 1;
            if(!_loc3_)
            {
               if(!§]F§)
               {
                  if(§4"L§)
                  {
                     loop0:
                     while(true)
                     {
                        §§push(3);
                        addr315:
                        while(true)
                        {
                           if(!_loc3_)
                           {
                              _loc1_ = §§pop();
                              addr318:
                              while(true)
                              {
                              }
                              addr318:
                           }
                           else
                           {
                              addr322:
                              while(true)
                              {
                                 _loc1_ = §§pop();
                                 addr323:
                                 while(true)
                                 {
                                 }
                              }
                              addr322:
                           }
                        }
                        loop7:
                        while(true)
                        {
                           if(_loc3_ && _loc3_)
                           {
                              continue loop0;
                           }
                           §2!l§();
                           loop8:
                           while(true)
                           {
                              §§push(this.§ ;§);
                              loop9:
                              while(true)
                              {
                                 §§pop().§[m§.text = this.§`![§.userName || "";
                                 loop10:
                                 while(true)
                                 {
                                    §§push(this.§`![§);
                                    while(true)
                                    {
                                       §§push(§§pop().§'Q§ <= 3);
                                       if(_loc2_ || _loc3_)
                                       {
                                          if(!§§pop())
                                          {
                                             loop12:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   §§push(this.§ ;§);
                                                   loop25:
                                                   while(!_loc3_)
                                                   {
                                                      §§pop().§8%§.visible = false;
                                                      loop26:
                                                      while(true)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            continue loop10;
                                                         }
                                                         if(!_loc2_)
                                                         {
                                                            continue loop7;
                                                         }
                                                         §§push(this.§ ;§);
                                                         loop24:
                                                         while(true)
                                                         {
                                                            if(!(_loc3_ && _loc1_))
                                                            {
                                                               addr138:
                                                               §§pop().§,"<§.visible = true;
                                                               loop22:
                                                               while(true)
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     continue loop26;
                                                                  }
                                                                  if(!(_loc3_ && _loc2_))
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        §§push(this.§ ;§);
                                                                        while(true)
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              if(_loc2_ || _loc1_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue loop25;
                                                                           }
                                                                           continue loop24;
                                                                        }
                                                                        addr98:
                                                                        if(!_loc3_)
                                                                        {
                                                                           addr109:
                                                                           if(!(_loc3_ && _loc2_))
                                                                           {
                                                                              §§pop().§,"<§.text = this.§`![§.§'Q§.toString() || "";
                                                                              loop30:
                                                                              while(true)
                                                                              {
                                                                                 addr65:
                                                                                 addr181:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§ ;§);
                                                                                    if(_loc2_ || _loc2_)
                                                                                    {
                                                                                       addr75:
                                                                                       if(!(_loc2_ || _loc3_))
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§pop().§]l§.text = §<Y§(this.§`![§.§?&§) || "0";
                                                                                       loop20:
                                                                                       while(true)
                                                                                       {
                                                                                          §=!8§();
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc2_ || _loc2_)
                                                                                             {
                                                                                                if(_loc2_ || this)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                continue loop22;
                                                                                             }
                                                                                             continue loop20;
                                                                                          }
                                                                                          continue loop30;
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr98);
                                                                                    }
                                                                                    continue loop30;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().§8%§.gotoAndStop(this.§`![§.§'Q§);
                                                                                    addr186:
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr65);
                                                                                    }
                                                                                    §§goto(addr75);
                                                                                 }
                                                                              }
                                                                              addr127:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§pop().gotoAndStop(_loc1_);
                                                                              continue loop7;
                                                                              §§goto(addr109);
                                                                           }
                                                                           addr299:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§pop().§,"<§.visible = false;
                                                                        }
                                                                        addr190:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr181);
                                                                     }
                                                                  }
                                                                  §§goto(addr186);
                                                               }
                                                               continue loop10;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   continue loop9;
                                                }
                                                if(!(_loc2_ || _loc3_))
                                                {
                                                   continue loop10;
                                                }
                                                if(!_loc3_)
                                                {
                                                   §§push(this.§ ;§);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      break loop12;
                                                   }
                                                   addr321:
                                                }
                                                while(true)
                                                {
                                                   §§pop().§8%§.visible = true;
                                                   continue loop10;
                                                   §§goto(addr131);
                                                }
                                                addr202:
                                                §§push(§§pop() > 0);
                                                if(!(_loc3_ && _loc1_))
                                                {
                                                   continue;
                                                }
                                                addr252:
                                                while(true)
                                                {
                                                   §§pop();
                                                   continue loop8;
                                                   §§goto(addr202);
                                                }
                                                addr252:
                                             }
                                             §§goto(addr322);
                                          }
                                       }
                                       §§goto(addr252);
                                       addr267:
                                       §§push(this.§`![§);
                                       if(_loc3_)
                                       {
                                          continue;
                                       }
                                       §§push(§§pop().§?&§);
                                       if(_loc2_)
                                       {
                                          §§goto(addr202);
                                       }
                                       else
                                       {
                                          §§goto(addr315);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§goto(addr109);
                     §§goto(addr318);
                  }
               }
               §§goto(addr321);
            }
            §§goto(addr127);
         }
         §§goto(addr26);
      }
      
      public function setCanSendGift(param1:Boolean, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(§4"L§)
            {
               while(true)
               {
                  param1 = false;
                  while(true)
                  {
                  }
               }
               addr56:
            }
            do
            {
               §#"2§.setCanSendGift(param1,param2);
               if(!(_loc4_ || param2))
               {
                  continue;
               }
            }
            while(_loc3_ && param2);
            
            return;
         }
         §§goto(addr56);
      }
      
      public function get §`![§() : §1U§
      {
         return data as §1U§;
      }
   }
}
