package §7!B§
{
   import §!!K§.§?%§;
   import §!!K§.§`L§;
   import §!!K§.§else§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §0!H§:Vector.<§`L§>;
      
      private var §5E§:Boolean;
      
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
         if(!(_loc1_ && _loc1_))
         {
            this.§&-§();
         }
         do
         {
            super.dispose();
         }
         while(!_loc2_);
         
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§5E§;
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
               if(§§pop() == this.§5E§)
               {
                  if(!_loc3_)
                  {
                     break;
                  }
                  addr96:
                  while(true)
                  {
                  }
               }
               while(true)
               {
                  this.§5E§ = param1;
                  addr86:
                  addr75:
                  addr81:
                  while(true)
                  {
                     if(_loc2_)
                     {
                        continue loop0;
                     }
                  }
                  addr19:
                  addEventListener(TouchEvent.§^!>§,this.§`!D§);
                  return;
               }
            }
            return;
         }
         §§goto(addr96);
      }
      
      private function §`!D§(param1:TouchEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            Mouse.cursor = !!param1.§;L§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
         }
      }
      
      public function flatten() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(§else§.§^!A§);
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
                        addr146:
                        while(true)
                        {
                           §§push(§else§.§^!A§);
                           addr103:
                           while(true)
                           {
                              §§push(§§pop().§,i§);
                              if(!(_loc1_ && _loc2_))
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              if(!_loc2_)
                              {
                                 break;
                              }
                              if(!(_loc2_ || this))
                              {
                                 continue loop1;
                              }
                              addr99:
                              while(true)
                              {
                                 §§push(§else§.§^!A§);
                                 if(_loc1_)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
                  loop5:
                  while(§§pop())
                  {
                     loop6:
                     while(true)
                     {
                        dispatchEventOnChildren(new Event(Event.§]!+§));
                        loop7:
                        while(true)
                        {
                           if(this.§0!H§ != null)
                           {
                              loop11:
                              while(true)
                              {
                                 §`L§.§+!&§(this,this.§0!H§);
                                 if(_loc2_)
                                 {
                                    if(!(_loc1_ && _loc2_))
                                    {
                                       break loop5;
                                    }
                                    §§goto(addr146);
                                 }
                                 else
                                 {
                                    loop10:
                                    while(!_loc1_)
                                    {
                                       if(!_loc2_)
                                       {
                                          while(_loc2_)
                                          {
                                             this.§0!H§ = new Vector.<§`L§>(0);
                                             break loop10;
                                          }
                                          continue loop6;
                                          addr89:
                                       }
                                       if(!(_loc2_ || _loc1_))
                                       {
                                          continue loop7;
                                       }
                                       while(true)
                                       {
                                          continue loop11;
                                       }
                                    }
                                    §§goto(addr99);
                                    addr72:
                                 }
                                 §§goto(addr103);
                              }
                           }
                           §§goto(addr89);
                        }
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr83);
      }
      
      public function §&-§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = 0;
         var _loc2_:int = 0;
         if(_loc4_)
         {
            §§push(§else§.§^!A§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc4_ || _loc3_)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr171:
                        loop9:
                        while(true)
                        {
                           §§push(§else§.§^!A§);
                           if(!(_loc3_ && _loc2_))
                           {
                              continue loop0;
                           }
                           addr152:
                           while(true)
                           {
                              §§pop().removeEventListener(Event.CONTEXT3D_CREATE,this.§3!r§);
                              while(true)
                              {
                                 §§push(int(this.§0!H§.length));
                                 loop6:
                                 while(true)
                                 {
                                    _loc1_ = §§pop();
                                    addr97:
                                    while(true)
                                    {
                                       if(_loc4_)
                                       {
                                          continue loop6;
                                       }
                                    }
                                 }
                              }
                              if(_loc4_ || this)
                              {
                                 break;
                              }
                              continue loop9;
                           }
                           addr28:
                           if(_loc2_ >= _loc1_)
                           {
                              if(!_loc3_)
                              {
                                 this.§0!H§ = null;
                              }
                              if(!(_loc3_ && _loc1_))
                              {
                                 if(_loc3_)
                                 {
                                    _loc2_++;
                                    addr49:
                                    §§goto(addr28);
                                    addr58:
                                 }
                                 §§goto(addr24);
                              }
                              §§goto(addr49);
                           }
                           this.§0!H§[_loc2_].dispose();
                           §§goto(addr58);
                        }
                        addr125:
                        if(!(_loc4_ || _loc2_))
                        {
                           continue;
                        }
                        §§push(Boolean(§§pop()));
                        while(true)
                        {
                           addr144:
                           while(§§pop())
                           {
                              if(!_loc3_)
                              {
                                 if(!this.§0!H§)
                                 {
                                 }
                                 break;
                              }
                              while(true)
                              {
                                 §§goto(addr152);
                              }
                           }
                           addr24:
                           return;
                           §§goto(addr132);
                        }
                        addr132:
                        addr143:
                     }
                     addr170:
                  }
                  else
                  {
                     §§goto(addr143);
                  }
                  §§goto(addr150);
               }
               §§goto(addr170);
            }
         }
         §§goto(addr171);
      }
      
      private function §3!r§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(this.§0!H§)
            {
               do
               {
                  this.§0!H§ = new Vector.<§`L§>(0);
                  do
                  {
                     this.flatten();
                  }
                  while(_loc2_);
                  
               }
               while(_loc2_);
               
               addr46:
            }
            return;
         }
         §§goto(addr46);
      }
      
      public function get §?S§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§0!H§ == null);
         if(_loc1_ || this)
         {
            return !§§pop();
         }
      }
      
      override public function render(param1:§?%§, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(!(_loc5_ && _loc3_))
         {
            §§push(Boolean(this.§0!H§));
            if(!(_loc5_ && param1))
            {
               if(§§pop())
               {
                  loop4:
                  while(true)
                  {
                     §§pop();
                     addr186:
                     while(true)
                     {
                        §§push(color == 16777215);
                        if(!(_loc5_ && _loc3_))
                        {
                           break;
                        }
                        continue loop4;
                     }
                  }
                  addr185:
               }
               loop0:
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
                     param1.§8l§();
                     loop2:
                     while(!(_loc5_ && param2))
                     {
                        while(true)
                        {
                           §§push(param2);
                           if(!(_loc5_ && param2))
                           {
                              §§push(§§pop() * this.alpha);
                              if(!(_loc5_ && _loc3_))
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           param2 = §§pop();
                           loop6:
                           do
                           {
                              §§push(int(this.§0!H§.length));
                              while(true)
                              {
                                 _loc3_ = §§pop();
                                 while(true)
                                 {
                                    §§push(0);
                                    if(_loc5_)
                                    {
                                       break;
                                    }
                                    _loc4_ = §§pop();
                                    if(!(_loc5_ && param2))
                                    {
                                       continue loop6;
                                    }
                                 }
                              }
                           }
                           while(!(_loc6_ || this));
                           
                           if(!_loc6_)
                           {
                              continue loop2;
                           }
                           if(!_loc6_)
                           {
                              continue loop1;
                           }
                           addr33:
                           if(_loc4_ >= _loc3_)
                           {
                              if(_loc6_ || param2)
                              {
                                 if(!(_loc6_ || param1))
                                 {
                                    addr60:
                                    if(_loc6_)
                                    {
                                       §§goto(addr33);
                                    }
                                    _loc4_++;
                                    §§goto(addr60);
                                    addr76:
                                 }
                                 §§goto(addr29);
                              }
                              break loop0;
                           }
                           this.§0!H§[_loc4_].render(param1.§5Y§,param1.§7!n§,param2);
                           §§goto(addr76);
                        }
                     }
                     continue loop0;
                  }
               }
               addr29:
               return;
            }
            §§goto(addr185);
         }
         §§goto(addr172);
      }
   }
}
