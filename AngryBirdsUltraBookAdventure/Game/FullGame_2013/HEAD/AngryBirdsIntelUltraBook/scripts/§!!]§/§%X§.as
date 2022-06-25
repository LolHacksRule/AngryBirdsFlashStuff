package §!!]§
{
   import §!!V§.AvatarCreatorPopup;
   import §<_§.§5!2§;
   import §]_§.Item;
   import flash.display.Sprite;
   
   public class §%X§ extends Sprite
   {
       
      
      public var §8r§:Avatar;
      
      public function §%X§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(!(_loc1_ && _loc2_))
         {
            while(true)
            {
               super();
               §§goto(addr73);
            }
         }
         addr73:
         while(true)
         {
            if(_loc2_ || _loc1_)
            {
               if(_loc2_ || this)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §3!F§(backgroundId:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && this)
         {
         }
         if(_loc2_ || _loc2_)
         {
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop2:
               for(§§push(this.§8r§); §§pop(); )
               {
                  while(!_loc3_)
                  {
                     while(true)
                     {
                        §§push(this.§8r§);
                        if(_loc3_)
                        {
                           break;
                        }
                        §§pop().§4!T§(backgroundId);
                        while(!(_loc2_ || _loc2_))
                        {
                        }
                        if(_loc3_)
                        {
                           continue;
                        }
                        if(_loc2_ || _loc2_)
                        {
                           if(!_loc3_)
                           {
                              break loop2;
                           }
                           continue loop0;
                        }
                        §§goto(addr92);
                     }
                     continue loop2;
                  }
                  continue loop1;
               }
               return;
            }
         }
      }
      
      public function §#E§(items:Array) : Avatar
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc7_)
         {
         }
         var birdItem:Item = null;
         var bgItem:Item = null;
         var item:Item = null;
         if(_loc8_ && this)
         {
         }
         loop0:
         while(true)
         {
            while(true)
            {
               continue loop0;
               addr46:
               if(!(_loc7_ || bgItem))
               {
                  continue;
               }
               if(false)
               {
                  loop3:
                  while(true)
                  {
                     addr57:
                     while(!(_loc8_ && birdItem))
                     {
                        if(_loc7_ || bgItem)
                        {
                           continue loop3;
                        }
                     }
                     continue loop0;
                  }
                  continue;
                  addr55:
               }
               var _loc5_:* = 0;
               var _loc6_:* = items;
               addr138:
               §§push(§§hasnext(_loc6_,_loc5_));
               if(!_loc8_)
               {
                  if(§§pop())
                  {
                     birdItem = §§nextvalue(_loc5_,_loc6_);
                     if(_loc7_)
                     {
                        addr137:
                        if(birdItem.§[L§.toUpperCase() == "CATEGORYBIRDS")
                        {
                           addr132:
                           if(_loc7_)
                           {
                              addr103:
                              this.§=W§(birdItem.§7!D§,birdItem.sId,birdItem.§[L§,AvatarCreatorPopup.sAvatars,110,174);
                              if(_loc7_ || bgItem)
                              {
                                 if(!_loc8_)
                                 {
                                    if(_loc7_)
                                    {
                                       if(false)
                                       {
                                          §§goto(addr103);
                                       }
                                       §§goto(addr138);
                                    }
                                    §§goto(addr132);
                                 }
                                 §§goto(addr103);
                              }
                              §§goto(addr132);
                           }
                           §§goto(addr137);
                        }
                        §§goto(addr138);
                     }
                     §§goto(addr132);
                  }
                  if(!(_loc8_ && items))
                  {
                     if(!_loc8_)
                     {
                        if(!_loc8_)
                        {
                           if(_loc7_ || this)
                           {
                              §§push(0);
                              if(_loc7_ || bgItem)
                              {
                                 _loc5_ = §§pop();
                                 if(!(_loc8_ && birdItem))
                                 {
                                    §§push(items);
                                    if(!(_loc8_ && bgItem))
                                    {
                                       _loc6_ = §§pop();
                                       addr253:
                                       §§push(§§hasnext(_loc6_,_loc5_));
                                       if(!_loc8_)
                                       {
                                          addr256:
                                          if(§§pop())
                                          {
                                             bgItem = §§nextvalue(_loc5_,_loc6_);
                                             if(_loc8_ && items)
                                             {
                                             }
                                             addr252:
                                             if(bgItem.§[L§.toUpperCase() == "CATEGORYBACKGROUNDS")
                                             {
                                                addr248:
                                                addr247:
                                                if(!_loc8_)
                                                {
                                                   addr227:
                                                   this.§3!F§(bgItem.§7!D§);
                                                   if(_loc7_ || items)
                                                   {
                                                      if(!(_loc8_ && bgItem))
                                                      {
                                                         if(!_loc8_)
                                                         {
                                                            if(false)
                                                            {
                                                               §§goto(addr227);
                                                            }
                                                            §§goto(addr253);
                                                         }
                                                         §§goto(addr248);
                                                      }
                                                      §§goto(addr227);
                                                   }
                                                   §§goto(addr247);
                                                }
                                                §§goto(addr252);
                                             }
                                             §§goto(addr253);
                                          }
                                          if(!_loc8_)
                                          {
                                             addr259:
                                             if(!_loc8_)
                                             {
                                                if(!(_loc8_ && bgItem))
                                                {
                                                   if(_loc7_)
                                                   {
                                                      addr274:
                                                      _loc5_ = 0;
                                                      if(!(_loc8_ && birdItem))
                                                      {
                                                         addr283:
                                                         _loc6_ = items;
                                                         addr322:
                                                         for each(item in _loc6_)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               addr313:
                                                               this.§8r§.§&3§(item);
                                                               addr321:
                                                               if(_loc7_)
                                                               {
                                                                  if(!_loc8_)
                                                                  {
                                                                     addr311:
                                                                     if(false)
                                                                     {
                                                                        §§goto(addr313);
                                                                     }
                                                                     §§goto(addr322);
                                                                  }
                                                                  §§goto(addr321);
                                                               }
                                                               addr319:
                                                               §§goto(addr319);
                                                            }
                                                            §§goto(addr311);
                                                         }
                                                         addr325:
                                                         if(_loc8_)
                                                         {
                                                         }
                                                         return this.§8r§;
                                                         addr282:
                                                         addr324:
                                                      }
                                                      §§goto(addr325);
                                                   }
                                                }
                                                §§goto(addr325);
                                             }
                                             §§goto(addr282);
                                          }
                                          §§goto(addr324);
                                       }
                                       §§goto(addr322);
                                    }
                                 }
                                 §§goto(addr283);
                              }
                           }
                           §§goto(addr274);
                        }
                     }
                     §§goto(addr283);
                  }
                  §§goto(addr259);
               }
               §§goto(addr256);
            }
         }
      }
      
      public function §=W§(characterId:String, characterSid:String, characterCategory:String, avatarsArray:Array, showX:int = 110, showY:int = 174, fromRenderer:Boolean = false) : Avatar
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         if(_loc11_ || characterSid)
         {
         }
         var avatar:Avatar = null;
         if(_loc12_)
         {
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               addr93:
               while(true)
               {
                  continue loop0;
                  addr53:
                  if(_loc11_ || characterCategory)
                  {
                     continue loop1;
                  }
               }
            }
         }
      }
   }
}
