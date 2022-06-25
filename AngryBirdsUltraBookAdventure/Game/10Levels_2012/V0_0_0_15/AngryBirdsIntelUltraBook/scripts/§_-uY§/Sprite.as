package §_-uY§
{
   import §_-0Ea§.§_-AY§;
   import §_-0Ea§.§_-XW§;
   import §_-0Ea§.§_-zM§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §_-04§:Vector.<§_-XW§>;
      
      private var §_-S5§:Boolean;
      
      public function Sprite()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§_-6e§();
            do
            {
               super.dispose();
            }
            while(_loc1_);
            
         }
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§_-S5§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            loop0:
            while(§§pop() != this.§_-S5§)
            {
               while(true)
               {
                  this.§_-S5§ = param1;
                  while(true)
                  {
                     §§push(this.§_-S5§);
                     if(_loc2_ && param1)
                     {
                        continue loop0;
                     }
                     if(!§§pop())
                     {
                        removeEventListener(TouchEvent.§_-ed§,this.§_-04d§);
                        if(!(_loc2_ && _loc2_))
                        {
                           if(!_loc3_)
                           {
                              addr81:
                              if(_loc3_ || param1)
                              {
                                 break;
                              }
                              continue;
                           }
                           if(_loc2_ && _loc2_)
                           {
                              §§goto(addr97);
                           }
                           §§goto(addr59);
                        }
                        addr94:
                        if(_loc2_)
                        {
                           break loop0;
                        }
                        §§goto(addr97);
                     }
                     §§goto(addr81);
                  }
                  continue loop0;
               }
               return;
            }
            return;
         }
         addEventListener(TouchEvent.§_-ed§,this.§_-04d§);
         §§goto(addr94);
      }
      
      private function §_-04d§(param1:TouchEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            Mouse.cursor = !!param1.§_-Se§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
         }
      }
      
      public function flatten() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(§_-AY§.§_-un§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc1_)
               {
                  if(§§pop())
                  {
                     loop8:
                     while(true)
                     {
                        §§pop();
                        addr135:
                        while(true)
                        {
                           §§push(§_-AY§.§_-un§);
                           continue loop8;
                        }
                     }
                     addr134:
                  }
                  loop1:
                  while(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        dispatchEventOnChildren(new Event(Event.§_-YD§));
                        loop3:
                        while(true)
                        {
                           if(this.§_-04§ == null)
                           {
                              loop4:
                              while(_loc1_)
                              {
                                 this.§_-04§ = new Vector.<§_-XW§>(0);
                                 while(true)
                                 {
                                    if(_loc1_)
                                    {
                                       §§push(§_-AY§.§_-un§);
                                       if(_loc1_ || this)
                                       {
                                          if(_loc2_)
                                          {
                                             break;
                                             addr71:
                                          }
                                          §§pop().addEventListener(Event.CONTEXT3D_CREATE,this.§_-Hs§);
                                          while(_loc1_)
                                          {
                                             if(!_loc1_)
                                             {
                                                continue loop4;
                                             }
                                          }
                                          continue;
                                       }
                                       §§goto(addr107);
                                       continue loop1;
                                    }
                                    continue loop3;
                                 }
                                 continue loop0;
                              }
                              §§goto(addr135);
                           }
                           while(true)
                           {
                              §_-XW§.§_-go§(this,this.§_-04§);
                              if(!_loc2_)
                              {
                                 break;
                              }
                              §§goto(addr71);
                           }
                           if(!(_loc2_ && this))
                           {
                              break loop2;
                           }
                           continue loop2;
                        }
                     }
                     break;
                  }
                  return;
               }
               §§goto(addr134);
            }
         }
         §§goto(addr43);
      }
      
      public function §_-6e§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = 0;
         var _loc2_:int = 0;
         if(_loc4_)
         {
            §§push(§_-AY§.§_-un§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc4_ || _loc1_)
               {
                  if(§§pop())
                  {
                     addr170:
                     while(true)
                     {
                        §§pop();
                        loop8:
                        while(true)
                        {
                           §§push(§_-AY§.§_-un§);
                           if(!_loc3_)
                           {
                              continue loop0;
                           }
                           loop4:
                           while(true)
                           {
                              §§pop().removeEventListener(Event.CONTEXT3D_CREATE,this.§_-Hs§);
                              loop5:
                              while(true)
                              {
                                 §§push(int(this.§_-04§.length));
                                 loop6:
                                 while(true)
                                 {
                                    _loc1_ = §§pop();
                                    addr95:
                                    while(true)
                                    {
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          if(!_loc3_)
                                          {
                                             continue loop6;
                                          }
                                          continue loop8;
                                       }
                                       addr145:
                                       while(this.§_-04§)
                                       {
                                          if(_loc4_)
                                          {
                                             §§push(§_-AY§.§_-un§);
                                             continue loop4;
                                          }
                                          continue loop5;
                                       }
                                    }
                                    continue loop8;
                                 }
                              }
                              addr88:
                              while(true)
                              {
                                 if(_loc2_ >= _loc1_)
                                 {
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       if(_loc3_)
                                       {
                                          continue;
                                       }
                                       if(_loc4_ || _loc2_)
                                       {
                                          this.§_-04§ = null;
                                          break;
                                       }
                                       _loc2_++;
                                       continue;
                                       addr63:
                                    }
                                    break;
                                 }
                                 this.§_-04§[_loc2_].dispose();
                                 §§goto(addr63);
                              }
                           }
                        }
                        continue loop0;
                     }
                     addr170:
                  }
                  else
                  {
                     while(true)
                     {
                        addr144:
                        while(true)
                        {
                           if(§§pop())
                           {
                              §§goto(addr145);
                           }
                        }
                        addr132:
                     }
                  }
                  return;
               }
               §§goto(addr170);
            }
         }
         §§goto(addr88);
      }
      
      private function §_-Hs§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§_-04§)
            {
               loop0:
               while(true)
               {
                  this.§_-04§ = new Vector.<§_-XW§>(0);
                  addr58:
                  while(true)
                  {
                     this.flatten();
                     if(!(_loc2_ && _loc2_))
                     {
                        if(_loc3_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr30);
               }
            }
            addr30:
            return;
         }
         §§goto(addr58);
      }
      
      public function get §_-088§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§_-04§ == null);
         if(!_loc1_)
         {
            return !§§pop();
         }
      }
      
      override public function render(param1:§_-zM§, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(!(_loc6_ && this))
         {
            §§push(Boolean(this.§_-04§));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     addr190:
                     do
                     {
                        §§push(color == 16777215);
                        if(!(_loc5_ || _loc3_))
                        {
                           continue loop1;
                        }
                     }
                     while(!_loc6_);
                     
                     continue loop0;
                  }
               }
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
                     param1.§_-oR§();
                     addr181:
                     while(_loc5_)
                     {
                        §§push(param2);
                        if(_loc5_ || this)
                        {
                           §§push(§§pop() * this.alpha);
                           if(_loc5_ || param1)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        param2 = §§pop();
                        continue loop4;
                     }
                     §§goto(addr190);
                  }
               }
               addr49:
               if(_loc5_ || _loc3_)
               {
                  if(_loc6_)
                  {
                     _loc4_++;
                     addr61:
                     while(true)
                     {
                        if(_loc4_ >= _loc3_)
                        {
                           if(_loc5_ || param2)
                           {
                              break;
                           }
                           §§goto(addr49);
                        }
                        else
                        {
                           this.§_-04§[_loc4_].render(param1.§_-FC§,param1.§_-bc§,param2);
                        }
                        §§goto(addr75);
                        §§goto(addr61);
                     }
                     addr75:
                     addr28:
                     return;
                     addr32:
                  }
                  §§goto(addr28);
               }
               §§goto(addr61);
            }
         }
         §§goto(addr32);
      }
   }
}
