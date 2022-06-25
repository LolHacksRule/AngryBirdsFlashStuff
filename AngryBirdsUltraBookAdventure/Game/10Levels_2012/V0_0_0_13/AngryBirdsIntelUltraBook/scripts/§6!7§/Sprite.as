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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
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
            this.§%s§();
         }
         do
         {
            super.dispose();
         }
         while(_loc1_ && _loc1_);
         
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§0!g§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1);
            loop0:
            for(; §§pop() != this.§0!g§; §§push(this.§0!g§),if(_loc3_ && this)
            {
               continue;
            },if(§§pop())
            {
               if(_loc2_ || param1)
               {
                  if(!_loc2_)
                  {
                     §§goto(addr97);
                  }
                  addEventListener(TouchEvent.§7!;§,this.§%&§);
               }
               §§goto(addr90);
            },removeEventListener(TouchEvent.§7!;§,this.§%&§),if(_loc3_ && this)
            {
               §§goto(addr90);
            },§§goto(addr19))
            {
               loop1:
               while(true)
               {
                  this.§0!g§ = param1;
                  addr97:
                  addr90:
                  while(true)
                  {
                     if(!(_loc3_ && this))
                     {
                        continue loop0;
                     }
                     continue loop1;
                  }
                  if(!_loc2_)
                  {
                     break loop0;
                  }
               }
            }
            return;
         }
         addr19:
      }
      
      private function §%&§(param1:TouchEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            Mouse.cursor = !!param1.§+!7§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
         }
      }
      
      public function flatten() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
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
                  if(_loc1_ || this)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr122:
                        if(!(_loc1_ || _loc1_))
                        {
                           continue;
                        }
                        if(!_loc1_)
                        {
                           continue loop1;
                        }
                        §§push(Boolean(§§pop()));
                        while(true)
                        {
                           addr143:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    dispatchEventOnChildren(new Event(Event.§0G§));
                                    addr152:
                                    loop8:
                                    while(true)
                                    {
                                       if(this.§+!'§ != null)
                                       {
                                          loop12:
                                          while(true)
                                          {
                                             QuadBatch.§#X§(this,this.§+!'§);
                                             if(_loc1_)
                                             {
                                                if(_loc1_)
                                                {
                                                   §§goto(addr19);
                                                }
                                                else
                                                {
                                                   addr102:
                                                }
                                                addr102:
                                                while(true)
                                                {
                                                   §§push(Starling.§!!F§);
                                                   if(!(_loc1_ || _loc2_))
                                                   {
                                                      break;
                                                   }
                                                   §§pop().addEventListener(Event.CONTEXT3D_CREATE,this.§[D§);
                                                }
                                                continue loop0;
                                             }
                                             addr54:
                                             while(!(_loc2_ && _loc1_))
                                             {
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   continue loop12;
                                                }
                                                addr168:
                                                while(true)
                                                {
                                                   §§push(Starling.§!!F§);
                                                   continue loop0;
                                                }
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             continue loop5;
                                          }
                                          continue loop8;
                                          §§goto(addr54);
                                       }
                                       continue loop5;
                                    }
                                 }
                              }
                              addr19:
                              return;
                           }
                        }
                        addr142:
                     }
                  }
                  else
                  {
                     §§goto(addr142);
                  }
                  §§goto(addr168);
               }
            }
         }
         §§goto(addr152);
      }
      
      public function §%s§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(!(_loc3_ && _loc3_))
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
                  if(!_loc3_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr215:
                        loop3:
                        while(true)
                        {
                           §§push(Starling.§!!F§);
                           if(!(_loc4_ || _loc1_))
                           {
                              continue loop0;
                           }
                           §§push(§§pop().§[E§);
                           if(_loc4_ || _loc3_)
                           {
                              continue loop2;
                           }
                           addr167:
                           while(true)
                           {
                              if(_loc3_)
                              {
                                 break loop3;
                              }
                              if(!§§pop())
                              {
                                 addr29:
                                 return;
                              }
                              while(true)
                              {
                                 §§push(Starling.§!!F§);
                                 continue loop0;
                              }
                           }
                        }
                        continue loop1;
                     }
                  }
                  §§goto(addr160);
               }
            }
         }
         §§goto(addr170);
      }
      
      private function §[D§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§+!'§)
            {
               if(!(_loc2_ && param1))
               {
                  addr62:
                  this.§+!'§ = new Vector.<QuadBatch>(0);
               }
               do
               {
                  this.flatten();
               }
               while(_loc2_);
               
            }
            return;
         }
         §§goto(addr62);
      }
      
      public function get § C§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§+!'§ == null);
         if(_loc2_)
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
            loop0:
            while(true)
            {
               §§push(§§pop());
               if(_loc6_)
               {
                  §§push(Boolean(§§pop()));
               }
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr208:
                     do
                     {
                        §§push(color == 16777215);
                        if(!_loc5_)
                        {
                           continue loop0;
                        }
                        addr191:
                     }
                     while(_loc6_);
                     
                  }
               }
               while(true)
               {
                  if(!§§pop())
                  {
                     super.render(param1,param2);
                     break;
                  }
                  while(true)
                  {
                     param1.§2^§();
                  }
               }
               addr48:
               if(!_loc6_)
               {
                  addr70:
                  if(_loc6_ || this)
                  {
                     addr33:
                     §§push(_loc4_);
                     if(!_loc5_)
                     {
                        if(§§pop() >= _loc3_)
                        {
                           if(!_loc6_)
                           {
                              §§goto(addr48);
                           }
                           §§goto(addr29);
                        }
                        this.§+!'§[_loc4_].render(param1.§#F§,param1.§>!C§,param2);
                        §§push(_loc4_);
                        if(!(_loc5_ && param2))
                        {
                           §§push(§§pop() + 1);
                           if(_loc6_ || _loc3_)
                           {
                           }
                           addr69:
                           _loc4_ = §§pop();
                           §§goto(addr70);
                        }
                        §§push(int(§§pop()));
                        addr102:
                     }
                     §§goto(addr69);
                  }
                  §§goto(addr102);
               }
               addr29:
               return;
            }
         }
         while(true)
         {
            §§push(param2);
            if(_loc6_)
            {
               §§push(§§pop() * this.alpha);
               if(!(_loc5_ && param2))
               {
                  §§push(Number(§§pop()));
               }
            }
            param2 = §§pop();
            loop6:
            while(true)
            {
               §§push(int(this.§+!'§.length));
               loop7:
               while(true)
               {
                  _loc3_ = §§pop();
                  addr137:
                  while(_loc6_)
                  {
                     if(!_loc5_)
                     {
                        if(_loc6_ || _loc3_)
                        {
                           continue loop7;
                        }
                        §§goto(addr208);
                     }
                     §§goto(addr195);
                  }
                  continue loop6;
               }
            }
         }
      }
   }
}
