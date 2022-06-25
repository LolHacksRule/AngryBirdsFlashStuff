package §#!,§
{
   import §7!>§.QuadBatch;
   import §7!>§.RenderSupport;
   import §7!>§.Starling;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §^4§:Vector.<QuadBatch>;
      
      private var §?!e§:Boolean;
      
      public function Sprite()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§&!b§();
            do
            {
               super.dispose();
            }
            while(_loc2_);
            
         }
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§?!e§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop() != this.§?!e§)
               {
                  loop1:
                  while(true)
                  {
                     this.§?!e§ = param1;
                     addr93:
                     addr86:
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           continue loop0;
                        }
                     }
                     addr86:
                     if(!_loc2_)
                     {
                        break;
                     }
                     addr101:
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
         §§goto(addr101);
      }
      
      private function §2c§(param1:TouchEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            Mouse.cursor = !!param1.§7q§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
         }
      }
      
      public function flatten() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(Starling.§7!+§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               while(true)
               {
                  §§push(§§pop());
                  if(!(_loc2_ && _loc1_))
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr158:
                        while(true)
                        {
                           §§push(Starling.§7!+§);
                           addr102:
                           §§goto(addr131);
                        }
                     }
                  }
                  while(true)
                  {
                     addr131:
                     while(true)
                     {
                        §§push(§§pop().§']§);
                        if(_loc2_ && this)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     loop4:
                     while(§§pop())
                     {
                        loop5:
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              dispatchEventOnChildren(new Event(Event.§0!!§));
                              loop6:
                              do
                              {
                                 if(this.§^4§ == null)
                                 {
                                    loop7:
                                    while(_loc1_ || _loc2_)
                                    {
                                       this.§^4§ = new Vector.<QuadBatch>(0);
                                       while(true)
                                       {
                                          §§push(Starling.§7!+§);
                                          if(!_loc1_)
                                          {
                                             break;
                                          }
                                          if(!_loc2_)
                                          {
                                             §§pop().addEventListener(Event.CONTEXT3D_CREATE,this.§8!<§);
                                             while(!_loc2_)
                                             {
                                             }
                                             continue loop7;
                                             addr63:
                                          }
                                          continue loop0;
                                          addr38:
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             continue loop6;
                                          }
                                       }
                                       §§goto(addr102);
                                    }
                                    continue loop5;
                                 }
                                 while(true)
                                 {
                                    QuadBatch.§,!$§(this,this.§^4§);
                                    if(_loc1_)
                                    {
                                       §§goto(addr38);
                                    }
                                    §§goto(addr63);
                                 }
                              }
                              while(_loc2_);
                              
                              break loop4;
                           }
                           continue loop12;
                        }
                        continue loop12;
                     }
                     return;
                     §§goto(addr119);
                  }
               }
            }
         }
         §§goto(addr158);
      }
      
      public function §&!b§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         if(!_loc4_)
         {
            §§push(Starling.§7!+§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               addr193:
               while(true)
               {
                  §§push(§§pop());
                  if(_loc3_ || this)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(!§§pop())
                  {
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop11:
                           while(true)
                           {
                              §§push(Boolean(this.§^4§));
                              addr158:
                              loop4:
                              while(true)
                              {
                                 if(!(_loc4_ && this))
                                 {
                                    if(§§pop())
                                    {
                                       while(_loc3_)
                                       {
                                          while(true)
                                          {
                                             §§push(Starling.§7!+§);
                                             addr181:
                                             while(true)
                                             {
                                                §§pop().removeEventListener(Event.CONTEXT3D_CREATE,this.§8!<§);
                                                loop7:
                                                while(true)
                                                {
                                                   §§push(int(this.§^4§.length));
                                                   while(true)
                                                   {
                                                      _loc1_ = §§pop();
                                                      §§push(0);
                                                      addr121:
                                                      continue loop7;
                                                      if(!_loc4_)
                                                      {
                                                         §§push(int(§§pop()));
                                                      }
                                                      if(_loc4_ && this)
                                                      {
                                                         continue;
                                                      }
                                                      _loc2_ = §§pop();
                                                      if(!_loc3_)
                                                      {
                                                         continue loop7;
                                                      }
                                                      if(_loc4_ && this)
                                                      {
                                                         continue loop11;
                                                      }
                                                      addr27:
                                                      §§push(_loc2_);
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         if(§§pop() >= _loc1_)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  this.§^4§ = null;
                                                                  addr45:
                                                                  if(!_loc3_)
                                                                  {
                                                                     addr62:
                                                                     §§goto(addr27);
                                                                  }
                                                                  break loop4;
                                                               }
                                                               §§push(_loc2_);
                                                               if(!(_loc4_ && _loc2_))
                                                               {
                                                                  §§push(§§pop() + 1);
                                                                  if(!_loc3_)
                                                                  {
                                                                  }
                                                                  addr61:
                                                                  _loc2_ = §§pop();
                                                                  §§goto(addr62);
                                                               }
                                                               §§goto(addr61);
                                                               §§push(int(§§pop()));
                                                               addr72:
                                                            }
                                                            §§goto(addr45);
                                                         }
                                                         this.§^4§[_loc2_].dispose();
                                                         §§goto(addr72);
                                                      }
                                                      §§goto(addr61);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    break;
                                 }
                                 addr203:
                                 while(true)
                                 {
                                    §§pop();
                                    continue loop4;
                                 }
                                 while(true)
                                 {
                                    §§push(Starling.§7!+§);
                                    if(!_loc4_)
                                    {
                                       continue loop0;
                                    }
                                    §§goto(addr181);
                                 }
                                 continue loop0;
                              }
                           }
                        }
                        return;
                     }
                     addr153:
                  }
                  §§goto(addr203);
               }
            }
         }
         §§goto(addr178);
      }
      
      private function §8!<§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§^4§)
            {
               if(_loc2_ || this)
               {
                  addr66:
                  this.§^4§ = new Vector.<QuadBatch>(0);
               }
               do
               {
                  this.flatten();
               }
               while(_loc3_ && _loc3_);
               
            }
            return;
         }
         §§goto(addr66);
      }
      
      public function get §@o§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§^4§ == null);
         if(!_loc2_)
         {
            return !§§pop();
         }
      }
      
      override public function render(param1:RenderSupport, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         if(!(_loc5_ && param1))
         {
            §§push(Boolean(this.§^4§));
            loop0:
            while(true)
            {
               §§push(§§pop());
               if(!(_loc5_ && param2))
               {
                  §§push(Boolean(§§pop()));
               }
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     addr218:
                     do
                     {
                        §§push(color == 16777215);
                        if(!_loc5_)
                        {
                           if(!_loc6_)
                           {
                              continue loop1;
                           }
                           §§push(Boolean(§§pop()));
                        }
                     }
                     while(_loc6_);
                     
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
               }
               addr60:
               if(!(_loc5_ && param2))
               {
                  if(!_loc6_)
                  {
                     addr80:
                     addr81:
                     §§push(_loc4_);
                     if(!(_loc5_ && this))
                     {
                        §§push(§§pop() + 1);
                     }
                     _loc4_ = §§pop();
                     addr107:
                     §§push(_loc4_);
                     if(_loc6_ || param2)
                     {
                        if(_loc6_)
                        {
                           if(§§pop() >= _loc3_)
                           {
                              if(!(_loc6_ || param2))
                              {
                                 §§goto(addr60);
                              }
                              §§goto(addr29);
                           }
                           this.§^4§[_loc4_].render(param1.§0v§,param1.§<!=§,param2);
                           §§goto(addr107);
                        }
                        §§goto(addr80);
                     }
                     §§goto(addr81);
                     addr82:
                  }
                  addr29:
                  return;
               }
               §§goto(addr82);
            }
         }
         loop4:
         while(true)
         {
            param1.§"!§();
            loop5:
            while(true)
            {
               if(!(_loc5_ && _loc3_))
               {
                  §§push(param2);
                  if(_loc6_ || param2)
                  {
                     §§push(§§pop() * this.alpha);
                     if(!_loc5_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  param2 = §§pop();
                  loop6:
                  while(true)
                  {
                     §§push(int(this.§^4§.length));
                     while(true)
                     {
                        _loc3_ = §§pop();
                        addr135:
                        while(true)
                        {
                           if(_loc6_)
                           {
                              if(!(_loc6_ || param1))
                              {
                                 break;
                              }
                              continue loop4;
                           }
                           continue loop6;
                        }
                        addr117:
                        continue loop5;
                        if(!(_loc6_ || _loc3_))
                        {
                           continue;
                        }
                        _loc4_ = §§pop();
                        if(!_loc5_)
                        {
                           §§goto(addr80);
                        }
                        else
                        {
                           §§goto(addr135);
                        }
                     }
                  }
               }
               else
               {
                  §§goto(addr218);
               }
            }
         }
      }
   }
}
