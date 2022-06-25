package §1!&§
{
   import §"$§.QuadBatch;
   import §"$§.RenderSupport;
   import §"$§.Starling;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §!v§:Vector.<QuadBatch>;
      
      private var §+!P§:Boolean;
      
      public function Sprite()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§"!8§();
            do
            {
               super.dispose();
            }
            while(_loc2_ && _loc1_);
            
         }
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§+!P§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop() != this.§+!P§)
               {
                  addr98:
                  while(true)
                  {
                     this.§+!P§ = param1;
                     addr102:
                     while(_loc2_)
                     {
                        continue loop0;
                     }
                  }
                  addr98:
               }
               return;
            }
            addr106:
         }
         while(true)
         {
            §§push(this.§+!P§);
            if(_loc2_ || _loc2_)
            {
               if(!§§pop())
               {
                  removeEventListener(TouchEvent.§@!;§,this.§=o§);
                  if(_loc2_)
                  {
                     if(!(_loc3_ && this))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           §§goto(addr24);
                        }
                        §§goto(addr98);
                     }
                     else
                     {
                        addr87:
                        addEventListener(TouchEvent.§@!;§,this.§=o§);
                        addr95:
                        if(!_loc3_)
                        {
                           break;
                        }
                     }
                     §§goto(addr102);
                  }
                  §§goto(addr95);
               }
               §§goto(addr87);
            }
            else
            {
               §§goto(addr106);
            }
         }
         addr24:
      }
      
      private function §=o§(param1:TouchEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            Mouse.cursor = !!param1.§]!@§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
         }
      }
      
      public function flatten() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(Starling.§'!A§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc1_)
               {
                  §§push(§§pop());
                  if(_loc1_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     loop9:
                     while(true)
                     {
                        §§pop();
                        addr143:
                        while(true)
                        {
                           §§push(Starling.§'!A§);
                           addr92:
                           while(true)
                           {
                              §§push(§§pop().§6?§);
                              if(!_loc2_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              if(_loc1_ || this)
                              {
                                 break;
                              }
                              continue loop9;
                           }
                        }
                     }
                     addr142:
                  }
                  loop1:
                  for(; §§pop(); §§goto(addr92))
                  {
                     loop2:
                     while(true)
                     {
                        dispatchEventOnChildren(new Event(Event.§8Z§));
                        loop3:
                        while(_loc1_ || _loc2_)
                        {
                           if(this.§!v§ != null)
                           {
                              loop6:
                              do
                              {
                                 QuadBatch.§#U§(this,this.§!v§);
                                 if(!_loc1_)
                                 {
                                    while(_loc1_)
                                    {
                                       continue loop6;
                                    }
                                    continue loop3;
                                    addr56:
                                 }
                              }
                              while(_loc2_);
                              
                              addr35:
                              break loop1;
                           }
                           if(_loc1_)
                           {
                              if(_loc2_)
                              {
                                 continue loop2;
                              }
                              this.§!v§ = new Vector.<QuadBatch>(0);
                           }
                           while(true)
                           {
                              §§push(Starling.§'!A§);
                              if(!_loc2_)
                              {
                                 continue loop0;
                              }
                              continue loop1;
                           }
                           continue loop0;
                        }
                        §§goto(addr143);
                     }
                  }
                  return;
               }
               §§goto(addr142);
            }
         }
         §§goto(addr35);
      }
      
      public function §"!8§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = 0;
         var _loc2_:int = 0;
         if(!(_loc3_ && this))
         {
            §§push(Starling.§'!A§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!_loc3_)
               {
                  §§push(§§pop());
                  if(_loc4_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(!§§pop())
                  {
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop2:
                           while(true)
                           {
                              if(!(_loc3_ && this))
                              {
                                 addr162:
                                 §§push(Boolean(this.§!v§));
                                 loop3:
                                 while(true)
                                 {
                                    if(_loc4_ || _loc3_)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc4_ || _loc1_)
                                          {
                                             §§push(Starling.§'!A§);
                                             break;
                                          }
                                          loop4:
                                          while(true)
                                          {
                                             §§push(int(this.§!v§.length));
                                             addr112:
                                             while(true)
                                             {
                                                _loc1_ = §§pop();
                                                continue loop4;
                                             }
                                          }
                                          addr197:
                                       }
                                       break loop2;
                                    }
                                    addr209:
                                    while(true)
                                    {
                                       §§pop();
                                       addr210:
                                       while(true)
                                       {
                                          §§push(Starling.§'!A§);
                                          if(_loc3_ && _loc1_)
                                          {
                                             break loop3;
                                          }
                                          continue loop0;
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§pop().removeEventListener(Event.CONTEXT3D_CREATE,this.§>!R§);
                                    §§goto(addr197);
                                 }
                                 addr162:
                              }
                              §§goto(addr210);
                           }
                        }
                        Boolean(§§pop());
                        addr142:
                        return;
                        if(_loc4_ || _loc1_)
                        {
                           continue;
                        }
                        §§goto(addr162);
                     }
                  }
               }
               §§goto(addr209);
            }
         }
         §§goto(addr210);
      }
      
      private function §>!R§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(this.§!v§)
            {
               if(_loc2_ || this)
               {
                  this.§!v§ = new Vector.<QuadBatch>(0);
                  do
                  {
                     this.flatten();
                  }
                  while(!_loc2_);
                  
                  addr75:
               }
               §§goto(addr75);
            }
            return;
         }
         §§goto(addr75);
      }
      
      public function get §`1§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§!v§ == null);
         if(_loc1_ || _loc1_)
         {
            return !§§pop();
         }
      }
      
      override public function render(param1:RenderSupport, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(!(_loc5_ && _loc3_))
         {
            §§push(Boolean(this.§!v§));
            loop0:
            while(true)
            {
               §§push(§§pop());
               if(!_loc5_)
               {
                  §§push(Boolean(§§pop()));
               }
               if(!§§pop())
               {
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
                        param1.§&M§();
                        addr196:
                        addr208:
                        while(_loc6_)
                        {
                           while(true)
                           {
                              §§push(param2);
                              if(_loc6_ || param1)
                              {
                                 §§push(§§pop() * this.alpha);
                                 if(_loc6_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                              param2 = §§pop();
                              continue loop4;
                           }
                        }
                        while(true)
                        {
                           §§push(color == 16777215);
                           if(_loc6_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(!_loc6_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                     }
                  }
                  §§goto(addr29);
                  addr191:
               }
               while(true)
               {
                  §§pop();
                  §§goto(addr208);
               }
            }
         }
         §§goto(addr198);
      }
   }
}
