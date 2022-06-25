package §`g§
{
   import §2m§.§<!?§;
   import §2m§.§@>§;
   import §2m§.§^[§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §`%§:Vector.<§^[§>;
      
      private var §?!i§:Boolean;
      
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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§;i§();
            do
            {
               super.dispose();
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§?!i§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop() != this.§?!i§)
               {
                  while(true)
                  {
                     this.§?!i§ = param1;
                     addr98:
                     addr93:
                     while(true)
                     {
                        if(_loc2_ || this)
                        {
                           continue loop0;
                        }
                     }
                     §§goto(addr24);
                  }
                  addr56:
                  addr24:
                  return;
                  addr94:
               }
               return;
            }
         }
         §§goto(addr111);
      }
      
      private function §3!6§(param1:TouchEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            Mouse.cursor = !!param1.§6!c§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
         }
      }
      
      public function flatten() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§<!?§.§,=§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc2_)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        addr140:
                        while(§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              dispatchEventOnChildren(new Event(Event.§[!G§));
                              while(true)
                              {
                                 if(this.§`%§ == null)
                                 {
                                    while(!(_loc1_ && _loc2_))
                                    {
                                       if(!(_loc1_ && this))
                                       {
                                          this.§`%§ = new Vector.<§^[§>(0);
                                          loop6:
                                          while(true)
                                          {
                                             §§push(§<!?§.§,=§);
                                             if(!(_loc2_ || this))
                                             {
                                                break;
                                             }
                                             §§pop().addEventListener(Event.CONTEXT3D_CREATE,this.§%!y§);
                                             while(true)
                                             {
                                                if(!(_loc1_ && _loc2_))
                                                {
                                                   if(!(_loc2_ || _loc2_))
                                                   {
                                                      break;
                                                   }
                                                   continue;
                                                }
                                                continue loop6;
                                             }
                                             addr156:
                                             loop10:
                                             while(true)
                                             {
                                                §§push(§<!?§.§,=§);
                                                break loop6;
                                                addr155:
                                                while(true)
                                                {
                                                   §§pop();
                                                   continue loop10;
                                                }
                                             }
                                          }
                                          continue loop0;
                                       }
                                       continue loop3;
                                    }
                                    continue;
                                 }
                                 §§goto(addr24);
                              }
                           }
                        }
                        return;
                        addr138:
                     }
                  }
                  §§goto(addr156);
               }
               §§goto(addr155);
            }
         }
         §§goto(addr156);
      }
      
      public function §;i§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = 0;
         var _loc2_:int = 0;
         if(_loc3_)
         {
            §§push(§<!?§.§,=§);
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
                        while(true)
                        {
                           §§push(§<!?§.§,=§);
                           if(!_loc4_)
                           {
                              §§push(§§pop().§[&§);
                              if(!(_loc4_ && _loc1_))
                              {
                                 if(_loc4_ && this)
                                 {
                                    continue loop2;
                                 }
                                 §§push(Boolean(§§pop()));
                              }
                              if(!(_loc4_ && _loc3_))
                              {
                                 while(§§pop())
                                 {
                                    if(_loc3_ || _loc1_)
                                    {
                                       if(this.§`%§)
                                       {
                                          addr159:
                                          loop9:
                                          while(true)
                                          {
                                             §§push(§<!?§.§,=§);
                                             addr161:
                                             while(!_loc4_)
                                             {
                                                §§pop().removeEventListener(Event.CONTEXT3D_CREATE,this.§%!y§);
                                                continue loop9;
                                             }
                                             continue loop0;
                                          }
                                          addr159:
                                       }
                                       break;
                                    }
                                    loop5:
                                    while(true)
                                    {
                                       §§push(int(this.§`%§.length));
                                       loop6:
                                       while(true)
                                       {
                                          _loc1_ = §§pop();
                                          addr104:
                                          while(true)
                                          {
                                             if(_loc3_)
                                             {
                                                if(_loc4_)
                                                {
                                                   break;
                                                }
                                                continue loop6;
                                             }
                                             continue loop5;
                                          }
                                          §§goto(addr159);
                                       }
                                    }
                                 }
                                 return;
                                 addr147:
                              }
                              break;
                           }
                           §§goto(addr161);
                        }
                        continue loop1;
                     }
                  }
                  §§goto(addr147);
               }
            }
         }
         §§goto(addr159);
      }
      
      private function §%!y§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§`%§)
            {
               do
               {
                  this.§`%§ = new Vector.<§^[§>(0);
                  do
                  {
                     this.flatten();
                  }
                  while(_loc3_);
                  
               }
               while(!(_loc2_ || _loc2_));
               
               addr45:
            }
            return;
         }
         §§goto(addr45);
      }
      
      public function get §51§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§`%§ == null);
         if(_loc2_ || _loc2_)
         {
            return !§§pop();
         }
      }
      
      override public function render(param1:§@>§, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(_loc5_ || param2)
         {
            §§push(Boolean(this.§`%§));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     addr165:
                     do
                     {
                        §§push(color == 16777215);
                        if(_loc6_)
                        {
                           continue loop1;
                        }
                     }
                     while(_loc5_);
                     
                     continue loop0;
                  }
               }
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
                     param1.§6E§();
                     loop5:
                     while(true)
                     {
                        §§push(param2);
                        if(!(_loc6_ && param1))
                        {
                           §§push(§§pop() * this.alpha);
                           if(!_loc6_)
                           {
                              addr137:
                              §§push(Number(§§pop()));
                           }
                           param2 = §§pop();
                           loop6:
                           do
                           {
                              if(!_loc5_)
                              {
                                 continue loop5;
                              }
                              if(_loc6_)
                              {
                                 continue loop4;
                              }
                              if(!_loc6_)
                              {
                                 §§push(int(this.§`%§.length));
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                    while(true)
                                    {
                                       §§push(0);
                                       if(!(_loc5_ || param2))
                                       {
                                          break;
                                       }
                                       _loc4_ = §§pop();
                                       if(_loc5_ || param2)
                                       {
                                          continue loop6;
                                       }
                                    }
                                 }
                              }
                              else
                              {
                                 §§goto(addr165);
                              }
                           }
                           while(!(_loc5_ || _loc3_));
                           
                           loop9:
                           while(true)
                           {
                              if(_loc4_ >= _loc3_)
                              {
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                                 break loop3;
                              }
                              this.§`%§[_loc4_].render(param1.§"Y§,param1.§7w§,param2);
                              loop11:
                              while(true)
                              {
                                 _loc4_++;
                                 addr54:
                                 while(!_loc5_)
                                 {
                                    continue loop11;
                                 }
                                 continue loop9;
                              }
                           }
                           addr28:
                           return;
                           addr105:
                        }
                        §§goto(addr137);
                     }
                  }
               }
               if(!(_loc5_ || _loc3_))
               {
                  §§goto(addr54);
               }
               §§goto(addr28);
            }
         }
         §§goto(addr105);
      }
   }
}
