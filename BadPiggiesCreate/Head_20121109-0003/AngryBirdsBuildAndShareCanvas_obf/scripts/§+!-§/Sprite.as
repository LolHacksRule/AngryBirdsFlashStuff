package §+!-§
{
   import §%!j§.§%K§;
   import §%!j§.§&Y§;
   import §%!j§.§,5§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §^!t§:Vector.<§,5§>;
      
      private var §]n§:Boolean;
      
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
            this.§4"6§();
            do
            {
               super.dispose();
            }
            while(_loc1_);
            
         }
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§]n§;
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
               if(§§pop() == this.§]n§)
               {
                  if(!_loc2_)
                  {
                     break;
                  }
                  addr102:
                  while(true)
                  {
                  }
               }
               while(true)
               {
                  this.§]n§ = param1;
                  continue loop0;
               }
               addr20:
               return;
            }
            return;
         }
         §§goto(addr102);
      }
      
      private function §1!f§(param1:TouchEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            Mouse.cursor = !!param1.§"8§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
         }
      }
      
      public function flatten() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(§%K§.§`9§);
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
                           §§push(§%K§.§`9§);
                           loop4:
                           while(true)
                           {
                              §§push(§§pop().§8"1§);
                              if(!_loc1_)
                              {
                                 if(!_loc2_)
                                 {
                                    continue loop2;
                                 }
                                 §§push(Boolean(§§pop()));
                              }
                              if(_loc1_ && _loc1_)
                              {
                                 break;
                              }
                              addr104:
                              loop11:
                              while(true)
                              {
                                 §§push(§%K§.§`9§);
                                 if(!_loc2_)
                                 {
                                    continue loop4;
                                 }
                                 if(!_loc2_)
                                 {
                                    continue loop0;
                                 }
                                 §§pop().addEventListener(Event.CONTEXT3D_CREATE,this.§ !m§);
                                 loop12:
                                 while(true)
                                 {
                                    loop10:
                                    while(true)
                                    {
                                       §,5§.§9!q§(this,this.§^!t§);
                                       if(_loc1_)
                                       {
                                          continue loop12;
                                       }
                                       addr37:
                                       if(_loc2_ || _loc2_)
                                       {
                                          if(!_loc1_)
                                          {
                                             break;
                                          }
                                          while(!(_loc1_ && _loc1_))
                                          {
                                             this.§^!t§ = new Vector.<§,5§>(0);
                                          }
                                          continue loop3;
                                          addr82:
                                       }
                                       while(_loc2_ || this)
                                       {
                                          continue loop11;
                                          §§goto(addr37);
                                       }
                                       while(true)
                                       {
                                          dispatchEventOnChildren(new Event(Event.§ s§));
                                          addr139:
                                          addr53:
                                          while(true)
                                          {
                                             if(this.§^!t§ == null)
                                             {
                                                §§goto(addr82);
                                             }
                                             continue loop10;
                                          }
                                          return;
                                          §§goto(addr97);
                                       }
                                       addr97:
                                    }
                                    if(!(_loc2_ || _loc1_))
                                    {
                                       §§goto(addr139);
                                    }
                                    §§goto(addr53);
                                 }
                              }
                           }
                           continue loop1;
                        }
                     }
                  }
                  while(§§pop())
                  {
                     §§goto(addr123);
                  }
                  §§goto(addr53);
               }
            }
         }
         §§goto(addr104);
      }
      
      public function §4"6§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = 0;
         var _loc2_:int = 0;
         if(_loc3_)
         {
            §§push(§%K§.§`9§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc3_)
               {
                  if(!§§pop())
                  {
                     loop1:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!(_loc4_ && _loc2_))
                           {
                              if(this.§^!t§)
                              {
                                 while(true)
                                 {
                                    §§goto(addr144);
                                    addr75:
                                    §§push(§%K§.§`9§);
                                    if(!(_loc3_ || this))
                                    {
                                       continue;
                                    }
                                    addr27:
                                    if(_loc2_ >= _loc1_)
                                    {
                                       if(!_loc4_)
                                       {
                                          this.§^!t§ = null;
                                       }
                                       if(!_loc3_)
                                       {
                                          addr41:
                                          if(_loc3_ || this)
                                          {
                                             §§goto(addr27);
                                          }
                                          _loc2_++;
                                          §§goto(addr41);
                                          addr57:
                                       }
                                       break loop1;
                                    }
                                    this.§^!t§[_loc2_].dispose();
                                    §§goto(addr57);
                                    addr92:
                                 }
                              }
                              break;
                           }
                           loop4:
                           while(true)
                           {
                              if(_loc3_)
                              {
                                 §§push(int(this.§^!t§.length));
                                 loop5:
                                 while(true)
                                 {
                                    _loc1_ = §§pop();
                                    addr99:
                                    while(_loc3_ || _loc1_)
                                    {
                                       continue loop5;
                                    }
                                    continue loop4;
                                 }
                              }
                              else
                              {
                                 §§goto(addr170);
                              }
                              §§goto(addr144);
                           }
                           §§goto(addr92);
                           addr149:
                        }
                        §§push(§§pop().§8"1§);
                        addr119:
                        break;
                        if(!(_loc4_ && _loc2_))
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(!_loc4_)
                        {
                           continue;
                        }
                        §§goto(addr169);
                     }
                     return;
                  }
                  addr169:
                  loop7:
                  while(true)
                  {
                     §§pop();
                     addr170:
                     while(true)
                     {
                        §§push(§%K§.§`9§);
                        if(_loc3_)
                        {
                           continue loop0;
                        }
                        addr144:
                        while(true)
                        {
                           §§pop().removeEventListener(Event.CONTEXT3D_CREATE,this.§ !m§);
                        }
                        continue loop7;
                     }
                  }
                  addr169:
                  §§goto(addr149);
               }
               §§goto(addr169);
            }
         }
         §§goto(addr170);
      }
      
      private function § !m§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§^!t§)
            {
               do
               {
                  this.§^!t§ = new Vector.<§,5§>(0);
                  do
                  {
                     this.flatten();
                  }
                  while(!(_loc2_ || this));
                  
               }
               while(_loc3_);
               
               addr59:
            }
            return;
         }
         §§goto(addr59);
      }
      
      public function get §`G§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§^!t§ == null);
         if(_loc2_ || _loc2_)
         {
            return !§§pop();
         }
      }
      
      override public function render(param1:§&Y§, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         if(_loc5_ || _loc3_)
         {
            §§push(Boolean(this.§^!t§));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr155:
                     while(true)
                     {
                        §§push(color == 16777215);
                        if(!_loc5_)
                        {
                           continue;
                        }
                        if(!_loc5_)
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
                  while(_loc5_)
                  {
                     param1.§0"6§();
                     do
                     {
                        §§push(param2);
                        if(_loc5_)
                        {
                           §§push(§§pop() * this.alpha);
                           if(!(_loc6_ && param1))
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        param2 = §§pop();
                        do
                        {
                           §§push(int(this.§^!t§.length));
                           loop6:
                           while(true)
                           {
                              _loc3_ = §§pop();
                              addr99:
                              while(!(_loc6_ && _loc3_))
                              {
                                 continue loop6;
                              }
                              continue loop3;
                           }
                        }
                        while(!_loc5_);
                        
                     }
                     while(!_loc5_);
                     
                     addr32:
                     if(_loc4_ >= _loc3_)
                     {
                        if(!_loc6_)
                        {
                           if(!(_loc5_ || param2))
                           {
                              _loc4_++;
                              addr56:
                              §§goto(addr32);
                              addr80:
                           }
                           §§goto(addr28);
                        }
                        break loop2;
                     }
                     this.§^!t§[_loc4_].render(param1.§-!K§,param1.§'D§,param2);
                     §§goto(addr80);
                  }
               }
               if(_loc6_)
               {
                  §§goto(addr56);
               }
               addr28:
               return;
            }
         }
         §§goto(addr155);
      }
   }
}
