package §2!o§
{
   import § "!§.§ ! §;
   import § "!§.§9"&§;
   import §,l§.§#!>§;
   import §,l§.§4"7§;
   import §;!d§.§6"L§;
   import §@!%§.§#!$§;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §`2§ extends Sprite
   {
      
      public static var §+j§:Object;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §+j§ = {};
         }
      }
      
      protected var §+]§:§#!>§;
      
      protected var § !L§:§ ! §;
      
      protected var §#"2§:§4K§;
      
      protected var §^Y§:§4n§;
      
      public function §`2§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            while(true)
            {
               rotation = -90;
               loop1:
               while(_loc2_ || _loc1_)
               {
                  y = 180;
                  while(true)
                  {
                     cacheAsBitmap = true;
                     if(_loc2_)
                     {
                        if(!(_loc1_ && _loc1_))
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr62);
      }
      
      public function set data(param1:§#!>§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§+]§ = param1;
         }
         do
         {
            this.update();
         }
         while(_loc2_ && this);
         
      }
      
      public function get data() : §#!>§
      {
         return this.§+]§;
      }
      
      public function update() : void
      {
      }
      
      protected function get §4"L§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.data);
            while(true)
            {
               §§push(§§pop().userId);
               addr102:
               while(true)
               {
                  §§push(§9"&§.§-"W§);
                  addr104:
                  while(true)
                  {
                     §§push(§§pop() == §§pop());
                     §§goto(addr105);
                  }
               }
            }
            addr101:
         }
         while(true)
         {
            §§push(this.data);
            if(!(_loc2_ && this))
            {
               §§push(§§pop().userId);
               if(!_loc2_)
               {
                  §§push(§9"&§.§#2§);
                  if(_loc1_ || _loc2_)
                  {
                     §§goto(addr66);
                     §§push(§§pop() == §§pop());
                  }
                  else
                  {
                     §§goto(addr104);
                  }
                  addr105:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc1_ || this)
                              {
                                 §§push(true);
                                 break;
                              }
                              if(_loc2_)
                              {
                                 continue loop0;
                              }
                           }
                           §§push(false);
                           if(_loc2_)
                           {
                              break;
                           }
                           if(!_loc2_)
                           {
                              return §§pop();
                           }
                           addr66:
                           while(_loc2_)
                           {
                           }
                        }
                        if(_loc1_ || this)
                        {
                           break;
                        }
                        continue;
                     }
                     while(true)
                     {
                        §§pop();
                        continue loop0;
                     }
                  }
                  return §§pop();
               }
               §§goto(addr102);
               §§goto(addr104);
            }
            else
            {
               §§goto(addr101);
            }
         }
      }
      
      protected function §=!8§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = false;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§#"2§);
            loop0:
            while(true)
            {
               if(§§pop() == null)
               {
                  while(true)
                  {
                     §§push(this.§5!W§());
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
                              loop5:
                              while(§§pop())
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§push(this.§]F§);
                                    while(_loc2_ || _loc2_)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc2_ || _loc1_)
                                          {
                                             if(this.contains(this.§#"2§.§<!6§))
                                             {
                                                if(_loc2_)
                                                {
                                                   addr209:
                                                   removeChild(this.§#"2§.§<!6§);
                                                }
                                                this.§#"2§ = null;
                                                addr158:
                                                if(!(_loc3_ && _loc1_))
                                                {
                                                   if(_loc2_ || _loc3_)
                                                   {
                                                      break loop6;
                                                   }
                                                   break loop5;
                                                }
                                                continue loop6;
                                                addr214:
                                             }
                                             while(true)
                                             {
                                                §§push(this is §0!o§);
                                                if(!(_loc2_ || _loc2_))
                                                {
                                                   break;
                                                }
                                                continue loop5;
                                                if(_loc3_ && _loc1_)
                                                {
                                                   continue loop5;
                                                }
                                                if(!(_loc2_ || _loc2_))
                                                {
                                                   continue loop3;
                                                }
                                                if(§§pop())
                                                {
                                                   if(_loc2_ || this)
                                                   {
                                                      if(_loc2_ || this)
                                                      {
                                                         §0!o§(this).setCanSendGift(§4"7§.§&"5§.§[>§(this.data.userId),false);
                                                         loop12:
                                                         while(true)
                                                         {
                                                            if(_loc2_ || _loc1_)
                                                            {
                                                               addr150:
                                                               while(true)
                                                               {
                                                                  setChildIndex(this.§#"2§.§<!6§,numChildren - 1);
                                                                  addr67:
                                                                  while(true)
                                                                  {
                                                                     if(_loc3_ && _loc3_)
                                                                     {
                                                                        continue loop12;
                                                                     }
                                                                     if(!(_loc3_ && this))
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     §§goto(addr214);
                                                                  }
                                                                  §§goto(addr150);
                                                               }
                                                               addr59:
                                                            }
                                                            §§goto(addr158);
                                                         }
                                                         addr143:
                                                      }
                                                      §§goto(addr153);
                                                   }
                                                   §§goto(addr143);
                                                }
                                                §§goto(addr59);
                                                addr153:
                                             }
                                             continue;
                                             addr82:
                                          }
                                          §§goto(addr209);
                                       }
                                       §§goto(addr82);
                                    }
                                    continue loop2;
                                 }
                                 return;
                              }
                              while(true)
                              {
                                 if(_loc2_ || this)
                                 {
                                    break loop4;
                                 }
                                 continue loop4;
                              }
                           }
                           §§goto(addr225);
                        }
                     }
                  }
                  addr231:
               }
               §§goto(addr173);
            }
         }
         addr225:
      }
      
      protected function §1l§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = false;
         if(!(_loc3_ && _loc2_))
         {
            if(this.§^Y§ == null)
            {
               loop0:
               while(true)
               {
                  §§push(this.§58§());
                  loop1:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     loop2:
                     while(true)
                     {
                        _loc1_ = §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(_loc1_);
                           loop4:
                           for(; §§pop(); while(_loc2_ || this)
                           {
                              §§pop();
                              §§goto(addr164);
                              §§goto(addr94);
                           })
                           {
                              loop5:
                              while(true)
                              {
                                 §§push(this.§]F§);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop7:
                                    while(_loc2_ || this)
                                    {
                                       if(!§§pop())
                                       {
                                          continue loop4;
                                       }
                                       loop10:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc2_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   if(this.contains(this.§^Y§.§<!6§))
                                                   {
                                                      if(!(_loc3_ && _loc2_))
                                                      {
                                                         break;
                                                      }
                                                      this.§^Y§ = null;
                                                      addr132:
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         setChildIndex(this.§^Y§.§<!6§,numChildren - 1);
                                                         if(!_loc2_)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               if(_loc3_ && _loc3_)
                                                               {
                                                                  break;
                                                               }
                                                               if(_loc2_)
                                                               {
                                                                  continue;
                                                               }
                                                               continue loop0;
                                                            }
                                                            addr164:
                                                            while(!(_loc3_ && _loc3_))
                                                            {
                                                               §§push(this.§4"L§);
                                                               if(!(_loc3_ && this))
                                                               {
                                                                  addr94:
                                                                  if(!(_loc2_ || this))
                                                                  {
                                                                     continue loop4;
                                                                  }
                                                                  if(_loc3_)
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  §§push(!§§pop());
                                                               }
                                                               if(_loc2_)
                                                               {
                                                                  if(_loc2_)
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                                  continue loop6;
                                                               }
                                                               continue loop7;
                                                            }
                                                            continue loop3;
                                                         }
                                                         if(!(_loc3_ && _loc1_))
                                                         {
                                                            if(_loc2_ || _loc1_)
                                                            {
                                                               return;
                                                            }
                                                            §§goto(addr132);
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         continue loop5;
                                                      }
                                                      addr30:
                                                      addr176:
                                                   }
                                                   return;
                                                }
                                                break loop4;
                                             }
                                             break;
                                          }
                                          §§goto(addr30);
                                       }
                                       removeChild(this.§^Y§.§<!6§);
                                       §§goto(addr132);
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                           return;
                        }
                     }
                  }
               }
            }
            §§goto(addr133);
         }
         §§goto(addr176);
      }
      
      protected function §58§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§]F§);
            if(!(_loc1_ && _loc1_))
            {
               §§push(!§§pop());
            }
            do
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(this.§4"L§);
                        if(!(_loc1_ && this))
                        {
                           §§push(Boolean(§§pop()));
                           while(true)
                           {
                           }
                           addr96:
                        }
                        loop3:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              §§push(false);
                              if(_loc1_)
                              {
                                 break;
                              }
                              continue;
                           }
                           this.§^Y§ = new §4n§();
                           if(_loc1_)
                           {
                              continue loop2;
                           }
                           while(true)
                           {
                              addChild(this.§^Y§.§<!6§);
                              §§push(true);
                              break loop3;
                           }
                        }
                        while(true)
                        {
                           if(!_loc1_)
                           {
                              break loop1;
                           }
                           continue loop1;
                        }
                     }
                  }
                  continue;
               }
               §§goto(addr96);
            }
            while(!_loc2_);
            
            return §§pop();
         }
         §§goto(addr104);
      }
      
      protected function §5!W§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§]F§);
            while(true)
            {
               if(!§§pop())
               {
                  do
                  {
                     this.§#"2§ = new §4K§();
                     addChild(this.§#"2§.§<!6§);
                  }
                  while(_loc2_);
                  
                  §§push(true);
                  continue;
               }
            }
            return §§pop();
         }
         while(true)
         {
            §§push(false);
            if(_loc1_)
            {
               break;
            }
            §§goto(addr43);
         }
         return §§pop();
      }
      
      private function §0A§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            dispatchEvent(new §6"L§(§6"L§.§&!'§,this.data,true));
         }
      }
      
      protected function get §]F§() : Boolean
      {
         return this.data.userId == (AngryBirdsFP11.sUserProgress as §#!$§).§5!0§;
      }
      
      protected function §2!l§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this.§ !L§);
            if(!_loc2_)
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
                           for(; !_loc2_; while(true)
                           {
                              §§push(§§pop());
                              if(_loc2_ && _loc1_)
                              {
                                 break;
                              }
                              if(!§§pop())
                              {
                                 while(§§pop())
                                 {
                                    while(true)
                                    {
                                       removeChild(this.§ !L§);
                                       if(!_loc2_)
                                       {
                                          if(!(_loc2_ && _loc1_))
                                          {
                                             if(!(_loc3_ || _loc3_))
                                             {
                                                addr157:
                                                return;
                                             }
                                             this.§ !L§ = null;
                                             if(!_loc2_)
                                             {
                                                continue;
                                             }
                                             §§goto(addr290);
                                          }
                                          else
                                          {
                                             §§goto(addr89);
                                          }
                                          §§goto(addr286);
                                       }
                                       break;
                                    }
                                    §§goto(addr311);
                                 }
                                 if(§+j§[this.data.userId])
                                 {
                                    if(_loc3_)
                                    {
                                       addChild(this.§ !L§ = §+j§[this.data.userId]);
                                       if(!(_loc3_ || _loc2_))
                                       {
                                          §§goto(addr270);
                                       }
                                    }
                                    §§goto(addr236);
                                 }
                                 else
                                 {
                                    this.§ !L§ = new § ! §(this.data.userId,this.data.avatarString,false);
                                 }
                                 §§goto(addr294);
                                 addr66:
                              }
                              §§goto(addr113);
                              if(!(_loc3_ || this))
                              {
                                 continue;
                              }
                              if(!_loc2_)
                              {
                                 if(_loc3_)
                                 {
                                    §§goto(addr66);
                                 }
                                 while(true)
                                 {
                                    §§pop();
                                    if(!(_loc3_ || _loc3_))
                                    {
                                       break;
                                    }
                                    §§goto(addr162);
                                    §§push(this.§ !L§);
                                 }
                                 §§goto(addr298);
                                 addr198:
                              }
                              §§goto(addr138);
                           })
                           {
                              if(§§pop())
                              {
                                 loop7:
                                 while(true)
                                 {
                                    §§pop();
                                    if(!_loc2_)
                                    {
                                       while(true)
                                       {
                                          §§push(this.§ !L§);
                                          addr132:
                                          while(true)
                                          {
                                             §§push(§§pop() == §+j§[this.data.userId]);
                                             continue loop7;
                                          }
                                       }
                                       addr189:
                                    }
                                    else
                                    {
                                       addr298:
                                       §§push(this.§ !L§);
                                       if(_loc3_)
                                       {
                                          addr286:
                                          §§push(5);
                                          if(!_loc2_)
                                          {
                                             §§pop().y = §§pop();
                                             do
                                             {
                                                §+j§[this.data.userId] = this.§ !L§;
                                                do
                                                {
                                                   addChild(this.§ !L§);
                                                }
                                                while(!(_loc3_ || _loc3_));
                                                
                                             }
                                             while(_loc2_ && _loc1_);
                                             
                                             if(_loc2_)
                                             {
                                                loop19:
                                                while(true)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      §§goto(addr298);
                                                   }
                                                   else
                                                   {
                                                      addr294:
                                                      §§push(this.§ !L§);
                                                      while(true)
                                                      {
                                                         break loop19;
                                                      }
                                                      addr294:
                                                      addr311:
                                                   }
                                                   §§goto(addr294);
                                                }
                                                while(true)
                                                {
                                                   §§pop().x = §§pop();
                                                   §§goto(addr296);
                                                }
                                                addr296:
                                                addr295:
                                             }
                                             addr236:
                                             return;
                                             addr290:
                                          }
                                          §§goto(addr295);
                                       }
                                       §§goto(addr294);
                                    }
                                 }
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    §§goto(addr157);
                                 }
                                 addr89:
                                 addr162:
                                 while(true)
                                 {
                                    §§push(this.§ !L§);
                                    if(!_loc2_)
                                    {
                                       if(!_loc2_)
                                       {
                                          addr96:
                                          if(!(_loc3_ || _loc1_))
                                          {
                                             break;
                                          }
                                          §§push(Boolean(§§pop()));
                                          continue loop6;
                                       }
                                       §§goto(addr132);
                                    }
                                    else
                                    {
                                       §§goto(addr286);
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(§§pop().parent == this);
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    continue loop0;
                                    §§goto(addr96);
                                 }
                                 §§goto(addr138);
                              }
                           }
                           continue loop1;
                        }
                        addr181:
                     }
                     §§goto(addr198);
                  }
               }
            }
            §§goto(addr294);
         }
         §§goto(addr189);
      }
   }
}
