package §#r§
{
   import §+R§.ProfilePicture;
   import §<!=§.FriendListItemVO;
   import flash.display.Sprite;
   
   public class BasePlate extends Sprite
   {
      
      public static var sCachedProfileImages:Object;
      
      {
         var sCachedProfileImages:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || sCachedProfileImages)
         {
            do
            {
               sCachedProfileImages = {};
            }
            while(!(_loc2_ || BasePlate));
            
         }
      }
      
      protected var §@! §:FriendListItemVO;
      
      protected var §?!D§:ProfilePicture;
      
      public function BasePlate()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc2_ || this)
         {
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  addr91:
                  while(!_loc1_)
                  {
                  }
                  continue loop0;
                  loop6:
                  while(_loc2_ || _loc2_)
                  {
                     if(_loc1_)
                     {
                        continue;
                     }
                     if(!_loc1_)
                     {
                        return;
                     }
                     loop5:
                     while(true)
                     {
                        if(_loc2_ || this)
                        {
                           if(!_loc2_)
                           {
                              break;
                           }
                           y = 180;
                           continue loop6;
                        }
                        addr88:
                        while(true)
                        {
                           continue loop5;
                        }
                     }
                     §§goto(addr91);
                  }
               }
            }
         }
         while(true)
         {
            rotation = -90;
            §§goto(addr88);
         }
      }
      
      public function set data(value:FriendListItemVO) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(_loc2_ || value)
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  this.§@! § = value;
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        this.update();
                        while(!_loc3_)
                        {
                           if(_loc2_)
                           {
                              if(_loc2_ || value)
                              {
                                 continue loop1;
                              }
                              continue;
                              continue;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
               if(!(_loc2_ || value))
               {
                  continue;
               }
               return;
               addr75:
            }
         }
         §§goto(addr75);
      }
      
      public function get data() : FriendListItemVO
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc2_ && _loc2_)
         {
         }
         return this.§@! §;
      }
      
      public function update() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc2_)
         {
         }
      }
      
      protected function get §`![§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
         }
         if(_loc2_ && this)
         {
         }
         return this.data.userId == FriendItemRenderer.sUserId;
      }
      
      protected function §]C§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(!(_loc2_ && _loc1_))
         {
            if(_loc3_)
            {
               §§push(this.§?!D§);
               if(_loc3_)
               {
                  §§push(Boolean(§§pop()));
                  loop0:
                  while(true)
                  {
                     §§push(§§pop());
                     if(!(_loc2_ && _loc3_))
                     {
                        §§push(Boolean(§§pop()));
                     }
                     loop1:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              if(!_loc2_)
                              {
                                 §§push(this.§?!D§);
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    §§push(§§pop().parent == this);
                                    if(!_loc2_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(!_loc3_)
                                       {
                                          continue loop0;
                                       }
                                       while(true)
                                       {
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       loop16:
                                       while(_loc3_)
                                       {
                                          §§push(Boolean(§§pop()));
                                          loop17:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                continue loop0;
                                             }
                                             loop5:
                                             while(true)
                                             {
                                                loop6:
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      §§push(this.§?!D§);
                                                      if(!_loc3_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(Boolean(§§pop()));
                                                      loop7:
                                                      while(true)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            continue loop6;
                                                         }
                                                         §§push(§§pop());
                                                         if(_loc3_)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                         }
                                                         if(!(_loc3_ || _loc3_))
                                                         {
                                                            continue loop17;
                                                         }
                                                         if(_loc2_)
                                                         {
                                                            continue loop16;
                                                         }
                                                         if(§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               if(_loc3_)
                                                               {
                                                                  §§push(this.§?!D§);
                                                                  if(_loc3_)
                                                                  {
                                                                     addr105:
                                                                     if(!(_loc2_ && _loc3_))
                                                                     {
                                                                        §§push(§§pop().parent == this);
                                                                        if(!_loc2_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        addr127:
                                                                        while(_loc3_ || _loc1_)
                                                                        {
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                     addr182:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() == sCachedProfileImages[this.data.userId]);
                                                                        if(!(_loc2_ && _loc1_))
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           continue loop5;
                                                                        }
                                                                        continue loop6;
                                                                        §§goto(addr105);
                                                                     }
                                                                  }
                                                                  §§goto(addr403);
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr422);
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc2_ && this))
                                                               {
                                                                  if(_loc3_ || _loc1_)
                                                                  {
                                                                     removeChild(this.§?!D§);
                                                                     if(_loc3_ || _loc1_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           this.§?!D§ = null;
                                                                           loop12:
                                                                           while(true)
                                                                           {
                                                                              addr75:
                                                                              while(true)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    addr29:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Boolean(sCachedProfileImages[this.data.userId]));
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                if(_loc3_ || _loc2_)
                                                                                                {
                                                                                                   if(_loc3_ || _loc1_)
                                                                                                   {
                                                                                                      continue loop12;
                                                                                                   }
                                                                                                   continue;
                                                                                                }
                                                                                                §§goto(addr357);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             this.§?!D§ = new ProfilePicture(this.data.userId,this.data.avatarString,false);
                                                                                          }
                                                                                          §§goto(addr403);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr127);
                                                                                       }
                                                                                    }
                                                                                    continue loop7;
                                                                                 }
                                                                              }
                                                                           }
                                                                           if(_loc2_ && _loc1_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(false)
                                                                           {
                                                                              §§goto(addr75);
                                                                           }
                                                                           addChild(this.§?!D§ = sCachedProfileImages[this.data.userId]);
                                                                           if(!(_loc3_ || _loc3_))
                                                                           {
                                                                              §§goto(addr324);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr303:
                                                                           }
                                                                           §§goto(addr304);
                                                                        }
                                                                     }
                                                                     §§goto(addr303);
                                                                  }
                                                                  §§goto(addr364);
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr29);
                                                         }
                                                         §§goto(addr335);
                                                      }
                                                      continue loop17;
                                                   }
                                                   if(!_loc2_)
                                                   {
                                                      return;
                                                   }
                                                   addr335:
                                                   if(!(_loc2_ && this))
                                                   {
                                                      addr317:
                                                      if(!(_loc3_ || _loc1_))
                                                      {
                                                         while(true)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               if(_loc3_ || _loc3_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     addChild(this.§?!D§);
                                                                     addr331:
                                                                     for(; _loc3_; §§goto(addr335))
                                                                     {
                                                                        if(!_loc2_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        addr408:
                                                                        addr403:
                                                                        addr403:
                                                                        addr422:
                                                                        addr408:
                                                                        §§push(this.§?!D§);
                                                                        loop20:
                                                                        while(true)
                                                                        {
                                                                           §§push(5);
                                                                           addr404:
                                                                           loop21:
                                                                           while(true)
                                                                           {
                                                                              §§pop().x = §§pop();
                                                                              addr405:
                                                                              while(true)
                                                                              {
                                                                                 addr399:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§?!D§);
                                                                                    if(_loc3_ || _loc3_)
                                                                                    {
                                                                                       break loop6;
                                                                                    }
                                                                                    continue loop20;
                                                                                 }
                                                                                 continue loop21;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  addr357:
                                                               }
                                                               §§goto(addr408);
                                                            }
                                                            break;
                                                            §§goto(addr317);
                                                         }
                                                         loop29:
                                                         while(true)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  addr364:
                                                                  while(true)
                                                                  {
                                                                     sCachedProfileImages[this.data.userId] = this.§?!D§;
                                                                     §§goto(addr348);
                                                                  }
                                                                  addr364:
                                                               }
                                                               §§goto(addr399);
                                                            }
                                                            addr379:
                                                            while(_loc3_ || _loc2_)
                                                            {
                                                               while(true)
                                                               {
                                                                  continue loop29;
                                                               }
                                                            }
                                                            §§goto(addr405);
                                                         }
                                                         addr348:
                                                      }
                                                      addr304:
                                                      return;
                                                      addr324:
                                                   }
                                                   §§goto(addr331);
                                                   §§goto(addr403);
                                                }
                                                §§push(5);
                                                if(!_loc2_)
                                                {
                                                   §§pop().y = §§pop();
                                                   §§goto(addr379);
                                                }
                                                §§goto(addr404);
                                             }
                                          }
                                       }
                                       continue loop1;
                                    }
                                 }
                              }
                              §§goto(addr403);
                           }
                        }
                        §§goto(addr234);
                     }
                  }
               }
               §§goto(addr408);
            }
            §§goto(addr364);
         }
         §§goto(addr396);
      }
   }
}
