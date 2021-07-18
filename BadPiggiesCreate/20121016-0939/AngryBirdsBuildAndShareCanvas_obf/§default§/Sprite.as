package §default§
{
   import §6p§.§5!W§;
   import §6p§.§50§;
   import §6p§.§?%§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §,!6§:Vector.<§50§>;
      
      private var §9!s§:Boolean;
      
      public function Sprite()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
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
            this.§4J§();
         }
         do
         {
            super.dispose();
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§9!s§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(param1);
            loop0:
            while(§§pop() != this.§9!s§)
            {
               while(true)
               {
                  this.§9!s§ = param1;
                  continue loop0;
               }
            }
            addr105:
            return;
            addr102:
         }
         while(true)
         {
            §§push(this.§9!s§);
            if(!(_loc3_ && this))
            {
               if(§§pop())
               {
                  continue;
               }
               removeEventListener(TouchEvent.§9>§,this.§9R§);
               if(!(_loc2_ || _loc3_))
               {
                  break;
               }
               if(_loc2_ || _loc3_)
               {
                  §§goto(addr24);
               }
            }
            else
            {
               §§goto(addr102);
            }
            §§goto(addr86);
         }
         if(!_loc3_)
         {
            addr24:
            return;
         }
         §§goto(addr105);
      }
      
      private function §9R§(param1:TouchEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            Mouse.cursor = !!param1.§]%§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
         }
      }
      
      public function flatten() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(§?%§.§%b§);
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
                           §§push(§?%§.§%b§);
                           loop4:
                           while(true)
                           {
                              §§push(§§pop().§=7§);
                              if(!_loc1_)
                              {
                                 if(_loc1_)
                                 {
                                    continue loop2;
                                 }
                                 if(!(_loc2_ || this))
                                 {
                                    continue loop1;
                                 }
                                 §§push(Boolean(§§pop()));
                                 while(true)
                                 {
                                 }
                              }
                              while(§§pop())
                              {
                                 loop5:
                                 do
                                 {
                                    dispatchEventOnChildren(new Event(Event.§^n§));
                                    while(!(_loc1_ && _loc2_))
                                    {
                                       if(this.§,!6§ != null)
                                       {
                                          while(true)
                                          {
                                             §50§.§]!`§(this,this.§,!6§);
                                             if(_loc2_)
                                             {
                                                if(!(_loc1_ && _loc1_))
                                                {
                                                   break;
                                                }
                                                continue loop4;
                                             }
                                             addr86:
                                             while(_loc1_)
                                             {
                                                while(true)
                                                {
                                                   this.§,!6§ = new Vector.<§50§>(0);
                                                   continue loop4;
                                                }
                                             }
                                          }
                                          if(!_loc1_)
                                          {
                                             continue loop5;
                                          }
                                          continue;
                                       }
                                       §§goto(addr94);
                                    }
                                    continue loop3;
                                 }
                                 while(!(_loc2_ || _loc2_));
                                 
                                 break loop4;
                              }
                              break;
                           }
                           return;
                        }
                     }
                  }
                  §§goto(addr119);
               }
               if(_loc1_ && _loc1_)
               {
                  continue;
               }
               §§pop().addEventListener(Event.CONTEXT3D_CREATE,this.§6h§);
               §§goto(addr86);
            }
         }
         §§goto(addr94);
      }
      
      public function §4J§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         if(_loc4_ || _loc3_)
         {
            §§push(§?%§.§%b§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               addr178:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop3:
                     while(§§pop())
                     {
                        if(_loc4_)
                        {
                           if(!(_loc3_ && _loc1_))
                           {
                              if(this.§,!6§)
                              {
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §?%§.§%b§.removeEventListener(Event.CONTEXT3D_CREATE,this.§6h§);
                                    addr159:
                                 }
                                 loop5:
                                 while(true)
                                 {
                                    §§push(int(this.§,!6§.length));
                                    while(true)
                                    {
                                       _loc1_ = §§pop();
                                       §§push(0);
                                       addr100:
                                       continue loop5;
                                       if(!_loc4_)
                                       {
                                          continue;
                                       }
                                       _loc2_ = §§pop();
                                       if(!_loc4_)
                                       {
                                          continue loop5;
                                       }
                                       addr33:
                                       if(_loc2_ >= _loc1_)
                                       {
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             this.§,!6§ = null;
                                          }
                                          if(_loc4_)
                                          {
                                             if(!(_loc4_ || _loc3_))
                                             {
                                                _loc2_++;
                                                addr59:
                                                §§goto(addr33);
                                                addr68:
                                             }
                                             break loop3;
                                          }
                                          §§goto(addr59);
                                       }
                                       this.§,!6§[_loc2_].dispose();
                                       §§goto(addr68);
                                    }
                                 }
                              }
                              break;
                           }
                           §§goto(addr181);
                        }
                        §§goto(addr159);
                     }
                     return;
                     addr136:
                  }
                  loop2:
                  while(true)
                  {
                     §§pop();
                     addr181:
                     while(true)
                     {
                        §§push(§?%§.§%b§);
                        if(!(_loc3_ && _loc1_))
                        {
                           continue loop0;
                        }
                        continue loop2;
                     }
                  }
                  §§goto(addr159);
               }
            }
         }
         §§goto(addr181);
      }
      
      private function §6h§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(this.§,!6§)
            {
               if(!(_loc2_ && param1))
               {
                  addr65:
                  this.§,!6§ = new Vector.<§50§>(0);
               }
               do
               {
                  this.flatten();
               }
               while(_loc2_);
               
            }
            return;
         }
         §§goto(addr65);
      }
      
      public function get §="&§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§,!6§ == null);
         if(!(_loc2_ && _loc1_))
         {
            return !§§pop();
         }
      }
      
      override public function render(param1:§5!W§, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(!_loc6_)
         {
            §§push(Boolean(this.§,!6§));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr165:
                     while(true)
                     {
                        §§push(color == 16777215);
                        if(_loc6_)
                        {
                           break;
                        }
                        if(_loc6_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               while(true)
               {
                  if(!§§pop())
                  {
                     super.render(param1,param2);
                     break;
                  }
               }
               §§goto(addr23);
            }
         }
         loop4:
         while(true)
         {
            param1.§"F§();
            loop5:
            while(true)
            {
               §§push(param2);
               if(_loc5_)
               {
                  §§push(§§pop() * this.alpha);
                  if(!_loc6_)
                  {
                     addr117:
                     §§push(Number(§§pop()));
                  }
                  param2 = §§pop();
                  while(true)
                  {
                     if(!_loc6_)
                     {
                        continue loop4;
                     }
                     continue loop5;
                     addr93:
                     if(!(_loc5_ || _loc3_))
                     {
                        continue;
                     }
                     addr27:
                     if(_loc4_ >= _loc3_)
                     {
                        if(!_loc6_)
                        {
                           if(_loc6_ && param2)
                           {
                              addr49:
                              if(_loc5_ || param1)
                              {
                                 §§goto(addr27);
                              }
                              _loc4_++;
                              §§goto(addr49);
                              addr70:
                           }
                           §§goto(addr23);
                        }
                        addr23:
                        return;
                     }
                     this.§,!6§[_loc4_].render(param1.§`-§,param1.§[!3§,param2);
                     §§goto(addr70);
                  }
                  continue loop4;
               }
               §§goto(addr117);
            }
         }
      }
   }
}
