package §5!]§
{
   import §"!i§.FriendListItemVO;
   import §6v§.ProfilePicture;
   import flash.display.Sprite;
   
   public class BasePlate extends Sprite
   {
      
      public static var sCachedProfileImages:Object;
      
      {
         var sCachedProfileImages:Boolean = false;
         var _loc2_:Boolean = true;
         if(sCachedProfileImages && sCachedProfileImages)
         {
         }
         do
         {
            sCachedProfileImages = {};
         }
         while(sCachedProfileImages);
         
      }
      
      protected var §+p§:FriendListItemVO;
      
      protected var §[!]§:ProfilePicture;
      
      public function BasePlate()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc2_)
         {
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     rotation = -90;
                     while(true)
                     {
                        while(_loc2_)
                        {
                           y = 180;
                           while(_loc2_)
                           {
                              if(!_loc1_)
                              {
                                 if(!_loc1_)
                                 {
                                    if(!(_loc1_ && this))
                                    {
                                       continue loop1;
                                    }
                                    continue;
                                    continue;
                                 }
                                 continue loop0;
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function set data(value:FriendListItemVO) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && value)
         {
         }
         if(!(_loc3_ && value))
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  this.§+p§ = value;
                  while(true)
                  {
                     addr97:
                     while(true)
                     {
                        this.update();
                        continue loop1;
                     }
                     addr58:
                     if(!(_loc3_ && value))
                     {
                        return;
                        addr65:
                     }
                  }
               }
               if(!(_loc2_ || value))
               {
                  continue;
               }
               §§goto(addr94);
            }
         }
         §§goto(addr94);
      }
      
      public function get data() : FriendListItemVO
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
         }
         if(!_loc2_)
         {
         }
         return this.§+p§;
      }
      
      public function update() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc1_)
         {
         }
         if(!_loc1_)
         {
         }
      }
      
      protected function get §6!D§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
         }
         if(_loc1_ || this)
         {
         }
         return this.data.userId == FriendItemRenderer.sUserId;
      }
      
      protected function §-2§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(!_loc3_)
         {
            if(_loc2_)
            {
               §§push(this.§[!]§);
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  loop1:
                  while(true)
                  {
                     §§push(§§pop());
                     loop2:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        loop3:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 §§pop();
                                 addr290:
                                 loop28:
                                 while(true)
                                 {
                                    §§push(this.§[!]§);
                                    if(_loc2_)
                                    {
                                       §§push(§§pop().parent == this);
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          §§push(Boolean(§§pop()));
                                          while(true)
                                          {
                                             loop6:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                loop7:
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   loop8:
                                                   while(_loc2_ || _loc3_)
                                                   {
                                                      if(!(_loc2_ || _loc1_))
                                                      {
                                                         continue loop2;
                                                      }
                                                      if(§§pop())
                                                      {
                                                         loop9:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            if(_loc2_)
                                                            {
                                                               §§push(this.§[!]§);
                                                               loop10:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() == sCachedProfileImages[this.data.userId]);
                                                                  loop11:
                                                                  while(!_loc3_)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     while(true)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              §§goto(addr238);
                                                                           }
                                                                           §§push(this.§[!]§);
                                                                           if(_loc2_)
                                                                           {
                                                                              continue loop10;
                                                                           }
                                                                           addr423:
                                                                           addr422:
                                                                           §§push(5);
                                                                           while(true)
                                                                           {
                                                                              §§pop().x = §§pop();
                                                                              addr424:
                                                                              loop21:
                                                                              while(true)
                                                                              {
                                                                                 addr411:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc3_ && this))
                                                                                    {
                                                                                       break loop9;
                                                                                    }
                                                                                    continue loop21;
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr122:
                                                                           if(_loc3_ && _loc1_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           §§push(Boolean(§§pop()));
                                                                           loop17:
                                                                           while(true)
                                                                           {
                                                                              loop18:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       if(_loc3_ && _loc3_)
                                                                                       {
                                                                                          continue loop28;
                                                                                       }
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          removeChild(this.§[!]§);
                                                                                          if(!(_loc3_ && _loc1_))
                                                                                          {
                                                                                             if(_loc2_ || this)
                                                                                             {
                                                                                                this.§[!]§ = null;
                                                                                                if(_loc2_)
                                                                                                {
                                                                                                   loop19:
                                                                                                   while(!_loc3_)
                                                                                                   {
                                                                                                      if(!(_loc3_ && _loc2_))
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Boolean(sCachedProfileImages[this.data.userId]));
                                                                                                            if(!_loc2_)
                                                                                                            {
                                                                                                               continue loop18;
                                                                                                            }
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               addr35:
                                                                                                               if(!(_loc2_ || this))
                                                                                                               {
                                                                                                                  while(_loc2_ || _loc3_)
                                                                                                                  {
                                                                                                                     if(_loc3_ && this)
                                                                                                                     {
                                                                                                                        continue loop4;
                                                                                                                     }
                                                                                                                     §§push(§§pop());
                                                                                                                     if(!(_loc3_ && _loc2_))
                                                                                                                     {
                                                                                                                        if(!(_loc2_ || _loc1_))
                                                                                                                        {
                                                                                                                           continue loop8;
                                                                                                                        }
                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                     }
                                                                                                                     if(!(_loc2_ || this))
                                                                                                                     {
                                                                                                                        continue loop7;
                                                                                                                     }
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        continue loop17;
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        if(!(_loc3_ && this))
                                                                                                                        {
                                                                                                                           §§push(this.§[!]§);
                                                                                                                           if(!(_loc2_ || this))
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§push(§§pop().parent == this);
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr422);
                                                                                                                     §§goto(addr35);
                                                                                                                  }
                                                                                                                  continue loop9;
                                                                                                                  addr166:
                                                                                                               }
                                                                                                               if(!(_loc2_ || _loc3_))
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  continue loop1;
                                                                                                               }
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     if(_loc2_)
                                                                                                                     {
                                                                                                                        if(true)
                                                                                                                        {
                                                                                                                           addChild(this.§[!]§ = sCachedProfileImages[this.data.userId]);
                                                                                                                           if(!(_loc2_ || _loc1_))
                                                                                                                           {
                                                                                                                              addr378:
                                                                                                                              loop25:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc3_)
                                                                                                                                    {
                                                                                                                                       break loop18;
                                                                                                                                    }
                                                                                                                                    addr441:
                                                                                                                                    addr441:
                                                                                                                                    addChild(this.§[!]§);
                                                                                                                                    continue loop25;
                                                                                                                                    addr331:
                                                                                                                                    if(_loc2_ || this)
                                                                                                                                    {
                                                                                                                                       if(!_loc3_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr318);
                                                                                                                                       }
                                                                                                                                       break loop18;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr378:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr317:
                                                                                                                           }
                                                                                                                           addr318:
                                                                                                                        }
                                                                                                                        continue loop19;
                                                                                                                        return;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr424);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  this.§[!]§ = new ProfilePicture(this.data.userId,this.data.avatarString,false);
                                                                                                                  §§goto(addr441);
                                                                                                               }
                                                                                                               §§goto(addr317);
                                                                                                            }
                                                                                                            §§goto(addr115);
                                                                                                         }
                                                                                                         continue loop11;
                                                                                                         addr23:
                                                                                                      }
                                                                                                      addr238:
                                                                                                      return;
                                                                                                   }
                                                                                                   sCachedProfileImages[this.data.userId] = this.§[!]§;
                                                                                                   §§goto(addr378);
                                                                                                   addr383:
                                                                                                }
                                                                                                §§goto(addr398);
                                                                                             }
                                                                                             §§goto(addr383);
                                                                                          }
                                                                                          §§goto(addr378);
                                                                                       }
                                                                                       §§goto(addr441);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr23);
                                                                              }
                                                                              §§goto(addr422);
                                                                           }
                                                                        }
                                                                        continue loop10;
                                                                     }
                                                                  }
                                                                  continue loop6;
                                                               }
                                                            }
                                                            break;
                                                         }
                                                         §§push(this.§[!]§);
                                                         if(_loc2_ || this)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(5);
                                                               if(!_loc3_)
                                                               {
                                                                  §§pop().y = §§pop();
                                                                  §§goto(addr398);
                                                               }
                                                               §§goto(addr423);
                                                            }
                                                            addr394:
                                                         }
                                                         §§goto(addr423);
                                                         addr277:
                                                      }
                                                      §§goto(addr236);
                                                   }
                                                   continue loop3;
                                                }
                                             }
                                          }
                                          addr259:
                                       }
                                       §§goto(addr277);
                                    }
                                    §§goto(addr394);
                                 }
                              }
                           }
                           §§goto(addr259);
                        }
                     }
                  }
                  if(!(_loc2_ || _loc3_))
                  {
                     continue;
                  }
                  §§goto(addr166);
                  §§push(Boolean(§§pop()));
               }
            }
            §§goto(addr424);
         }
         §§goto(addr290);
      }
   }
}
