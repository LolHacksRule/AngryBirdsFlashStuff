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
         if(_loc2_)
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
         if(_loc2_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop() == this.§?!i§)
               {
                  addr100:
                  return;
               }
               addr91:
               while(true)
               {
                  this.§?!i§ = param1;
                  continue loop0;
               }
            }
         }
         §§goto(addr90);
      }
      
      private function §3!6§(param1:TouchEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
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
               addr138:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop5:
                     while(§§pop())
                     {
                        loop6:
                        while(true)
                        {
                           dispatchEventOnChildren(new Event(Event.§[!G§));
                           loop7:
                           while(true)
                           {
                              if(this.§`%§ == null)
                              {
                                 if(!(_loc1_ && _loc2_))
                                 {
                                    if(_loc2_ || this)
                                    {
                                       this.§`%§ = new Vector.<§^[§>(0);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§push(§<!?§.§,=§);
                                          continue loop0;
                                       }
                                       addr141:
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(§<!?§.§,=§);
                                    if(!_loc2_)
                                    {
                                       break;
                                    }
                                    §§pop().addEventListener(Event.CONTEXT3D_CREATE,this.§%!y§);
                                    loop9:
                                    while(!(_loc1_ && _loc1_))
                                    {
                                       if(!(_loc2_ || _loc1_))
                                       {
                                          continue loop7;
                                       }
                                       if(!_loc2_)
                                       {
                                          continue loop6;
                                       }
                                       while(true)
                                       {
                                          addr24:
                                          while(true)
                                          {
                                             §^[§.§ l§(this,this.§`%§);
                                             if(_loc2_)
                                             {
                                                break;
                                             }
                                             continue loop9;
                                          }
                                          break loop5;
                                       }
                                    }
                                 }
                                 continue loop0;
                                 addr97:
                              }
                              §§goto(addr24);
                           }
                        }
                     }
                     return;
                     addr126:
                  }
                  while(true)
                  {
                     §§pop();
                  }
                  §§goto(addr141);
               }
            }
         }
         §§goto(addr69);
      }
      
      public function §;i§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = 0;
         var _loc2_:int = 0;
         if(!_loc3_)
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
                        addr161:
                        do
                        {
                           §§push(§<!?§.§,=§);
                           if(!_loc4_)
                           {
                              continue loop0;
                           }
                           §§push(§§pop().§[&§);
                           if(!(_loc3_ && _loc1_))
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(_loc3_ && _loc2_)
                           {
                              continue loop2;
                           }
                        }
                        while(!_loc3_);
                        
                        continue loop1;
                     }
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop6:
                        while(this.§`%§)
                        {
                           if(_loc4_)
                           {
                              if(_loc4_ || _loc1_)
                              {
                                 addr140:
                                 §§push(§<!?§.§,=§);
                                 continue loop0;
                              }
                              §§goto(addr161);
                           }
                           else
                           {
                              while(true)
                              {
                                 §§push(int(this.§`%§.length));
                                 loop8:
                                 while(true)
                                 {
                                    _loc1_ = §§pop();
                                    addr90:
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          continue loop8;
                                       }
                                       continue loop6;
                                    }
                                 }
                                 if(!(_loc4_ || _loc1_))
                                 {
                                    continue;
                                 }
                                 addr28:
                                 if(_loc2_ >= _loc1_)
                                 {
                                    if(_loc4_ || _loc1_)
                                    {
                                       if(_loc4_)
                                       {
                                          this.§`%§ = null;
                                          addr44:
                                          if(!_loc4_)
                                          {
                                             addr49:
                                             §§goto(addr28);
                                          }
                                          break loop6;
                                       }
                                       _loc2_++;
                                       §§goto(addr49);
                                       addr58:
                                    }
                                    §§goto(addr44);
                                 }
                                 this.§`%§[_loc2_].dispose();
                                 §§goto(addr58);
                              }
                              addr154:
                           }
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr154);
      }
      
      private function §%!y§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§`%§)
            {
               if(!_loc3_)
               {
                  this.§`%§ = new Vector.<§^[§>(0);
               }
               do
               {
                  this.flatten();
               }
               while(_loc3_ && _loc3_);
               
               addr43:
            }
            return;
         }
         §§goto(addr43);
      }
      
      public function get §51§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§`%§ == null);
         if(!_loc2_)
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
         if(_loc5_)
         {
            §§push(Boolean(this.§`%§));
            if(!(_loc6_ && this))
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr175:
                     loop10:
                     while(true)
                     {
                        §§push(color == 16777215);
                        if(!(_loc5_ || this))
                        {
                           continue;
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
                              if(!(_loc5_ || this))
                              {
                                 continue loop10;
                              }
                              param1.§6E§();
                              loop2:
                              while(true)
                              {
                                 §§push(param2);
                                 if(!_loc6_)
                                 {
                                    §§push(§§pop() * this.alpha);
                                    if(_loc5_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 param2 = §§pop();
                                 loop3:
                                 while(!(_loc6_ && param2))
                                 {
                                    §§push(int(this.§`%§.length));
                                    while(true)
                                    {
                                       _loc3_ = §§pop();
                                       while(true)
                                       {
                                          §§push(0);
                                          if(_loc6_)
                                          {
                                             break;
                                          }
                                          _loc4_ = §§pop();
                                          if(_loc5_ || this)
                                          {
                                             if(!_loc6_)
                                             {
                                                continue loop2;
                                             }
                                             continue loop3;
                                          }
                                       }
                                    }
                                 }
                                 continue loop1;
                              }
                           }
                           continue loop10;
                        }
                        while(true)
                        {
                           if(!(_loc6_ && param2))
                           {
                              if(_loc5_)
                              {
                                 §§goto(addr31);
                              }
                              else
                              {
                                 §§goto(addr70);
                              }
                           }
                           §§goto(addr56);
                           §§goto(addr31);
                        }
                        §§goto(addr38);
                     }
                  }
                  addr174:
               }
               §§goto(addr150);
            }
            §§goto(addr174);
         }
         §§goto(addr175);
      }
   }
}
