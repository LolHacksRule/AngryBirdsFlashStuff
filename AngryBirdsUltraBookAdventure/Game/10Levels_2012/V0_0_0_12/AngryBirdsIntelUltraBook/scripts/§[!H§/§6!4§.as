package §[!H§
{
   import §+!1§.AvatarCreatorPopup;
   import §3w§.§1!!§;
   import §^B§.Item;
   import flash.display.Sprite;
   
   public class §6!4§ extends Sprite
   {
       
      
      public var §4&§:Avatar;
      
      public function §6!4§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && this)
         {
         }
         if(_loc2_ || this)
         {
            while(true)
            {
               super();
               while(!(_loc1_ && _loc2_))
               {
                  if(_loc1_)
                  {
                     continue;
                  }
                  return;
                  addr62:
               }
            }
         }
         §§goto(addr62);
      }
      
      public function §]!;§(backgroundId:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(!(_loc2_ && backgroundId))
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  loop2:
                  for(§§push(this.§4&§); §§pop(); )
                  {
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           §§push(this.§4&§);
                           if(!_loc3_)
                           {
                              break;
                           }
                           §§pop().§+!U§(backgroundId);
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              continue loop4;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                     continue loop1;
                  }
                  §§goto(addr29);
               }
            }
         }
         addr29:
      }
      
      public function §4q§(items:Array) : Avatar
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc7_)
         {
         }
         var birdItem:Item = null;
         var bgItem:Item = null;
         var item:Item = null;
         if(_loc8_ || items)
         {
            while(true)
            {
            }
            addr60:
         }
         loop1:
         while(true)
         {
            while(_loc8_)
            {
               while(true)
               {
                  while(!_loc8_)
                  {
                  }
                  if(_loc7_)
                  {
                     break;
                  }
                  if(_loc7_)
                  {
                     continue loop1;
                  }
                  if(false)
                  {
                     continue;
                  }
                  var _loc5_:* = 0;
                  var _loc6_:* = items;
                  while(true)
                  {
                     §§push(§§hasnext(_loc6_,_loc5_));
                     if(!_loc7_)
                     {
                        if(!§§pop())
                        {
                           if(_loc8_ || birdItem)
                           {
                              if(!(_loc7_ && bgItem))
                              {
                                 if(!_loc7_)
                                 {
                                    if(_loc8_)
                                    {
                                       addr270:
                                       §§push(0);
                                       if(!(_loc7_ && birdItem))
                                       {
                                          _loc5_ = §§pop();
                                          if(_loc8_)
                                          {
                                             addr180:
                                             §§push(items);
                                             if(_loc8_ || this)
                                             {
                                                _loc6_ = §§pop();
                                                addr244:
                                                §§push(§§hasnext(_loc6_,_loc5_));
                                                if(!_loc7_)
                                                {
                                                   break;
                                                }
                                                loop18:
                                                while(§§pop())
                                                {
                                                   item = §§nextvalue(_loc5_,_loc6_);
                                                   if(_loc8_ || birdItem)
                                                   {
                                                   }
                                                   loop19:
                                                   while(true)
                                                   {
                                                      addr297:
                                                      while(true)
                                                      {
                                                         this.§4&§.§1$§(item);
                                                         continue loop19;
                                                      }
                                                      continue loop18;
                                                   }
                                                }
                                                addr326:
                                                if(!(_loc7_ && items))
                                                {
                                                   addr334:
                                                }
                                                return this.§4&§;
                                                addr325:
                                                addr324:
                                             }
                                             addr274:
                                             _loc6_ = §§pop();
                                             §§goto(addr323);
                                          }
                                          addr273:
                                          §§goto(addr274);
                                          §§push(items);
                                       }
                                       _loc5_ = §§pop();
                                       if(!_loc7_)
                                       {
                                          §§goto(addr273);
                                       }
                                       §§goto(addr326);
                                    }
                                    §§goto(addr334);
                                 }
                                 addr261:
                                 if(_loc8_ || bgItem)
                                 {
                                    §§goto(addr270);
                                    §§push(0);
                                 }
                                 §§goto(addr326);
                              }
                              §§goto(addr180);
                           }
                           §§goto(addr325);
                        }
                        else
                        {
                           birdItem = §§nextvalue(_loc5_,_loc6_);
                           if(!(_loc7_ && items))
                           {
                              while(birdItem.§-!@§.toUpperCase() == "CATEGORYBIRDS")
                              {
                                 loop7:
                                 while(!(_loc7_ && birdItem))
                                 {
                                    while(true)
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          addr94:
                                          while(true)
                                          {
                                             this.§!!=§(birdItem.§<!B§,birdItem.sId,birdItem.§-!@§,AvatarCreatorPopup.sAvatars,110,174);
                                             continue loop9;
                                          }
                                          continue loop7;
                                       }
                                    }
                                 }
                              }
                              continue;
                           }
                           §§goto(addr130);
                        }
                     }
                     break;
                  }
                  while(true)
                  {
                     if(!§§pop())
                     {
                        if(_loc8_ || bgItem)
                        {
                           if(_loc8_)
                           {
                              if(_loc8_)
                              {
                                 §§goto(addr261);
                              }
                              §§goto(addr334);
                           }
                        }
                        §§goto(addr326);
                     }
                     else
                     {
                        bgItem = §§nextvalue(_loc5_,_loc6_);
                        if(_loc8_)
                        {
                           loop13:
                           while(bgItem.§-!@§.toUpperCase() == "CATEGORYBACKGROUNDS")
                           {
                              if(_loc8_ || this)
                              {
                              }
                              loop14:
                              while(!_loc7_)
                              {
                                 loop17:
                                 while(true)
                                 {
                                    if(_loc7_ && this)
                                    {
                                       continue loop14;
                                    }
                                    if(_loc7_ && bgItem)
                                    {
                                       continue;
                                    }
                                    if(true)
                                    {
                                       break loop13;
                                    }
                                    while(true)
                                    {
                                       this.§]!;§(bgItem.§<!B§);
                                       continue loop17;
                                    }
                                 }
                              }
                           }
                           continue;
                        }
                        while(true)
                        {
                           §§goto(addr211);
                        }
                     }
                  }
                  §§goto(addr324);
               }
            }
            §§goto(addr60);
         }
      }
      
      public function §!!=§(characterId:String, characterSid:String, characterCategory:String, avatarsArray:Array, showX:int = 110, showY:int = 174, fromRenderer:Boolean = false) : Avatar
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         if(_loc12_ || characterId)
         {
         }
         var avatar:Avatar = null;
         if(!(_loc11_ && characterCategory))
         {
            while(true)
            {
            }
            addr94:
         }
         loop1:
         while(true)
         {
            loop2:
            for(; !_loc11_; if(_loc12_ || characterId)
            {
               if(false)
               {
                  §§goto(addr57);
               }
               var _loc9_:int = 0;
               var _loc10_:* = avatarsArray;
               addr327:
               for each(avatar in _loc10_)
               {
                  if(_loc12_ || characterCategory)
                  {
                     addr326:
                     if(avatar.§?D§().§<!B§ == characterId)
                     {
                        addr315:
                        avatar.§?D§().sId = characterSid;
                        addr323:
                        addr324:
                        addr300:
                        addr316:
                        §§push(avatar.§?D§());
                        if(_loc12_)
                        {
                           if(!_loc11_)
                           {
                              §§push(characterCategory);
                              if(_loc12_ || characterCategory)
                              {
                                 §§pop().§-!@§ = §§pop();
                                 avatar.show(showX,showY);
                                 addr280:
                                 addr297:
                                 if(!_loc11_)
                                 {
                                    addr266:
                                    if(_loc12_)
                                    {
                                       §§push(fromRenderer);
                                       if(_loc12_)
                                       {
                                          §§push(!§§pop());
                                       }
                                       if(§§pop())
                                       {
                                          addr248:
                                          if(!(_loc11_ && characterId))
                                          {
                                             if(!(_loc11_ && characterId))
                                             {
                                                §1!!§.§1!S§ = avatar;
                                                addr228:
                                                this.§4&§ = avatar;
                                                addr232:
                                                addr235:
                                                addr241:
                                                if(this.numChildren <= 0)
                                                {
                                                   addr170:
                                                   if(_loc12_)
                                                   {
                                                      if(!_loc11_)
                                                      {
                                                         if(!_loc11_)
                                                         {
                                                            if(!_loc11_)
                                                            {
                                                               if(_loc12_ || this)
                                                               {
                                                                  addr186:
                                                                  if(!_loc11_)
                                                                  {
                                                                     if(_loc12_ || this)
                                                                     {
                                                                        if(!_loc11_)
                                                                        {
                                                                           this.addChild(avatar);
                                                                           addr152:
                                                                           if(_loc12_)
                                                                           {
                                                                              addr130:
                                                                              §§goto(addr327);
                                                                           }
                                                                           §§goto(addr266);
                                                                        }
                                                                        §§goto(addr232);
                                                                     }
                                                                     addr220:
                                                                  }
                                                                  if(!(_loc11_ && characterCategory))
                                                                  {
                                                                     if(_loc12_ || characterCategory)
                                                                     {
                                                                        §§goto(addr232);
                                                                     }
                                                                     §§goto(addr235);
                                                                  }
                                                                  addr225:
                                                                  if(!_loc11_)
                                                                  {
                                                                     removeChildAt(0);
                                                                     §§goto(addr220);
                                                                  }
                                                                  §§goto(addr326);
                                                               }
                                                               §§goto(addr323);
                                                            }
                                                            §§goto(addr324);
                                                         }
                                                         §§goto(addr280);
                                                      }
                                                      §§goto(addr248);
                                                   }
                                                   §§goto(addr241);
                                                }
                                                §§goto(addr225);
                                                addr263:
                                             }
                                             §§goto(addr297);
                                          }
                                          §§goto(addr280);
                                       }
                                       §§goto(addr228);
                                    }
                                    §§goto(addr300);
                                 }
                                 §§goto(addr316);
                              }
                              §§goto(addr315);
                           }
                           §§goto(addr326);
                        }
                        addr314:
                        §§goto(addr314);
                     }
                     avatar.hide();
                     addr137:
                     if(!_loc11_)
                     {
                        if(_loc12_ || this)
                        {
                           if(!_loc11_)
                           {
                              if(_loc12_ || characterId)
                              {
                                 if(_loc12_)
                                 {
                                    if(false)
                                    {
                                       §§goto(addr130);
                                    }
                                    §§goto(addr327);
                                 }
                                 §§goto(addr186);
                              }
                              §§goto(addr152);
                           }
                           §§goto(addr137);
                        }
                        §§goto(addr263);
                     }
                     §§goto(addr170);
                  }
                  §§goto(addr228);
               }
               if(_loc12_ || this)
               {
               }
               return this.§4&§;
            })
            {
               loop3:
               while(_loc12_)
               {
                  loop4:
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        loop6:
                        while(_loc12_)
                        {
                           while(true)
                           {
                              while(true)
                              {
                                 if(_loc12_ || characterSid)
                                 {
                                    if(_loc11_)
                                    {
                                       break;
                                    }
                                    if(_loc12_ || characterId)
                                    {
                                       if(!_loc11_)
                                       {
                                          continue loop2;
                                       }
                                       continue loop5;
                                    }
                                    continue;
                                 }
                                 continue loop6;
                              }
                              continue loop3;
                           }
                           continue loop2;
                        }
                        continue loop4;
                     }
                  }
               }
               continue loop1;
            }
            §§goto(addr94);
         }
      }
   }
}
