package §7!8§
{
   import §5Q§.§%!t§;
   import §5Q§.§,Q§;
   import §5Q§.§^!e§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §=!W§:Vector.<§,Q§>;
      
      private var §<!6§:Boolean;
      
      public function Sprite()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
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
            this.§#!8§();
            do
            {
               super.dispose();
            }
            while(!(_loc2_ || this));
            
         }
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§<!6§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop() == this.§<!6§)
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     break;
                  }
                  while(true)
                  {
                     addr40:
                     if(_loc3_ || _loc2_)
                     {
                        §§goto(addr20);
                     }
                  }
               }
               while(true)
               {
                  this.§<!6§ = param1;
                  continue loop0;
               }
            }
            return;
         }
         addr20:
      }
      
      private function §&"9§(param1:TouchEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            Mouse.cursor = !!param1.§3!0§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
         }
      }
      
      public function flatten() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(§^!e§.§`?§);
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
                           §§push(§^!e§.§`?§);
                           loop4:
                           while(true)
                           {
                              §§push(§§pop().§;!I§);
                              if(!(_loc2_ && _loc1_))
                              {
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 if(_loc2_ && this)
                                 {
                                    continue loop1;
                                 }
                                 §§push(Boolean(§§pop()));
                                 while(true)
                                 {
                                 }
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       dispatchEventOnChildren(new Event(Event.§>"6§));
                                       do
                                       {
                                          if(this.§=!W§ != null)
                                          {
                                             loop10:
                                             while(true)
                                             {
                                                §,Q§.§%!_§(this,this.§=!W§);
                                                if(!(_loc2_ && _loc1_))
                                                {
                                                   if(!(_loc2_ && this))
                                                   {
                                                      break;
                                                   }
                                                }
                                                else
                                                {
                                                   while(!_loc2_)
                                                   {
                                                      if(!_loc1_)
                                                      {
                                                         continue loop3;
                                                      }
                                                      while(true)
                                                      {
                                                         continue loop10;
                                                      }
                                                      continue loop10;
                                                   }
                                                   while(true)
                                                   {
                                                      this.§=!W§ = new Vector.<§,Q§>(0);
                                                   }
                                                   addr88:
                                                   addr78:
                                                }
                                                while(_loc1_)
                                                {
                                                   continue loop4;
                                                }
                                                continue loop5;
                                             }
                                             continue;
                                          }
                                          §§goto(addr88);
                                       }
                                       while(_loc2_ && _loc1_);
                                       
                                    }
                                 }
                                 return;
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
                  §§goto(addr120);
               }
            }
         }
         §§goto(addr82);
      }
      
      public function §#!8§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = 0;
         var _loc2_:int = 0;
         if(_loc4_)
         {
            §§push(§^!e§.§`?§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               addr183:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop3:
                     while(§§pop())
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           if(this.§=!W§)
                           {
                              while(true)
                              {
                                 §§goto(addr157);
                                 addr81:
                                 §§push(§^!e§.§`?§);
                                 if(!(_loc4_ || _loc1_))
                                 {
                                    continue;
                                 }
                                 addr28:
                                 if(_loc2_ >= _loc1_)
                                 {
                                    if(_loc4_)
                                    {
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          if(_loc3_ && _loc3_)
                                          {
                                             _loc2_++;
                                             addr54:
                                             §§goto(addr28);
                                             addr63:
                                          }
                                          this.§=!W§ = null;
                                          addr51:
                                          break loop3;
                                       }
                                       §§goto(addr54);
                                    }
                                    §§goto(addr51);
                                 }
                                 this.§=!W§[_loc2_].dispose();
                                 §§goto(addr63);
                                 addr98:
                              }
                           }
                           break;
                        }
                        loop6:
                        while(true)
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              §§push(int(this.§=!W§.length));
                              loop7:
                              while(true)
                              {
                                 _loc1_ = §§pop();
                                 addr105:
                                 while(_loc4_)
                                 {
                                    continue loop7;
                                 }
                                 continue loop6;
                              }
                           }
                           else
                           {
                              §§goto(addr186);
                           }
                           §§goto(addr157);
                        }
                        §§goto(addr98);
                     }
                     return;
                     addr143:
                  }
                  loop2:
                  while(true)
                  {
                     §§pop();
                     addr186:
                     while(true)
                     {
                        §§push(§^!e§.§`?§);
                        if(!(_loc3_ && _loc2_))
                        {
                           continue loop0;
                        }
                        addr157:
                        while(true)
                        {
                           §§pop().removeEventListener(Event.CONTEXT3D_CREATE,this.§2"'§);
                        }
                        continue loop2;
                     }
                  }
                  §§goto(addr162);
               }
            }
         }
         §§goto(addr186);
      }
      
      private function §2"'§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(this.§=!W§)
            {
               do
               {
                  this.§=!W§ = new Vector.<§,Q§>(0);
                  do
                  {
                     this.flatten();
                  }
                  while(_loc3_ && _loc3_);
                  
               }
               while(!(_loc2_ || _loc2_));
               
               addr69:
            }
            return;
         }
         §§goto(addr69);
      }
      
      public function get §^W§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§=!W§ == null);
         if(!_loc1_)
         {
            return !§§pop();
         }
      }
      
      override public function render(param1:§%!t§, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(_loc5_)
         {
            §§push(Boolean(this.§=!W§));
            if(!(_loc6_ && param1))
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     loop9:
                     while(true)
                     {
                        §§push(color == 16777215);
                        if(_loc6_ && param1)
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
                           loop1:
                           while(true)
                           {
                              param1.§2!Y§();
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
                                 for(; _loc5_ || param2; while(!(_loc6_ && param2))
                                 {
                                    §§goto(addr111);
                                 })
                                 {
                                    §§push(int(this.§=!W§.length));
                                    while(true)
                                    {
                                       _loc3_ = §§pop();
                                       §§push(0);
                                       addr111:
                                       continue loop3;
                                       if(!(_loc5_ || this))
                                       {
                                          continue;
                                       }
                                       _loc4_ = §§pop();
                                       if(!(_loc5_ || param2))
                                       {
                                          continue loop3;
                                       }
                                       if(!_loc5_)
                                       {
                                          continue loop2;
                                       }
                                       if(!(_loc5_ || param2))
                                       {
                                          continue loop9;
                                       }
                                       loop10:
                                       while(true)
                                       {
                                          if(_loc4_ >= _loc3_)
                                          {
                                             if(!_loc5_)
                                             {
                                                break loop0;
                                             }
                                             if(_loc5_)
                                             {
                                                addr23:
                                                return;
                                                addr35:
                                             }
                                          }
                                          else
                                          {
                                             this.§=!W§[_loc4_].render(param1.§"!G§,param1.§^s§,param2);
                                          }
                                          _loc4_++;
                                          addr46:
                                          while(true)
                                          {
                                             continue loop10;
                                          }
                                          §§goto(addr35);
                                       }
                                    }
                                 }
                                 continue loop1;
                              }
                           }
                           continue loop9;
                        }
                        while(!_loc5_)
                        {
                           §§goto(addr46);
                        }
                        §§goto(addr23);
                     }
                  }
                  addr169:
               }
               §§goto(addr142);
            }
            §§goto(addr169);
         }
         §§goto(addr97);
      }
   }
}
