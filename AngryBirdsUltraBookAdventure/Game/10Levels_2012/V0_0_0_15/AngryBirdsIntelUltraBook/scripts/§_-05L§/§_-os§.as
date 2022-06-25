package §_-05L§
{
   import §_-01E§.§_-5b§;
   import §_-AZ§.§_-07C§;
   import com.AngryBirds.friendsbar.LevelScorePlateAsset;
   import flash.events.Event;
   
   public class §_-os§ extends §_-Po§
   {
       
      
      private var §_-nQ§:LevelScorePlateAsset;
      
      public function §_-os§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super();
            do
            {
               this.init();
            }
            while(!(_loc1_ || _loc2_));
            
         }
      }
      
      private static function § case§(param1:*, param2:int = 2, param3:Boolean = false, param4:Boolean = false) : String
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
               if(_loc14_ && param3)
               {
               }
               addr71:
               §§push(int(§§pop()));
            }
            else
            {
               addr61:
               §§push(int(§§pop().indexOf(".")));
               if(_loc13_ || param1)
               {
                  §§goto(addr71);
               }
            }
            var _loc9_:* = §§pop();
            if(!_loc14_)
            {
               §§push(_loc8_);
               if(_loc13_)
               {
                  §§push(Boolean(§§pop()));
                  if(!(_loc14_ && param3))
                  {
                     if(§§pop())
                     {
                        if(!_loc14_)
                        {
                           addr90:
                           §§pop();
                           if(_loc13_)
                           {
                              §§push(param3);
                              if(!_loc13_)
                              {
                              }
                              addr99:
                              if(§§pop())
                              {
                                 if(!(_loc14_ && §_-os§))
                                 {
                                    addr121:
                                    var _loc10_:* = (!!_loc13_ ? §§pop() : §§pop()) + _loc7_.substr(_loc9_ + 1);
                                    §§push("");
                                    if(_loc13_ || §_-os§)
                                    {
                                       if(param3)
                                       {
                                          if(!(_loc14_ && param3))
                                          {
                                             _loc11_ = 0;
                                             addr178:
                                             loop1:
                                             while(true)
                                             {
                                                loop2:
                                                while(true)
                                                {
                                                   §§push(_loc11_);
                                                   if(_loc13_)
                                                   {
                                                      §§push(param2);
                                                      if(_loc13_ || param1)
                                                      {
                                                         if(§§pop() > §§pop() - (_loc7_.length - (!!_loc8_ ? _loc9_ - 1 : _loc9_)))
                                                         {
                                                            addr216:
                                                            if(!(_loc14_ && param2))
                                                            {
                                                               addr210:
                                                               do
                                                               {
                                                                  §§push(_loc5_);
                                                                  break loop2;
                                                                  _loc10_ = §§pop();
                                                               }
                                                               while(_loc13_);
                                                               
                                                               §§goto(addr293);
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(".");
                                                               if(_loc13_ || param3)
                                                               {
                                                                  §§push(§§pop());
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + _loc7_.substr(_loc9_ - (_loc5_ = _loc5_ + 3),3) + _loc10_);
                                                                     if(_loc13_)
                                                                     {
                                                                        §§goto(addr248);
                                                                     }
                                                                     break;
                                                                  }
                                                                  addr293:
                                                                  return _loc7_.substr(0,_loc9_ - _loc5_) + _loc10_;
                                                                  addr228:
                                                               }
                                                               addr227:
                                                               while(true)
                                                               {
                                                                  §§goto(addr228);
                                                               }
                                                            }
                                                            addr216:
                                                         }
                                                         else
                                                         {
                                                            §§push(_loc10_);
                                                            if(!_loc14_)
                                                            {
                                                               §§push(§§pop() + "0");
                                                               if(!_loc14_)
                                                               {
                                                                  _loc10_ = §§pop();
                                                                  while(true)
                                                                  {
                                                                     _loc11_++;
                                                                     if(_loc14_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(_loc13_)
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           continue loop1;
                                                                        }
                                                                        continue loop2;
                                                                     }
                                                                  }
                                                                  §§goto(addr216);
                                                               }
                                                               §§goto(addr227);
                                                            }
                                                         }
                                                         §§goto(addr293);
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(!(_loc14_ && param3))
                                                         {
                                                            if(_loc7_.substr(0,1) == "-")
                                                            {
                                                               addr278:
                                                               if(_loc9_ < (_loc13_ || param2 ? §§pop() - 1 : §§pop()))
                                                               {
                                                                  if(param4)
                                                                  {
                                                                     if(!_loc14_)
                                                                     {
                                                                        §§goto(addr216);
                                                                     }
                                                                     §§goto(addr293);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(",");
                                                                  }
                                                                  §§goto(addr227);
                                                               }
                                                               §§goto(addr293);
                                                            }
                                                            else
                                                            {
                                                               §§push(_loc9_);
                                                            }
                                                            §§goto(addr290);
                                                         }
                                                         §§goto(addr278);
                                                      }
                                                      addr253:
                                                   }
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr253);
                                                }
                                             }
                                          }
                                          §§goto(addr178);
                                       }
                                       §§goto(addr210);
                                    }
                                    §§goto(addr178);
                                 }
                                 else
                                 {
                                    addr114:
                                    §§push(",");
                                    if(!_loc14_)
                                    {
                                       §§push(§§pop());
                                    }
                                    else
                                    {
                                       §§goto(addr120);
                                    }
                                    §§goto(addr121);
                                 }
                              }
                              else
                              {
                                 addr113:
                                 if(param4)
                                 {
                                    §§goto(addr114);
                                 }
                                 else
                                 {
                                    §§push(".");
                                 }
                                 §§goto(addr120);
                              }
                           }
                           §§goto(addr114);
                        }
                        §§push(!§§pop());
                        if(!_loc14_)
                        {
                           §§goto(addr99);
                        }
                        §§goto(addr113);
                     }
                  }
                  §§goto(addr99);
               }
               §§goto(addr90);
            }
            §§goto(addr114);
         }
         else
         {
            §§push(_loc7_);
         }
         §§goto(addr61);
      }
      
      private function init() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc1_)
         {
            addChild(this.§_-nQ§ = new LevelScorePlateAsset());
            if(!_loc3_)
            {
               addr45:
               this.§_-nQ§.§_-7z§.stop();
            }
            return;
         }
         §§goto(addr45);
      }
      
      override public function update() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§_-2f§);
            loop0:
            while(§§pop())
            {
               loop1:
               while(true)
               {
                  §§push(this.§_-nQ§);
                  loop2:
                  while(true)
                  {
                     if(!§_-h7§)
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
                                 §_-0-m§();
                                 loop6:
                                 while(true)
                                 {
                                    §§push(this.§_-nQ§);
                                    loop7:
                                    while(true)
                                    {
                                       §§pop().§_-AQ§.text = this.§_-2f§.userName || "";
                                       loop8:
                                       while(true)
                                       {
                                          §§push(this.§_-2f§);
                                          loop9:
                                          while(true)
                                          {
                                             §§push(§§pop().§_-0Ef§ <= 3);
                                             loop10:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                loop11:
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      loop19:
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            §§push(this.§_-nQ§);
                                                            loop20:
                                                            while(!_loc2_)
                                                            {
                                                               §§pop().§_-7z§.visible = false;
                                                               loop37:
                                                               while(true)
                                                               {
                                                                  §§push(this.§_-nQ§);
                                                                  addr214:
                                                                  while(_loc2_)
                                                                  {
                                                                     continue loop20;
                                                                  }
                                                                  if(!(_loc1_ || _loc1_))
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  §§pop().§_-07Z§.visible = true;
                                                                  addr226:
                                                                  if(!(_loc2_ && _loc1_))
                                                                  {
                                                                     addr195:
                                                                     §§push(this.§_-nQ§);
                                                                     if(_loc1_)
                                                                     {
                                                                        §§pop().§_-07Z§.text = this.§_-2f§.§_-0Ef§.toString() || "";
                                                                        addr208:
                                                                        if(_loc1_)
                                                                        {
                                                                           loop28:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§_-nQ§);
                                                                              loop29:
                                                                              while(!_loc2_)
                                                                              {
                                                                                 §§pop().§_-0d§.text = § case§(this.§_-2f§.§_-04F§) || "0";
                                                                                 loop30:
                                                                                 for(; _loc1_ || _loc1_; while(true)
                                                                                 {
                                                                                    if(_loc2_ && _loc1_)
                                                                                    {
                                                                                       continue loop30;
                                                                                    }
                                                                                    if(!(_loc2_ && this))
                                                                                    {
                                                                                       addr99:
                                                                                       if(_loc2_ && _loc2_)
                                                                                       {
                                                                                          while(_loc1_)
                                                                                          {
                                                                                             §§push(this.§_-nQ§);
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop().§_-7z§.visible = true;
                                                                                                break loop30;
                                                                                             }
                                                                                             §§goto(addr99);
                                                                                          }
                                                                                          continue loop5;
                                                                                          addr293:
                                                                                       }
                                                                                       if(!_loc1_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr108);
                                                                                       §§goto(addr297);
                                                                                    }
                                                                                    §§goto(addr226);
                                                                                    §§goto(addr33);
                                                                                 },§§goto(addr340))
                                                                                 {
                                                                                    if(_loc2_ && _loc2_)
                                                                                    {
                                                                                       continue loop1;
                                                                                    }
                                                                                    §§push(this.§_-nQ§);
                                                                                    loop31:
                                                                                    while(_loc1_ || this)
                                                                                    {
                                                                                       addr119:
                                                                                       if(_loc1_ || this)
                                                                                       {
                                                                                          §§pop().mcStar1.visible = this.§_-2f§.stars >= 1;
                                                                                          loop32:
                                                                                          while(_loc1_ || this)
                                                                                          {
                                                                                             if(_loc2_ && this)
                                                                                             {
                                                                                                continue loop37;
                                                                                             }
                                                                                             if(_loc1_)
                                                                                             {
                                                                                                §§push(this.§_-nQ§);
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc2_)
                                                                                                   {
                                                                                                      continue loop31;
                                                                                                   }
                                                                                                   if(_loc2_ && _loc2_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   if(!(_loc2_ && _loc1_))
                                                                                                   {
                                                                                                      §§pop().mcStar2.visible = this.§_-2f§.stars >= 2;
                                                                                                      continue loop30;
                                                                                                   }
                                                                                                   §§goto(addr214);
                                                                                                   addr108:
                                                                                                   §§push(this.§_-nQ§);
                                                                                                   if(!(_loc2_ && _loc2_))
                                                                                                   {
                                                                                                      addr33:
                                                                                                      §§pop().mcStar3.visible = this.§_-2f§.stars >= 3;
                                                                                                      if(_loc1_ || this)
                                                                                                      {
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            addr49:
                                                                                                            if(_loc1_ || _loc1_)
                                                                                                            {
                                                                                                               if(_loc1_)
                                                                                                               {
                                                                                                                  return;
                                                                                                               }
                                                                                                               break loop0;
                                                                                                            }
                                                                                                            addr330:
                                                                                                            loop18:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§_-2f§);
                                                                                                               if(!(_loc1_ || _loc1_))
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               if(_loc2_)
                                                                                                               {
                                                                                                                  continue loop0;
                                                                                                               }
                                                                                                               §§push(§§pop().§_-GM§);
                                                                                                               if(_loc1_)
                                                                                                               {
                                                                                                                  §§push(0);
                                                                                                                  if(!_loc2_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() > §§pop());
                                                                                                                     if(!(_loc2_ && _loc2_))
                                                                                                                     {
                                                                                                                        continue loop19;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() > §§pop());
                                                                                                                        if(_loc1_)
                                                                                                                        {
                                                                                                                           if(!_loc2_)
                                                                                                                           {
                                                                                                                              §§push(§§pop());
                                                                                                                              if(_loc2_ && this)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 continue loop19;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 addr340:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this.§_-2f§);
                                                                                                                                    break loop18;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr339:
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop11;
                                                                                                                     addr313:
                                                                                                                  }
                                                                                                                  while(!_loc2_)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     continue loop18;
                                                                                                                  }
                                                                                                                  continue loop10;
                                                                                                               }
                                                                                                               addr312:
                                                                                                               while(true)
                                                                                                               {
                                                                                                               }
                                                                                                               §§goto(addr313);
                                                                                                            }
                                                                                                            continue loop9;
                                                                                                         }
                                                                                                         continue loop32;
                                                                                                      }
                                                                                                      continue loop30;
                                                                                                   }
                                                                                                }
                                                                                                continue loop29;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                continue loop28;
                                                                                             }
                                                                                          }
                                                                                          continue loop28;
                                                                                       }
                                                                                       while(!_loc2_)
                                                                                       {
                                                                                          §§pop().§_-7z§.gotoAndStop(this.§_-2f§.§_-0Ef§);
                                                                                          §§goto(addr255);
                                                                                          §§goto(addr119);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().§_-07Z§.visible = false;
                                                                                          addr262:
                                                                                          while(_loc1_)
                                                                                          {
                                                                                             §§goto(addr248);
                                                                                             §§push(this.§_-nQ§);
                                                                                          }
                                                                                          continue loop8;
                                                                                       }
                                                                                       addr248:
                                                                                    }
                                                                                    §§goto(addr195);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr259);
                                                                                 }
                                                                              }
                                                                              continue loop7;
                                                                           }
                                                                        }
                                                                        continue loop6;
                                                                     }
                                                                     §§goto(addr297);
                                                                  }
                                                                  §§goto(addr262);
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(2);
                                                               if(_loc1_)
                                                               {
                                                                  §§push(§§pop());
                                                                  continue loop4;
                                                               }
                                                               continue loop3;
                                                            }
                                                            addr374:
                                                         }
                                                         §§goto(addr293);
                                                      }
                                                   }
                                                   §§goto(addr339);
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
                     §§goto(addr374);
                  }
               }
            }
            return;
         }
         §§goto(addr244);
      }
      
      private function §_-Rq§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            dispatchEvent(new §_-07C§(§_-07C§.§_-zs§,this.§_-2f§,true));
         }
         do
         {
            this.§_-2f§.§_-07d§ = false;
         }
         while(!(_loc2_ || _loc3_));
         
      }
      
      public function get §_-2f§() : §_-5b§
      {
         return data as §_-5b§;
      }
   }
}
