package §_-0EZ§
{
   import §_-01E§.§_-00n§;
   import §_-01E§.§_-0El§;
   import §_-01E§.§_-5b§;
   import §_-01E§.§_-5z§;
   import §_-01E§.§_-M3§;
   import §_-eS§.§_-4E§;
   import flash.events.Event;
   import flash.net.URLLoader;
   
   public class §_-48§ extends §_-SI§
   {
      
      public static var §in §:§_-M3§;
      
      public static var §_-L0§:Array;
      
      private static var §_-084§:Object;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §_-L0§ = [];
         }
         do
         {
            §_-084§ = {};
         }
         while(!_loc1_);
         
      }
      
      protected var §_-ck§:String;
      
      protected var §_-TT§:String;
      
      protected var §_-Ei§:Boolean = false;
      
      protected var §_-0Cu§:int = -1;
      
      private var §_-hx§:int = 0;
      
      public function §_-48§(param1:String, param2:String, param3:String, param4:Boolean, param5:Object = null)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            this.§_-ck§ = param1;
            do
            {
               this.§_-TT§ = param2;
               loop1:
               do
               {
                  this.§_-Ei§ = param4;
                  do
                  {
                     super(param3);
                     do
                     {
                        if(!param5)
                        {
                           §_-0-C§(0,0);
                           if(!_loc6_)
                           {
                              if(!(_loc7_ || param3))
                              {
                                 continue loop1;
                              }
                              if(!_loc7_)
                              {
                                 continue;
                              }
                              addr42:
                           }
                           else
                           {
                              addr57:
                           }
                        }
                        continue;
                        return;
                     }
                     while(_loc6_ && param2);
                     
                  }
                  while(!_loc7_);
                  
                  §_-U5§ = new §_-UE§(0,param5.items.length,new URLLoader(),null);
               }
               while(!_loc7_);
               
            }
            while(_loc6_ && param3);
            
            this.dataLoaded(param5);
            §§goto(addr57);
         }
         §§goto(addr42);
      }
      
      public static function §_-nV§(param1:String) : String
      {
         return §_-084§[param1];
      }
      
      public function get §_-wX§() : int
      {
         return this.§_-hx§;
      }
      
      public function get §_-tm§() : int
      {
         return this.§_-0Cu§;
      }
      
      override protected function dataLoaded(param1:Object) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:§_-0El§ = null;
         var _loc5_:§_-M3§ = null;
         var _loc3_:Object = {"items":[]};
         if(_loc9_ || _loc3_)
         {
            this.§_-0Cu§ = -1;
         }
         var _loc4_:* = int(param1.items.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(!_loc8_)
            {
               §§push(0);
               if(!_loc8_)
               {
                  if(§§pop() < §§pop())
                  {
                     addr365:
                     if(!_loc8_)
                     {
                        §§push(this.§_-0Cu§);
                        break;
                     }
                     §§push(this);
                     if(_loc9_ || param1)
                     {
                        if(_loc2_)
                        {
                           addr375:
                           §§push(int(_loc3_.items.indexOf(_loc2_) + 1));
                           if(_loc8_ && this)
                           {
                           }
                        }
                        else
                        {
                           §§push(0);
                        }
                        §§pop().§_-0Cu§ = §§pop();
                        if(_loc9_ || this)
                        {
                           _loc3_.items.splice(this.§_-0Cu§,0,this.§_-kF§(_loc2_));
                           loop17:
                           while(true)
                           {
                              addr409:
                              while(true)
                              {
                                 addr410:
                                 while(true)
                                 {
                                    _loc3_.totalItemCount = _loc3_.items.length;
                                    if(_loc8_ && _loc2_)
                                    {
                                       break;
                                    }
                                    continue loop17;
                                 }
                                 addr463:
                                 var _loc6_:*;
                                 §§push((_loc6_ = this).§_-hx§);
                                 if(_loc9_ || _loc3_)
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 var _loc7_:* = §§pop();
                                 if(_loc9_)
                                 {
                                    _loc6_.§_-hx§ = _loc7_;
                                 }
                                 if(_loc9_)
                                 {
                                    addr485:
                                    super.dataLoaded(_loc3_);
                                 }
                              }
                           }
                        }
                        return;
                     }
                     §§goto(addr375);
                  }
                  else
                  {
                     §_-Dk§.§_-86§(new §_-HV§(param1.items[_loc4_].a,param1.items[_loc4_].u));
                     if(_loc9_ || this)
                     {
                        §§push((_loc5_ = §_-M3§.§_-Ej§(param1.items[_loc4_])) is §_-5z§);
                        if(!(_loc8_ && _loc2_))
                        {
                           §§push(§§pop());
                           if(!_loc8_)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc8_ && _loc2_))
                                 {
                                    §§pop();
                                    if(_loc9_ || _loc3_)
                                    {
                                       §§push(§_-L0§);
                                       if(!(_loc8_ && _loc3_))
                                       {
                                          §§push(_loc5_.userId);
                                          if(!(_loc8_ && _loc3_))
                                          {
                                             §§push(§§pop().indexOf(§§pop()) == -1);
                                             if(!(_loc8_ && _loc3_))
                                             {
                                                §§push(!§§pop());
                                                if(!(_loc8_ && _loc3_))
                                                {
                                                   addr139:
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc8_ && _loc2_))
                                                      {
                                                         §§push((_loc6_ = this).§_-0Cu§);
                                                         if(!(_loc8_ && _loc2_))
                                                         {
                                                            §§push(§§pop() - 1);
                                                         }
                                                         _loc7_ = §§pop();
                                                         if(!_loc8_)
                                                         {
                                                            _loc6_.§_-0Cu§ = _loc7_;
                                                         }
                                                         if(!(_loc9_ || param1))
                                                         {
                                                            continue;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         loop10:
                                                         while(true)
                                                         {
                                                            §§push(§_-L0§);
                                                            addr278:
                                                            loop11:
                                                            while(true)
                                                            {
                                                               §§push(_loc5_.userId);
                                                               loop3:
                                                               while(true)
                                                               {
                                                                  §§pop().push(§§pop());
                                                                  if(_loc9_ || _loc3_)
                                                                  {
                                                                     loop4:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc5_.userId);
                                                                        if(_loc9_)
                                                                        {
                                                                           if(§§pop() == this.§_-ck§)
                                                                           {
                                                                              loop5:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    this.§_-0Cu§ = _loc4_;
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       addr329:
                                                                                       break;
                                                                                       addr222:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §in § = _loc5_;
                                                                                       if(!(_loc8_ && _loc3_))
                                                                                       {
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             continue loop5;
                                                                                          }
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    _loc3_.items.unshift(_loc5_);
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    continue loop0;
                                                                                 }
                                                                                 continue loop10;
                                                                              }
                                                                              addr335:
                                                                              §§push(_loc4_);
                                                                              if(!(_loc8_ && param1))
                                                                              {
                                                                                 §§push(§§pop() - 1);
                                                                              }
                                                                              _loc4_ = §§pop();
                                                                              continue loop0;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc5_ is §_-5z§);
                                                                              if(_loc9_ || this)
                                                                              {
                                                                                 if(!(_loc8_ && _loc2_))
                                                                                 {
                                                                                    while(!§§pop())
                                                                                    {
                                                                                       if(_loc9_ || _loc3_)
                                                                                       {
                                                                                          §§push(_loc2_);
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             §§pop();
                                                                                             if(_loc9_ || param1)
                                                                                             {
                                                                                                if(!(_loc8_ && _loc2_))
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(true)
                                                                                                      {
                                                                                                         §§push(_loc5_ as §_-0El§);
                                                                                                         break;
                                                                                                      }
                                                                                                      §§goto(addr222);
                                                                                                   }
                                                                                                   addr220:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   loop2:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§_-L0§);
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         continue loop11;
                                                                                                      }
                                                                                                      §§push(_loc5_.userId);
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         continue loop3;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().indexOf(§§pop()) == -1);
                                                                                                         addr273:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  addr297:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        addr298:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           continue loop2;
                                                                                                                        }
                                                                                                                        addr298:
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr296:
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  continue loop10;
                                                                                                               }
                                                                                                               continue loop4;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr316:
                                                                                             §_-084§[_loc5_.userId] = _loc5_.avatarString;
                                                                                             if(!(_loc8_ && param1))
                                                                                             {
                                                                                                §§goto(addr329);
                                                                                             }
                                                                                             §§goto(addr335);
                                                                                          }
                                                                                          _loc2_ = §§pop();
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr316);
                                                                                    }
                                                                                    addr193:
                                                                                    §§push(_loc5_.avatarString);
                                                                                    break loop4;
                                                                                    addr193:
                                                                                 }
                                                                                 §§goto(addr298);
                                                                              }
                                                                              §§goto(addr273);
                                                                           }
                                                                        }
                                                                        break;
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc9_ || this)
                                                                        {
                                                                           §§goto(addr316);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr329);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr335);
                                                   }
                                                   else
                                                   {
                                                      §§push(_loc5_ is §_-5z§);
                                                      if(_loc9_)
                                                      {
                                                         §§push(!§§pop());
                                                      }
                                                   }
                                                   §§goto(addr296);
                                                }
                                                §§goto(addr298);
                                             }
                                             §§goto(addr193);
                                          }
                                          §§goto(addr270);
                                       }
                                       §§goto(addr278);
                                    }
                                    §§goto(addr220);
                                 }
                                 §§goto(addr193);
                              }
                              §§goto(addr139);
                           }
                           §§goto(addr297);
                        }
                        §§goto(addr139);
                     }
                  }
                  §§goto(addr407);
               }
               addr357:
               if(§§pop() < §§pop())
               {
                  if(!(_loc8_ && param1))
                  {
                     §§goto(addr365);
                  }
                  §§goto(addr429);
               }
               §§goto(addr410);
            }
            break;
         }
         §§goto(addr357);
         §§push(0);
      }
      
      public function §_-kF§(param1:§_-0El§) : §_-0El§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(!this.§_-Ei§)
            {
               §§push(§§findproperty(§_-5b§));
               §§push(this.§_-ck§);
               §§push(this.§_-TT§);
               if(_loc2_)
               {
                  §§push(§in §);
                  if(_loc2_ || this)
                  {
                     if(§§pop())
                     {
                        addr114:
                        §§push(§in §.avatarString);
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
                     if(_loc2_ || _loc2_)
                     {
                        if(param1)
                        {
                           addr142:
                           §§push(param1.§_-0Ef§);
                           if(!_loc3_)
                           {
                              §§push(int(§§pop() + 1));
                              if(_loc3_)
                              {
                              }
                           }
                        }
                        else
                        {
                           §§push(1);
                        }
                        return new §§pop().§_-5b§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                     }
                     §§goto(addr142);
                  }
               }
               §§goto(addr114);
            }
         }
         §§push(§§findproperty(§_-00n§));
         §§push(this.§_-ck§);
         §§push(this.§_-TT§);
         if(_loc2_)
         {
            §§push(§in §);
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  addr43:
                  §§push(§in §.avatarString);
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
               if(!(_loc3_ && _loc2_))
               {
                  if(param1)
                  {
                     addr60:
                     §§push(param1.§_-0Ef§);
                     if(_loc2_)
                     {
                        §§push(1);
                        if(_loc2_ || _loc3_)
                        {
                           §§push(int(§§pop() + §§pop()));
                           if(!(_loc3_ && _loc3_))
                           {
                              addr93:
                              §§push(0);
                           }
                           §§goto(addr93);
                        }
                        return new §§pop().§_-00n§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                     }
                  }
                  else
                  {
                     §§push(1);
                  }
                  §§goto(addr93);
               }
               §§goto(addr60);
            }
         }
         §§goto(addr43);
      }
      
      public function §_-091§(param1:String) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               if(!_loc3_)
               {
                  if(§§pop() >= data.length)
                  {
                     if(_loc3_)
                     {
                        continue;
                     }
                     if(_loc3_)
                     {
                        if(_loc3_ && param1)
                        {
                           loop1:
                           while(true)
                           {
                              §§push((data[_loc2_] as §_-0El§).userId == param1);
                              if(_loc4_)
                              {
                                 if(_loc3_)
                                 {
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          break loop1;
                                       }
                                       continue loop1;
                                    }
                                    addr107:
                                 }
                                 break;
                              }
                           }
                           if(§§pop())
                           {
                              addr67:
                              §§push((data[_loc2_] as §_-0El§).§_-0Ef§);
                              break;
                           }
                        }
                        _loc2_++;
                        continue;
                     }
                     if(!_loc3_)
                     {
                        §§goto(addr36);
                     }
                     §§goto(addr67);
                  }
                  else
                  {
                     §§push(data[_loc2_] is §_-5z§);
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(!§§pop());
                     }
                  }
                  §§goto(addr107);
               }
               break;
            }
            addr36:
            return -1;
         }
         return §§pop();
      }
      
      public function §_-p-§(param1:int) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               if(!_loc4_)
               {
                  if(§§pop() >= data.length)
                  {
                     if(_loc3_)
                     {
                        if(_loc3_)
                        {
                           break;
                        }
                        while(true)
                        {
                           _loc2_++;
                        }
                        addr36:
                     }
                     loop2:
                     for(; _loc3_; §§goto(addr36))
                     {
                        if(_loc3_)
                        {
                           continue loop0;
                        }
                        loop3:
                        while(true)
                        {
                           §§push((data[_loc2_] as §_-5b§).§_-0Ef§ == 2);
                           if(_loc4_ && param1)
                           {
                              continue;
                           }
                           if(_loc3_)
                           {
                              if(!(_loc3_ || _loc2_))
                              {
                                 while(true)
                                 {
                                    §§push(!§§pop());
                                    addr106:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          break loop3;
                                       }
                                       continue loop3;
                                    }
                                 }
                                 addr105:
                              }
                              break;
                           }
                           §§goto(addr106);
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              break loop2;
                           }
                           continue loop2;
                        }
                     }
                     §§goto(addr96);
                  }
                  §§push(data[_loc2_] is §_-5z§);
                  §§goto(addr105);
               }
               addr96:
               return (data[_loc2_] as §_-5b§).§_-04F§;
            }
            break;
         }
         return §§pop();
      }
      
      public function §var §(param1:Number) : Object
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            if(!data)
            {
               if(!_loc4_)
               {
                  addr23:
                  §§push(null);
                  if(_loc5_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr27:
                  §§push(null);
               }
               var _loc2_:Object = §§pop();
               var _loc3_:int = 0;
               loop0:
               while(true)
               {
                  §§push(_loc3_);
                  loop1:
                  while(§§pop() < data.length)
                  {
                     §§push((data[_loc3_] as §_-5b§).userId == this.§_-ck§);
                     loop2:
                     while(true)
                     {
                        §§push(!§§pop());
                        if(!_loc4_)
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
                                    loop12:
                                    while(true)
                                    {
                                       loop13:
                                       while(true)
                                       {
                                          §§push(data[_loc3_] is §_-5z§);
                                          if(_loc5_ || param1)
                                          {
                                             addr94:
                                             §§push(!§§pop());
                                             if(!_loc4_)
                                             {
                                                while(true)
                                                {
                                                   addr98:
                                                   while(true)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      if(_loc5_)
                                                      {
                                                         if(!(_loc4_ && param1))
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               §§push(§§pop());
                                                               continue loop3;
                                                            }
                                                            continue loop2;
                                                         }
                                                         continue loop11;
                                                      }
                                                      addr120:
                                                      loop10:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         loop9:
                                                         while(true)
                                                         {
                                                            if(!(_loc4_ && _loc3_))
                                                            {
                                                               §§push(Boolean(this.§_-ck§));
                                                               if(!_loc4_)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!(_loc4_ && _loc2_))
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                              }
                                                                              break;
                                                                           }
                                                                           break;
                                                                        }
                                                                        continue loop3;
                                                                     }
                                                                     addr172:
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        _loc2_ = data[_loc3_];
                                                                     }
                                                                     _loc3_++;
                                                                     if(!_loc5_)
                                                                     {
                                                                        break loop1;
                                                                     }
                                                                     continue loop0;
                                                                     addr42:
                                                                  }
                                                                  continue loop10;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  if(!(_loc5_ || _loc2_))
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  if(_loc4_ && _loc2_)
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                                  if(false)
                                                                  {
                                                                     continue loop13;
                                                                  }
                                                                  §§push((data[_loc3_] as §_-5b§).§_-04F§);
                                                                  if(_loc4_ && this)
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  §§push(§§pop() > param1);
                                                                  §§goto(addr128);
                                                               }
                                                               addr128:
                                                               continue loop13;
                                                            }
                                                            continue loop12;
                                                         }
                                                         continue loop12;
                                                      }
                                                   }
                                                   §§goto(addr94);
                                                }
                                                addr97:
                                             }
                                             §§goto(addr172);
                                          }
                                          §§goto(addr98);
                                       }
                                    }
                                 }
                                 addr145:
                              }
                              §§goto(addr97);
                           }
                        }
                        §§goto(addr145);
                     }
                  }
                  return _loc2_;
               }
            }
            §§goto(addr27);
         }
         §§goto(addr23);
      }
      
      public function §_-YX§() : §_-5b§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(!data);
            if(!(_loc3_ && _loc3_))
            {
               if(!§§pop())
               {
                  if(!(_loc3_ && _loc1_))
                  {
                     addr37:
                     §§pop();
                     §§goto(addr49);
                  }
               }
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     return null;
                  }
                  §§goto(addr49);
               }
               addr49:
               if(_loc4_)
               {
                  §§push(data.length == 0);
               }
               §§push(this.§_-091§(this.§_-ck§));
               if(_loc4_ || _loc3_)
               {
                  §§push(int(§§pop()));
               }
               var _loc1_:* = §§pop();
               if(!_loc3_)
               {
                  §§push(_loc1_);
                  if(!_loc3_)
                  {
                     §§push(1);
                     if(_loc4_)
                     {
                        if(§§pop() == §§pop())
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              §§goto(addr88);
                           }
                           else
                           {
                              addr107:
                              §§push(0);
                           }
                        }
                        else
                        {
                           §§push(_loc1_);
                           if(!_loc3_)
                           {
                              addr96:
                              if(§§pop() == -1)
                              {
                                 if(_loc4_)
                                 {
                                    §§push(int(data.length + 1));
                                    if(!_loc3_)
                                    {
                                       addr106:
                                       _loc1_ = §§pop();
                                    }
                                    §§goto(addr108);
                                 }
                              }
                              §§goto(addr107);
                           }
                        }
                        addr108:
                        var _loc2_:* = §§pop();
                        while(true)
                        {
                           if(_loc2_ >= data.length)
                           {
                              if(!(_loc4_ || _loc3_))
                              {
                                 continue;
                              }
                              if(!_loc3_)
                              {
                                 return null;
                              }
                              addr163:
                           }
                           else if((data[_loc2_] as §_-5b§).§_-0Ef§ == _loc1_ - 1)
                           {
                              if(_loc4_ || _loc1_)
                              {
                                 break;
                              }
                              §§goto(addr163);
                           }
                           _loc2_++;
                        }
                        return data[_loc2_];
                     }
                     §§goto(addr96);
                  }
                  §§goto(addr106);
               }
               addr88:
               return null;
            }
         }
         §§goto(addr37);
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
            throw new Error("Can\'t load highscore list.\n" + (e.target as URLLoader).data,§_-4E§.§_-ju§);
         }
      }
      
      public function §_-R0§(param1:int, param2:int, param3:int, param4:Array) : int
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc7_:§_-5b§ = null;
         var _loc5_:§_-5b§;
         if(!(_loc5_ = data[this.§_-0Cu§]))
         {
            if(_loc11_)
            {
               §§push(0);
               if(!(_loc10_ && this))
               {
                  return §§pop();
               }
            }
            else
            {
               loop0:
               while(true)
               {
                  _loc5_.§_-GM§ = param3;
                  if(!_loc11_)
                  {
                     continue;
                  }
                  if(true)
                  {
                     break;
                  }
                  loop1:
                  while(true)
                  {
                     _loc5_.§_-04F§ = param1;
                     continue loop0;
                     addr65:
                     while(true)
                     {
                        continue loop1;
                     }
                  }
               }
               §§push(int(data.length - 1));
            }
            var _loc6_:* = §§pop();
            loop3:
            while(true)
            {
               §§push(_loc6_);
               while(§§pop() >= 0)
               {
                  if(data[_loc6_] is §_-5z§)
                  {
                     if(_loc10_ && param1)
                     {
                        continue loop3;
                     }
                  }
                  else if((_loc7_ = data[_loc6_]).userId == this.§_-ck§)
                  {
                     if(!(_loc11_ || param1))
                     {
                        addr294:
                        _loc7_.targetOffset = 1;
                        if(!_loc10_)
                        {
                           addr299:
                        }
                     }
                  }
                  else if(_loc7_.§_-0Ef§ < _loc5_.§_-0Ef§)
                  {
                     if(_loc11_)
                     {
                        §§push(_loc5_.§_-04F§);
                        if(_loc11_)
                        {
                           §§push(_loc7_.§_-04F§);
                           if(!(_loc10_ && this))
                           {
                              §§push(§§pop() > §§pop());
                              if(!_loc10_)
                              {
                                 §§push(§§pop());
                                 if(!_loc10_)
                                 {
                                    if(!§§pop())
                                    {
                                       if(!_loc10_)
                                       {
                                          addr134:
                                          §§pop();
                                          if(!_loc10_)
                                          {
                                             §§push(_loc5_.§_-04F§);
                                             if(_loc11_)
                                             {
                                                addr141:
                                                §§push(_loc7_.§_-04F§);
                                                if(!_loc10_)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(_loc11_ || this)
                                                   {
                                                      addr154:
                                                      if(§§pop())
                                                      {
                                                         if(!(_loc10_ && this))
                                                         {
                                                            addr172:
                                                            §§pop();
                                                            if(!(_loc10_ && param2))
                                                            {
                                                               addr185:
                                                               if(_loc5_.§_-GM§ > _loc7_.§_-GM§)
                                                               {
                                                                  if(!(_loc10_ && param3))
                                                                  {
                                                                     param4.push(_loc7_);
                                                                     if(_loc11_ || param3)
                                                                     {
                                                                        addr203:
                                                                        var _loc8_:*;
                                                                        var _loc9_:* = (_loc8_ = _loc5_).§_-0Ef§ - 1;
                                                                        if(_loc11_)
                                                                        {
                                                                           _loc8_.§_-0Ef§ = _loc9_;
                                                                        }
                                                                        if(!_loc10_)
                                                                        {
                                                                           _loc9_ = (_loc8_ = _loc7_).§_-0Ef§ + 1;
                                                                           if(!(_loc10_ && this))
                                                                           {
                                                                              _loc8_.§_-0Ef§ = _loc9_;
                                                                           }
                                                                           if(_loc11_ || this)
                                                                           {
                                                                              _loc7_.§_-07d§ = true;
                                                                              if(!(_loc10_ && param3))
                                                                              {
                                                                                 if(!_loc5_.targetOffset)
                                                                                 {
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       _loc5_.targetOffset = -1;
                                                                                       if(_loc10_)
                                                                                       {
                                                                                       }
                                                                                       §§goto(addr294);
                                                                                    }
                                                                                    addr328:
                                                                                    §§push(_loc6_);
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       §§push(§§pop() - 1);
                                                                                       if(!(_loc11_ || param2))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                    }
                                                                                    _loc6_ = §§pop();
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    continue loop3;
                                                                                 }
                                                                                 _loc9_ = (_loc8_ = _loc5_).targetOffset - 1;
                                                                                 if(_loc11_ || param1)
                                                                                 {
                                                                                    _loc8_.targetOffset = _loc9_;
                                                                                 }
                                                                                 if(_loc10_ && param2)
                                                                                 {
                                                                                 }
                                                                                 §§goto(addr294);
                                                                                 §§goto(addr294);
                                                                              }
                                                                              if(!_loc7_.targetOffset)
                                                                              {
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 _loc9_ = (_loc8_ = _loc7_).targetOffset + 1;
                                                                                 if(!(_loc10_ && param1))
                                                                                 {
                                                                                    _loc8_.targetOffset = _loc9_;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr328);
                                                                     }
                                                                     §§goto(addr294);
                                                                  }
                                                               }
                                                               §§goto(addr328);
                                                            }
                                                            §§goto(addr299);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr185);
                                          }
                                          §§goto(addr203);
                                       }
                                       §§goto(addr172);
                                    }
                                    §§goto(addr185);
                                 }
                                 §§goto(addr154);
                              }
                              §§goto(addr134);
                           }
                           §§goto(addr185);
                        }
                        §§goto(addr141);
                     }
                     §§goto(addr203);
                  }
                  §§goto(addr328);
               }
               return _loc5_.§_-0Ef§;
            }
         }
         else
         {
            _loc5_.stars = param2;
         }
         §§goto(addr65);
      }
   }
}
