package §!!U§
{
   import §&#H§.§%"H§;
   import §&#H§.§%"Y§;
   import §&#H§.§3#J§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §=!<§:Vector.<§%"Y§>;
      
      private var §2!'§:Boolean;
      
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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§1!h§();
         }
         do
         {
            super.dispose();
         }
         while(!_loc2_);
         
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§2!'§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            loop0:
            for(; §§pop() != this.§2!'§; do
            {
               §§push(this.§2!'§);
               if(!_loc3_)
               {
                  continue loop0;
               }
               if(!§§pop())
               {
                  removeEventListener(TouchEvent.§;!1§,this.§2#5§);
                  if(_loc3_ || _loc3_)
                  {
                     if(!_loc2_)
                     {
                        §§goto(addr20);
                     }
                     break loop0;
                  }
                  continue;
               }
               if(!(_loc3_ || param1))
               {
                  continue;
               }
               if(!_loc2_)
               {
                  addEventListener(TouchEvent.§;!1§,this.§2#5§);
                  continue;
               }
            }
            while(!_loc3_);
            ,addr20:,return)
            {
               while(true)
               {
                  this.§2!'§ = param1;
                  continue loop0;
               }
            }
            return;
         }
         while(true)
         {
            §§goto(addr77);
         }
      }
      
      private function §2#5§(param1:TouchEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            Mouse.cursor = !!param1.§79§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
         }
      }
      
      public function flatten() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(§3#J§.§2!C§);
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
                           §§push(§3#J§.§2!C§);
                           loop4:
                           while(true)
                           {
                              §§push(§§pop().§;#E§);
                              if(!(_loc2_ && this))
                              {
                                 if(_loc2_ && _loc1_)
                                 {
                                    continue loop2;
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
                              while(§§pop())
                              {
                                 loop7:
                                 while(true)
                                 {
                                    dispatchEventOnChildren(new Event(Event.§[#J§));
                                    loop8:
                                    while(!_loc2_)
                                    {
                                       if(this.§=!<§ == null)
                                       {
                                          if(_loc1_ || this)
                                          {
                                             this.§=!<§ = new Vector.<§%"Y§>(0);
                                          }
                                          continue loop4;
                                       }
                                       loop11:
                                       while(true)
                                       {
                                          §%"Y§.§[;§(this,this.§=!<§);
                                          if(_loc1_)
                                          {
                                             continue loop7;
                                          }
                                          addr66:
                                          addr66:
                                          while(true)
                                          {
                                             if(!(_loc2_ && _loc2_))
                                             {
                                                if(!_loc1_)
                                                {
                                                   break;
                                                }
                                                continue loop11;
                                             }
                                             continue loop4;
                                          }
                                          continue loop8;
                                       }
                                    }
                                    continue loop3;
                                 }
                              }
                              break;
                           }
                           return;
                        }
                     }
                  }
                  §§goto(addr133);
               }
               if(!(_loc1_ || this))
               {
                  continue;
               }
               §§pop().addEventListener(Event.CONTEXT3D_CREATE,this.§%!b§);
               §§goto(addr66);
            }
         }
         §§goto(addr135);
      }
      
      public function §1!h§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = 0;
         var _loc2_:int = 0;
         if(!(_loc4_ && _loc3_))
         {
            §§push(§3#J§.§2!C§);
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
                           loop10:
                           while(true)
                           {
                              §§push(§3#J§.§2!C§);
                              if(_loc3_ || _loc1_)
                              {
                                 §§push(§§pop().§;#E§);
                                 if(_loc3_)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(_loc4_ && _loc3_)
                                 {
                                    continue loop2;
                                 }
                                 if(_loc4_)
                                 {
                                    break loop3;
                                 }
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          if(this.§=!<§)
                                          {
                                             if(_loc3_)
                                             {
                                                addr137:
                                                if(!_loc4_)
                                                {
                                                   §§push(§3#J§.§2!C§);
                                                   break loop10;
                                                }
                                                continue loop3;
                                             }
                                             while(true)
                                             {
                                                §§push(int(this.§=!<§.length));
                                                loop6:
                                                while(true)
                                                {
                                                   _loc1_ = §§pop();
                                                   addr104:
                                                   while(true)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         continue loop6;
                                                      }
                                                      continue loop9;
                                                   }
                                                }
                                             }
                                             §§goto(addr137);
                                             addr158:
                                          }
                                       }
                                    }
                                    return;
                                 }
                              }
                              break;
                           }
                           while(true)
                           {
                              if(_loc4_)
                              {
                                 continue loop0;
                              }
                              §§pop().removeEventListener(Event.CONTEXT3D_CREATE,this.§%!b§);
                              §§goto(addr158);
                              §§goto(addr137);
                           }
                        }
                        continue loop1;
                     }
                  }
                  §§goto(addr130);
               }
            }
         }
         §§goto(addr106);
      }
      
      private function §%!b§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§=!<§)
            {
               if(_loc3_ || _loc3_)
               {
                  this.§=!<§ = new Vector.<§%"Y§>(0);
               }
               do
               {
                  this.flatten();
               }
               while(_loc2_ && param1);
               
               addr44:
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function get §`F§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§=!<§ == null);
         if(_loc2_)
         {
            return !§§pop();
         }
      }
      
      override public function render(param1:§%"H§, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(!_loc5_)
         {
            §§push(Boolean(this.§=!<§));
            if(_loc6_)
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
                        if(_loc5_)
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
                           if(!(_loc5_ && param2))
                           {
                              while(true)
                              {
                                 param1.§+#X§();
                              }
                              addr145:
                           }
                           loop1:
                           while(true)
                           {
                              §§push(param2);
                              if(!(_loc5_ && param1))
                              {
                                 §§push(§§pop() * this.alpha);
                                 if(_loc6_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                              param2 = §§pop();
                              loop2:
                              while(true)
                              {
                                 if(_loc5_)
                                 {
                                    continue loop9;
                                 }
                                 §§push(int(this.§=!<§.length));
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                    §§push(0);
                                    addr110:
                                    continue loop2;
                                    if(!(_loc6_ || _loc3_))
                                    {
                                       continue;
                                    }
                                    _loc4_ = §§pop();
                                    if(_loc5_ && param1)
                                    {
                                       continue loop2;
                                    }
                                    if(_loc5_)
                                    {
                                       continue loop1;
                                    }
                                    addr28:
                                    if(_loc4_ >= _loc3_)
                                    {
                                       addr32:
                                       if(_loc5_)
                                       {
                                          break loop0;
                                       }
                                       return;
                                       addr34:
                                    }
                                    this.§=!<§[_loc4_].render(param1.§<"t§,param1.§&h§,param2);
                                    while(true)
                                    {
                                       _loc4_++;
                                       addr52:
                                       while(true)
                                       {
                                          §§goto(addr28);
                                       }
                                       §§goto(addr32);
                                       §§goto(addr28);
                                    }
                                 }
                              }
                              continue loop9;
                           }
                           continue loop9;
                        }
                        while(true)
                        {
                           if(_loc6_)
                           {
                              if(!(_loc5_ && param2))
                              {
                                 §§goto(addr32);
                              }
                              else
                              {
                                 §§goto(addr66);
                              }
                           }
                           §§goto(addr52);
                           §§goto(addr32);
                        }
                        §§goto(addr34);
                     }
                  }
                  addr165:
               }
               §§goto(addr136);
            }
            §§goto(addr165);
         }
         §§goto(addr145);
      }
   }
}
