package §`a§
{
   import § !+§.§!!Q§;
   import § !+§.§%L§;
   import § !+§.§0Z§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §>!6§:Vector.<§!!Q§>;
      
      private var §5!;§:Boolean;
      
      public function Sprite()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
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
            this.§=b§();
            do
            {
               super.dispose();
            }
            while(_loc2_);
            
         }
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§5!;§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop() == this.§5!;§)
               {
                  addr110:
                  return;
               }
               addr91:
               while(true)
               {
                  this.§5!;§ = param1;
                  continue loop0;
               }
            }
         }
         §§goto(addr24);
      }
      
      private function §66§(param1:TouchEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            Mouse.cursor = !!param1.§0w§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
         }
      }
      
      public function flatten() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(§0Z§.§4J§);
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
                        while(true)
                        {
                           §§push(§0Z§.§4J§);
                           loop4:
                           while(true)
                           {
                              §§push(§§pop().§0!J§);
                              if(!_loc1_)
                              {
                                 if(!_loc2_)
                                 {
                                    continue loop2;
                                 }
                                 if(!_loc2_)
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
                                 loop5:
                                 while(true)
                                 {
                                    dispatchEventOnChildren(new Event(Event.§>&§));
                                    do
                                    {
                                       if(this.§>!6§ == null)
                                       {
                                          if(_loc2_ || _loc2_)
                                          {
                                             this.§>!6§ = new Vector.<§!!Q§>(0);
                                          }
                                          continue loop4;
                                       }
                                       addr29:
                                       while(true)
                                       {
                                          §!!Q§.§>A§(this,this.§>!6§);
                                          if(!(_loc1_ && this))
                                          {
                                             break;
                                          }
                                          addr62:
                                          addr62:
                                          while(true)
                                          {
                                             if(_loc2_ || this)
                                             {
                                                continue loop5;
                                             }
                                             continue loop4;
                                          }
                                          continue loop5;
                                       }
                                    }
                                    while(_loc1_);
                                    
                                    addr44:
                                    break loop4;
                                 }
                              }
                              break;
                           }
                           return;
                        }
                     }
                  }
                  §§goto(addr121);
               }
               if(_loc1_ && _loc2_)
               {
                  continue;
               }
               §§pop().addEventListener(Event.CONTEXT3D_CREATE,this.§3!%§);
               §§goto(addr62);
            }
         }
         §§goto(addr44);
      }
      
      public function §=b§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = 0;
         var _loc2_:int = 0;
         if(_loc3_)
         {
            §§push(§0Z§.§4J§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               addr162:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(§0Z§.§4J§);
                           if(_loc3_ || _loc3_)
                           {
                              continue loop0;
                           }
                           loop6:
                           while(true)
                           {
                              §§pop().removeEventListener(Event.CONTEXT3D_CREATE,this.§3!%§);
                              addr158:
                              while(true)
                              {
                                 §§push(int(this.§>!6§.length));
                                 loop10:
                                 while(true)
                                 {
                                    _loc1_ = §§pop();
                                    addr96:
                                    loop11:
                                    while(true)
                                    {
                                       if(_loc3_ || this)
                                       {
                                          continue loop10;
                                       }
                                       addr136:
                                       while(_loc3_)
                                       {
                                          if(this.§>!6§)
                                          {
                                             continue loop6;
                                          }
                                          continue loop11;
                                       }
                                       continue loop3;
                                    }
                                 }
                              }
                           }
                        }
                        continue loop0;
                     }
                     addr164:
                  }
                  else
                  {
                     while(true)
                     {
                        addr135:
                        while(true)
                        {
                           if(§§pop())
                           {
                              §§goto(addr136);
                           }
                        }
                     }
                     addr134:
                  }
                  §§goto(addr23);
               }
            }
         }
         §§goto(addr158);
      }
      
      private function §3!%§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(this.§>!6§)
            {
               loop0:
               while(true)
               {
                  this.§>!6§ = new Vector.<§!!Q§>(0);
                  addr68:
                  while(true)
                  {
                     this.flatten();
                     if(_loc3_)
                     {
                        if(_loc3_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr35);
               }
            }
            addr35:
            return;
         }
         §§goto(addr68);
      }
      
      public function get §#I§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§>!6§ == null);
         if(!_loc1_)
         {
            return !§§pop();
         }
      }
      
      override public function render(param1:§%L§, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(!_loc5_)
         {
            §§push(Boolean(this.§>!6§));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr171:
                     while(true)
                     {
                        §§push(color == 16777215);
                        if(_loc5_)
                        {
                           continue;
                        }
                        if(_loc5_)
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
                  if(_loc6_)
                  {
                     param1.§3N§();
                  }
                  loop3:
                  while(true)
                  {
                     §§push(param2);
                     if(_loc6_ || _loc3_)
                     {
                        §§push(§§pop() * this.alpha);
                        if(_loc6_ || _loc3_)
                        {
                           addr135:
                           §§push(Number(§§pop()));
                        }
                        param2 = §§pop();
                        loop4:
                        for(; !_loc5_; if(_loc6_ || this)
                        {
                           continue loop3;
                        })
                        {
                           §§push(int(this.§>!6§.length));
                           while(true)
                           {
                              _loc3_ = §§pop();
                              while(true)
                              {
                                 §§push(0);
                                 if(_loc5_ && param2)
                                 {
                                    break;
                                 }
                                 _loc4_ = §§pop();
                                 if(_loc6_)
                                 {
                                    continue loop4;
                                 }
                              }
                           }
                        }
                        §§goto(addr171);
                     }
                     §§goto(addr135);
                     if(!(_loc6_ || this))
                     {
                        continue;
                     }
                     addr28:
                     if(_loc4_ >= _loc3_)
                     {
                        if(_loc6_ || param2)
                        {
                           if(!_loc5_)
                           {
                              if(_loc5_ && param2)
                              {
                                 _loc4_++;
                                 addr57:
                                 §§goto(addr28);
                                 addr71:
                              }
                              §§goto(addr24);
                           }
                           §§goto(addr57);
                        }
                        break loop2;
                     }
                     this.§>!6§[_loc4_].render(param1.§9!>§,param1.§5!8§,param2);
                     §§goto(addr71);
                  }
               }
               addr24:
               return;
            }
         }
         §§goto(addr171);
      }
   }
}
