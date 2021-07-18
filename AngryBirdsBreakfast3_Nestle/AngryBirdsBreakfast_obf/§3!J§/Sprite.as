package §3!J§
{
   import §!!!§.§-!k§;
   import §!!!§.§6!l§;
   import §!!!§.§<@§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §?m§:Vector.<§-!k§>;
      
      private var §8'§:Boolean;
      
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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§<4§();
         }
         do
         {
            super.dispose();
         }
         while(!(_loc2_ || this));
         
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§8'§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1);
            loop0:
            while(§§pop() != this.§8'§)
            {
               while(true)
               {
                  this.§8'§ = param1;
                  do
                  {
                     §§push(this.§8'§);
                     if(!(_loc2_ || this))
                     {
                        continue loop0;
                     }
                     if(§§pop())
                     {
                        continue;
                     }
                     removeEventListener(TouchEvent.§>P§,this.§]!'§);
                     if(!(_loc3_ && _loc2_))
                     {
                        if(!_loc2_)
                        {
                           continue;
                        }
                        if(!(_loc2_ || _loc2_))
                        {
                           break loop0;
                        }
                     }
                     else
                     {
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              §§goto(addr86);
                           }
                           §§goto(addr85);
                        }
                        addr83:
                     }
                     §§goto(addr86);
                  }
                  while(!(_loc2_ || param1));
                  
                  continue loop0;
               }
               return;
            }
            return;
         }
         while(true)
         {
            addEventListener(TouchEvent.§>P§,this.§]!'§);
            §§goto(addr83);
         }
      }
      
      private function §]!'§(param1:TouchEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            Mouse.cursor = !!param1.§0!k§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
         }
      }
      
      public function flatten() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(§6!l§.§+J§);
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
                        addr140:
                        while(true)
                        {
                           §§push(§6!l§.§+J§);
                           addr95:
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 continue loop0;
                              }
                              §§push(§§pop().§[! §);
                              if(_loc1_ || this)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              if(_loc2_)
                              {
                                 break;
                              }
                              if(_loc2_ && _loc2_)
                              {
                                 continue loop1;
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
                  loop3:
                  while(§§pop())
                  {
                     loop4:
                     while(true)
                     {
                        dispatchEventOnChildren(new Event(Event.§3o§));
                        loop5:
                        while(true)
                        {
                           if(this.§?m§ == null)
                           {
                              loop6:
                              while(true)
                              {
                                 this.§?m§ = new Vector.<§-!k§>(0);
                                 loop7:
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       §§push(§6!l§.§+J§);
                                       if(_loc2_)
                                       {
                                          break;
                                          addr49:
                                       }
                                       §§pop().addEventListener(Event.CONTEXT3D_CREATE,this.§'"1§);
                                       while(true)
                                       {
                                          if(!(_loc2_ && _loc1_))
                                          {
                                             continue loop6;
                                          }
                                          continue loop7;
                                       }
                                       continue loop5;
                                    }
                                    continue loop4;
                                 }
                                 §§goto(addr95);
                              }
                           }
                           while(true)
                           {
                              §-!k§.§=!A§(this,this.§?m§);
                              if(_loc1_)
                              {
                                 if(!_loc2_)
                                 {
                                    break loop3;
                                 }
                                 §§goto(addr140);
                              }
                              else
                              {
                                 §§goto(addr49);
                              }
                           }
                        }
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr140);
      }
      
      public function §<4§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = 0;
         var _loc2_:int = 0;
         if(!(_loc3_ && _loc2_))
         {
            §§push(§6!l§.§+J§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr176:
                        loop8:
                        while(true)
                        {
                           §§push(§6!l§.§+J§);
                           if(!(_loc3_ && this))
                           {
                              §§push(§§pop().§[! §);
                              if(!(_loc3_ && this))
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              if(!_loc3_)
                              {
                                 if(_loc4_ || _loc3_)
                                 {
                                    while(§§pop())
                                    {
                                       if(_loc4_ || _loc3_)
                                       {
                                          if(this.§?m§)
                                          {
                                             loop4:
                                             while(true)
                                             {
                                                if(_loc3_ && _loc3_)
                                                {
                                                   continue loop8;
                                                }
                                                §§push(§6!l§.§+J§);
                                                while(true)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      break loop4;
                                                   }
                                                   §§pop().removeEventListener(Event.CONTEXT3D_CREATE,this.§'"1§);
                                                }
                                             }
                                             continue loop0;
                                             addr143:
                                          }
                                          break;
                                       }
                                       do
                                       {
                                          §§push(int(this.§?m§.length));
                                          loop6:
                                          while(true)
                                          {
                                             _loc1_ = §§pop();
                                             addr100:
                                             while(true)
                                             {
                                                if(_loc4_)
                                                {
                                                   continue loop6;
                                                }
                                                §§goto(addr143);
                                             }
                                          }
                                       }
                                       while(!_loc4_);
                                       
                                       addr33:
                                       if(_loc2_ >= _loc1_)
                                       {
                                          if(!_loc3_)
                                          {
                                             if(_loc4_ || _loc1_)
                                             {
                                                this.§?m§ = null;
                                                addr49:
                                                if(_loc3_ && this)
                                                {
                                                   _loc2_++;
                                                   addr59:
                                                   §§goto(addr33);
                                                   addr68:
                                                }
                                                break;
                                             }
                                             §§goto(addr59);
                                          }
                                          §§goto(addr49);
                                       }
                                       this.§?m§[_loc2_].dispose();
                                       §§goto(addr68);
                                    }
                                    return;
                                    addr131:
                                 }
                                 continue loop1;
                              }
                              continue;
                           }
                           §§goto(addr152);
                        }
                     }
                  }
                  §§goto(addr131);
               }
            }
         }
         §§goto(addr176);
      }
      
      private function §'"1§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§?m§)
            {
               if(_loc3_ || _loc2_)
               {
                  this.§?m§ = new Vector.<§-!k§>(0);
               }
               do
               {
                  this.flatten();
               }
               while(!_loc3_);
               
               addr39:
            }
            return;
         }
         §§goto(addr39);
      }
      
      public function get §1!,§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§?m§ == null);
         if(_loc2_ || _loc1_)
         {
            return !§§pop();
         }
      }
      
      override public function render(param1:§<@§, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         if(_loc5_ || _loc3_)
         {
            §§push(Boolean(this.§?m§));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr180:
                     while(true)
                     {
                        §§push(color == 16777215);
                        if(!(_loc5_ || param1))
                        {
                           break;
                        }
                        if(!_loc5_)
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
                  if(!(_loc6_ && _loc3_))
                  {
                     param1.§6!s§();
                  }
               }
               §§goto(addr49);
            }
         }
         loop4:
         while(true)
         {
            §§push(param2);
            if(!(_loc6_ && param1))
            {
               §§push(§§pop() * this.alpha);
               if(!(_loc6_ && param1))
               {
                  addr134:
                  §§push(Number(§§pop()));
               }
               param2 = §§pop();
               while(true)
               {
                  if(!_loc6_)
                  {
                     §§push(int(this.§?m§.length));
                     loop6:
                     while(true)
                     {
                        _loc3_ = §§pop();
                        addr112:
                        while(!_loc6_)
                        {
                           continue loop6;
                        }
                        continue loop4;
                     }
                  }
                  else
                  {
                     §§goto(addr180);
                  }
                  addr49:
                  if(_loc6_ && param2)
                  {
                     addr59:
                     if(!(_loc6_ && _loc3_))
                     {
                        addr32:
                        if(_loc4_ >= _loc3_)
                        {
                           if(!(_loc5_ || param1))
                           {
                              §§goto(addr49);
                           }
                           §§goto(addr28);
                        }
                        this.§?m§[_loc4_].render(param1.§!! §,param1.§6?§,param2);
                     }
                     _loc4_++;
                     §§goto(addr59);
                  }
                  addr28:
                  return;
               }
            }
            §§goto(addr134);
         }
      }
   }
}
