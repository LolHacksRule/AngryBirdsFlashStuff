package §-!+§
{
   import § " §.§2!!§;
   import §%!v§.§[<§;
   import §,"2§.§;6§;
   import §]!>§.§#"1§;
   import §]!>§.§0!!§;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §=G§ extends Sprite
   {
      
      public static var §+!H§:Object;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §+!H§ = {};
         }
      }
      
      protected var §>">§:§#"1§;
      
      protected var §?"C§:§2!!§;
      
      protected var §6m§:§`1§;
      
      public function §=G§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
         }
         while(true)
         {
            rotation = -90;
            while(!(_loc1_ && this))
            {
               y = 180;
               while(!(_loc1_ && _loc2_))
               {
                  cacheAsBitmap = true;
                  if(!_loc1_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      public function set data(param1:§#"1§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§>">§ = param1;
            do
            {
               this.update();
            }
            while(!_loc2_);
            
         }
      }
      
      public function get data() : §#"1§
      {
         return this.§>">§;
      }
      
      public function update() : void
      {
      }
      
      protected function §`!§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = false;
         if(!_loc2_)
         {
            §§push(this.§6m§);
            loop0:
            while(true)
            {
               if(§§pop() == null)
               {
                  while(true)
                  {
                     §§push(this.§#d§());
                     loop2:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        loop3:
                        while(true)
                        {
                           _loc1_ = §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(_loc1_);
                              while(!(_loc2_ && this))
                              {
                                 if(!§§pop())
                                 {
                                    §§goto(addr191);
                                 }
                                 loop7:
                                 while(!(_loc2_ && _loc1_))
                                 {
                                    if(§§pop())
                                    {
                                       while(!this.contains(this.§6m§.§;Q§))
                                       {
                                          if(!(_loc2_ && _loc3_))
                                          {
                                             continue loop0;
                                          }
                                       }
                                       addr173:
                                       removeChild(this.§6m§.§;Q§);
                                       addr178:
                                       if(_loc2_)
                                       {
                                          addr191:
                                          return;
                                       }
                                       this.§6m§ = null;
                                       addr143:
                                       if(_loc3_)
                                       {
                                          return;
                                       }
                                       addr146:
                                       while(true)
                                       {
                                          continue loop7;
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(this is §1C§);
                                       if(!_loc3_)
                                       {
                                          break;
                                       }
                                       if(!_loc3_)
                                       {
                                          continue loop2;
                                       }
                                       if(§§pop())
                                       {
                                          if(_loc3_ || this)
                                          {
                                             if(_loc3_)
                                             {
                                                if(_loc3_ || _loc1_)
                                                {
                                                   if(!(_loc3_ || _loc2_))
                                                   {
                                                      continue loop4;
                                                   }
                                                   §1C§(this).setCanSendGift(§0!!§.§;"§.§>!Y§(this.data.userId),false);
                                                   loop12:
                                                   while(true)
                                                   {
                                                      addr57:
                                                      while(true)
                                                      {
                                                         setChildIndex(this.§6m§.§;Q§,numChildren - 1);
                                                         addr65:
                                                         while(true)
                                                         {
                                                            if(_loc2_ && _loc1_)
                                                            {
                                                               continue loop12;
                                                            }
                                                            §§goto(addr72);
                                                         }
                                                         continue loop12;
                                                      }
                                                   }
                                                   addr133:
                                                }
                                                §§goto(addr178);
                                             }
                                             else if(_loc3_)
                                             {
                                                continue;
                                             }
                                             §§goto(addr143);
                                          }
                                          §§goto(addr133);
                                       }
                                       §§goto(addr57);
                                    }
                                 }
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
                  addr197:
               }
               §§goto(addr146);
            }
         }
         §§goto(addr133);
      }
      
      protected function §#d§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§,!]§);
            while(true)
            {
               if(!§§pop())
               {
                  if(_loc2_ || this)
                  {
                     addr89:
                     this.§6m§ = new §`1§();
                  }
                  do
                  {
                     addChild(this.§6m§.§;Q§);
                  }
                  while(_loc1_);
                  
                  §§push(true);
                  break;
               }
               §§push(false);
               if(_loc1_ && _loc1_)
               {
                  break;
               }
               if(_loc2_ || this)
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr89);
      }
      
      private function §-t§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            dispatchEvent(new §;6§(§;6§.§2!"§,this.data,true));
         }
      }
      
      protected function get §,!]§() : Boolean
      {
         return this.data.userId == (AngryBirdsFP11.sUserProgress as §[<§).§4v§;
      }
      
      protected function §8""§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§?"C§);
            if(!(_loc2_ && _loc3_))
            {
               §§push(Boolean(§§pop()));
               loop0:
               while(true)
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
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
                                    if(_loc3_)
                                    {
                                       §§pop();
                                       while(true)
                                       {
                                          §§push(this.§?"C§);
                                          if(_loc3_ || _loc1_)
                                          {
                                             §§push(§§pop() == §+!H§[this.data.userId]);
                                             while(_loc3_ || _loc3_)
                                             {
                                             }
                                             continue loop7;
                                             addr123:
                                          }
                                          addr291:
                                          loop17:
                                          while(true)
                                          {
                                             §§push(5);
                                             loop18:
                                             while(true)
                                             {
                                                §§pop().x = §§pop();
                                                addr293:
                                                loop19:
                                                while(true)
                                                {
                                                   §§push(this.§?"C§);
                                                   if(!(_loc3_ || _loc2_))
                                                   {
                                                      continue loop17;
                                                   }
                                                   §§push(5);
                                                   if(!_loc3_)
                                                   {
                                                      continue loop18;
                                                   }
                                                   §§pop().y = §§pop();
                                                   while(true)
                                                   {
                                                      if(_loc3_ || this)
                                                      {
                                                         §+!H§[this.data.userId] = this.§?"C§;
                                                         continue;
                                                      }
                                                      continue loop19;
                                                   }
                                                }
                                             }
                                          }
                                          addr99:
                                          if(_loc2_ && this)
                                          {
                                             continue;
                                          }
                                          addr106:
                                          loop15:
                                          while(true)
                                          {
                                             §§push(this.§?"C§);
                                             if(_loc3_)
                                             {
                                                addr47:
                                                §§push(§§pop().parent == this);
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   loop13:
                                                   for(; §§pop(); §§goto(addr47))
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         removeChild(this.§?"C§);
                                                         while(true)
                                                         {
                                                            this.§?"C§ = null;
                                                            if(_loc2_ && _loc1_)
                                                            {
                                                               break;
                                                            }
                                                            if(!(_loc3_ || this))
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc3_)
                                                            {
                                                               if(true)
                                                               {
                                                                  break loop13;
                                                               }
                                                               continue loop15;
                                                            }
                                                            addr135:
                                                            while(true)
                                                            {
                                                               addr66:
                                                               while(true)
                                                               {
                                                                  §§push(this.§?"C§);
                                                                  if(_loc3_ || _loc3_)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     if(_loc3_ || _loc3_)
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           if(_loc2_)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                           §§push(§§pop());
                                                                           if(_loc2_)
                                                                           {
                                                                              continue loop6;
                                                                           }
                                                                           if(_loc2_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(!§§pop())
                                                                           {
                                                                              continue loop13;
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr123);
                                                                        }
                                                                     }
                                                                     while(_loc3_)
                                                                     {
                                                                        §§pop();
                                                                        if(!_loc2_)
                                                                        {
                                                                           §§goto(addr99);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr293);
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        continue loop0;
                                                                     }
                                                                     addr94:
                                                                     addr159:
                                                                  }
                                                                  break loop15;
                                                               }
                                                               continue loop1;
                                                            }
                                                         }
                                                         §§goto(addr226);
                                                         addr225:
                                                      }
                                                      addChild(this.§?"C§ = §+!H§[this.data.userId]);
                                                      if(!_loc2_)
                                                      {
                                                         §§goto(addr225);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr255);
                                                      }
                                                   }
                                                   if(§+!H§[this.data.userId])
                                                   {
                                                      if(!(_loc2_ && _loc1_))
                                                      {
                                                         §§goto(addr210);
                                                      }
                                                      §§goto(addr255);
                                                   }
                                                   else
                                                   {
                                                      this.§?"C§ = new §2!!§(this.data.userId,this.data.avatarString,false);
                                                   }
                                                   §§goto(addr306);
                                                }
                                                §§goto(addr94);
                                             }
                                             break;
                                          }
                                          §§goto(addr266);
                                       }
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§pop();
                                          if(!(_loc2_ && _loc3_))
                                          {
                                             §§push(this.§?"C§);
                                             if(_loc3_ || _loc3_)
                                             {
                                                §§goto(addr159);
                                                §§push(§§pop().parent == this);
                                             }
                                             else
                                             {
                                                §§goto(addr291);
                                             }
                                          }
                                          break;
                                       }
                                       §§goto(addr293);
                                       addr188:
                                    }
                                    §§goto(addr293);
                                 }
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc3_)
                                    {
                                       break;
                                    }
                                    §§goto(addr135);
                                 }
                                 §§goto(addr66);
                              }
                              return;
                           }
                        }
                        addr168:
                     }
                     §§goto(addr188);
                  }
               }
            }
            §§goto(addr291);
         }
         §§goto(addr293);
      }
   }
}
