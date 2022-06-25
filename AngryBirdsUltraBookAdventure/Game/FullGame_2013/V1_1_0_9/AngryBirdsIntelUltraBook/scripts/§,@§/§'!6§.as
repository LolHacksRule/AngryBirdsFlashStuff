package §,@§
{
   import §4H§.§%!E§;
   import §4H§.§%Q§;
   import §4H§.§4!R§;
   import §4H§.§4!k§;
   import §4H§.§9?§;
   import §<-§.§"K§;
   import flash.events.Event;
   import flash.net.URLLoader;
   
   public class §'!6§ extends §]![§
   {
      
      public static var §`A§:§4!R§;
      
      public static var §[!j§:Array;
      
      private static var §0K§:Object;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §[!j§ = [];
         }
         do
         {
            §0K§ = {};
         }
         while(!_loc2_);
         
      }
      
      protected var §][§:String;
      
      protected var §0!T§:String;
      
      protected var §>+§:Boolean = false;
      
      protected var §3H§:int = -1;
      
      private var §3s§:int = 0;
      
      public function §'!6§(param1:String, param2:String, param3:String, param4:Boolean, param5:Object = null)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            this.§][§ = param1;
            loop0:
            while(true)
            {
               this.§0!T§ = param2;
               do
               {
                  this.§>+§ = param4;
                  continue loop0;
               }
               while(_loc7_);
               
               addr19:
               return;
            }
         }
         §§goto(addr85);
      }
      
      public static function §?D§(param1:String) : String
      {
         return §0K§[param1];
      }
      
      public function get §6!4§() : int
      {
         return this.§3s§;
      }
      
      public function get §`!r§() : int
      {
         return this.§3H§;
      }
      
      override protected function dataLoaded(param1:Object) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:§%!E§ = null;
         var _loc5_:§4!R§ = null;
         var _loc3_:Object = {"items":[]};
         if(!_loc8_)
         {
            this.§3H§ = -1;
         }
         var _loc4_:* = int(param1.items.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(!(_loc8_ && _loc3_))
            {
               §§push(0);
               if(!(_loc8_ && param1))
               {
                  if(§§pop() < §§pop())
                  {
                     if(!(_loc8_ && _loc2_))
                     {
                        §§push(this.§3H§);
                        break;
                     }
                     loop20:
                     while(true)
                     {
                        this.§3s§ = §[!j§.length;
                        if(_loc8_ && _loc2_)
                        {
                           break;
                        }
                        if(_loc8_ && _loc3_)
                        {
                           continue;
                        }
                        while(true)
                        {
                           if(true)
                           {
                              if(§[!j§.indexOf(this.§][§) >= 0)
                              {
                                 if(!_loc8_)
                                 {
                                    break loop20;
                                 }
                                 break;
                              }
                              break;
                           }
                           while(true)
                           {
                              addr402:
                              while(true)
                              {
                                 _loc3_.totalItemCount = _loc3_.items.length;
                                 continue loop20;
                              }
                           }
                        }
                        addr470:
                        super.dataLoaded(_loc3_);
                        return;
                        addr399:
                     }
                     addr428:
                     var _loc6_:*;
                     §§push((_loc6_ = this).§3s§);
                     if(!(_loc8_ && this))
                     {
                        §§push(§§pop() - 1);
                     }
                     var _loc7_:* = §§pop();
                     if(_loc9_ || _loc3_)
                     {
                        _loc6_.§3s§ = _loc7_;
                     }
                     if(_loc8_ && param1)
                     {
                     }
                     §§goto(addr470);
                     addr407:
                  }
                  else
                  {
                     §8@§.§ #§(new §`D§(param1.items[_loc4_].a,param1.items[_loc4_].u));
                     if(!(_loc8_ && _loc3_))
                     {
                        §§push((_loc5_ = §4!R§.§+!7§(param1.items[_loc4_])) is §%Q§);
                        if(!_loc8_)
                        {
                           §§push(§§pop());
                           if(_loc9_ || param1)
                           {
                              if(§§pop())
                              {
                                 if(_loc9_ || _loc3_)
                                 {
                                    §§pop();
                                    if(!(_loc8_ && _loc3_))
                                    {
                                       §§push(§[!j§);
                                       if(!_loc8_)
                                       {
                                          §§push(_loc5_.userId);
                                          if(_loc9_)
                                          {
                                             §§push(§§pop().indexOf(§§pop()) == -1);
                                             if(!_loc8_)
                                             {
                                                §§push(!§§pop());
                                                if(_loc9_ || param1)
                                                {
                                                   addr119:
                                                   if(§§pop())
                                                   {
                                                      if(_loc9_ || _loc2_)
                                                      {
                                                         addr127:
                                                         §§push((_loc6_ = this).§3H§);
                                                         if(!_loc8_)
                                                         {
                                                            §§push(§§pop() - 1);
                                                         }
                                                         _loc7_ = §§pop();
                                                         if(!_loc8_)
                                                         {
                                                            _loc6_.§3H§ = _loc7_;
                                                         }
                                                         if(_loc9_ || this)
                                                         {
                                                         }
                                                      }
                                                      else
                                                      {
                                                         loop13:
                                                         while(true)
                                                         {
                                                            loop8:
                                                            while(true)
                                                            {
                                                               §`A§ = _loc5_;
                                                               addr184:
                                                               loop9:
                                                               while(!(_loc8_ && _loc2_))
                                                               {
                                                                  loop10:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc5_ is §%Q§);
                                                                     if(_loc9_)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           if(_loc9_)
                                                                           {
                                                                              §§push(_loc2_);
                                                                              if(_loc2_)
                                                                              {
                                                                                 addr310:
                                                                                 _loc2_ = §§pop();
                                                                                 break;
                                                                              }
                                                                              §§pop();
                                                                              if(!(_loc8_ && this))
                                                                              {
                                                                                 if(!(_loc9_ || this))
                                                                                 {
                                                                                    continue loop9;
                                                                                 }
                                                                                 if(false)
                                                                                 {
                                                                                    continue loop8;
                                                                                 }
                                                                                 §§push(_loc5_ as §%!E§);
                                                                              }
                                                                              addr310:
                                                                              §§push(_loc4_);
                                                                              if(!(_loc8_ && param1))
                                                                              {
                                                                                 §§push(§§pop() - 1);
                                                                              }
                                                                              _loc4_ = §§pop();
                                                                              continue loop0;
                                                                           }
                                                                           addr304:
                                                                           _loc3_.items.unshift(_loc5_);
                                                                           if(!_loc9_)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                           §§goto(addr310);
                                                                        }
                                                                        break;
                                                                     }
                                                                     loop2:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc8_)
                                                                        {
                                                                           if(_loc8_ && this)
                                                                           {
                                                                              addr276:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 addr277:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       addr278:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop();
                                                                                          loop17:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§[!j§);
                                                                                             if(_loc9_ || _loc3_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc5_.userId);
                                                                                                   if(_loc9_ || _loc3_)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         continue loop2;
                                                                                                      }
                                                                                                      addr243:
                                                                                                   }
                                                                                                }
                                                                                                addr234:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr258:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc5_.userId);
                                                                                                }
                                                                                                addr258:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop().push(§§pop());
                                                                                                addr261:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc8_)
                                                                                                   {
                                                                                                      continue loop17;
                                                                                                   }
                                                                                                }
                                                                                                continue loop17;
                                                                                             }
                                                                                             §§goto(addr258);
                                                                                          }
                                                                                       }
                                                                                       addr278:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             break loop9;
                                                                                          }
                                                                                       }
                                                                                       addr255:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc5_.userId);
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       if(§§pop() != this.§][§)
                                                                                       {
                                                                                          continue loop10;
                                                                                       }
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          this.§3H§ = _loc4_;
                                                                                          if(!(_loc8_ && param1))
                                                                                          {
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                continue loop13;
                                                                                             }
                                                                                             §§goto(addr261);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr304);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr310);
                                                                                    }
                                                                                    addr288:
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          §0K§[_loc5_.userId] = _loc5_.avatarString;
                                                                                          if(!(_loc9_ || this))
                                                                                          {
                                                                                             continue loop0;
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr310);
                                                                                    }
                                                                                    §§goto(addr304);
                                                                                 }
                                                                              }
                                                                              addr276:
                                                                           }
                                                                           §§goto(addr255);
                                                                        }
                                                                        §§goto(addr278);
                                                                     }
                                                                     §§goto(addr310);
                                                                  }
                                                                  §§goto(addr288);
                                                                  §§push(_loc5_.avatarString);
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr258);
                                                                  §§goto(addr184);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr310);
                                                   }
                                                   else
                                                   {
                                                      §§push(_loc5_ is §%Q§);
                                                      if(_loc9_ || _loc3_)
                                                      {
                                                         §§goto(addr276);
                                                         §§push(!§§pop());
                                                      }
                                                      §§goto(addr276);
                                                   }
                                                }
                                             }
                                             §§goto(addr278);
                                          }
                                          §§goto(addr243);
                                       }
                                       §§goto(addr234);
                                    }
                                    §§goto(addr127);
                                 }
                                 §§goto(addr276);
                              }
                              §§goto(addr119);
                           }
                           §§goto(addr277);
                        }
                        §§goto(addr278);
                     }
                  }
                  §§goto(addr399);
               }
               addr347:
               if(§§pop() < §§pop())
               {
                  if(_loc9_ || param1)
                  {
                     §§push(this);
                     if(_loc9_ || param1)
                     {
                        if(_loc2_)
                        {
                           addr365:
                           §§push(int(_loc3_.items.indexOf(_loc2_) + 1));
                           if(!_loc9_)
                           {
                           }
                        }
                        else
                        {
                           §§push(0);
                        }
                        §§pop().§3H§ = §§pop();
                        if(!_loc8_)
                        {
                           _loc3_.items.splice(this.§3H§,0,this.§"!G§(_loc2_));
                           if(!_loc8_)
                           {
                              §§goto(addr401);
                           }
                           §§goto(addr428);
                        }
                        §§goto(addr470);
                     }
                     §§goto(addr365);
                  }
                  §§goto(addr407);
               }
               §§goto(addr402);
            }
            break;
         }
         §§goto(addr347);
         §§push(0);
      }
      
      public function §"!G§(param1:§%!E§) : §%!E§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(!this.§>+§)
            {
               §§push(§§findproperty(§9?§));
               §§push(this.§][§);
               §§push(this.§0!T§);
               if(!(_loc2_ && _loc3_))
               {
                  §§push(§`A§);
                  if(!_loc2_)
                  {
                     if(§§pop())
                     {
                        addr115:
                        §§push(§`A§.avatarString);
                        if(!(_loc2_ && param1))
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
                     if(!_loc2_)
                     {
                        if(param1)
                        {
                           addr143:
                           §§push(param1.§1<§);
                           if(_loc3_)
                           {
                              §§push(int(§§pop() + 1));
                              if(!_loc3_)
                              {
                              }
                           }
                        }
                        else
                        {
                           §§push(1);
                        }
                        return new §§pop().§9?§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                     }
                     §§goto(addr143);
                  }
               }
               §§goto(addr115);
            }
         }
         §§push(§§findproperty(§4!k§));
         §§push(this.§][§);
         §§push(this.§0!T§);
         if(!(_loc2_ && _loc2_))
         {
            §§push(§`A§);
            if(_loc3_ || this)
            {
               if(§§pop())
               {
                  addr49:
                  §§push(§`A§.avatarString);
                  if(_loc3_)
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
               if(!_loc2_)
               {
                  if(param1)
                  {
                     addr61:
                     §§push(param1.§1<§);
                     if(!(_loc2_ && param1))
                     {
                        §§push(1);
                        if(_loc3_)
                        {
                           §§push(int(§§pop() + §§pop()));
                           if(!(_loc2_ && _loc3_))
                           {
                              addr94:
                              §§push(0);
                           }
                           §§goto(addr94);
                        }
                        return new §§pop().§4!k§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                     }
                  }
                  else
                  {
                     §§push(1);
                  }
                  §§goto(addr94);
               }
               §§goto(addr61);
            }
         }
         §§goto(addr49);
      }
      
      public function §0U§(param1:String) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               if(!(_loc4_ && this))
               {
                  if(§§pop() >= data.length)
                  {
                     if(!(_loc3_ || _loc2_))
                     {
                        continue;
                     }
                     if(!(_loc4_ && _loc3_))
                     {
                        if(!_loc4_)
                        {
                           if(_loc3_ || param1)
                           {
                              break;
                           }
                           loop1:
                           while(true)
                           {
                              §§push((data[_loc2_] as §%!E§).userId == param1);
                              if(!(_loc4_ && this))
                              {
                                 if(_loc4_)
                                 {
                                    while(true)
                                    {
                                       §§push(!§§pop());
                                       if(!_loc4_)
                                       {
                                          if(!§§pop())
                                          {
                                             break loop1;
                                          }
                                       }
                                       continue loop1;
                                    }
                                    addr118:
                                 }
                                 break;
                              }
                           }
                           if(!§§pop())
                           {
                              addr70:
                              _loc2_++;
                              continue;
                           }
                        }
                        §§goto(addr109);
                     }
                     §§goto(addr70);
                  }
                  else
                  {
                     §§push(data[_loc2_] is §%Q§);
                  }
                  §§goto(addr118);
               }
               addr109:
               return (data[_loc2_] as §%!E§).§1<§;
            }
            break;
         }
         return §§pop();
      }
      
      public function §]-§(param1:int) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         do
         {
            §§push(_loc2_);
            if(_loc3_ || this)
            {
               if(§§pop() >= data.length)
               {
                  if(_loc3_ || _loc2_)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        §§goto(addr56);
                     }
                     if(!(_loc3_ || param1))
                     {
                        loop1:
                        while(true)
                        {
                           §§push((data[_loc2_] as §9?§).§1<§ == 2);
                           if(_loc4_)
                           {
                              continue;
                           }
                           if(_loc3_)
                           {
                              if(_loc4_)
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
               §§push(data[_loc2_] is §%Q§);
               §§goto(addr115);
            }
            addr56:
            §§push(0);
            if(_loc3_)
            {
               return §§pop();
            }
            addr99:
            return §§pop();
         }
         while(_loc3_);
         
         §§goto(addr99);
         §§push((data[_loc2_] as §9?§).§;!u§);
      }
      
      public function §=e§(param1:Number) : Object
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            if(!data)
            {
               if(!_loc4_)
               {
                  §§push(null);
                  if(!(_loc4_ && param1))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr37:
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
                        §§push((data[_loc3_] as §9?§).userId == this.§][§);
                        if(_loc5_ || _loc3_)
                        {
                           §§push(!§§pop());
                           loop2:
                           while(true)
                           {
                              §§push(§§pop());
                              loop3:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       loop5:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          loop6:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                loop7:
                                                while(true)
                                                {
                                                   §§pop();
                                                   if(_loc5_)
                                                   {
                                                      §§push(Boolean(this.§][§));
                                                      if(!(_loc4_ && param1))
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            loop8:
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               if(!_loc4_)
                                                               {
                                                                  if(_loc5_ || _loc2_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc5_ || _loc3_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 continue loop7;
                                                                              }
                                                                              if(_loc4_)
                                                                              {
                                                                                 continue loop5;
                                                                              }
                                                                              if(!_loc5_)
                                                                              {
                                                                                 continue loop2;
                                                                              }
                                                                              §§pop();
                                                                              if(!_loc5_)
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              if(!(_loc4_ && _loc3_))
                                                                              {
                                                                                 if(true)
                                                                                 {
                                                                                    §§push((data[_loc3_] as §9?§).§;!u§);
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       §§push(§§pop() > param1);
                                                                                       break loop8;
                                                                                    }
                                                                                    continue loop1;
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                 }
                                                                                 addr151:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(data[_loc3_] is §%Q§);
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    break loop8;
                                                                                 }
                                                                                 §§push(!§§pop());
                                                                                 continue loop2;
                                                                              }
                                                                           }
                                                                           addr76:
                                                                        }
                                                                        break;
                                                                     }
                                                                     break;
                                                                  }
                                                                  continue loop3;
                                                               }
                                                               continue loop6;
                                                            }
                                                            if(§§pop())
                                                            {
                                                               if(_loc4_ && _loc2_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               _loc2_ = data[_loc3_];
                                                            }
                                                            _loc3_++;
                                                            if(_loc4_ && param1)
                                                            {
                                                               break;
                                                            }
                                                            continue loop0;
                                                            addr57:
                                                         }
                                                         else
                                                         {
                                                            addr150:
                                                         }
                                                         while(true)
                                                         {
                                                            §§pop();
                                                         }
                                                         §§goto(addr151);
                                                      }
                                                      §§goto(addr76);
                                                   }
                                                   break;
                                                }
                                                §§goto(addr197);
                                             }
                                             §§goto(addr57);
                                          }
                                       }
                                    }
                                    addr120:
                                 }
                              }
                           }
                        }
                        §§goto(addr150);
                     }
                     addr197:
                     return _loc2_;
                  }
               }
            }
         }
         §§goto(addr37);
      }
      
      public function §=!0§() : §9?§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            §§push(!data);
            if(!_loc4_)
            {
               if(!§§pop())
               {
                  if(_loc3_ || _loc3_)
                  {
                     §§pop();
                     addr53:
                     if(_loc3_ || _loc1_)
                     {
                        §§push(data.length == 0);
                     }
                     §§push(this.§0U§(this.§][§));
                     if(!_loc4_)
                     {
                        §§push(int(§§pop()));
                     }
                     var _loc1_:* = §§pop();
                     if(_loc3_)
                     {
                        §§push(_loc1_);
                        if(!(_loc4_ && _loc2_))
                        {
                           §§push(1);
                           if(_loc3_ || this)
                           {
                              if(§§pop() == §§pop())
                              {
                                 if(_loc3_)
                                 {
                                    return null;
                                 }
                                 addr108:
                                 §§push(int(data.length + 1));
                                 if(_loc3_ || this)
                                 {
                                    addr120:
                                    _loc1_ = §§pop();
                                    addr121:
                                    §§push(0);
                                 }
                                 var _loc2_:* = §§pop();
                                 while(true)
                                 {
                                    if(_loc2_ >= data.length)
                                    {
                                       if(!_loc4_)
                                       {
                                          break;
                                       }
                                       loop1:
                                       while(_loc4_)
                                       {
                                          while(true)
                                          {
                                             _loc2_++;
                                             continue loop1;
                                          }
                                       }
                                       continue;
                                    }
                                    if((data[_loc2_] as §9?§).§1<§ == _loc1_ - 1)
                                    {
                                       §§goto(addr168);
                                    }
                                    §§goto(addr152);
                                 }
                                 if(!(_loc4_ && this))
                                 {
                                    return null;
                                 }
                                 addr168:
                                 return data[_loc2_];
                              }
                              §§push(_loc1_);
                              if(!(_loc4_ && this))
                              {
                                 addr105:
                                 if(§§pop() == -1)
                                 {
                                    if(!_loc4_)
                                    {
                                       §§goto(addr108);
                                    }
                                 }
                                 §§goto(addr121);
                              }
                              §§goto(addr120);
                           }
                        }
                        §§goto(addr105);
                     }
                     §§goto(addr108);
                  }
               }
            }
            if(§§pop())
            {
               if(!_loc4_)
               {
                  return null;
               }
            }
         }
         §§goto(addr53);
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
            throw new Error("Can\'t load highscore list.\n" + (e.target as URLLoader).data,§"K§.§6#§);
         }
      }
      
      public function §`j§(param1:int, param2:int, param3:int, param4:Array) : int
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc7_:§9?§ = null;
         var _loc5_:§9?§;
         if(!(_loc5_ = data[this.§3H§]))
         {
            if(!(_loc10_ && param1))
            {
               §§push(0);
               if(!(_loc10_ && param2))
               {
                  return §§pop();
               }
            }
            else
            {
               loop0:
               while(true)
               {
                  _loc5_.§1t§ = param3;
                  if(!(_loc11_ || param3))
                  {
                     continue;
                  }
                  if(!(_loc10_ && this))
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
                     addr80:
                  }
                  while(true)
                  {
                     _loc5_.§;!u§ = param1;
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
                  if(data[_loc6_] is §%Q§)
                  {
                     if(_loc10_ && param2)
                     {
                        continue loop1;
                     }
                  }
                  else if((_loc7_ = data[_loc6_]).userId == this.§][§)
                  {
                     if(!_loc11_)
                     {
                        addr314:
                        _loc7_.targetOffset = 1;
                        if(_loc11_ || param1)
                        {
                           addr324:
                        }
                     }
                  }
                  else if(_loc7_.§1<§ < _loc5_.§1<§)
                  {
                     if(!_loc10_)
                     {
                        §§push(_loc5_.§;!u§);
                        if(!_loc10_)
                        {
                           §§push(_loc7_.§;!u§);
                           if(_loc11_)
                           {
                              §§push(§§pop() > §§pop());
                              if(_loc11_)
                              {
                                 §§push(§§pop());
                                 if(!(_loc10_ && this))
                                 {
                                    if(!§§pop())
                                    {
                                       if(!_loc10_)
                                       {
                                          addr144:
                                          §§pop();
                                          if(_loc11_ || param2)
                                          {
                                             §§push(_loc5_.§;!u§);
                                             if(_loc11_ || this)
                                             {
                                                addr161:
                                                §§push(_loc7_.§;!u§);
                                                if(!_loc10_)
                                                {
                                                   addr165:
                                                   §§push(§§pop() == §§pop());
                                                   if(_loc11_)
                                                   {
                                                      addr169:
                                                      if(§§pop())
                                                      {
                                                         if(_loc11_ || param1)
                                                         {
                                                            addr187:
                                                            §§pop();
                                                            if(_loc11_ || this)
                                                            {
                                                               addr200:
                                                               if(_loc5_.§1t§ > _loc7_.§1t§)
                                                               {
                                                                  if(_loc11_)
                                                                  {
                                                                     param4.push(_loc7_);
                                                                     if(_loc11_)
                                                                     {
                                                                        var _loc8_:*;
                                                                        var _loc9_:* = (_loc8_ = _loc5_).§1<§ - 1;
                                                                        if(!(_loc10_ && param2))
                                                                        {
                                                                           _loc8_.§1<§ = _loc9_;
                                                                        }
                                                                        if(!(_loc10_ && this))
                                                                        {
                                                                           addr233:
                                                                           _loc9_ = (_loc8_ = _loc7_).§1<§ + 1;
                                                                           if(_loc11_ || param1)
                                                                           {
                                                                              _loc8_.§1<§ = _loc9_;
                                                                           }
                                                                           if(!(_loc10_ && this))
                                                                           {
                                                                              addr258:
                                                                              _loc7_.§7!J§ = true;
                                                                              if(_loc11_)
                                                                              {
                                                                                 addr263:
                                                                                 if(!_loc5_.targetOffset)
                                                                                 {
                                                                                    if(!(_loc10_ && param3))
                                                                                    {
                                                                                       _loc5_.targetOffset = -1;
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          addr278:
                                                                                       }
                                                                                       §§goto(addr324);
                                                                                    }
                                                                                    addr353:
                                                                                    §§push(_loc6_);
                                                                                    if(!(_loc10_ && param1))
                                                                                    {
                                                                                       §§push(§§pop() - 1);
                                                                                       if(_loc11_ || param1)
                                                                                       {
                                                                                          _loc6_ = §§pop();
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          continue loop1;
                                                                                       }
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                                 _loc9_ = (_loc8_ = _loc5_).targetOffset - 1;
                                                                                 if(_loc11_ || param2)
                                                                                 {
                                                                                    _loc8_.targetOffset = _loc9_;
                                                                                 }
                                                                                 if(_loc11_ || param2)
                                                                                 {
                                                                                 }
                                                                                 §§goto(addr324);
                                                                                 §§goto(addr324);
                                                                              }
                                                                              if(!_loc7_.targetOffset)
                                                                              {
                                                                                 if(_loc11_ || this)
                                                                                 {
                                                                                    §§goto(addr314);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 _loc9_ = (_loc8_ = _loc7_).targetOffset + 1;
                                                                                 if(!(_loc10_ && param3))
                                                                                 {
                                                                                    _loc8_.targetOffset = _loc9_;
                                                                                 }
                                                                              }
                                                                              §§goto(addr353);
                                                                           }
                                                                           §§goto(addr324);
                                                                        }
                                                                        §§goto(addr278);
                                                                     }
                                                                     §§goto(addr233);
                                                                  }
                                                                  §§goto(addr314);
                                                               }
                                                               §§goto(addr353);
                                                            }
                                                            §§goto(addr258);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr200);
                                          }
                                          §§goto(addr314);
                                       }
                                       §§goto(addr187);
                                    }
                                    §§goto(addr200);
                                 }
                                 §§goto(addr169);
                              }
                              §§goto(addr144);
                           }
                           §§goto(addr165);
                        }
                        §§goto(addr161);
                     }
                     §§goto(addr263);
                  }
                  §§goto(addr353);
               }
               return _loc5_.§1<§;
            }
         }
         else
         {
            _loc5_.stars = param2;
         }
         §§goto(addr80);
      }
   }
}
