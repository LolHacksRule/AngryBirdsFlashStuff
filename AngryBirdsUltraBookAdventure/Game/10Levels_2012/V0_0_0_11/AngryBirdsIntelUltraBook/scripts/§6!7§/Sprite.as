package §6!7§
{
   import §0P§.QuadBatch;
   import §0P§.RenderSupport;
   import §0P§.Starling;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §+!'§:Vector.<QuadBatch>;
      
      private var §0!g§:Boolean;
      
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§%s§();
            do
            {
               super.dispose();
            }
            while(!(_loc1_ || _loc2_));
            
         }
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§0!g§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            loop0:
            for(; §§pop() != this.§0!g§; §§push(this.§0!g§),if(_loc3_)
            {
               if(!§§pop())
               {
                  removeEventListener(TouchEvent.§7!;§,this.§%&§);
                  if(!(_loc2_ && param1))
                  {
                     if(_loc2_ && _loc2_)
                     {
                        addr98:
                     }
                  }
                  §§goto(addr20);
               }
               if(_loc3_)
               {
                  if(_loc2_ && _loc2_)
                  {
                     break;
                  }
                  addEventListener(TouchEvent.§7!;§,this.§%&§);
               }
               addr20:
               while(true)
               {
                  if(!(_loc2_ && param1))
                  {
                     continue loop0;
                  }
               }
               return;
            })
            {
               while(true)
               {
                  this.§0!g§ = param1;
                  §§goto(addr98);
               }
            }
            return;
         }
         while(true)
         {
            §§goto(addr94);
         }
      }
      
      private function §%&§(param1:TouchEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            Mouse.cursor = !!param1.§+!7§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
         }
      }
      
      public function flatten() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(Starling.§!!F§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!_loc1_)
               {
                  §§push(§§pop());
                  if(!(_loc1_ && _loc2_))
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     loop9:
                     while(true)
                     {
                        §§pop();
                        addr179:
                        while(true)
                        {
                           §§push(Starling.§!!F§);
                           addr130:
                           while(true)
                           {
                              §§push(§§pop().§[E§);
                              if(!_loc1_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              if(_loc2_ || _loc2_)
                              {
                                 break;
                              }
                              continue loop9;
                           }
                        }
                     }
                     addr178:
                  }
                  loop1:
                  for(; §§pop(); §§goto(addr130))
                  {
                     loop2:
                     while(true)
                     {
                        dispatchEventOnChildren(new Event(Event.§0G§));
                        while(this.§+!'§ == null)
                        {
                           if(_loc2_ || _loc2_)
                           {
                              if(_loc1_ && this)
                              {
                                 continue;
                              }
                              if(!(_loc2_ || this))
                              {
                                 continue loop2;
                              }
                              if(_loc2_ || _loc1_)
                              {
                                 while(true)
                                 {
                                    this.§+!'§ = new Vector.<QuadBatch>(0);
                                 }
                                 addr116:
                              }
                              else
                              {
                                 §§goto(addr179);
                              }
                           }
                           while(true)
                           {
                              §§push(Starling.§!!F§);
                              if(!(_loc1_ && _loc2_))
                              {
                                 continue loop0;
                              }
                              continue loop1;
                           }
                        }
                        while(true)
                        {
                           QuadBatch.§#X§(this,this.§+!'§);
                           if(!(_loc2_ || _loc1_))
                           {
                              continue;
                           }
                           if(_loc2_ || this)
                           {
                              break loop1;
                           }
                           §§goto(addr125);
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
               §§goto(addr178);
            }
         }
         §§goto(addr116);
      }
      
      public function §%s§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(!_loc4_)
         {
            §§push(Starling.§!!F§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  if(_loc3_ || this)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr209:
                        while(true)
                        {
                           §§push(Starling.§!!F§);
                           if(!_loc3_)
                           {
                              continue loop0;
                           }
                           §§push(§§pop().§[E§);
                           if(!_loc4_)
                           {
                              if(!_loc3_)
                              {
                                 continue loop2;
                              }
                              if(_loc4_ && _loc3_)
                              {
                                 break;
                              }
                              §§push(Boolean(§§pop()));
                              if(!(_loc4_ && this))
                              {
                                 while(true)
                                 {
                                    addr159:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          loop6:
                                          while(true)
                                          {
                                             §§push(Boolean(this.§+!'§));
                                             addr163:
                                             while(§§pop())
                                             {
                                                while(true)
                                                {
                                                   §§push(Starling.§!!F§);
                                                   continue loop0;
                                                }
                                                continue loop6;
                                             }
                                          }
                                          addr160:
                                       }
                                       addr23:
                                       return;
                                    }
                                 }
                                 addr158:
                              }
                              §§goto(addr163);
                           }
                           §§goto(addr159);
                        }
                        continue loop1;
                     }
                  }
                  §§goto(addr158);
               }
            }
         }
         §§goto(addr117);
      }
      
      private function §[D§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(this.§+!'§)
            {
               do
               {
                  this.§+!'§ = new Vector.<QuadBatch>(0);
                  do
                  {
                     this.flatten();
                  }
                  while(_loc3_ && _loc3_);
                  
               }
               while(!_loc2_);
               
               addr61:
            }
            return;
         }
         §§goto(addr61);
      }
      
      public function get § C§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§+!'§ == null);
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
         var _loc4_:* = 0;
         if(_loc6_ || _loc3_)
         {
            §§push(Boolean(this.§+!'§));
            if(_loc6_)
            {
               §§push(§§pop());
               if(!_loc5_)
               {
                  §§push(Boolean(§§pop()));
               }
               if(§§pop())
               {
                  loop11:
                  while(true)
                  {
                     §§pop();
                     addr193:
                     loop2:
                     while(true)
                     {
                        §§push(color == 16777215);
                        if(!(_loc5_ && this))
                        {
                           if(_loc5_)
                           {
                              continue loop11;
                           }
                           addr166:
                           §§push(Boolean(§§pop()));
                           while(true)
                           {
                              break loop2;
                              §§goto(addr166);
                           }
                        }
                        break;
                     }
                     loop1:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           super.render(param1,param2);
                           break;
                        }
                        if(!(_loc5_ && _loc3_))
                        {
                           if(_loc6_)
                           {
                              param1.§2^§();
                           }
                           else
                           {
                              §§goto(addr193);
                           }
                        }
                        loop7:
                        while(true)
                        {
                           §§push(param2);
                           if(!_loc5_)
                           {
                              §§push(§§pop() * this.alpha);
                              if(_loc6_ || _loc3_)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           param2 = §§pop();
                           loop8:
                           while(true)
                           {
                              §§push(int(this.§+!'§.length));
                              while(true)
                              {
                                 _loc3_ = §§pop();
                                 §§push(0);
                                 addr124:
                                 continue loop8;
                                 if(!_loc5_)
                                 {
                                    §§push(int(§§pop()));
                                 }
                                 if(!_loc6_)
                                 {
                                    continue;
                                 }
                                 _loc4_ = §§pop();
                                 if(!_loc6_)
                                 {
                                    continue loop8;
                                 }
                                 if(!_loc6_)
                                 {
                                    continue loop7;
                                 }
                                 loop12:
                                 while(true)
                                 {
                                    §§push(_loc4_);
                                    if(_loc6_)
                                    {
                                       if(§§pop() < _loc3_)
                                       {
                                          this.§+!'§[_loc4_].render(param1.§#F§,param1.§>!C§,param2);
                                          addr75:
                                          while(true)
                                          {
                                             §§push(_loc4_);
                                             if(_loc6_)
                                             {
                                                addr71:
                                                §§push(§§pop() + 1);
                                                if(_loc5_)
                                                {
                                                }
                                                while(true)
                                                {
                                                   _loc4_ = §§pop();
                                                   addr72:
                                                   addr39:
                                                   while(true)
                                                   {
                                                      continue loop12;
                                                   }
                                                   addr39:
                                                   if(_loc6_ || param1)
                                                   {
                                                      addr29:
                                                      return;
                                                      addr46:
                                                   }
                                                   break loop1;
                                                }
                                                addr71:
                                             }
                                             §§goto(addr71);
                                             §§goto(addr75);
                                          }
                                          addr97:
                                       }
                                       §§goto(addr39);
                                    }
                                    §§goto(addr71);
                                 }
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        if(!_loc5_)
                        {
                           if(_loc6_ || _loc3_)
                           {
                              §§goto(addr29);
                           }
                           else
                           {
                              §§goto(addr97);
                           }
                        }
                        §§goto(addr72);
                        §§goto(addr39);
                     }
                     §§goto(addr46);
                  }
                  addr192:
               }
               §§goto(addr167);
            }
            §§goto(addr192);
         }
         §§goto(addr110);
      }
   }
}
