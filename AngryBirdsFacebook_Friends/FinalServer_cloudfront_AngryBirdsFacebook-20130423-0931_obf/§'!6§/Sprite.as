package §'!6§
{
   import §"a§.§!"J§;
   import §"a§.§0!B§;
   import §"a§.§>w§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §7A§:Vector.<§0!B§>;
      
      private var §5!H§:Boolean;
      
      public function Sprite()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
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
            this.§!!>§();
            do
            {
               super.dispose();
            }
            while(!(_loc1_ || _loc1_));
            
         }
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§5!H§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(param1);
            loop0:
            for(; §§pop() != this.§5!H§; §§push(this.§5!H§),if(!(_loc2_ || this))
            {
               continue;
            },if(§§pop())
            {
               if(_loc2_)
               {
                  addEventListener(TouchEvent.§<!M§,this.§4@§);
               }
               addr84:
               if(!_loc2_)
               {
                  §§goto(addr98);
               }
               §§goto(addr86);
            },removeEventListener(TouchEvent.§<!M§,this.§4@§),if(_loc3_ && _loc3_)
            {
               §§goto(addr84);
            },§§goto(addr24))
            {
               loop1:
               while(true)
               {
                  this.§5!H§ = param1;
                  addr98:
                  addr86:
                  while(true)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        continue loop0;
                     }
                     continue loop1;
                  }
                  if(!(_loc2_ || _loc2_))
                  {
                     break loop0;
                  }
               }
            }
            return;
         }
         addr24:
      }
      
      private function §4@§(param1:TouchEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            Mouse.cursor = !!param1.§4g§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
         }
      }
      
      public function flatten() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§!"J§.§1&§);
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
                           §§push(§!"J§.§1&§);
                           while(true)
                           {
                              §§push(§§pop().§28§);
                              if(_loc2_)
                              {
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 §§push(Boolean(§§pop()));
                              }
                              if(_loc1_ && this)
                              {
                                 continue loop2;
                              }
                              loop10:
                              while(true)
                              {
                                 §§push(§!"J§.§1&§);
                                 if(!(_loc2_ || _loc2_))
                                 {
                                    break;
                                 }
                                 if(!_loc2_)
                                 {
                                    continue loop0;
                                 }
                                 §§pop().addEventListener(Event.CONTEXT3D_CREATE,this.§?3§);
                                 loop11:
                                 while(_loc1_ && _loc2_)
                                 {
                                    while(_loc2_ || _loc2_)
                                    {
                                       while(true)
                                       {
                                          this.§7A§ = new Vector.<§0!B§>(0);
                                          continue loop10;
                                       }
                                       continue loop11;
                                    }
                                    continue loop3;
                                 }
                                 addr57:
                                 if(_loc2_ || _loc1_)
                                 {
                                    if(!_loc1_)
                                    {
                                       addr83:
                                       while(true)
                                       {
                                          §0!B§.§4!t§(this,this.§7A§);
                                          if(_loc2_ || _loc1_)
                                          {
                                             if(!_loc1_)
                                             {
                                                §§goto(addr20);
                                             }
                                             continue loop10;
                                          }
                                          §§goto(addr57);
                                          §§goto(addr83);
                                       }
                                       while(true)
                                       {
                                          if(this.§7A§ != null)
                                          {
                                             §§goto(addr24);
                                          }
                                          §§goto(addr89);
                                       }
                                       addr24:
                                       addr139:
                                    }
                                    while(true)
                                    {
                                       dispatchEventOnChildren(new Event(Event.§1!`§));
                                    }
                                    addr133:
                                 }
                                 §§goto(addr139);
                              }
                           }
                           continue loop1;
                        }
                     }
                  }
                  while(§§pop())
                  {
                     §§goto(addr133);
                  }
                  addr20:
                  return;
               }
            }
         }
         §§goto(addr96);
      }
      
      public function §!!>§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         if(_loc3_ || _loc2_)
         {
            §§push(§!"J§.§1&§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     loop10:
                     while(true)
                     {
                        §§pop();
                        loop4:
                        while(true)
                        {
                           §§push(§!"J§.§1&§);
                           if(!(_loc4_ && _loc2_))
                           {
                              if(_loc4_)
                              {
                                 continue loop0;
                              }
                              §§push(§§pop().§28§);
                              if(_loc3_ || _loc3_)
                              {
                                 if(!_loc3_)
                                 {
                                    continue loop10;
                                 }
                                 §§push(Boolean(§§pop()));
                                 while(true)
                                 {
                                    §§goto(addr121);
                                 }
                                 addr121:
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop3:
                                    while(true)
                                    {
                                       if(_loc3_ || _loc2_)
                                       {
                                          if(this.§7A§)
                                          {
                                             while(true)
                                             {
                                                §§push(§!"J§.§1&§);
                                                break loop4;
                                                loop9:
                                                while(!(_loc4_ && this))
                                                {
                                                   while(true)
                                                   {
                                                      §§push(0);
                                                      if(_loc3_)
                                                      {
                                                         _loc2_ = §§pop();
                                                         if(_loc4_)
                                                         {
                                                            continue loop9;
                                                         }
                                                         if(_loc3_)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(_loc2_ >= _loc1_)
                                                                  {
                                                                     if(_loc3_ || this)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(_loc3_)
                                                                        {
                                                                           this.§7A§ = null;
                                                                           break;
                                                                        }
                                                                        _loc2_++;
                                                                        continue;
                                                                        addr62:
                                                                     }
                                                                     break;
                                                                  }
                                                                  this.§7A§[_loc2_].dispose();
                                                                  §§goto(addr62);
                                                               }
                                                               break loop3;
                                                            }
                                                            continue loop3;
                                                         }
                                                         addr151:
                                                         while(true)
                                                         {
                                                            §§push(int(this.§7A§.length));
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         _loc1_ = §§pop();
                                                         continue loop9;
                                                      }
                                                   }
                                                }
                                             }
                                             addr144:
                                          }
                                          break;
                                       }
                                       continue loop4;
                                    }
                                 }
                                 return;
                              }
                           }
                           break;
                        }
                        while(true)
                        {
                           §§pop().removeEventListener(Event.CONTEXT3D_CREATE,this.§?3§);
                           §§goto(addr151);
                           §§goto(addr144);
                        }
                     }
                     addr159:
                  }
                  §§goto(addr132);
               }
               §§goto(addr159);
            }
         }
         §§goto(addr98);
      }
      
      private function §?3§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§7A§)
            {
               loop0:
               while(true)
               {
                  this.§7A§ = new Vector.<§0!B§>(0);
                  addr73:
                  while(true)
                  {
                     this.flatten();
                     if(!(_loc2_ && _loc3_))
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr20);
               }
            }
            addr20:
            return;
         }
         §§goto(addr73);
      }
      
      public function get §-k§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§7A§ == null);
         if(_loc2_ || _loc2_)
         {
            return !§§pop();
         }
      }
      
      override public function render(param1:§>w§, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         if(_loc6_)
         {
            §§push(Boolean(this.§7A§));
            if(_loc6_ || _loc3_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     loop3:
                     while(true)
                     {
                        §§push(color == 16777215);
                        if(!(_loc6_ || param1))
                        {
                           break;
                        }
                        while(true)
                        {
                           if(!§§pop())
                           {
                              super.render(param1,param2);
                              break;
                           }
                           loop1:
                           while(true)
                           {
                              param1.§1"U§();
                              addr162:
                              loop4:
                              while(true)
                              {
                                 §§push(param2);
                                 if(!(_loc5_ && param1))
                                 {
                                    §§push(§§pop() * this.alpha);
                                    if(!(_loc5_ && param1))
                                    {
                                       addr127:
                                       §§push(Number(§§pop()));
                                    }
                                    param2 = §§pop();
                                    loop5:
                                    while(true)
                                    {
                                       if(_loc5_ && this)
                                       {
                                          continue loop3;
                                       }
                                       §§push(int(this.§7A§.length));
                                       loop6:
                                       while(true)
                                       {
                                          _loc3_ = §§pop();
                                          addr103:
                                          while(true)
                                          {
                                             if(!_loc5_)
                                             {
                                                if(_loc5_)
                                                {
                                                   break;
                                                }
                                                continue loop6;
                                             }
                                             continue loop5;
                                          }
                                          continue loop4;
                                       }
                                    }
                                    continue loop1;
                                 }
                                 §§goto(addr127);
                              }
                           }
                           continue loop3;
                        }
                        §§goto(addr24);
                     }
                  }
                  addr175:
               }
               §§goto(addr158);
            }
            §§goto(addr175);
         }
         §§goto(addr162);
      }
   }
}
