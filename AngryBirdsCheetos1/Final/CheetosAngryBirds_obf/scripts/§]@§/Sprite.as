package §]@§
{
   import §`C§.§'!!§;
   import §`C§.§'!N§;
   import §`C§.§9!'§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §<M§:Vector.<§'!!§>;
      
      private var §,U§:Boolean;
      
      public function Sprite()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§#8§();
            do
            {
               super.dispose();
            }
            while(_loc2_ && _loc1_);
            
         }
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§,U§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(param1);
            while(true)
            {
               if(§§pop() == this.§,U§)
               {
                  if(!_loc3_)
                  {
                     break;
                  }
                  while(true)
                  {
                     §§goto(addr91);
                  }
               }
               while(true)
               {
                  this.§,U§ = param1;
                  addr91:
                  §§goto(addr24);
               }
            }
            return;
         }
         addr24:
         do
         {
            if(!(_loc3_ && this))
            {
               continue loop0;
            }
            continue loop1;
         }
         while(_loc3_ && _loc2_);
         
      }
      
      private function §4u§(param1:TouchEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            Mouse.cursor = !!param1.§4=§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
         }
      }
      
      public function flatten() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§9!'§.§7!Z§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(§9!'§.§7!Z§);
                           loop4:
                           while(true)
                           {
                              §§push(§§pop().§+!<§);
                              if(_loc2_ || _loc2_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              if(_loc1_)
                              {
                                 break;
                              }
                              if(_loc1_)
                              {
                                 continue loop1;
                              }
                              addr89:
                              §§push(§9!'§.§7!Z§);
                              if(!(_loc2_ || _loc2_))
                              {
                                 continue;
                              }
                              if(!_loc2_)
                              {
                                 continue loop0;
                              }
                              §§pop().addEventListener(Event.CONTEXT3D_CREATE,this.§"$§);
                              loop10:
                              while(true)
                              {
                                 if(_loc2_)
                                 {
                                    if(!_loc2_)
                                    {
                                       break;
                                    }
                                    if(_loc2_)
                                    {
                                       continue;
                                    }
                                    continue loop3;
                                 }
                                 loop9:
                                 while(true)
                                 {
                                    if(_loc1_)
                                    {
                                       while(true)
                                       {
                                          if(this.§<M§ != null)
                                          {
                                             continue loop10;
                                          }
                                          while(true)
                                          {
                                             this.§<M§ = new Vector.<§'!!§>(0);
                                             continue loop9;
                                          }
                                       }
                                       addr20:
                                       return;
                                       addr39:
                                       addr124:
                                    }
                                    §§goto(addr89);
                                 }
                                 continue loop4;
                              }
                              while(true)
                              {
                                 dispatchEventOnChildren(new Event(Event.§,!Z§));
                                 §§goto(addr124);
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
                  while(§§pop())
                  {
                     §§goto(addr108);
                  }
                  §§goto(addr20);
               }
            }
         }
         §§goto(addr108);
      }
      
      public function §#8§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = 0;
         var _loc2_:int = 0;
         if(!(_loc4_ && this))
         {
            §§push(§9!'§.§7!Z§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(§9!'§.§7!Z§);
                           if(!_loc4_)
                           {
                              if(!_loc3_)
                              {
                                 break;
                              }
                              §§push(§§pop().§+!<§);
                              if(!(_loc4_ && _loc3_))
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              if(!(_loc4_ && _loc3_))
                              {
                                 if(!(_loc4_ && _loc1_))
                                 {
                                    loop8:
                                    while(§§pop())
                                    {
                                       if(!_loc4_)
                                       {
                                          if(!this.§<M§)
                                          {
                                          }
                                          break;
                                       }
                                       loop9:
                                       while(true)
                                       {
                                          §§push(§9!'§.§7!Z§);
                                          addr141:
                                          while(true)
                                          {
                                             §§pop().removeEventListener(Event.CONTEXT3D_CREATE,this.§"$§);
                                             while(true)
                                             {
                                                if(!_loc3_)
                                                {
                                                   continue loop3;
                                                }
                                                §§push(int(this.§<M§.length));
                                                loop6:
                                                while(true)
                                                {
                                                   _loc1_ = §§pop();
                                                   addr99:
                                                   while(true)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         continue loop6;
                                                      }
                                                      continue loop9;
                                                   }
                                                   continue loop9;
                                                }
                                             }
                                             addr92:
                                             while(true)
                                             {
                                                if(_loc2_ >= _loc1_)
                                                {
                                                   if(!(_loc4_ && this))
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         continue;
                                                      }
                                                      if(!_loc4_)
                                                      {
                                                         this.§<M§ = null;
                                                         break;
                                                      }
                                                      _loc2_++;
                                                      continue;
                                                      addr62:
                                                   }
                                                   break;
                                                }
                                                this.§<M§[_loc2_].dispose();
                                                §§goto(addr62);
                                             }
                                             break loop8;
                                          }
                                       }
                                    }
                                    return;
                                    addr132:
                                 }
                                 continue loop1;
                              }
                              continue loop2;
                           }
                           §§goto(addr141);
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr132);
               }
            }
         }
         §§goto(addr92);
      }
      
      private function §"$§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§<M§)
            {
               if(!_loc3_)
               {
                  this.§<M§ = new Vector.<§'!!§>(0);
                  do
                  {
                     this.flatten();
                  }
                  while(_loc3_ && param1);
                  
                  addr67:
               }
               §§goto(addr67);
            }
            return;
         }
         §§goto(addr67);
      }
      
      public function get §#!"§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§<M§ == null);
         if(_loc2_)
         {
            return !§§pop();
         }
      }
      
      override public function render(param1:§'!N§, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         if(_loc6_)
         {
            §§push(Boolean(this.§<M§));
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop3:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        super.render(param1,param2);
                        break;
                     }
                     loop4:
                     while(true)
                     {
                        param1.§+!2§();
                        addr169:
                        loop5:
                        while(true)
                        {
                           §§push(param2);
                           if(!(_loc5_ && this))
                           {
                              §§push(§§pop() * this.alpha);
                              if(_loc6_)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           param2 = §§pop();
                           while(true)
                           {
                              if(!(_loc6_ || this))
                              {
                                 continue loop5;
                              }
                              §§push(int(this.§<M§.length));
                              loop7:
                              while(true)
                              {
                                 _loc3_ = §§pop();
                                 addr110:
                                 while(true)
                                 {
                                    if(!(_loc5_ && this))
                                    {
                                       continue loop7;
                                    }
                                    addr175:
                                    while(true)
                                    {
                                       §§push(color == 16777215);
                                       if(!_loc6_)
                                       {
                                          break;
                                       }
                                       continue loop0;
                                    }
                                    while(true)
                                    {
                                       §§pop();
                                       §§goto(addr176);
                                    }
                                    addr176:
                                 }
                                 continue loop4;
                              }
                              if(!(_loc6_ || _loc3_))
                              {
                                 continue;
                              }
                              if(_loc5_)
                              {
                                 continue loop4;
                              }
                              addr28:
                              if(_loc4_ >= _loc3_)
                              {
                                 if(!_loc6_)
                                 {
                                    break loop3;
                                 }
                                 §§goto(addr24);
                              }
                              this.§<M§[_loc4_].render(param1.§+!&§,param1.§]!I§,param2);
                              _loc4_++;
                              if(!(_loc5_ && param1))
                              {
                                 §§goto(addr28);
                              }
                              addr71:
                              §§goto(addr71);
                           }
                        }
                     }
                  }
                  if(!(_loc6_ || this))
                  {
                     §§goto(addr28);
                  }
                  addr24:
                  return;
                  addr155:
               }
               §§goto(addr175);
            }
         }
         §§goto(addr169);
      }
   }
}
