package §"k§
{
   import flash.net.URLLoader;
   
   public class §%!8§ extends §6!a§
   {
      
      public static var §-"a§:§]"V§;
      
      public static var §=!o§:Array;
      
      private static var §`B§:Object;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §=!o§ = [];
            do
            {
               §`B§ = {};
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
      
      protected var §>#T§:String;
      
      protected var §9#Y§:String;
      
      protected var §7!C§:Boolean = false;
      
      protected var §!!'§:int = -1;
      
      private var §5#&§:int = 0;
      
      public function §%!8§(param1:String, param2:String, param3:String, param4:Boolean, param5:Object = null)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            this.§>#T§ = param1;
            loop0:
            while(true)
            {
               this.§9#Y§ = param2;
               while(true)
               {
                  this.§7!C§ = param4;
                  loop2:
                  for(; !(_loc7_ && param3); while(!(_loc7_ && param3))
                  {
                     this.dataLoaded(param5);
                     §§goto(addr39);
                     §§goto(addr62);
                  })
                  {
                     if(_loc7_)
                     {
                        continue loop0;
                     }
                     super(param3);
                     loop3:
                     while(true)
                     {
                        if(!param5)
                        {
                           loadItems(0,0);
                           if(!_loc7_)
                           {
                              if(_loc7_)
                              {
                                 continue loop2;
                              }
                           }
                           else
                           {
                              while(!(_loc6_ || param1))
                              {
                                 continue loop3;
                              }
                              addr39:
                              addr46:
                           }
                        }
                        continue;
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr46);
      }
      
      public static function §2!c§(param1:String) : String
      {
         return §`B§[param1];
      }
      
      public function get §,"%§() : int
      {
         return this.§5#&§;
      }
      
      public function get §8$§() : int
      {
         return this.§!!'§;
      }
      
      protected function getFriendListItemFromServerObject(param1:Object) : §]"V§
      {
         return §]"V§.§[!b§(param1);
      }
      
      override protected function dataLoaded(param1:Object) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc2_:§=!g§ = null;
         var _loc5_:§]"V§ = null;
         var _loc3_:Object = {"items":[]};
         if(!_loc9_)
         {
            this.§!!'§ = -1;
         }
         var _loc4_:* = int(param1.items.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(!(_loc9_ && _loc2_))
            {
               §§push(0);
               if(_loc8_ || param1)
               {
                  if(§§pop() < §§pop())
                  {
                     §§goto(addr423);
                  }
                  §§push((_loc5_ = this.getFriendListItemFromServerObject(param1.items[_loc4_])) is §=#W§);
                  if(_loc8_ || _loc3_)
                  {
                     §§push(§§pop());
                     if(_loc8_)
                     {
                        if(§§pop())
                        {
                           if(!_loc9_)
                           {
                              §§pop();
                              if(!(_loc9_ && param1))
                              {
                                 §§push(§=!o§);
                                 if(!_loc9_)
                                 {
                                    §§push(_loc5_.userId);
                                    if(!_loc9_)
                                    {
                                       §§push(§§pop().indexOf(§§pop()) == -1);
                                       if(!_loc9_)
                                       {
                                          addr84:
                                          §§push(!§§pop());
                                          if(!(_loc9_ && _loc2_))
                                          {
                                             addr92:
                                             if(§§pop())
                                             {
                                                if(!_loc9_)
                                                {
                                                   var _loc6_:*;
                                                   §§push((_loc6_ = this).§!!'§);
                                                   if(_loc8_)
                                                   {
                                                      §§push(§§pop() - 1);
                                                   }
                                                   var _loc7_:* = §§pop();
                                                   if(!(_loc9_ && param1))
                                                   {
                                                      _loc6_.§!!'§ = _loc7_;
                                                   }
                                                   if(!_loc8_)
                                                   {
                                                      loop14:
                                                      while(true)
                                                      {
                                                         §§push(§=!o§);
                                                         loop5:
                                                         while(true)
                                                         {
                                                            §§push(_loc5_.userId);
                                                            addr218:
                                                            while(true)
                                                            {
                                                               §§pop().push(§§pop());
                                                               addr219:
                                                               loop8:
                                                               while(true)
                                                               {
                                                                  if(_loc9_ && this)
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                                  loop9:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc5_.userId);
                                                                     if(!_loc9_)
                                                                     {
                                                                        if(§§pop() == this.§>#T§)
                                                                        {
                                                                           if(_loc8_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 this.§!!'§ = _loc4_;
                                                                                 if(_loc8_ || _loc3_)
                                                                                 {
                                                                                    addr177:
                                                                                    loop2:
                                                                                    while(true)
                                                                                    {
                                                                                       §-"a§ = _loc5_;
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          continue loop0;
                                                                                       }
                                                                                       loop3:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc5_ is §=!g§);
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   §§goto(addr201);
                                                                                                }
                                                                                             }
                                                                                             continue loop9;
                                                                                             addr199:
                                                                                          }
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             while(§§pop())
                                                                                             {
                                                                                                if(_loc8_ || param1)
                                                                                                {
                                                                                                   loop12:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc2_);
                                                                                                      if(!_loc2_)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         if(!(_loc9_ && param1))
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  if(true)
                                                                                                                  {
                                                                                                                     §§push(_loc5_ as §=!g§);
                                                                                                                  }
                                                                                                                  continue loop2;
                                                                                                                  break loop12;
                                                                                                               }
                                                                                                               continue loop8;
                                                                                                            }
                                                                                                            addr146:
                                                                                                         }
                                                                                                         break loop3;
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   _loc2_ = §§pop();
                                                                                                   break;
                                                                                                   addr134:
                                                                                                }
                                                                                                §§goto(addr146);
                                                                                             }
                                                                                             addr243:
                                                                                             if(!_loc5_.avatarString)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                §`B§[_loc5_.userId] = _loc5_.avatarString;
                                                                                                if(_loc8_ || this)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                addr270:
                                                                                                §§push(_loc4_);
                                                                                                if(!(_loc9_ && _loc3_))
                                                                                                {
                                                                                                   §§push(§§pop() - 1);
                                                                                                }
                                                                                                _loc4_ = §§pop();
                                                                                             }
                                                                                             continue loop0;
                                                                                             addr126:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr231:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             addr232:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            continue loop14;
                                                                                                         }
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                      continue loop9;
                                                                                                   }
                                                                                                   addr201:
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop();
                                                                                             continue loop5;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr167:
                                                                           }
                                                                           _loc3_.items.unshift(_loc5_);
                                                                           if(!(_loc8_ || _loc3_))
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                           §§goto(addr270);
                                                                        }
                                                                        §§goto(addr118);
                                                                     }
                                                                     §§goto(addr243);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr270);
                                                }
                                                §§goto(addr167);
                                             }
                                             else
                                             {
                                                §§goto(addr231);
                                                §§push(_loc5_ is §=!g§);
                                             }
                                             §§goto(addr231);
                                          }
                                       }
                                       §§goto(addr126);
                                    }
                                    §§goto(addr196);
                                 }
                                 §§goto(addr187);
                              }
                              §§goto(addr134);
                           }
                           §§goto(addr84);
                        }
                        §§goto(addr92);
                     }
                     §§goto(addr232);
                  }
                  §§goto(addr231);
               }
               addr307:
               if(§§pop() < §§pop())
               {
                  if(_loc8_)
                  {
                     §§push(this);
                     if(!(_loc9_ && param1))
                     {
                        if(_loc2_)
                        {
                           addr320:
                           §§push(int(_loc3_.items.indexOf(_loc2_) + 1));
                           if(_loc9_)
                           {
                           }
                        }
                        else
                        {
                           §§push(0);
                        }
                        §§pop().§!!'§ = §§pop();
                        if(!(_loc9_ && this))
                        {
                           _loc3_.items.splice(this.§!!'§,0,this.createNewSelfUser(_loc2_));
                           if(_loc8_ || _loc3_)
                           {
                              loop20:
                              while(true)
                              {
                                 addr350:
                                 loop22:
                                 while(true)
                                 {
                                    _loc3_.totalItemCount = _loc3_.items.length;
                                    if(!(_loc9_ && _loc2_))
                                    {
                                       while(true)
                                       {
                                          this.§5#&§ = §=!o§.length;
                                          if(_loc8_)
                                          {
                                             if(true)
                                             {
                                                if(§=!o§.indexOf(this.§>#T§) >= 0)
                                                {
                                                   if(!(_loc9_ && param1))
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr423);
                                                }
                                             }
                                             continue loop20;
                                             break loop22;
                                          }
                                          break;
                                       }
                                       addr393:
                                       §§push((_loc6_ = this).§5#&§);
                                       if(_loc8_)
                                       {
                                          §§push(§§pop() - 1);
                                       }
                                       _loc7_ = §§pop();
                                       if(!_loc9_)
                                       {
                                          _loc6_.§5#&§ = _loc7_;
                                       }
                                       if(_loc8_)
                                       {
                                          break;
                                       }
                                       addr423:
                                       if(_loc8_ || this)
                                       {
                                          §§push(this.§!!'§);
                                          break loop0;
                                       }
                                       return;
                                       addr362:
                                    }
                                    break;
                                 }
                              }
                           }
                           super.dataLoaded(_loc3_);
                           §§goto(addr423);
                        }
                        §§goto(addr362);
                     }
                     §§goto(addr320);
                  }
                  §§goto(addr393);
               }
               §§goto(addr350);
            }
            break;
         }
         §§goto(addr307);
         §§push(0);
      }
      
      public function createNewSelfUser(param1:§=!g§) : §=!g§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(this.§7!C§)
         {
            §§push(§§findproperty(§-!i§));
            §§push(this.§>#T§);
            §§push(this.§9#Y§);
            if(_loc2_ || _loc3_)
            {
               §§push(§-"a§);
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     addr36:
                     §§push(§-"a§.avatarString);
                     if(_loc2_)
                     {
                        §§push(§§pop());
                     }
                  }
                  else
                  {
                     §§push("");
                  }
                  §§push(0);
                  §§push(0);
                  if(!(_loc3_ && _loc3_))
                  {
                     if(param1)
                     {
                        addr53:
                        §§push(param1.§9!<§);
                        if(!_loc3_)
                        {
                           §§push(int(§§pop() + 1));
                           if(!_loc2_)
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(1);
                     }
                     return new §§pop().§-!i§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                  }
                  §§goto(addr53);
               }
            }
            §§goto(addr36);
         }
         else
         {
            §§push(§§findproperty(§5"2§));
            §§push(this.§>#T§);
            §§push(this.§9#Y§);
            if(!_loc3_)
            {
               §§push(§-"a§);
               if(_loc2_ || _loc3_)
               {
                  if(§§pop())
                  {
                     addr94:
                     §§push(§-"a§.avatarString);
                     if(_loc2_)
                     {
                        §§push(§§pop());
                     }
                  }
                  else
                  {
                     §§push("");
                  }
                  §§push(0);
                  §§push(0);
                  §§push(0);
                  if(!(_loc3_ && _loc2_))
                  {
                     if(param1)
                     {
                        addr112:
                        §§push(param1.§9!<§);
                        if(_loc2_ || _loc2_)
                        {
                           §§push(int(§§pop() + 1));
                           if(!_loc2_)
                           {
                           }
                           §§goto(addr138);
                        }
                     }
                     else
                     {
                        §§push(1);
                     }
                     addr138:
                     return new §§pop().§5"2§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                  }
                  §§goto(addr112);
               }
            }
            §§goto(addr94);
         }
      }
      
      public function §]#S§(param1:String) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc4_ && _loc3_))
            {
               if(!(_loc4_ && this))
               {
                  if(§§pop() >= data.length)
                  {
                     if(_loc3_)
                     {
                        break;
                     }
                     loop5:
                     while(true)
                     {
                        if(!_loc3_)
                        {
                           while(!_loc4_)
                           {
                              while(true)
                              {
                                 _loc2_++;
                                 continue loop5;
                              }
                              continue loop0;
                           }
                           loop3:
                           while(true)
                           {
                              §§push(§=!g§(data[_loc2_]).userId == param1);
                              if(!_loc4_)
                              {
                                 break;
                              }
                              addr110:
                              while(true)
                              {
                                 §§pop();
                                 continue loop3;
                              }
                           }
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 §§goto(addr81);
                              }
                              §§goto(addr44);
                              §§goto(addr111);
                           }
                        }
                        else
                        {
                           addr70:
                        }
                        continue loop0;
                        addr81:
                        addr111:
                        return §=!g§(data[_loc2_]).§9!<§;
                     }
                  }
                  else
                  {
                     §§push(data[_loc2_] is §=!g§);
                     if(!(_loc4_ && _loc2_))
                     {
                        if(§§pop())
                        {
                           §§goto(addr110);
                        }
                        §§goto(addr70);
                     }
                  }
                  §§goto(addr110);
               }
               §§goto(addr70);
            }
            break;
         }
         return §§pop();
      }
      
      public function §<!h§(param1:int) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               if(_loc4_ || this)
               {
                  if(§§pop() >= data.length)
                  {
                     if(_loc4_ || param1)
                     {
                        if(_loc4_)
                        {
                           if(!_loc3_)
                           {
                              §§goto(addr56);
                           }
                        }
                        else
                        {
                           loop3:
                           while(true)
                           {
                              _loc2_++;
                              addr61:
                              while(true)
                              {
                                 if(_loc4_)
                                 {
                                    continue loop0;
                                 }
                                 addr75:
                                 loop2:
                                 while(true)
                                 {
                                    §§push(§5"2§(data[_loc2_]).§9!<§ == 2);
                                    if(_loc4_)
                                    {
                                       break;
                                    }
                                    addr106:
                                    while(true)
                                    {
                                       §§pop();
                                       continue loop2;
                                    }
                                 }
                                 while(!§§pop())
                                 {
                                    continue loop3;
                                    §§goto(addr107);
                                 }
                                 addr107:
                              }
                           }
                        }
                        §§push(§5"2§(data[_loc2_]).§@"0§);
                        break;
                     }
                     §§goto(addr61);
                  }
                  else
                  {
                     §§push(data[_loc2_] is §5"2§);
                     if(!_loc3_)
                     {
                        if(§§pop())
                        {
                           §§goto(addr106);
                        }
                        §§goto(addr75);
                     }
                  }
                  §§goto(addr106);
               }
               break;
            }
            addr56:
            return 0;
         }
         return §§pop();
      }
      
      public function §"!Z§(param1:Number) : Object
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || _loc2_)
         {
            if(!data)
            {
               if(_loc4_)
               {
                  §§push(null);
                  if(_loc4_ || param1)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr36:
                  §§push(null);
               }
               var _loc2_:Object = §§pop();
               var _loc3_:int = 0;
               loop0:
               while(true)
               {
                  §§push(_loc3_);
                  loop1:
                  while(true)
                  {
                     if(§§pop() < data.length)
                     {
                        §§push((data[_loc3_] as §5"2§).userId == this.§>#T§);
                        loop2:
                        while(true)
                        {
                           §§push(!§§pop());
                           if(!_loc5_)
                           {
                              §§push(§§pop());
                              loop3:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop11:
                                    while(true)
                                    {
                                       §§pop();
                                       loop9:
                                       while(true)
                                       {
                                          loop10:
                                          while(true)
                                          {
                                             §§push(data[_loc3_] is §5"2§);
                                             if(!(_loc5_ && this))
                                             {
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   if(!(_loc5_ && param1))
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         loop6:
                                                         while(_loc4_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               loop8:
                                                               while(true)
                                                               {
                                                                  if(!(_loc4_ || _loc2_))
                                                                  {
                                                                     continue loop11;
                                                                  }
                                                                  §§pop();
                                                                  if(!_loc4_)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  §§push(Boolean(this.§>#T§));
                                                                  if(_loc4_ || param1)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        break;
                                                                        addr56:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(_loc5_)
                                                                        {
                                                                           continue loop6;
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              if(!(_loc5_ && _loc2_))
                                                                              {
                                                                                 §§pop();
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    if(!(_loc4_ || _loc2_))
                                                                                    {
                                                                                       continue loop9;
                                                                                    }
                                                                                    if(false)
                                                                                    {
                                                                                       continue loop10;
                                                                                    }
                                                                                    §§push((data[_loc3_] as §5"2§).§@"0§);
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       continue loop1;
                                                                                    }
                                                                                    §§push(§§pop() > param1);
                                                                                 }
                                                                                 §§goto(addr188);
                                                                              }
                                                                              continue loop8;
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop9;
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc4_ || param1)
                                                                     {
                                                                        _loc2_ = data[_loc3_];
                                                                     }
                                                                     §§goto(addr188);
                                                                  }
                                                                  _loc3_++;
                                                                  if(_loc4_)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  §§goto(addr188);
                                                               }
                                                               continue loop2;
                                                               addr119:
                                                            }
                                                            §§goto(addr56);
                                                         }
                                                         continue loop3;
                                                      }
                                                      continue;
                                                      addr115:
                                                   }
                                                   §§goto(addr119);
                                                }
                                                addr105:
                                             }
                                             §§goto(addr115);
                                          }
                                       }
                                    }
                                    addr146:
                                 }
                                 §§goto(addr105);
                              }
                           }
                           §§goto(addr146);
                        }
                     }
                     addr188:
                     return _loc2_;
                  }
               }
            }
         }
         §§goto(addr36);
      }
      
      public function §1!N§() : §5"2§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(!data);
            if(!_loc4_)
            {
               if(!§§pop())
               {
                  if(!(_loc4_ && _loc1_))
                  {
                     addr31:
                     §§pop();
                     if(!(_loc4_ && _loc2_))
                     {
                        addr43:
                        if(data.length == 0)
                        {
                           if(_loc3_ || this)
                           {
                              §§goto(addr51);
                           }
                        }
                     }
                     §§push(this.§]#S§(this.§>#T§));
                     if(_loc3_)
                     {
                        §§push(int(§§pop()));
                     }
                     var _loc1_:* = §§pop();
                     if(_loc3_)
                     {
                        §§push(_loc1_);
                        if(!_loc4_)
                        {
                           §§push(1);
                           if(!_loc4_)
                           {
                              if(§§pop() == §§pop())
                              {
                                 if(_loc3_)
                                 {
                                    return null;
                                 }
                              }
                              else
                              {
                                 addr81:
                                 §§push(_loc1_);
                                 if(_loc3_)
                                 {
                                    addr85:
                                    if(§§pop() == -1)
                                    {
                                       if(_loc3_ || _loc1_)
                                       {
                                          §§push(int(data.length + 1));
                                          if(_loc4_ && _loc1_)
                                          {
                                          }
                                          §§goto(addr117);
                                       }
                                       addr116:
                                       addr117:
                                       var _loc2_:* = §§pop();
                                       loop0:
                                       while(true)
                                       {
                                          if(_loc2_ >= data.length)
                                          {
                                             if(_loc3_)
                                             {
                                                if(_loc3_)
                                                {
                                                   break;
                                                }
                                                loop1:
                                                while(true)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      return data[_loc2_];
                                                   }
                                                   loop2:
                                                   while(true)
                                                   {
                                                      §§push((data[_loc2_] as §5"2§).§9!<§ == _loc1_ - 1);
                                                      if(!(_loc4_ && _loc1_))
                                                      {
                                                         if(_loc3_ || this)
                                                         {
                                                            break;
                                                         }
                                                         addr192:
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               break loop2;
                                                            }
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         continue loop2;
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         break loop1;
                                                      }
                                                      continue loop1;
                                                   }
                                                   addr134:
                                                   while(!(_loc3_ || _loc3_))
                                                   {
                                                      break loop1;
                                                   }
                                                   continue loop0;
                                                }
                                                while(true)
                                                {
                                                   _loc2_++;
                                                   §§goto(addr174);
                                                }
                                             }
                                             §§goto(addr134);
                                          }
                                          else
                                          {
                                             §§push(data[_loc2_] is §5"2§);
                                          }
                                          §§goto(addr192);
                                       }
                                       return null;
                                       §§push(0);
                                    }
                                    §§goto(addr116);
                                 }
                                 _loc1_ = §§pop();
                              }
                              §§goto(addr116);
                           }
                           §§goto(addr85);
                        }
                        §§goto(addr117);
                     }
                     §§goto(addr81);
                  }
               }
               §§goto(addr43);
            }
            §§goto(addr31);
         }
         addr51:
         return null;
      }
      
      override protected function parseResponse(param1:Object) : Object
      {
         return param1;
      }
      
      public function §="_§(param1:int, param2:int, param3:int, param4:Array) : int
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc7_:§5"2§ = null;
         var _loc5_:§5"2§;
         if(!(_loc5_ = data[this.§!!'§]))
         {
            if(_loc10_)
            {
               §§push(0);
               if(_loc10_)
               {
                  return §§pop();
               }
            }
            else
            {
               loop0:
               while(true)
               {
                  _loc5_.§3H§ = param3;
                  if(!(_loc10_ || param1))
                  {
                     continue;
                  }
                  if(!_loc11_)
                  {
                     if(true)
                     {
                        break;
                     }
                  }
                  else
                  {
                     while(true)
                     {
                     }
                     addr59:
                  }
                  while(true)
                  {
                     _loc5_.§@"0§ = param1;
                     continue loop0;
                  }
               }
               §§push(int(data.length - 1));
            }
            var _loc6_:* = §§pop();
            loop1:
            while(true)
            {
               §§push(_loc6_);
               while(§§pop() >= 0)
               {
                  if(!(data[_loc6_] is §5"2§))
                  {
                     if(!(_loc10_ || param2))
                     {
                        break;
                     }
                  }
                  else if((_loc7_ = data[_loc6_]).userId == this.§>#T§)
                  {
                     if(!(_loc10_ || param2))
                     {
                        addr227:
                        _loc7_.§-!p§ = true;
                        if(!(_loc11_ && param1))
                        {
                           if(!_loc5_.targetOffset)
                           {
                              if(_loc10_ || param2)
                              {
                                 addr247:
                                 _loc5_.targetOffset = -1;
                                 if(!(_loc11_ && param2))
                                 {
                                    addr273:
                                    if(!_loc7_.targetOffset)
                                    {
                                       if(_loc10_ || param2)
                                       {
                                       }
                                       addr312:
                                       §§push(_loc6_);
                                       if(_loc10_)
                                       {
                                          §§push(§§pop() - 1);
                                          if(!(_loc11_ && param1))
                                          {
                                             continue loop1;
                                          }
                                          continue;
                                       }
                                       continue loop1;
                                    }
                                    var _loc8_:*;
                                    var _loc9_:* = (_loc8_ = _loc7_).targetOffset + 1;
                                    if(_loc10_ || this)
                                    {
                                       _loc8_.targetOffset = _loc9_;
                                    }
                                    §§goto(addr312);
                                    §§goto(addr312);
                                    addr257:
                                 }
                                 §§goto(addr312);
                              }
                           }
                           else
                           {
                              _loc9_ = (_loc8_ = _loc5_).targetOffset - 1;
                              if(_loc10_)
                              {
                                 _loc8_.targetOffset = _loc9_;
                              }
                              if(_loc10_)
                              {
                                 §§goto(addr273);
                              }
                           }
                           _loc7_.targetOffset = 1;
                           if(_loc10_ || param1)
                           {
                              addr293:
                           }
                           §§goto(addr312);
                        }
                        §§goto(addr247);
                     }
                  }
                  else if(_loc7_.§9!<§ <= _loc5_.§9!<§)
                  {
                     if(_loc10_)
                     {
                        §§push(_loc5_.§@"0§);
                        if(!(_loc11_ && param1))
                        {
                           §§push(_loc7_.§@"0§);
                           if(!_loc11_)
                           {
                              §§push(§§pop() > §§pop());
                              if(!_loc11_)
                              {
                                 §§push(§§pop());
                                 if(!_loc11_)
                                 {
                                    if(!§§pop())
                                    {
                                       if(_loc10_ || param2)
                                       {
                                          §§pop();
                                          if(!_loc11_)
                                          {
                                             §§push(_loc5_.§@"0§);
                                             if(_loc10_ || param2)
                                             {
                                                addr145:
                                                §§push(_loc7_.§@"0§);
                                                if(_loc10_)
                                                {
                                                   addr149:
                                                   §§push(§§pop() == §§pop());
                                                   if(_loc10_)
                                                   {
                                                      addr153:
                                                      if(§§pop())
                                                      {
                                                         if(!(_loc11_ && this))
                                                         {
                                                            §§pop();
                                                            if(_loc10_ || this)
                                                            {
                                                               addr184:
                                                               if(_loc5_.§3H§ > _loc7_.§3H§)
                                                               {
                                                                  if(!_loc11_)
                                                                  {
                                                                     param4.push(_loc7_);
                                                                     if(!_loc11_)
                                                                     {
                                                                        addr192:
                                                                        _loc9_ = (_loc8_ = _loc5_).§9!<§ - 1;
                                                                        if(_loc10_)
                                                                        {
                                                                           _loc8_.§9!<§ = _loc9_;
                                                                        }
                                                                        if(_loc10_)
                                                                        {
                                                                           _loc9_ = (_loc8_ = _loc7_).§9!<§ + 1;
                                                                           if(_loc10_ || param1)
                                                                           {
                                                                              _loc8_.§9!<§ = _loc9_;
                                                                           }
                                                                           if(_loc10_)
                                                                           {
                                                                              §§goto(addr227);
                                                                           }
                                                                           §§goto(addr293);
                                                                        }
                                                                        §§goto(addr247);
                                                                     }
                                                                     §§goto(addr257);
                                                                  }
                                                                  §§goto(addr192);
                                                               }
                                                               §§goto(addr312);
                                                            }
                                                            §§goto(addr227);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr184);
                                          }
                                          §§goto(addr192);
                                       }
                                    }
                                    §§goto(addr184);
                                 }
                              }
                              §§goto(addr153);
                           }
                           §§goto(addr149);
                        }
                        §§goto(addr145);
                     }
                     §§goto(addr273);
                  }
                  §§goto(addr312);
               }
               addr344:
               return _loc5_.§9!<§;
            }
         }
         else
         {
            _loc5_.§<L§ = param2;
         }
         §§goto(addr59);
      }
   }
}
