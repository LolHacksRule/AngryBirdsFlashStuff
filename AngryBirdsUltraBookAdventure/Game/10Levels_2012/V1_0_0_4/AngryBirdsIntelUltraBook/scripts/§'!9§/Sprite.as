package §'!9§
{
   import §<&§.§!j§;
   import §<&§.§^b§;
   import §<&§.§`K§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §!@§:Vector.<§!j§>;
      
      private var §6!g§:Boolean;
      
      public function Sprite()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
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
            this.§=!f§();
         }
         do
         {
            super.dispose();
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§6!g§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(param1);
            loop0:
            for(; §§pop() != this.§6!g§; §§push(this.§6!g§),if(!(_loc2_ && _loc3_))
            {
               if(!§§pop())
               {
                  removeEventListener(TouchEvent.§2!6§,this.§0,§);
                  if(_loc3_ || this)
                  {
                     if(_loc2_)
                     {
                        addr94:
                        §§goto(addr25);
                     }
                     if(_loc2_)
                     {
                        break;
                     }
                     §§goto(addr25);
                  }
                  §§goto(addr25);
               }
               if(_loc3_)
               {
                  addEventListener(TouchEvent.§2!6§,this.§0,§);
               }
               addr25:
               while(true)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     continue loop0;
                  }
                  continue loop1;
               }
               return;
            })
            {
               while(true)
               {
                  this.§6!g§ = param1;
                  §§goto(addr94);
               }
            }
         }
      }
      
      private function §0,§(param1:TouchEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            Mouse.cursor = !!param1.§9[§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
         }
      }
      
      public function flatten() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(§^b§.§9E§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc1_ && _loc2_))
               {
                  if(§§pop())
                  {
                     loop9:
                     while(true)
                     {
                        §§pop();
                        addr141:
                        loop7:
                        while(true)
                        {
                           §§push(§^b§.§9E§);
                           addr113:
                           while(true)
                           {
                              §§push(§§pop().§]d§);
                              if(!_loc1_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              if(!_loc1_)
                              {
                                 break loop7;
                              }
                              continue loop9;
                           }
                           continue loop9;
                        }
                     }
                     addr140:
                  }
                  loop1:
                  for(; §§pop(); §§goto(addr113))
                  {
                     while(true)
                     {
                        dispatchEventOnChildren(new Event(Event.§&!E§));
                        loop3:
                        while(true)
                        {
                           if(this.§!@§ != null)
                           {
                              while(true)
                              {
                                 §!j§.§^!1§(this,this.§!@§);
                                 if(_loc2_ || _loc1_)
                                 {
                                    break;
                                 }
                                 §§goto(addr55);
                              }
                              break loop1;
                           }
                           if(!_loc1_)
                           {
                              if(!(_loc2_ || this))
                              {
                                 break;
                              }
                              this.§!@§ = new Vector.<§!j§>(0);
                           }
                           addr42:
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 §§push(§^b§.§9E§);
                                 if(!_loc1_)
                                 {
                                    if(!_loc2_)
                                    {
                                       break;
                                    }
                                    §§pop().addEventListener(Event.CONTEXT3D_CREATE,this.§!!X§);
                                    continue;
                                 }
                                 continue loop1;
                              }
                              continue loop3;
                           }
                           continue loop0;
                        }
                        §§goto(addr141);
                     }
                  }
                  return;
               }
               §§goto(addr140);
            }
         }
         §§goto(addr42);
      }
      
      public function §=!f§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         if(_loc4_ || _loc3_)
         {
            §§push(§^b§.§9E§);
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
                           §§push(§^b§.§9E§);
                           if(!_loc3_)
                           {
                              if(!_loc4_)
                              {
                                 break;
                              }
                              §§push(§§pop().§]d§);
                              if(_loc4_ || _loc2_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              if(!(_loc3_ && this))
                              {
                                 if(_loc4_)
                                 {
                                    while(§§pop())
                                    {
                                       if(!_loc3_)
                                       {
                                          if(_loc4_ || this)
                                          {
                                             if(this.§!@§)
                                             {
                                                do
                                                {
                                                   §^b§.§9E§.removeEventListener(Event.CONTEXT3D_CREATE,this.§!!X§);
                                                   loop6:
                                                   do
                                                   {
                                                      §§push(int(this.§!@§.length));
                                                      while(true)
                                                      {
                                                         _loc1_ = §§pop();
                                                         while(true)
                                                         {
                                                            §§push(0);
                                                            if(!_loc4_)
                                                            {
                                                               break;
                                                            }
                                                            _loc2_ = §§pop();
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               continue loop6;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   while(_loc3_);
                                                   
                                                }
                                                while(!(_loc4_ || _loc1_));
                                                
                                                while(true)
                                                {
                                                   if(_loc2_ >= _loc1_)
                                                   {
                                                      if(!(_loc3_ && this))
                                                      {
                                                         this.§!@§ = null;
                                                      }
                                                      if(_loc4_ || this)
                                                      {
                                                         break;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      this.§!@§[_loc2_].dispose();
                                                      while(true)
                                                      {
                                                         _loc2_++;
                                                      }
                                                      addr68:
                                                   }
                                                   while(_loc3_)
                                                   {
                                                      §§goto(addr68);
                                                   }
                                                }
                                                addr157:
                                                break;
                                                addr157:
                                             }
                                             break;
                                          }
                                          continue loop3;
                                       }
                                       §§goto(addr157);
                                    }
                                    return;
                                    addr143:
                                 }
                                 continue loop1;
                              }
                              continue loop2;
                           }
                           §§goto(addr159);
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr143);
               }
            }
         }
         §§goto(addr157);
      }
      
      private function §!!X§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§!@§)
            {
               if(!_loc2_)
               {
                  this.§!@§ = new Vector.<§!j§>(0);
                  do
                  {
                     this.flatten();
                  }
                  while(!(_loc3_ || _loc2_));
                  
                  addr58:
               }
               §§goto(addr58);
            }
            return;
         }
         §§goto(addr58);
      }
      
      public function get §+`§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§!@§ == null);
         if(!_loc1_)
         {
            return !§§pop();
         }
      }
      
      override public function render(param1:§`K§, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(_loc5_)
         {
            §§push(Boolean(this.§!@§));
            if(_loc5_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     loop7:
                     while(true)
                     {
                        §§push(color == 16777215);
                        if(!_loc5_)
                        {
                           break;
                        }
                        loop0:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              super.render(param1,param2);
                              break;
                           }
                           while(true)
                           {
                              param1.§!r§();
                              while(true)
                              {
                                 §§push(param2);
                                 if(_loc5_)
                                 {
                                    §§push(§§pop() * this.alpha);
                                    if(_loc5_ || this)
                                    {
                                       addr143:
                                       §§push(Number(§§pop()));
                                    }
                                    param2 = §§pop();
                                    loop8:
                                    while(true)
                                    {
                                       §§push(int(this.§!@§.length));
                                       while(true)
                                       {
                                          _loc3_ = §§pop();
                                          §§push(0);
                                          addr118:
                                          continue loop8;
                                          if(!(_loc5_ || param1))
                                          {
                                             continue;
                                          }
                                          _loc4_ = §§pop();
                                          if(_loc6_)
                                          {
                                             continue loop8;
                                          }
                                          addr27:
                                          if(_loc4_ >= _loc3_)
                                          {
                                             addr31:
                                             if(_loc6_ && this)
                                             {
                                                break loop0;
                                             }
                                             return;
                                             addr38:
                                          }
                                          this.§!@§[_loc4_].render(param1.§8"§,param1.§7!Y§,param2);
                                          while(true)
                                          {
                                             _loc4_++;
                                             addr56:
                                             while(true)
                                             {
                                                §§goto(addr27);
                                             }
                                             §§goto(addr31);
                                             §§goto(addr27);
                                          }
                                       }
                                    }
                                    addr145:
                                 }
                                 §§goto(addr143);
                              }
                           }
                           continue loop7;
                        }
                        while(true)
                        {
                           if(!(_loc6_ && param1))
                           {
                              if(_loc5_)
                              {
                                 §§goto(addr31);
                              }
                              else
                              {
                                 §§goto(addr80);
                              }
                           }
                           §§goto(addr56);
                           §§goto(addr31);
                        }
                        §§goto(addr38);
                     }
                  }
                  addr164:
               }
               §§goto(addr152);
            }
            §§goto(addr164);
         }
         §§goto(addr145);
      }
   }
}
