package §_-Mc§
{
   import §_-1N§.§_-Kz§;
   import §_-4§.Item;
   import §_-y7§.§_-xe§;
   import flash.display.Sprite;
   
   public class §in§ extends Sprite
   {
       
      
      public var §_-C5§:§_-059§;
      
      public function §in§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      public function §_-07f§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§_-C5§);
            if(_loc3_ || _loc2_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr43:
                     this.§_-C5§.§_-QQ§(param1);
                  }
               }
               return;
            }
         }
         §§goto(addr43);
      }
      
      public function §_-rJ§(param1:Array) : §_-059§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:Item = null;
         var _loc3_:Item = null;
         var _loc4_:Item = null;
         var _loc5_:* = 0;
         var _loc6_:* = param1;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc6_,_loc5_));
            if(_loc8_)
            {
               if(§§pop())
               {
                  _loc2_ = §§nextvalue(_loc5_,_loc6_);
                  if(_loc8_ || param1)
                  {
                     if(_loc2_.§_-4k§.toUpperCase() == "CATEGORYBIRDS")
                     {
                        if(_loc8_ || _loc2_)
                        {
                           this.§_-071§(_loc2_.§_-1h§,_loc2_.sId,_loc2_.§_-4k§,§_-Kz§.§_-017§,110,174);
                        }
                     }
                  }
                  continue;
               }
               if(_loc8_)
               {
                  if(!_loc7_)
                  {
                     if(_loc8_)
                     {
                        addr150:
                        §§push(0);
                        if(!_loc7_)
                        {
                           _loc5_ = §§pop();
                           if(_loc8_)
                           {
                              §§push(param1);
                              if(!_loc7_)
                              {
                                 _loc6_ = §§pop();
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc6_,_loc5_));
                                    if(!_loc7_)
                                    {
                                       break loop0;
                                    }
                                    break;
                                 }
                                 loop2:
                                 while(§§pop())
                                 {
                                    _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                    if(!_loc7_)
                                    {
                                       this.§_-C5§.§_-QZ§(_loc4_);
                                    }
                                    while(true)
                                    {
                                       continue loop2;
                                    }
                                 }
                                 addr173:
                                 return this.§_-C5§;
                                 addr172:
                                 addr171:
                                 addr122:
                                 addr170:
                              }
                              addr154:
                              _loc6_ = §§pop();
                              §§goto(addr169);
                           }
                           addr153:
                           §§goto(addr154);
                           §§push(param1);
                        }
                        _loc5_ = §§pop();
                        if(_loc8_)
                        {
                           §§goto(addr153);
                        }
                        §§goto(addr172);
                     }
                     addr149:
                     §§goto(addr150);
                     §§push(0);
                  }
                  §§goto(addr153);
               }
               if(!(_loc7_ && _loc3_))
               {
                  if(_loc8_)
                  {
                     §§goto(addr149);
                  }
               }
               §§goto(addr173);
            }
            break;
         }
         while(true)
         {
            if(!§§pop())
            {
               if(_loc8_)
               {
                  §§goto(addr128);
               }
               §§goto(addr171);
            }
            else
            {
               _loc3_ = §§nextvalue(_loc5_,_loc6_);
               if(_loc8_)
               {
                  if(_loc3_.§_-4k§.toUpperCase() == "CATEGORYBACKGROUNDS")
                  {
                     if(_loc8_)
                     {
                        addr118:
                        this.§_-07f§(_loc3_.§_-1h§);
                     }
                  }
                  §§goto(addr122);
               }
               §§goto(addr118);
            }
         }
      }
      
      public function §_-071§(param1:String, param2:String, param3:String, param4:Array, param5:int = 110, param6:int = 174, param7:Boolean = false) : §_-059§
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc8_:§_-059§ = null;
         loop0:
         for each(_loc8_ in param4)
         {
            §§push(_loc8_.§_-SZ§());
            if(!_loc12_)
            {
               if(§§pop().§_-1h§ == param1)
               {
                  if(!(_loc12_ && param2))
                  {
                     §§push(_loc8_.§_-SZ§());
                     if(!_loc12_)
                     {
                        §§push(param2);
                        if(_loc11_ || param2)
                        {
                           §§pop().sId = §§pop();
                           if(!_loc12_)
                           {
                              addr165:
                              _loc8_.§_-SZ§().§_-4k§ = param3;
                              loop7:
                              while(true)
                              {
                                 _loc8_.show(param5,param6);
                                 addr154:
                                 addr161:
                                 while(!(_loc11_ || param3))
                                 {
                                    continue loop7;
                                 }
                                 while(true)
                                 {
                                    if(!param7)
                                    {
                                       addr145:
                                       while(true)
                                       {
                                          §_-xe§.§_-0Ec§ = _loc8_;
                                          addr148:
                                          while(true)
                                          {
                                          }
                                       }
                                       addr145:
                                    }
                                    while(true)
                                    {
                                       this.§_-C5§ = _loc8_;
                                       loop6:
                                       while(true)
                                       {
                                          addr69:
                                          loop1:
                                          while(true)
                                          {
                                             if(this.numChildren <= 0)
                                             {
                                                if(!(_loc12_ && this))
                                                {
                                                   if(_loc11_ || param3)
                                                   {
                                                      this.addChild(_loc8_);
                                                      while(true)
                                                      {
                                                         if(!_loc12_)
                                                         {
                                                            if(!_loc12_)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               if(_loc12_ && param1)
                                                               {
                                                                  continue loop6;
                                                               }
                                                               if(_loc11_ || param3)
                                                               {
                                                                  continue loop1;
                                                               }
                                                               §§goto(addr145);
                                                            }
                                                            addr112:
                                                         }
                                                         §§goto(addr148);
                                                      }
                                                      addr101:
                                                      continue loop0;
                                                      addr101:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr154);
                                                   }
                                                }
                                                §§goto(addr101);
                                             }
                                             else
                                             {
                                                removeChildAt(0);
                                             }
                                             §§goto(addr112);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr145);
                        }
                     }
                     §§goto(addr165);
                  }
                  §§goto(addr161);
               }
               else
               {
                  _loc8_.hide();
                  if(_loc11_)
                  {
                     if(true)
                     {
                        continue;
                     }
                     §§goto(addr69);
                  }
               }
               §§goto(addr101);
            }
            §§goto(addr165);
         }
         return this.§_-C5§;
      }
   }
}
