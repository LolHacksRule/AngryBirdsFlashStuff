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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public function §=P§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§%!y§);
            if(_loc2_ || _loc3_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr44);
            }
            §§pop().§&!x§(param1);
         }
         addr44:
         if(!_loc3_)
         {
            §§push(this.§%!y§);
         }
      }
      
      public function §5!7§(param1:Array) : §7A§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:Item = null;
         var _loc3_:Item = null;
         var _loc4_:Item = null;
         var _loc5_:* = 0;
         var _loc6_:* = param1;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc6_,_loc5_));
            if(!(_loc8_ && this))
            {
               if(§§pop())
               {
                  _loc2_ = §§nextvalue(_loc5_,_loc6_);
                  if(_loc7_ || _loc3_)
                  {
                     if(_loc2_.§@§.toUpperCase() == "CATEGORYBIRDS")
                     {
                        if(_loc7_ || this)
                        {
                           this.§^7§(_loc2_.§&!X§,_loc2_.sId,_loc2_.§@§,§5m§.§<!m§,110,174);
                        }
                     }
                  }
                  continue;
               }
               if(!(_loc8_ && param1))
               {
                  if(!_loc8_)
                  {
                     if(_loc7_)
                     {
                        §§push(0);
                        if(!(_loc8_ && this))
                        {
                           _loc5_ = §§pop();
                           if(_loc7_)
                           {
                              §§push(param1);
                              if(_loc7_)
                              {
                                 _loc6_ = §§pop();
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc6_,_loc5_));
                                    if(_loc7_ || _loc2_)
                                    {
                                       if(§§pop())
                                       {
                                          _loc3_ = §§nextvalue(_loc5_,_loc6_);
                                          if(_loc7_ || param1)
                                          {
                                             if(_loc3_.§@§.toUpperCase() != "CATEGORYBACKGROUNDS")
                                             {
                                                continue;
                                             }
                                             if(_loc8_)
                                             {
                                                continue;
                                             }
                                          }
                                          this.§=P§(_loc3_.§&!X§);
                                          continue;
                                       }
                                       if(!(_loc8_ && param1))
                                       {
                                          addr157:
                                          if(_loc7_ || this)
                                          {
                                             if(_loc7_)
                                             {
                                                addr179:
                                                _loc5_ = 0;
                                                if(_loc7_)
                                                {
                                                   addr183:
                                                   _loc6_ = param1;
                                                   while(true)
                                                   {
                                                      §§push(§§hasnext(_loc6_,_loc5_));
                                                      break loop0;
                                                   }
                                                   addr198:
                                                }
                                                addr202:
                                                return this.§%!y§;
                                                addr201:
                                             }
                                             §§goto(addr202);
                                          }
                                          §§goto(addr201);
                                       }
                                       §§goto(addr202);
                                    }
                                    break loop0;
                                 }
                              }
                              §§goto(addr183);
                           }
                           §§goto(addr202);
                        }
                     }
                     §§goto(addr179);
                  }
                  §§goto(addr183);
               }
               §§goto(addr157);
            }
            break;
         }
         while(§§pop())
         {
            _loc4_ = §§nextvalue(_loc5_,_loc6_);
            if(_loc7_)
            {
               this.§%!y§.§9!r§(_loc4_);
            }
            §§goto(addr198);
         }
         §§goto(addr200);
      }
      
      public function §^7§(param1:String, param2:String, param3:String, param4:Array, param5:int = 110, param6:int = 174, param7:Boolean = false) : §7A§
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc8_:§7A§ = null;
         loop0:
         for each(_loc8_ in param4)
         {
            §§push(_loc8_.§6;§());
            if(_loc11_)
            {
               if(§§pop().§&!X§ == param1)
               {
                  if(!(_loc12_ && this))
                  {
                     §§push(_loc8_.§6;§());
                     if(!(_loc12_ && param2))
                     {
                        §§push(param2);
                        if(!(_loc12_ && param1))
                        {
                           §§pop().sId = §§pop();
                           if(_loc11_)
                           {
                              addr165:
                              _loc8_.§6;§().§@§ = param3;
                              _loc8_.show(param5,param6);
                              if(!param7)
                              {
                                 if(!_loc12_)
                                 {
                                    §6!_§.§+!e§ = _loc8_;
                                    addr155:
                                    while(true)
                                    {
                                    }
                                    addr155:
                                 }
                                 §§goto(addr155);
                              }
                              while(true)
                              {
                                 this.§%!y§ = _loc8_;
                                 loop3:
                                 while(true)
                                 {
                                    addr100:
                                    loop1:
                                    while(true)
                                    {
                                       if(this.numChildren <= 0)
                                       {
                                          while(true)
                                          {
                                             if(_loc11_ || param1)
                                             {
                                                this.addChild(_loc8_);
                                                while(_loc12_)
                                                {
                                                   §§goto(addr155);
                                                }
                                                continue loop0;
                                                addr115:
                                             }
                                          }
                                          addr105:
                                       }
                                       else
                                       {
                                          removeChildAt(0);
                                       }
                                       while(true)
                                       {
                                          if(_loc11_ || this)
                                          {
                                             continue loop1;
                                          }
                                          continue loop3;
                                       }
                                    }
                                 }
                              }
                              addr164:
                              addr166:
                              addr142:
                              addr161:
                           }
                           §§goto(addr155);
                        }
                        §§goto(addr165);
                     }
                     §§goto(addr164);
                  }
                  else
                  {
                     addr98:
                     if(true)
                     {
                        continue;
                     }
                  }
                  §§goto(addr100);
               }
               else
               {
                  _loc8_.hide();
                  if(!_loc12_)
                  {
                     if(_loc11_ || param3)
                     {
                        if(_loc11_ || this)
                        {
                           if(_loc11_)
                           {
                              §§goto(addr98);
                           }
                           else
                           {
                              §§goto(addr166);
                           }
                        }
                        §§goto(addr161);
                     }
                     §§goto(addr105);
                  }
               }
               §§goto(addr115);
            }
            §§goto(addr165);
         }
         return this.§%!y§;
      }
   }
}
