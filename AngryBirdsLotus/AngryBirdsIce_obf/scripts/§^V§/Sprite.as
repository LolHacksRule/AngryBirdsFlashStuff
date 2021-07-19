package §^V§
{
   import §-Z§.§ G§;
   import §-Z§.§0o§;
   import §-Z§.§?h§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §,z§:Vector.<§0o§>;
      
      private var §3r§:Boolean;
      
      public function Sprite()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§]P§();
         }
         do
         {
            super.dispose();
         }
         while(!(_loc1_ || _loc1_));
         
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§3r§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1);
         while(§§pop() != this.§3r§)
         {
            this.§3r§ = param1;
            §§push(this.§3r§);
            if(_loc3_ && _loc3_)
            {
               continue;
            }
            if(!§§pop())
            {
               removeEventListener(TouchEvent.§[<§,this.§&=§);
               if(_loc3_ && _loc3_)
               {
                  addr77:
               }
               return;
            }
            if(_loc2_)
            {
               addEventListener(TouchEvent.§[<§,this.§&=§);
            }
            §§goto(addr77);
         }
      }
      
      private function §&=§(param1:TouchEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            Mouse.cursor = !!param1.§8<§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
         }
      }
      
      public function flatten() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§?h§.§ n§);
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
                     addr143:
                     while(true)
                     {
                        addr118:
                        §§push(§?h§.§ n§.§,!A§);
                        if(_loc1_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(!_loc2_)
                        {
                           break;
                        }
                        continue loop8;
                     }
                  }
                  addr142:
               }
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(_loc1_)
                     {
                        dispatchEventOnChildren(new Event(Event.§ -§));
                        loop3:
                        while(true)
                        {
                           if(this.§,z§ != null)
                           {
                              loop6:
                              while(true)
                              {
                                 §0o§.§,!#§(this,this.§,z§);
                                 if(!(_loc2_ && this))
                                 {
                                    break;
                                 }
                                 addr67:
                                 while(true)
                                 {
                                    if(_loc1_)
                                    {
                                       if(_loc2_ && _loc2_)
                                       {
                                          break;
                                       }
                                       continue loop6;
                                    }
                                    continue loop3;
                                 }
                                 continue loop2;
                              }
                           }
                           if(_loc1_ || this)
                           {
                              this.§,z§ = new Vector.<§0o§>(0);
                           }
                        }
                     }
                     §§goto(addr143);
                  }
                  break;
                  §§goto(addr118);
               }
               return;
            }
            §§goto(addr142);
            if(!(_loc1_ || _loc2_))
            {
               continue;
            }
            §§pop().addEventListener(Event.CONTEXT3D_CREATE,this.§ ,§);
            §§goto(addr67);
         }
      }
      
      public function §]P§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         if(_loc3_ || _loc1_)
         {
            §§push(§?h§.§ n§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc3_ || _loc2_)
               {
                  if(§§pop())
                  {
                     loop5:
                     while(true)
                     {
                        §§pop();
                        addr159:
                        loop6:
                        while(true)
                        {
                           §§push(§?h§.§ n§);
                           if(!(_loc4_ && this))
                           {
                              §§push(§§pop().§,!A§);
                              if(!_loc3_)
                              {
                                 loop2:
                                 while(§§pop())
                                 {
                                    loop3:
                                    while(true)
                                    {
                                       if(_loc3_)
                                       {
                                          if(!this.§,z§)
                                          {
                                             break loop2;
                                             addr138:
                                          }
                                          §§push(§?h§.§ n§);
                                          while(true)
                                          {
                                             if(_loc4_)
                                             {
                                                break loop3;
                                             }
                                             §§pop().removeEventListener(Event.CONTEXT3D_CREATE,this.§ ,§);
                                             §§push(int(this.§,z§.length));
                                             do
                                             {
                                                _loc1_ = §§pop();
                                                if(_loc3_)
                                                {
                                                   continue;
                                                }
                                                continue loop3;
                                             }
                                             while(§§push(0), !(_loc3_ || this));
                                             
                                             _loc2_ = §§pop();
                                             addr32:
                                             if(_loc2_ >= _loc1_)
                                             {
                                                if(_loc3_ || _loc3_)
                                                {
                                                   this.§,z§ = null;
                                                }
                                                if(!_loc4_)
                                                {
                                                   if(_loc4_ && _loc3_)
                                                   {
                                                      _loc2_++;
                                                      addr58:
                                                      §§goto(addr32);
                                                      addr77:
                                                   }
                                                   break loop2;
                                                }
                                                §§goto(addr58);
                                             }
                                             this.§,z§[_loc2_].dispose();
                                             §§goto(addr77);
                                          }
                                       }
                                       continue loop6;
                                    }
                                    continue loop0;
                                 }
                              }
                              else
                              {
                                 addr120:
                              }
                              continue loop5;
                              return;
                           }
                           §§goto(addr138);
                        }
                     }
                     addr158:
                  }
                  while(true)
                  {
                     §§goto(addr120);
                     §§goto(addr118);
                  }
               }
               §§goto(addr158);
            }
         }
         §§goto(addr159);
      }
      
      private function § ,§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§,z§)
            {
               if(!(_loc3_ && this))
               {
                  addr49:
                  this.§,z§ = new Vector.<§0o§>(0);
               }
               do
               {
                  this.flatten();
               }
               while(!_loc2_);
               
            }
            return;
         }
         §§goto(addr49);
      }
      
      public function get § R§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§,z§ == null);
         if(_loc1_ || _loc2_)
         {
            return !§§pop();
         }
      }
      
      override public function render(param1:§ G§, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         §§push(Boolean(this.§,z§));
         loop0:
         while(true)
         {
            if(§§pop())
            {
               loop1:
               while(true)
               {
                  §§pop();
                  addr154:
                  do
                  {
                     §§push(color == 16777215);
                     if(!_loc5_)
                     {
                        continue loop1;
                     }
                  }
                  while(_loc5_);
                  
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
               param1.§ ]§();
               do
               {
                  §§push(param2);
                  if(_loc5_ || param2)
                  {
                     §§push(§§pop() * this.alpha);
                     if(!(_loc6_ && _loc3_))
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  param2 = §§pop();
                  do
                  {
                     §§push(int(this.§,z§.length));
                     do
                     {
                        _loc3_ = §§pop();
                        §§push(0);
                     }
                     while(_loc6_ && param1);
                     
                     _loc4_ = §§pop();
                  }
                  while(_loc6_);
                  
               }
               while(_loc6_);
               
               if(_loc5_ || this)
               {
                  addr25:
                  if(_loc4_ >= _loc3_)
                  {
                     if(!_loc6_)
                     {
                        if(_loc5_ || _loc3_)
                        {
                           if(_loc6_)
                           {
                              _loc4_++;
                              addr49:
                              §§goto(addr25);
                              addr73:
                           }
                           §§goto(addr21);
                        }
                        §§goto(addr49);
                     }
                     break;
                  }
                  this.§,z§[_loc4_].render(param1.context,param1.§4L§,param2);
                  §§goto(addr73);
               }
               else
               {
                  §§goto(addr154);
               }
            }
            addr21:
            return;
         }
      }
   }
}
