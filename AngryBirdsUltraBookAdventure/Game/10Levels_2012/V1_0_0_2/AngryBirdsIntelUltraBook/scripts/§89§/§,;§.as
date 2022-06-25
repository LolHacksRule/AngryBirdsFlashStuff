package §89§
{
   import §1e§.§5m§;
   import §7r§.Item;
   import §`!%§.§6!_§;
   import flash.display.Sprite;
   
   public class §,;§ extends Sprite
   {
       
      
      public var §%!y§:§7A§;
      
      public function §,;§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public function §=P§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§%!y§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc3_ || param1)
                  {
                     addr43:
                     this.§%!y§.§&!x§(param1);
                  }
               }
               return;
            }
         }
         §§goto(addr43);
      }
      
      public function §5!7§(param1:Array) : §7A§
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
            if(!_loc7_)
            {
               if(§§pop())
               {
                  _loc2_ = §§nextvalue(_loc5_,_loc6_);
                  if(_loc8_ || param1)
                  {
                     if(_loc2_.§@§.toUpperCase() == "CATEGORYBIRDS")
                     {
                        if(_loc8_ || param1)
                        {
                           this.§^7§(_loc2_.§&!X§,_loc2_.sId,_loc2_.§@§,§5m§.§<!m§,110,174);
                        }
                     }
                  }
                  continue;
               }
               if(!(_loc7_ && param1))
               {
                  if(!_loc7_)
                  {
                     if(!(_loc7_ && _loc2_))
                     {
                        addr185:
                        §§push(0);
                        if(_loc8_ || param1)
                        {
                           _loc5_ = §§pop();
                           if(_loc8_ || this)
                           {
                              §§push(param1);
                              if(_loc8_)
                              {
                                 _loc6_ = §§pop();
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc6_,_loc5_));
                                    if(_loc8_ || param1)
                                    {
                                       break loop0;
                                    }
                                    break;
                                 }
                                 loop2:
                                 while(§§pop())
                                 {
                                    _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                    if(_loc8_ || _loc3_)
                                    {
                                       this.§%!y§.§9!r§(_loc4_);
                                    }
                                    while(true)
                                    {
                                       continue loop2;
                                    }
                                 }
                                 addr223:
                                 return this.§%!y§;
                                 addr222:
                                 addr221:
                                 addr152:
                                 addr220:
                              }
                              addr199:
                              _loc6_ = §§pop();
                              §§goto(addr219);
                           }
                           addr198:
                           §§goto(addr199);
                           §§push(param1);
                        }
                        _loc5_ = §§pop();
                        if(!_loc7_)
                        {
                           §§goto(addr198);
                        }
                        §§goto(addr222);
                     }
                     §§goto(addr223);
                  }
                  §§goto(addr198);
               }
               if(!(_loc7_ && _loc3_))
               {
                  if(_loc8_ || _loc2_)
                  {
                     §§goto(addr185);
                     §§push(0);
                  }
                  §§goto(addr223);
               }
               §§goto(addr198);
            }
            break;
         }
         while(true)
         {
            if(!§§pop())
            {
               if(!(_loc7_ && _loc2_))
               {
                  §§goto(addr168);
               }
               §§goto(addr221);
            }
            else
            {
               _loc3_ = §§nextvalue(_loc5_,_loc6_);
               if(_loc8_ || _loc3_)
               {
                  if(_loc3_.§@§.toUpperCase() == "CATEGORYBACKGROUNDS")
                  {
                     if(!(_loc7_ && _loc2_))
                     {
                        this.§=P§(_loc3_.§&!X§);
                     }
                  }
               }
               §§goto(addr152);
            }
         }
      }
      
      public function §^7§(param1:String, param2:String, param3:String, param4:Array, param5:int = 110, param6:int = 174, param7:Boolean = false) : §7A§
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc8_:§7A§ = null;
         loop0:
         for each(_loc8_ in param4)
         {
            §§push(_loc8_.§6;§());
            if(!_loc11_)
            {
               if(§§pop().§&!X§ == param1)
               {
                  if(_loc12_)
                  {
                     §§push(_loc8_.§6;§());
                     if(_loc12_ || param2)
                     {
                        addr50:
                        §§push(param2);
                        if(!_loc11_)
                        {
                           §§pop().sId = §§pop();
                           if(!(_loc11_ && param1))
                           {
                              addr166:
                              _loc8_.§6;§().§@§ = param3;
                              while(true)
                              {
                                 _loc8_.show(param5,param6);
                              }
                              addr167:
                           }
                           loop8:
                           while(true)
                           {
                              if(!param7)
                              {
                                 while(true)
                                 {
                                    §6!_§.§+!e§ = _loc8_;
                                    addr156:
                                    while(true)
                                    {
                                    }
                                 }
                                 addr153:
                              }
                              while(true)
                              {
                                 this.§%!y§ = _loc8_;
                                 loop6:
                                 while(true)
                                 {
                                    addr92:
                                    loop1:
                                    while(true)
                                    {
                                       if(this.numChildren <= 0)
                                       {
                                          if(!(_loc11_ && param2))
                                          {
                                             if(_loc11_)
                                             {
                                                continue loop8;
                                             }
                                             if(!(_loc11_ && param3))
                                             {
                                                this.addChild(_loc8_);
                                                while(_loc11_)
                                                {
                                                }
                                                addr116:
                                                continue loop0;
                                                addr116:
                                             }
                                             else
                                             {
                                                §§goto(addr167);
                                             }
                                          }
                                          §§goto(addr116);
                                       }
                                       else
                                       {
                                          removeChildAt(0);
                                          while(true)
                                          {
                                             if(!_loc12_)
                                             {
                                                continue loop6;
                                             }
                                             if(!(_loc11_ && param3))
                                             {
                                                continue loop1;
                                             }
                                             §§goto(addr153);
                                          }
                                          addr125:
                                       }
                                       §§goto(addr156);
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr166);
                  }
                  else
                  {
                     addr90:
                     if(true)
                     {
                        continue;
                     }
                  }
                  §§goto(addr92);
               }
               else
               {
                  _loc8_.hide();
                  if(_loc12_ || this)
                  {
                     if(_loc12_ || this)
                     {
                        §§goto(addr90);
                     }
                     §§goto(addr125);
                  }
               }
               §§goto(addr116);
            }
            §§goto(addr50);
         }
         return this.§%!y§;
      }
   }
}
