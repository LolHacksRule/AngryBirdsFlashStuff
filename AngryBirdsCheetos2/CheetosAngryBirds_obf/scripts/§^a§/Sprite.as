package §^a§
{
   import §6;§.§%[§;
   import §6;§.§1!B§;
   import §6;§.§2^§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §[$§:Vector.<§1!B§>;
      
      private var §`6§:Boolean;
      
      public function Sprite()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
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
            this.§<!Z§();
            do
            {
               super.dispose();
            }
            while(_loc2_);
            
         }
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§`6§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop() != this.§`6§)
               {
                  loop1:
                  while(true)
                  {
                     this.§`6§ = param1;
                     addr89:
                     while(true)
                     {
                        if(_loc3_)
                        {
                           continue loop0;
                        }
                     }
                     addr72:
                     if(_loc3_)
                     {
                        break;
                     }
                     addr97:
                     while(true)
                     {
                        continue loop1;
                     }
                  }
                  addr25:
                  return;
               }
               return;
            }
         }
         §§goto(addr97);
      }
      
      private function §#!f§(param1:TouchEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            Mouse.cursor = !!param1.§=a§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
         }
      }
      
      public function flatten() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§%[§.§`1§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               addr137:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                     }
                     addr139:
                  }
                  else
                  {
                     while(true)
                     {
                        addr116:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop5:
                              while(true)
                              {
                                 dispatchEventOnChildren(new Event(Event.§^!U§));
                                 addr133:
                                 loop8:
                                 while(true)
                                 {
                                    if(this.§[$§ != null)
                                    {
                                       while(true)
                                       {
                                          §1!B§.§<d§(this,this.§[$§);
                                          if(_loc2_)
                                          {
                                             continue loop8;
                                          }
                                          if(_loc1_)
                                          {
                                             addr33:
                                             if(_loc1_ || _loc1_)
                                             {
                                                if(_loc1_)
                                                {
                                                   §§goto(addr19);
                                                }
                                                continue loop5;
                                             }
                                             addr76:
                                             while(true)
                                             {
                                                this.§[$§ = new Vector.<§1!B§>(0);
                                                §§goto(addr33);
                                             }
                                          }
                                          while(_loc1_ || _loc1_)
                                          {
                                             §§push(§%[§.§`1§);
                                             if(_loc1_)
                                             {
                                                §§pop().addEventListener(Event.CONTEXT3D_CREATE,this.§&!S§);
                                                continue loop8;
                                             }
                                             continue loop0;
                                          }
                                          while(true)
                                          {
                                             §§push(§%[§.§`1§);
                                             continue loop0;
                                          }
                                       }
                                       addr23:
                                    }
                                    §§goto(addr76);
                                 }
                              }
                           }
                           addr19:
                           return;
                        }
                     }
                     addr115:
                  }
                  §§goto(addr140);
               }
            }
         }
         §§goto(addr133);
      }
      
      public function §<!Z§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = 0;
         var _loc2_:int = 0;
         if(_loc3_ || _loc2_)
         {
            §§push(§%[§.§`1§);
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
                           §§push(§%[§.§`1§);
                           if(_loc3_)
                           {
                              §§push(§§pop().§[!Q§);
                              if(!_loc4_)
                              {
                                 if(!_loc3_)
                                 {
                                    continue loop2;
                                 }
                                 §§push(Boolean(§§pop()));
                              }
                              if(!_loc3_)
                              {
                                 break;
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop9:
                                    while(true)
                                    {
                                       if(_loc4_ && _loc2_)
                                       {
                                          continue loop3;
                                       }
                                       if(this.§[$§)
                                       {
                                          loop10:
                                          while(true)
                                          {
                                             §§push(§%[§.§`1§);
                                             addr141:
                                             while(!_loc4_)
                                             {
                                                §§pop().removeEventListener(Event.CONTEXT3D_CREATE,this.§&!S§);
                                                while(true)
                                                {
                                                   §§push(int(this.§[$§.length));
                                                   loop6:
                                                   while(true)
                                                   {
                                                      _loc1_ = §§pop();
                                                      addr111:
                                                      while(true)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            continue loop6;
                                                         }
                                                         continue loop9;
                                                      }
                                                   }
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      if(!(_loc4_ && _loc1_))
                                                      {
                                                         while(true)
                                                         {
                                                            if(_loc2_ >= _loc1_)
                                                            {
                                                               if(_loc3_ || this)
                                                               {
                                                                  this.§[$§ = null;
                                                               }
                                                               if(_loc3_)
                                                               {
                                                                  break;
                                                               }
                                                               loop13:
                                                               while(!(_loc3_ || _loc3_))
                                                               {
                                                                  while(true)
                                                                  {
                                                                     _loc2_++;
                                                                     continue loop13;
                                                                  }
                                                               }
                                                               continue;
                                                            }
                                                            this.§[$§[_loc2_].dispose();
                                                            §§goto(addr67);
                                                         }
                                                         §§goto(addr28);
                                                      }
                                                      continue loop10;
                                                   }
                                                }
                                                continue loop10;
                                             }
                                             continue loop0;
                                          }
                                       }
                                    }
                                 }
                                 addr28:
                                 return;
                              }
                           }
                           §§goto(addr141);
                        }
                        continue loop1;
                     }
                  }
                  §§goto(addr127);
               }
            }
         }
         §§goto(addr113);
      }
      
      private function §&!S§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(this.§[$§)
            {
               if(_loc3_ || this)
               {
                  this.§[$§ = new Vector.<§1!B§>(0);
               }
               do
               {
                  this.flatten();
               }
               while(_loc2_);
               
               addr44:
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function get §-q§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§[$§ == null);
         if(_loc2_)
         {
            return !§§pop();
         }
      }
      
      override public function render(param1:§2^§, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(_loc5_ || param1)
         {
            §§push(Boolean(this.§[$§));
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
                        if(_loc6_ && _loc3_)
                        {
                           continue;
                        }
                        if(_loc6_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               loop2:
               while(true)
               {
                  if(!§§pop())
                  {
                     super.render(param1,param2);
                     break;
                  }
                  loop3:
                  while(true)
                  {
                     param1.§9,§();
                     while(_loc5_)
                     {
                        §§push(param2);
                        if(!_loc6_)
                        {
                           §§push(§§pop() * this.alpha);
                           if(_loc5_)
                           {
                              addr127:
                              §§push(Number(§§pop()));
                           }
                           param2 = §§pop();
                           loop5:
                           for(; _loc5_ || this; while(_loc5_ || param1)
                           {
                              §§goto(addr117);
                           })
                           {
                              if(_loc6_ && param2)
                              {
                                 continue loop3;
                              }
                              §§push(int(this.§[$§.length));
                              while(true)
                              {
                                 _loc3_ = §§pop();
                                 §§push(0);
                                 addr117:
                                 continue loop5;
                                 if(!_loc5_)
                                 {
                                    continue;
                                 }
                                 _loc4_ = §§pop();
                                 if(!(_loc5_ || this))
                                 {
                                    continue loop5;
                                 }
                                 addr32:
                                 if(_loc4_ >= _loc3_)
                                 {
                                    if(!(_loc6_ && param2))
                                    {
                                       if(!(_loc5_ || param2))
                                       {
                                          _loc4_++;
                                          addr66:
                                          §§goto(addr32);
                                          addr80:
                                       }
                                       §§goto(addr28);
                                    }
                                    break loop2;
                                 }
                                 this.§[$§[_loc4_].render(param1.§'!&§,param1.§?#§,param2);
                                 §§goto(addr80);
                              }
                           }
                           continue;
                        }
                        §§goto(addr127);
                     }
                  }
               }
               if(_loc6_ && param2)
               {
                  §§goto(addr66);
               }
               addr28:
               return;
            }
         }
         §§goto(addr180);
      }
   }
}
