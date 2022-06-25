package §8!P§
{
   import §&=§.Item;
   import §@_§.§!T§;
   import §^c§.§+-§;
   import flash.display.Sprite;
   
   public class §5!n§ extends Sprite
   {
       
      
      public var §]!S§:§@!=§;
      
      public function §5!n§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public function §#!-§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§]!S§);
            if(!(_loc2_ && this))
            {
               if(!§§pop())
               {
               }
               §§goto(addr45);
            }
            §§pop().§<d§(param1);
         }
         addr45:
         if(_loc3_)
         {
            §§push(this.§]!S§);
         }
      }
      
      public function §0Z§(param1:Array) : §@!=§
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
                  if(_loc8_)
                  {
                     if(_loc2_.§5H§.toUpperCase() != "CATEGORYBIRDS")
                     {
                        continue;
                     }
                     if(!(_loc8_ || _loc3_))
                     {
                        continue;
                     }
                  }
                  this.§ r§(_loc2_.§49§,_loc2_.sId,_loc2_.§5H§,§!T§.§>'§,110,174);
                  continue;
               }
               if(!(_loc7_ && _loc3_))
               {
                  if(_loc8_)
                  {
                     if(_loc8_ || _loc3_)
                     {
                        §§push(0);
                        if(_loc8_ || _loc3_)
                        {
                           _loc5_ = §§pop();
                           if(_loc8_ || param1)
                           {
                              addr112:
                              §§push(param1);
                              if(_loc8_)
                              {
                                 _loc6_ = §§pop();
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc6_,_loc5_));
                                    if(_loc8_)
                                    {
                                       if(§§pop())
                                       {
                                          _loc3_ = §§nextvalue(_loc5_,_loc6_);
                                          if(_loc8_ || param1)
                                          {
                                             if(_loc3_.§5H§.toUpperCase() != "CATEGORYBACKGROUNDS")
                                             {
                                                continue;
                                             }
                                             if(!_loc8_)
                                             {
                                                continue;
                                             }
                                          }
                                          this.§#!-§(_loc3_.§49§);
                                          continue;
                                       }
                                       if(!(_loc7_ && _loc2_))
                                       {
                                          addr153:
                                          if(_loc8_)
                                          {
                                             §§goto(addr156);
                                          }
                                       }
                                       §§goto(addr178);
                                    }
                                    break loop0;
                                 }
                              }
                              §§goto(addr179);
                           }
                           addr156:
                           if(_loc8_)
                           {
                              addr160:
                              _loc5_ = 0;
                              addr159:
                              if(!(_loc7_ && param1))
                              {
                                 addr179:
                                 _loc6_ = param1;
                                 addr178:
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc6_,_loc5_));
                                    break loop0;
                                 }
                                 addr199:
                              }
                           }
                           return this.§]!S§;
                        }
                        §§goto(addr160);
                     }
                     §§goto(addr159);
                  }
                  §§goto(addr112);
               }
               §§goto(addr153);
            }
            break;
         }
         while(true)
         {
            if(§§pop())
            {
               _loc4_ = §§nextvalue(_loc5_,_loc6_);
               if(!(_loc7_ && _loc3_))
               {
                  this.§]!S§.§%D§(_loc4_);
               }
               continue;
            }
            §§goto(addr179);
         }
      }
      
      public function § r§(param1:String, param2:String, param3:String, param4:Array, param5:int = 110, param6:int = 174, param7:Boolean = false) : §@!=§
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc8_:§@!=§ = null;
         loop0:
         for each(_loc8_ in param4)
         {
            §§push(_loc8_.§>!!§());
            if(_loc12_)
            {
               if(§§pop().§49§ == param1)
               {
                  if(_loc12_)
                  {
                     §§push(_loc8_.§>!!§());
                     if(!(_loc11_ && this))
                     {
                        addr50:
                        §§push(param2);
                        if(!(_loc11_ && param2))
                        {
                           §§pop().sId = §§pop();
                           if(!_loc11_)
                           {
                              addr166:
                              _loc8_.§>!!§().§5H§ = param3;
                              while(true)
                              {
                                 _loc8_.show(param5,param6);
                                 loop2:
                                 while(true)
                                 {
                                    if(!param7)
                                    {
                                       while(true)
                                       {
                                          §+-§.§5!0§ = _loc8_;
                                          addr156:
                                          while(true)
                                          {
                                          }
                                       }
                                       addr153:
                                    }
                                    while(true)
                                    {
                                       this.§]!S§ = _loc8_;
                                       continue loop2;
                                    }
                                 }
                              }
                              addr167:
                           }
                           while(true)
                           {
                              addr94:
                              loop1:
                              while(true)
                              {
                                 if(this.numChildren <= 0)
                                 {
                                    while(true)
                                    {
                                       if(!_loc11_)
                                       {
                                          this.addChild(_loc8_);
                                          while(_loc11_ && this)
                                          {
                                             §§goto(addr153);
                                          }
                                          continue loop0;
                                          addr111:
                                          addr104:
                                       }
                                       addr118:
                                       while(true)
                                       {
                                          if(_loc12_ || param2)
                                          {
                                             if(!_loc11_)
                                             {
                                                continue loop1;
                                             }
                                             §§goto(addr167);
                                          }
                                       }
                                       §§goto(addr132);
                                    }
                                    addr99:
                                 }
                                 else
                                 {
                                    removeChildAt(0);
                                 }
                                 §§goto(addr118);
                              }
                           }
                        }
                     }
                     §§goto(addr166);
                  }
                  §§goto(addr111);
               }
               else
               {
                  _loc8_.hide();
                  if(_loc12_)
                  {
                     if(!(_loc11_ && param3))
                     {
                        if(_loc12_ || param3)
                        {
                           if(true)
                           {
                              continue;
                           }
                           §§goto(addr94);
                        }
                        §§goto(addr156);
                     }
                     §§goto(addr99);
                  }
               }
               §§goto(addr104);
            }
            §§goto(addr50);
         }
         return this.§]!S§;
      }
   }
}
