package §<z§
{
   import §6!M§.§-!?§;
   import §<e§.§ &§;
   import com.AngryBirds.friendsbar.LevelScorePlateAsset;
   import flash.events.Event;
   
   public class §=!1§ extends §1S§
   {
       
      
      private var §"v§:LevelScorePlateAsset;
      
      public function §=!1§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            do
            {
               this.init();
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
      
      private static function §2+§(param1:*, param2:int = 2, param3:Boolean = false, param4:Boolean = false) : String
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
            if(!(_loc14_ && param2))
            {
               §§push(int(§§pop().length));
               if(_loc13_ || param3)
               {
               }
               addr76:
               §§push(int(§§pop()));
            }
            else
            {
               addr66:
               §§push(int(§§pop().indexOf(".")));
               if(!(_loc14_ && param3))
               {
                  §§goto(addr76);
               }
            }
            var _loc9_:* = §§pop();
            if(_loc13_ || param3)
            {
               §§push(_loc8_);
               if(!(_loc14_ && param2))
               {
                  §§push(Boolean(§§pop()));
                  if(!_loc14_)
                  {
                     if(§§pop())
                     {
                        if(_loc13_ || param3)
                        {
                           §§pop();
                           if(_loc13_ || §=!1§)
                           {
                              addr113:
                              §§push(param3);
                              if(_loc13_ || param3)
                              {
                                 §§push(!§§pop());
                                 if(!_loc14_)
                                 {
                                    addr124:
                                    if(§§pop())
                                    {
                                       if(!(_loc14_ && §=!1§))
                                       {
                                          addr146:
                                          var _loc10_:* = (!_loc14_ ? §§pop() : §§pop()) + _loc7_.substr(_loc9_ + 1);
                                          §§push("");
                                          if(!(_loc14_ && §=!1§))
                                          {
                                             if(param3)
                                             {
                                                if(_loc13_ || §=!1§)
                                                {
                                                   _loc11_ = 0;
                                                   addr218:
                                                   loop1:
                                                   while(true)
                                                   {
                                                      loop2:
                                                      while(true)
                                                      {
                                                         §§push(_loc11_);
                                                         if(_loc13_ || param2)
                                                         {
                                                            §§push(param2);
                                                            if(_loc13_ || §=!1§)
                                                            {
                                                               if(§§pop() > §§pop() - (_loc7_.length - (!!_loc8_ ? _loc9_ - 1 : _loc9_)))
                                                               {
                                                                  if(_loc13_)
                                                                  {
                                                                     addr306:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc5_);
                                                                        break loop2;
                                                                     }
                                                                     addr306:
                                                                  }
                                                                  addr347:
                                                                  §§push(_loc7_);
                                                               }
                                                               else
                                                               {
                                                                  §§push(_loc10_);
                                                                  if(_loc13_ || param2)
                                                                  {
                                                                     addr272:
                                                                     §§push(§§pop() + "0");
                                                                     if(!(_loc14_ && §=!1§))
                                                                     {
                                                                        _loc10_ = §§pop();
                                                                        if(!_loc14_)
                                                                        {
                                                                           _loc11_++;
                                                                           if(_loc13_ || param3)
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 continue loop1;
                                                                              }
                                                                              continue;
                                                                           }
                                                                           §§goto(addr306);
                                                                        }
                                                                        §§goto(addr347);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        addr273:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() + _loc7_.substr(_loc9_ - (_loc5_ = _loc5_ + 3),3) + _loc10_);
                                                                           if(!(_loc14_ && param1))
                                                                           {
                                                                              _loc10_ = §§pop();
                                                                              if(_loc13_ || §=!1§)
                                                                              {
                                                                                 §§goto(addr306);
                                                                              }
                                                                              §§goto(addr347);
                                                                           }
                                                                           break;
                                                                        }
                                                                     }
                                                                     addr272:
                                                                  }
                                                               }
                                                               return §§pop().substr(0,_loc9_ - _loc5_) + _loc10_;
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(!(_loc14_ && §=!1§))
                                                               {
                                                                  if(_loc7_.substr(0,1) == "-")
                                                                  {
                                                                     addr333:
                                                                     if(_loc9_ < (!(_loc14_ && param1) ? §§pop() - 1 : §§pop()))
                                                                     {
                                                                        if(param4)
                                                                        {
                                                                           if(_loc13_ || param2)
                                                                           {
                                                                              §§push(".");
                                                                              if(!(_loc14_ && param3))
                                                                              {
                                                                                 §§push(§§pop());
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr272);
                                                                              }
                                                                              §§goto(addr273);
                                                                           }
                                                                           §§goto(addr306);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(",");
                                                                        }
                                                                        §§goto(addr272);
                                                                     }
                                                                     §§goto(addr347);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(_loc9_);
                                                                  }
                                                                  §§goto(addr345);
                                                               }
                                                               §§goto(addr333);
                                                            }
                                                            addr308:
                                                         }
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr308);
                                                         §§goto(addr306);
                                                      }
                                                   }
                                                }
                                                §§goto(addr218);
                                             }
                                             §§goto(addr306);
                                          }
                                          §§goto(addr218);
                                       }
                                       else
                                       {
                                          addr139:
                                          §§push(",");
                                          if(!_loc14_)
                                          {
                                             §§push(§§pop());
                                          }
                                          else
                                          {
                                             §§goto(addr145);
                                          }
                                          §§goto(addr146);
                                       }
                                    }
                                    else
                                    {
                                       addr138:
                                       if(param4)
                                       {
                                          §§goto(addr139);
                                       }
                                       else
                                       {
                                          §§push(".");
                                       }
                                       §§goto(addr145);
                                    }
                                 }
                              }
                              §§goto(addr138);
                           }
                           §§goto(addr139);
                        }
                        §§goto(addr138);
                     }
                  }
                  §§goto(addr124);
               }
               §§goto(addr138);
            }
            §§goto(addr113);
         }
         else
         {
            §§push(_loc7_);
         }
         §§goto(addr66);
      }
      
      private function init() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            addChild(this.§"v§ = new LevelScorePlateAsset());
            if(!_loc2_)
            {
               addr41:
               this.§"v§.§&![§.stop();
            }
            return;
         }
         §§goto(addr41);
      }
      
      override public function update() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§36§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§"v§);
                     while(true)
                     {
                        if(!§@!E§)
                        {
                           §§push(1);
                           loop3:
                           while(true)
                           {
                              §§push(§§pop());
                              loop4:
                              while(true)
                              {
                                 §§pop().gotoAndStop(§§pop());
                                 loop5:
                                 while(true)
                                 {
                                    §3W§();
                                    loop6:
                                    while(true)
                                    {
                                       §§push(this.§"v§);
                                       loop7:
                                       while(true)
                                       {
                                          §§pop().§'!a§.text = this.§36§.userName || "";
                                          loop8:
                                          while(true)
                                          {
                                             §§push(this.§36§);
                                             loop9:
                                             while(true)
                                             {
                                                §§push(§§pop().§ N§ <= 3);
                                                addr338:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   addr339:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            §§pop();
                                                         }
                                                         addr340:
                                                      }
                                                      else
                                                      {
                                                         addr280:
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               §§push(this.§"v§);
                                                               while(true)
                                                               {
                                                                  §§pop().§&![§.visible = false;
                                                                  addr219:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§"v§);
                                                                     loop41:
                                                                     while(true)
                                                                     {
                                                                        §§pop().§@=§.visible = true;
                                                                        addr192:
                                                                        while(true)
                                                                        {
                                                                           if(_loc2_)
                                                                           {
                                                                              addr194:
                                                                              if(!(_loc1_ && _loc1_))
                                                                              {
                                                                                 continue loop8;
                                                                              }
                                                                              addr331:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§36§);
                                                                                 if(_loc1_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 continue loop0;
                                                                                 §§goto(addr194);
                                                                              }
                                                                              continue loop9;
                                                                           }
                                                                           addr249:
                                                                           loop26:
                                                                           while(!_loc1_)
                                                                           {
                                                                              §§push(this.§"v§);
                                                                              loop27:
                                                                              for(; !(_loc1_ && _loc1_); if(!(_loc2_ || _loc1_))
                                                                              {
                                                                                 continue;
                                                                              },§§pop().§"!L§.text = §2+§(this.§36§.§0!F§) || "0",while(!_loc1_)
                                                                              {
                                                                                 §§push(this.§"v§);
                                                                                 continue loop7;
                                                                              },§§goto(addr235))
                                                                              {
                                                                                 §§pop().§&![§.gotoAndStop(this.§36§.§ N§);
                                                                                 while(true)
                                                                                 {
                                                                                    do
                                                                                    {
                                                                                       §§push(this.§"v§);
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             continue loop27;
                                                                                          }
                                                                                          continue loop41;
                                                                                       }
                                                                                       continue loop41;
                                                                                    }
                                                                                    while(!_loc1_);
                                                                                    
                                                                                    addr296:
                                                                                    addr341:
                                                                                    while(!(_loc1_ && _loc1_))
                                                                                    {
                                                                                       §§push(this.§"v§);
                                                                                       while(!(_loc1_ && this))
                                                                                       {
                                                                                          §§pop().§@=§.visible = false;
                                                                                          continue loop26;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(2);
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             continue loop4;
                                                                                          }
                                                                                          continue loop3;
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§36§);
                                                                                       continue loop9;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§pop().§&![§.visible = true;
                                                                                 §§goto(addr296);
                                                                                 §§goto(addr223);
                                                                              }
                                                                              addr223:
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               addr216:
                                                            }
                                                            while(_loc2_)
                                                            {
                                                               if(_loc1_ && _loc2_)
                                                               {
                                                                  continue loop5;
                                                               }
                                                               §§goto(addr293);
                                                               §§push(this.§"v§);
                                                            }
                                                            continue loop6;
                                                         }
                                                         addr280:
                                                      }
                                                      §§goto(addr341);
                                                   }
                                                }
                                             }
                                          }
                                          while(!(_loc1_ && _loc1_))
                                          {
                                             §§pop().mcStar1.visible = this.§36§.stars >= 1;
                                             while(true)
                                             {
                                                if(_loc2_ || this)
                                                {
                                                   if(_loc1_ && this)
                                                   {
                                                      §§goto(addr387);
                                                   }
                                                   §§push(this.§"v§);
                                                   while(true)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         if(!_loc1_)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               §§pop().mcStar2.visible = this.§36§.stars >= 2;
                                                               continue;
                                                            }
                                                            §§goto(addr216);
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr121);
                                                   }
                                                   §§goto(addr148);
                                                }
                                                break;
                                                if(!(_loc2_ || _loc1_))
                                                {
                                                   continue;
                                                }
                                                if(_loc2_)
                                                {
                                                   if(!(_loc1_ && _loc1_))
                                                   {
                                                      return;
                                                   }
                                                   §§goto(addr219);
                                                }
                                                §§goto(addr142);
                                             }
                                             §§goto(addr166);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr375);
                     }
                  }
               }
               addr387:
               return;
            }
         }
         §§goto(addr219);
      }
      
      private function §8!U§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            dispatchEvent(new § &§(§ &§.§7!n§,this.§36§,true));
         }
         do
         {
            this.§36§.§+!3§ = false;
         }
         while(!_loc3_);
         
      }
      
      public function get §36§() : §-!?§
      {
         return data as §-!?§;
      }
   }
}
