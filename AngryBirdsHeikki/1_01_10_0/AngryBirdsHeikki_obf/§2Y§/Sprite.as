package §2Y§
{
   import §"^§.§'X§;
   import §"^§.§+!'§;
   import §"^§.§2v§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §;![§:Vector.<§2v§>;
      
      private var §5§:Boolean;
      
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
         if(_loc2_)
         {
            this.§3!0§();
            do
            {
               super.dispose();
            }
            while(!_loc2_);
            
         }
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§5§;
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
               if(§§pop() == this.§5§)
               {
                  addr106:
                  return;
               }
               addr87:
               addr86:
               while(true)
               {
                  this.§5§ = param1;
                  continue loop0;
               }
               return;
            }
         }
         §§goto(addr73);
      }
      
      private function §%!+§(param1:TouchEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            Mouse.cursor = !!param1.§[t§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
         }
      }
      
      public function flatten() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(§+!'§.§2d§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     loop8:
                     while(true)
                     {
                        §§pop();
                        addr151:
                        while(true)
                        {
                           §§push(§+!'§.§2d§);
                           continue loop8;
                        }
                     }
                     addr150:
                  }
                  loop1:
                  for(; §§pop(); §§goto(addr108))
                  {
                     loop2:
                     while(true)
                     {
                        dispatchEventOnChildren(new Event(Event.§6!a§));
                        loop3:
                        while(true)
                        {
                           if(this.§;![§ != null)
                           {
                              loop7:
                              while(true)
                              {
                                 §2v§.§-#§(this,this.§;![§);
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    addr42:
                                    if(_loc2_ || _loc1_)
                                    {
                                       break;
                                    }
                                    addr90:
                                    while(!_loc1_)
                                    {
                                       this.§;![§ = new Vector.<§2v§>(0);
                                       §§goto(addr42);
                                    }
                                    continue loop3;
                                 }
                                 addr82:
                                 while(!_loc1_)
                                 {
                                    continue loop7;
                                 }
                                 while(true)
                                 {
                                    if(!_loc1_)
                                    {
                                       if(_loc1_)
                                       {
                                          break;
                                       }
                                       §§push(§+!'§.§2d§);
                                       if(_loc2_ || this)
                                       {
                                          continue loop0;
                                       }
                                       continue loop1;
                                    }
                                    continue loop2;
                                 }
                                 §§goto(addr151);
                              }
                              addr49:
                              break loop1;
                           }
                           §§goto(addr90);
                        }
                     }
                  }
                  return;
               }
               §§goto(addr150);
            }
         }
         §§goto(addr49);
      }
      
      public function §3!0§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = 0;
         var _loc2_:int = 0;
         if(_loc4_ || _loc3_)
         {
            §§push(§+!'§.§2d§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     loop9:
                     while(true)
                     {
                        §§pop();
                        loop4:
                        while(true)
                        {
                           §§push(§+!'§.§2d§);
                           if(_loc3_ && this)
                           {
                              break;
                           }
                           if(_loc4_)
                           {
                              §§push(§§pop().§<!]§);
                              if(!(_loc3_ && _loc1_))
                              {
                                 if(!(_loc4_ || _loc2_))
                                 {
                                    continue loop9;
                                 }
                                 addr142:
                                 §§push(Boolean(§§pop()));
                                 while(true)
                                 {
                                    §§goto(addr142);
                                 }
                              }
                              loop2:
                              while(§§pop())
                              {
                                 while(true)
                                 {
                                    if(_loc4_)
                                    {
                                       while(this.§;![§)
                                       {
                                          while(true)
                                          {
                                             §§push(§+!'§.§2d§);
                                             break loop4;
                                          }
                                       }
                                       break loop2;
                                       addr147:
                                    }
                                    continue loop4;
                                 }
                              }
                              addr29:
                              return;
                           }
                           continue loop0;
                        }
                        while(true)
                        {
                           §§pop().removeEventListener(Event.CONTEXT3D_CREATE,this.§3!c§);
                           loop6:
                           while(true)
                           {
                              §§push(int(this.§;![§.length));
                              loop7:
                              while(true)
                              {
                                 _loc1_ = §§pop();
                                 addr105:
                                 while(_loc4_)
                                 {
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       continue loop7;
                                    }
                                    §§goto(addr145);
                                 }
                                 continue loop6;
                              }
                           }
                           §§goto(addr150);
                        }
                     }
                     addr175:
                  }
                  §§goto(addr143);
               }
               §§goto(addr175);
            }
         }
         §§goto(addr147);
      }
      
      private function §3!c§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§;![§)
            {
               do
               {
                  this.§;![§ = new Vector.<§2v§>(0);
                  do
                  {
                     this.flatten();
                  }
                  while(!(_loc3_ || param1));
                  
               }
               while(_loc2_ && _loc2_);
               
               addr65:
            }
            return;
         }
         §§goto(addr65);
      }
      
      public function get §%!>§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§;![§ == null);
         if(!_loc1_)
         {
            return !§§pop();
         }
      }
      
      override public function render(param1:§'X§, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         if(_loc6_)
         {
            §§push(Boolean(this.§;![§));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr166:
                     while(true)
                     {
                        §§push(color == 16777215);
                        if(_loc5_ && this)
                        {
                           continue;
                        }
                        if(!_loc6_)
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
                  if(!(_loc5_ && param2))
                  {
                     param1.§;!S§();
                  }
                  while(true)
                  {
                     §§push(param2);
                     if(_loc6_)
                     {
                        §§push(§§pop() * this.alpha);
                        if(!(_loc5_ && _loc3_))
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     param2 = §§pop();
                     while(!(_loc5_ && _loc3_))
                     {
                        §§push(int(this.§;![§.length));
                        loop5:
                        while(true)
                        {
                           _loc3_ = §§pop();
                           addr98:
                           while(!_loc5_)
                           {
                              continue loop5;
                           }
                           §§goto(addr166);
                        }
                     }
                  }
               }
               if(_loc5_)
               {
                  §§goto(addr28);
               }
               §§goto(addr24);
            }
         }
         §§goto(addr166);
      }
   }
}
