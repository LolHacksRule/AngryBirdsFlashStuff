package §#!"§
{
   import §#&§.§`S§;
   import §%t§.§9!7§;
   import flash.display.Sprite;
   
   public class §+M§ extends Sprite
   {
      
      public static var §-o§:Object;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §+M§))
         {
            §-o§ = {};
         }
      }
      
      protected var §%v§:§`S§;
      
      protected var §6!'§:§9!7§;
      
      public function §+M§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
            while(true)
            {
               rotation = -90;
               §§goto(addr71);
            }
         }
         addr71:
         while(true)
         {
            y = 180;
            if(_loc1_ || _loc2_)
            {
               if(!(_loc2_ && _loc1_))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function set data(param1:§`S§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§%v§ = param1;
            do
            {
               this.update();
            }
            while(!(_loc2_ || this));
            
         }
      }
      
      public function get data() : §`S§
      {
         return this.§%v§;
      }
      
      public function update() : void
      {
      }
      
      protected function get §8B§() : Boolean
      {
         return this.data.userId == §"U§.§7!2§;
      }
      
      protected function §!R§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§6!'§);
            if(!(_loc2_ && _loc2_))
            {
               §§push(Boolean(§§pop()));
               loop0:
               while(true)
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           §§pop();
                           if(_loc3_ || _loc3_)
                           {
                              §§push(this.§6!'§);
                              if(_loc3_ || _loc1_)
                              {
                                 §§push(§§pop().parent == this);
                                 loop3:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    addr161:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          addr163:
                                          while(_loc3_)
                                          {
                                             if(§§pop())
                                             {
                                                loop7:
                                                while(true)
                                                {
                                                   §§pop();
                                                   if(_loc2_ && _loc1_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(this.§6!'§);
                                                   while(true)
                                                   {
                                                      §§push(§§pop() == §-o§[this.data.userId]);
                                                      addr121:
                                                      addr64:
                                                      while(true)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            continue loop2;
                                                         }
                                                      }
                                                      if(!(_loc3_ || this))
                                                      {
                                                         continue;
                                                      }
                                                      §§push(Boolean(§§pop()));
                                                      if(!_loc3_)
                                                      {
                                                         continue loop7;
                                                      }
                                                      if(_loc3_ || _loc2_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      §§goto(addr121);
                                                   }
                                                }
                                                addr210:
                                                addChild(this.§6!'§ = §-o§[this.data.userId]);
                                                if(_loc3_)
                                                {
                                                   §§goto(addr226);
                                                }
                                                addr283:
                                                loop18:
                                                while(true)
                                                {
                                                   §§push(this.§6!'§);
                                                   if(!_loc2_)
                                                   {
                                                      addr256:
                                                      while(true)
                                                      {
                                                         §§push(5);
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            §§pop().y = §§pop();
                                                            while(true)
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  continue loop18;
                                                               }
                                                               §-o§[this.data.userId] = this.§6!'§;
                                                               while(_loc3_)
                                                               {
                                                                  break loop2;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(this.§6!'§);
                                                                  addr281:
                                                                  while(true)
                                                                  {
                                                                     continue loop18;
                                                                  }
                                                               }
                                                            }
                                                            addr275:
                                                         }
                                                         while(true)
                                                         {
                                                            §§pop().x = §§pop();
                                                            continue loop18;
                                                         }
                                                         continue loop18;
                                                      }
                                                      addr256:
                                                   }
                                                   §§goto(addr281);
                                                }
                                             }
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!(_loc2_ && this))
                                                   {
                                                      return;
                                                   }
                                                   §§goto(addr277);
                                                }
                                                else
                                                {
                                                   §§push(this.§6!'§);
                                                   if(!_loc2_)
                                                   {
                                                      §§goto(addr64);
                                                   }
                                                   §§goto(addr256);
                                                }
                                             }
                                          }
                                          continue loop1;
                                          if(!(_loc3_ || this))
                                          {
                                             continue;
                                          }
                                          if(_loc2_)
                                          {
                                             continue loop3;
                                          }
                                          §§pop();
                                          if(_loc3_)
                                          {
                                             loop13:
                                             while(true)
                                             {
                                                §§push(this.§6!'§);
                                                if(_loc3_)
                                                {
                                                   §§push(§§pop().parent == this);
                                                   if(_loc3_)
                                                   {
                                                      loop11:
                                                      while(§§pop())
                                                      {
                                                         if(!(_loc2_ && this))
                                                         {
                                                            removeChild(this.§6!'§);
                                                            if(!(_loc2_ && this))
                                                            {
                                                               this.§6!'§ = null;
                                                               if(_loc3_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(true)
                                                                     {
                                                                        break loop11;
                                                                     }
                                                                     continue loop13;
                                                                  }
                                                                  addr26:
                                                               }
                                                            }
                                                            §§goto(addr283);
                                                         }
                                                         §§goto(addr210);
                                                      }
                                                      if(§-o§[this.data.userId])
                                                      {
                                                         if(_loc3_ || _loc2_)
                                                         {
                                                            §§goto(addr210);
                                                         }
                                                         §§goto(addr239);
                                                      }
                                                      else
                                                      {
                                                         this.§6!'§ = new §9!7§(this.data.userId,this.data.avatarString,false);
                                                      }
                                                      §§goto(addr296);
                                                      addr38:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr92);
                                                   }
                                                   §§goto(addr210);
                                                }
                                                break;
                                             }
                                             §§goto(addr281);
                                          }
                                          §§goto(addr239);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr256);
                           }
                           break;
                        }
                        addChild(this.§6!'§);
                        if(_loc3_)
                        {
                           if(!_loc3_)
                           {
                              §§goto(addr275);
                           }
                           addr239:
                           addr226:
                           return;
                        }
                        §§goto(addr248);
                     }
                     §§goto(addr161);
                  }
               }
            }
            §§goto(addr256);
         }
         §§goto(addr26);
      }
   }
}
