package §8u§
{
   import §0X§.§%'§;
   import §6!M§.§-!?§;
   import §6!M§.§1t§;
   import §6!M§.§4W§;
   import §6!M§.§7!m§;
   import §6!M§.§9!d§;
   import flash.events.Event;
   import flash.net.URLLoader;
   
   public class §9=§ extends §=!!§
   {
      
      public static var §=K§:§9!d§;
      
      public static var §"!Y§:Array;
      
      private static var §-c§:Object;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §9=§)
         {
            §"!Y§ = [];
            do
            {
               §-c§ = {};
            }
            while(_loc2_);
            
         }
      }
      
      protected var § u§:String;
      
      protected var §&i§:String;
      
      protected var §-!G§:Boolean = false;
      
      protected var §8!R§:int = -1;
      
      private var §3!@§:int = 0;
      
      public function §9=§(param1:String, param2:String, param3:String, param4:Boolean, param5:Object = null)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && this))
         {
            this.§ u§ = param1;
         }
         loop0:
         while(true)
         {
            this.§&i§ = param2;
            loop1:
            while(true)
            {
               this.§-!G§ = param4;
               do
               {
                  super(param3);
                  do
                  {
                     if(!_loc6_)
                     {
                        continue loop0;
                     }
                     if(!param5)
                     {
                        §'!w§(0,0);
                        if(!(_loc7_ && param3))
                        {
                           if(_loc7_)
                           {
                              continue;
                           }
                           if(_loc7_)
                           {
                              §8H§ = new § ! §(0,param5.items.length,new URLLoader(),null);
                              addr67:
                              continue;
                           }
                           if(!_loc6_)
                           {
                              continue loop1;
                           }
                        }
                        else
                        {
                           addr63:
                        }
                        return;
                     }
                     §§goto(addr67);
                  }
                  while(_loc7_);
                  
               }
               while(_loc7_);
               
               this.dataLoaded(param5);
               §§goto(addr63);
            }
         }
      }
      
      public static function §!W§(param1:String) : String
      {
         return §-c§[param1];
      }
      
      public function get §5O§() : int
      {
         return this.§3!@§;
      }
      
      public function get §#l§() : int
      {
         return this.§8!R§;
      }
      
      override protected function dataLoaded(param1:Object) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc2_:§1t§ = null;
         var _loc5_:§9!d§ = null;
         var _loc3_:Object = {"items":[]};
         if(_loc8_ || _loc3_)
         {
            this.§8!R§ = -1;
         }
         var _loc4_:* = int(param1.items.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(!_loc9_)
            {
               §§push(0);
               if(!_loc9_)
               {
                  if(§§pop() < §§pop())
                  {
                     addr354:
                     if(_loc8_ || this)
                     {
                        §§push(this.§8!R§);
                        break;
                     }
                     §§push(this);
                     if(!(_loc9_ && param1))
                     {
                        if(_loc2_)
                        {
                           addr364:
                           §§push(int(_loc3_.items.indexOf(_loc2_) + 1));
                           if(_loc8_ || _loc3_)
                           {
                           }
                        }
                        else
                        {
                           §§push(0);
                        }
                        §§pop().§8!R§ = §§pop();
                        if(_loc8_)
                        {
                           _loc3_.items.splice(this.§8!R§,0,this.§9d§(_loc2_));
                           if(_loc8_)
                           {
                              addr418:
                              loop13:
                              while(true)
                              {
                                 addr394:
                                 while(true)
                                 {
                                    _loc3_.totalItemCount = _loc3_.items.length;
                                    if(!(_loc9_ && this))
                                    {
                                       addr406:
                                       while(true)
                                       {
                                          this.§3!@§ = §"!Y§.length;
                                          if(!_loc9_)
                                          {
                                             if(false)
                                             {
                                                continue loop13;
                                             }
                                             if(§"!Y§.indexOf(this.§ u§) >= 0)
                                             {
                                                if(_loc8_)
                                                {
                                                   break;
                                                }
                                             }
                                             §§goto(addr459);
                                          }
                                          break;
                                       }
                                       addr406:
                                    }
                                    var _loc6_:*;
                                    §§push((_loc6_ = this).§3!@§);
                                    if(_loc8_)
                                    {
                                       §§push(§§pop() - 1);
                                    }
                                    var _loc7_:* = §§pop();
                                    if(!(_loc9_ && _loc3_))
                                    {
                                       _loc6_.§3!@§ = _loc7_;
                                    }
                                    if(_loc9_)
                                    {
                                    }
                                    §§goto(addr459);
                                 }
                              }
                           }
                           addr459:
                           super.dataLoaded(_loc3_);
                           return;
                        }
                        §§goto(addr406);
                     }
                     §§goto(addr364);
                  }
                  else
                  {
                     §3?§.§!`§(new §2!A§(param1.items[_loc4_].a,param1.items[_loc4_].u));
                     if(!_loc9_)
                     {
                        §§push((_loc5_ = §9!d§.§3!x§(param1.items[_loc4_])) is §4W§);
                        if(!_loc9_)
                        {
                           §§push(§§pop());
                           if(!(_loc9_ && _loc2_))
                           {
                              if(§§pop())
                              {
                                 if(!_loc9_)
                                 {
                                    §§pop();
                                    if(_loc8_ || this)
                                    {
                                       §§push(§"!Y§);
                                       if(_loc8_)
                                       {
                                          §§push(_loc5_.userId);
                                          if(_loc8_ || _loc2_)
                                          {
                                             §§push(§§pop().indexOf(§§pop()) == -1);
                                             if(_loc8_ || _loc3_)
                                             {
                                                §§push(!§§pop());
                                                if(_loc8_ || this)
                                                {
                                                   addr123:
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc9_ && this))
                                                      {
                                                         §§push((_loc6_ = this).§8!R§);
                                                         if(!(_loc9_ && _loc2_))
                                                         {
                                                            §§push(§§pop() - 1);
                                                         }
                                                         _loc7_ = §§pop();
                                                         if(!(_loc9_ && _loc2_))
                                                         {
                                                            _loc6_.§8!R§ = _loc7_;
                                                         }
                                                         if(_loc8_ || param1)
                                                         {
                                                            addr329:
                                                            §§push(_loc4_);
                                                            if(!_loc9_)
                                                            {
                                                               §§push(§§pop() - 1);
                                                            }
                                                            _loc4_ = §§pop();
                                                            continue;
                                                         }
                                                         §§goto(addr329);
                                                      }
                                                      addr323:
                                                      _loc3_.items.unshift(_loc5_);
                                                      if(_loc9_)
                                                      {
                                                         continue;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(_loc5_ is §4W§);
                                                      if(!(_loc9_ && _loc3_))
                                                      {
                                                         §§push(!§§pop());
                                                         if(_loc8_ || param1)
                                                         {
                                                            addr294:
                                                            if(§§pop())
                                                            {
                                                               loop11:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  if(_loc9_)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  §§push(§"!Y§);
                                                                  if(!(_loc9_ && _loc3_))
                                                                  {
                                                                     §§push(_loc5_.userId);
                                                                     if(_loc8_ || _loc3_)
                                                                     {
                                                                        §§push(§§pop().indexOf(§§pop()) == -1);
                                                                     }
                                                                     loop6:
                                                                     while(true)
                                                                     {
                                                                        §§pop().push(§§pop());
                                                                        if(!_loc9_)
                                                                        {
                                                                           loop2:
                                                                           while(true)
                                                                           {
                                                                              loop3:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc5_.userId);
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    addr259:
                                                                                    if(§§pop() == this.§ u§)
                                                                                    {
                                                                                       loop4:
                                                                                       while(true)
                                                                                       {
                                                                                          this.§8!R§ = _loc4_;
                                                                                          addr236:
                                                                                          while(true)
                                                                                          {
                                                                                             addr194:
                                                                                             while(true)
                                                                                             {
                                                                                                §=K§ = _loc5_;
                                                                                                if(!(_loc9_ && _loc3_))
                                                                                                {
                                                                                                   if(_loc8_)
                                                                                                   {
                                                                                                      continue loop4;
                                                                                                   }
                                                                                                   continue;
                                                                                                }
                                                                                                §§goto(addr323);
                                                                                             }
                                                                                             continue loop4;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc5_ is §4W§);
                                                                                       if(_loc9_ && _loc3_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          while(!§§pop())
                                                                                          {
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                §§push(_loc2_);
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   if(_loc9_ && _loc2_)
                                                                                                   {
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   if(false)
                                                                                                   {
                                                                                                      §§goto(addr194);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(_loc5_ as §1t§);
                                                                                                   }
                                                                                                }
                                                                                                _loc2_ = §§pop();
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr329);
                                                                                          }
                                                                                          addr177:
                                                                                          §§push(_loc5_.avatarString);
                                                                                          break loop3;
                                                                                          addr177:
                                                                                       }
                                                                                       continue loop11;
                                                                                       §§goto(addr214);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          continue loop3;
                                                                                       }
                                                                                       if(_loc9_ && _loc2_)
                                                                                       {
                                                                                          continue loop2;
                                                                                       }
                                                                                       §§push(§"!Y§);
                                                                                       while(true)
                                                                                       {
                                                                                          continue loop6;
                                                                                       }
                                                                                    }
                                                                                    addr259:
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!(_loc8_ || param1))
                                                                                 {
                                                                                    continue loop0;
                                                                                 }
                                                                                 §-c§[_loc5_.userId] = _loc5_.avatarString;
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    continue loop0;
                                                                                 }
                                                                              }
                                                                              §§goto(addr323);
                                                                           }
                                                                        }
                                                                        §§goto(addr329);
                                                                     }
                                                                     addr270:
                                                                  }
                                                                  §§goto(addr268);
                                                               }
                                                               addr295:
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr259);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr295);
                                                   }
                                                   §§goto(addr329);
                                                }
                                                §§goto(addr259);
                                             }
                                             §§goto(addr177);
                                          }
                                          §§goto(addr270);
                                       }
                                       §§goto(addr268);
                                    }
                                    §§goto(addr236);
                                 }
                                 §§goto(addr177);
                              }
                              §§goto(addr123);
                           }
                        }
                        §§goto(addr294);
                     }
                  }
                  §§goto(addr418);
               }
               addr351:
               if(§§pop() < §§pop())
               {
                  if(!_loc9_)
                  {
                     §§goto(addr354);
                  }
                  §§goto(addr406);
               }
               §§goto(addr394);
            }
            break;
         }
         §§goto(addr351);
         §§push(0);
      }
      
      public function §9d§(param1:§1t§) : §1t§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(!this.§-!G§)
            {
               §§push(§§findproperty(§-!?§));
               §§push(this.§ u§);
               §§push(this.§&i§);
               if(_loc2_)
               {
                  §§push(§=K§);
                  if(_loc2_ || param1)
                  {
                     if(§§pop())
                     {
                        addr109:
                        §§push(§=K§.avatarString);
                        if(!(_loc3_ && this))
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
                     if(_loc2_ || _loc2_)
                     {
                        if(param1)
                        {
                           addr142:
                           §§push(param1.§ N§);
                           if(!(_loc3_ && _loc2_))
                           {
                              §§push(int(§§pop() + 1));
                              if(_loc2_ || _loc3_)
                              {
                              }
                           }
                        }
                        else
                        {
                           §§push(1);
                        }
                        return new §§pop().§-!?§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                     }
                     §§goto(addr142);
                  }
               }
               §§goto(addr109);
            }
         }
         §§push(§§findproperty(§7!m§));
         §§push(this.§ u§);
         §§push(this.§&i§);
         if(_loc2_)
         {
            §§push(§=K§);
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  addr43:
                  §§push(§=K§.avatarString);
                  if(!_loc3_)
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
               if(!_loc3_)
               {
                  if(param1)
                  {
                     addr55:
                     §§push(param1.§ N§);
                     if(_loc2_)
                     {
                        §§push(1);
                        if(_loc2_ || _loc2_)
                        {
                           §§push(int(§§pop() + §§pop()));
                           if(!(_loc3_ && param1))
                           {
                              addr88:
                              §§push(0);
                              addr86:
                           }
                           §§goto(addr88);
                        }
                        return new §§pop().§7!m§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                     }
                     §§goto(addr86);
                  }
                  else
                  {
                     §§push(1);
                  }
                  §§goto(addr88);
               }
               §§goto(addr55);
            }
         }
         §§goto(addr43);
      }
      
      public function §@g§(param1:String) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               if(§§pop() >= data.length)
               {
                  if(!(_loc4_ && param1))
                  {
                     if(_loc3_ || _loc3_)
                     {
                        if(_loc3_)
                        {
                           §§goto(addr43);
                        }
                        break;
                     }
                     if(_loc4_ && param1)
                     {
                        loop1:
                        while(true)
                        {
                           §§push((data[_loc2_] as §1t§).userId == param1);
                           if(_loc4_)
                           {
                              continue;
                           }
                           if(_loc3_)
                           {
                              if(_loc4_ && this)
                              {
                                 while(true)
                                 {
                                    §§push(!§§pop());
                                    addr116:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          break loop1;
                                       }
                                       continue loop1;
                                    }
                                 }
                                 addr115:
                              }
                              break;
                           }
                           §§goto(addr116);
                        }
                        if(§§pop())
                        {
                           break;
                        }
                     }
                     _loc2_++;
                  }
                  continue;
               }
               §§push(data[_loc2_] is §4W§);
               §§goto(addr115);
            }
            addr43:
            §§push(-1);
            if(!_loc4_)
            {
               return §§pop();
            }
            addr99:
            return §§pop();
         }
         §§goto(addr99);
         §§push((data[_loc2_] as §1t§).§ N§);
      }
      
      public function §=!+§(param1:int) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc3_ && this))
            {
               if(!_loc3_)
               {
                  if(§§pop() >= data.length)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        if(!(_loc3_ && this))
                        {
                           break;
                        }
                        while(true)
                        {
                           _loc2_++;
                        }
                        addr62:
                     }
                     while(true)
                     {
                        if(_loc4_ || param1)
                        {
                           continue loop0;
                        }
                        loop5:
                        while(true)
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              §§goto(addr113);
                           }
                           addr88:
                           loop2:
                           while(true)
                           {
                              §§push((data[_loc2_] as §-!?§).§ N§ == 2);
                              if(!(_loc3_ && _loc2_))
                              {
                                 break;
                              }
                              addr134:
                              while(true)
                              {
                                 §§pop();
                                 continue loop2;
                              }
                           }
                           while(true)
                           {
                              if(§§pop())
                              {
                                 continue loop5;
                              }
                              §§goto(addr62);
                              §§goto(addr135);
                           }
                           addr135:
                           continue loop0;
                        }
                     }
                  }
                  else
                  {
                     §§push(data[_loc2_] is §4W§);
                     if(_loc4_ || _loc3_)
                     {
                        §§push(!§§pop());
                        if(!_loc3_)
                        {
                           if(§§pop())
                           {
                              §§goto(addr134);
                           }
                           §§goto(addr88);
                        }
                     }
                  }
                  §§goto(addr134);
               }
               addr113:
               return (data[_loc2_] as §-!?§).§0!F§;
            }
            break;
         }
         return §§pop();
      }
      
      public function §4F§(param1:Number) : Object
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc2_))
         {
            if(!data)
            {
               if(!(_loc4_ && param1))
               {
                  §§push(null);
                  if(_loc5_ || param1)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr42:
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
                        §§push((data[_loc3_] as §-!?§).userId == this.§ u§);
                        if(!_loc4_)
                        {
                           §§push(!§§pop());
                           if(_loc5_)
                           {
                              addr148:
                              §§push(§§pop());
                              loop2:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop3:
                                    while(true)
                                    {
                                       §§pop();
                                       loop4:
                                       while(true)
                                       {
                                          loop5:
                                          while(true)
                                          {
                                             §§push(data[_loc3_] is §4W§);
                                             if(_loc5_ || _loc3_)
                                             {
                                                §§push(!§§pop());
                                                if(!(_loc4_ && param1))
                                                {
                                                   while(true)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      if(_loc5_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            while(true)
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  continue loop2;
                                                               }
                                                               if(!§§pop())
                                                               {
                                                                  continue;
                                                               }
                                                               if(!_loc5_)
                                                               {
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  if(!(_loc4_ && param1))
                                                                  {
                                                                     break loop4;
                                                                  }
                                                                  §§goto(addr197);
                                                               }
                                                               _loc3_++;
                                                               if(_loc5_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               §§goto(addr197);
                                                            }
                                                            if(§§pop())
                                                            {
                                                               if(_loc5_ || param1)
                                                               {
                                                                  §§pop();
                                                                  if(!_loc4_)
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     §§push((data[_loc3_] as §-!?§).§0!F§);
                                                                     if(_loc4_ && _loc2_)
                                                                     {
                                                                        continue loop1;
                                                                     }
                                                                     §§goto(addr177);
                                                                     §§push(§§pop() > param1);
                                                                  }
                                                                  break loop4;
                                                               }
                                                            }
                                                            §§goto(addr177);
                                                         }
                                                         addr108:
                                                      }
                                                      while(true)
                                                      {
                                                         if(_loc4_ && this)
                                                         {
                                                            continue loop3;
                                                         }
                                                         §§pop();
                                                         if(_loc5_)
                                                         {
                                                            if(_loc4_ && _loc3_)
                                                            {
                                                               continue loop4;
                                                            }
                                                            §§push(Boolean(this.§ u§));
                                                            if(!_loc4_)
                                                            {
                                                               §§goto(addr55);
                                                            }
                                                            §§goto(addr177);
                                                         }
                                                         §§goto(addr197);
                                                      }
                                                   }
                                                   addr103:
                                                }
                                                §§goto(addr177);
                                             }
                                             §§goto(addr108);
                                          }
                                       }
                                       _loc2_ = data[_loc3_];
                                       §§goto(addr177);
                                    }
                                 }
                                 §§goto(addr103);
                              }
                           }
                           §§goto(addr177);
                        }
                        §§goto(addr148);
                     }
                     addr197:
                     return _loc2_;
                  }
               }
            }
         }
         §§goto(addr42);
      }
      
      public function §=>§() : §-!?§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(!data);
            if(_loc4_ || this)
            {
               if(!§§pop())
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     §§pop();
                     if(!_loc3_)
                     {
                        addr44:
                        if(data.length == 0)
                        {
                           if(!_loc3_)
                           {
                              §§goto(addr47);
                           }
                        }
                     }
                     §§push(this.§@g§(this.§ u§));
                     if(_loc4_)
                     {
                        §§push(int(§§pop()));
                     }
                     var _loc1_:* = §§pop();
                     if(!_loc3_)
                     {
                        §§push(_loc1_);
                        if(_loc4_ || _loc2_)
                        {
                           §§push(1);
                           if(_loc4_ || _loc2_)
                           {
                              if(§§pop() == §§pop())
                              {
                                 if(!_loc3_)
                                 {
                                    return null;
                                 }
                                 addr97:
                                 addr128:
                                 §§push(_loc1_);
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§push(-1);
                                 }
                                 var _loc2_:* = §§pop();
                                 while(true)
                                 {
                                    if(_loc2_ >= data.length)
                                    {
                                       if(_loc4_ || this)
                                       {
                                          break;
                                       }
                                       loop1:
                                       while(!_loc4_)
                                       {
                                          while(true)
                                          {
                                             _loc2_++;
                                             continue loop1;
                                          }
                                       }
                                       continue;
                                    }
                                    if((data[_loc2_] as §-!?§).§ N§ == _loc1_ - 1)
                                    {
                                       §§goto(addr174);
                                    }
                                    §§goto(addr158);
                                 }
                                 if(!_loc3_)
                                 {
                                    return null;
                                 }
                                 addr174:
                                 return data[_loc2_];
                              }
                              §§goto(addr97);
                           }
                           if(§§pop() == §§pop())
                           {
                              if(!(_loc3_ && this))
                              {
                                 §§push(int(data.length + 1));
                                 if(_loc4_ || _loc1_)
                                 {
                                    _loc1_ = §§pop();
                                 }
                                 §§goto(addr128);
                              }
                           }
                           §§push(0);
                        }
                     }
                     §§goto(addr97);
                  }
               }
            }
            §§goto(addr44);
         }
         addr47:
         return null;
      }
      
      override protected function onUrlLoaderComplete(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var e:Event = param1;
         try
         {
            super.onUrlLoaderComplete(e);
         }
         catch(err:Error)
         {
            throw new Error("Can\'t load highscore list.\n" + (e.target as URLLoader).data,§%'§.§<!D§);
         }
      }
      
      public function §6!B§(param1:int, param2:int, param3:int, param4:Array) : int
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc7_:§-!?§ = null;
         var _loc5_:§-!?§;
         if(!(_loc5_ = data[this.§8!R§]))
         {
            if(!_loc11_)
            {
               §§push(0);
               if(!_loc11_)
               {
                  return §§pop();
               }
            }
            else
            {
               while(false)
               {
                  loop1:
                  while(true)
                  {
                     _loc5_.§0!F§ = param1;
                     do
                     {
                        _loc5_.§?!d§ = param3;
                     }
                     while(_loc11_ && param3);
                     
                     if(_loc10_)
                     {
                        break;
                     }
                     addr59:
                     while(true)
                     {
                        continue loop1;
                     }
                  }
               }
               §§push(int(data.length - 1));
               addr49:
            }
            var _loc6_:* = §§pop();
            loop3:
            while(true)
            {
               §§push(_loc6_);
               while(§§pop() >= 0)
               {
                  if(data[_loc6_] is §4W§)
                  {
                     if(_loc11_)
                     {
                        break;
                     }
                  }
                  else if((_loc7_ = data[_loc6_]).userId == this.§ u§)
                  {
                     if(!_loc10_)
                     {
                        addr278:
                     }
                  }
                  else if(_loc7_.§ N§ < _loc5_.§ N§)
                  {
                     if(_loc10_ || param1)
                     {
                        §§push(_loc5_.§0!F§);
                        if(!_loc11_)
                        {
                           §§push(_loc7_.§0!F§);
                           if(_loc10_ || param3)
                           {
                              §§push(§§pop() > §§pop());
                              if(!_loc11_)
                              {
                                 §§push(§§pop());
                                 if(_loc10_)
                                 {
                                    if(!§§pop())
                                    {
                                       if(!(_loc11_ && param3))
                                       {
                                          §§pop();
                                          if(!_loc11_)
                                          {
                                             §§push(_loc5_.§0!F§);
                                             if(_loc10_)
                                             {
                                                §§push(_loc7_.§0!F§);
                                                if(_loc10_)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(!_loc11_)
                                                   {
                                                      addr143:
                                                      if(§§pop())
                                                      {
                                                         if(!_loc11_)
                                                         {
                                                            addr146:
                                                            §§pop();
                                                            if(!_loc11_)
                                                            {
                                                               addr164:
                                                               if(_loc5_.§?!d§ > _loc7_.§?!d§)
                                                               {
                                                                  if(_loc10_ || param2)
                                                                  {
                                                                     param4.push(_loc7_);
                                                                     if(_loc11_)
                                                                     {
                                                                     }
                                                                     addr307:
                                                                     §§push(_loc6_);
                                                                     if(!(_loc11_ && param1))
                                                                     {
                                                                        §§push(§§pop() - 1);
                                                                        if(_loc10_)
                                                                        {
                                                                           continue loop3;
                                                                        }
                                                                     }
                                                                     continue;
                                                                  }
                                                                  var _loc8_:*;
                                                                  var _loc9_:* = (_loc8_ = _loc5_).§ N§ - 1;
                                                                  if(_loc10_ || param1)
                                                                  {
                                                                     _loc8_.§ N§ = _loc9_;
                                                                  }
                                                                  if(!_loc10_)
                                                                  {
                                                                  }
                                                                  §§goto(addr278);
                                                               }
                                                               §§goto(addr307);
                                                            }
                                                            _loc9_ = (_loc8_ = _loc7_).§ N§ + 1;
                                                            if(_loc10_)
                                                            {
                                                               _loc8_.§ N§ = _loc9_;
                                                            }
                                                            if(_loc10_)
                                                            {
                                                               _loc7_.§+!3§ = true;
                                                               if(_loc10_ || param3)
                                                               {
                                                                  if(!_loc5_.targetOffset)
                                                                  {
                                                                     if(!(_loc11_ && param1))
                                                                     {
                                                                        _loc5_.targetOffset = -1;
                                                                        if(!(_loc11_ && param3))
                                                                        {
                                                                           addr263:
                                                                           if(!_loc7_.targetOffset)
                                                                           {
                                                                              if(_loc11_ && param2)
                                                                              {
                                                                              }
                                                                              §§goto(addr278);
                                                                           }
                                                                           else
                                                                           {
                                                                              _loc9_ = (_loc8_ = _loc7_).targetOffset + 1;
                                                                              if(!(_loc11_ && param3))
                                                                              {
                                                                                 _loc8_.targetOffset = _loc9_;
                                                                              }
                                                                              §§goto(addr307);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     _loc9_ = (_loc8_ = _loc5_).targetOffset - 1;
                                                                     if(_loc10_ || param3)
                                                                     {
                                                                        _loc8_.targetOffset = _loc9_;
                                                                     }
                                                                     if(_loc10_)
                                                                     {
                                                                        §§goto(addr263);
                                                                     }
                                                                     §§goto(addr278);
                                                                  }
                                                                  §§goto(addr278);
                                                               }
                                                               _loc7_.targetOffset = 1;
                                                               if(_loc11_)
                                                               {
                                                               }
                                                               §§goto(addr307);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr164);
                                                   }
                                                   §§goto(addr146);
                                                }
                                             }
                                             §§goto(addr164);
                                          }
                                          §§goto(addr278);
                                       }
                                       §§goto(addr146);
                                    }
                                    §§goto(addr164);
                                 }
                                 §§goto(addr143);
                              }
                           }
                        }
                        §§goto(addr164);
                     }
                  }
                  §§goto(addr307);
               }
               addr329:
               return _loc5_.§ N§;
            }
         }
         else
         {
            _loc5_.stars = param2;
            §§goto(addr59);
         }
         §§goto(addr49);
      }
   }
}
