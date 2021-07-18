package §6![§
{
   import §`!a§.§0L§;
   import §`!a§.§1"&§;
   import §`!a§.§4>§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §1!l§:Vector.<§4>§>;
      
      private var §5!B§:Boolean;
      
      public function Sprite()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
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
            this.§>"'§();
         }
         do
         {
            super.dispose();
         }
         while(_loc1_ && _loc2_);
         
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§5!B§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop() != this.§5!B§)
               {
                  do
                  {
                     this.§5!B§ = param1;
                     while(true)
                     {
                        if(!(_loc2_ && this))
                        {
                           continue loop0;
                        }
                     }
                  }
                  while(!_loc3_);
                  
                  §§goto(addr25);
               }
               return;
            }
         }
         addr25:
      }
      
      private function §&r§(param1:TouchEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            Mouse.cursor = !!param1.§6!p§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
         }
      }
      
      public function flatten() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§1"&§.§1i§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               addr143:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop3:
                     while(§§pop())
                     {
                        loop4:
                        while(true)
                        {
                           dispatchEventOnChildren(new Event(Event.§#&§));
                           loop5:
                           while(_loc2_ || this)
                           {
                              if(this.§1!l§ == null)
                              {
                                 loop6:
                                 while(_loc2_)
                                 {
                                    this.§1!l§ = new Vector.<§4>§>(0);
                                    while(true)
                                    {
                                       §§push(§1"&§.§1i§);
                                       if(_loc1_ && _loc2_)
                                       {
                                          break;
                                       }
                                       §§pop().addEventListener(Event.CONTEXT3D_CREATE,this.§%;§);
                                       while(true)
                                       {
                                       }
                                       addr32:
                                       if(_loc2_ || _loc2_)
                                       {
                                          if(_loc2_)
                                          {
                                             addr41:
                                             if(!(_loc1_ && _loc2_))
                                             {
                                                break loop3;
                                             }
                                             continue loop5;
                                          }
                                          continue loop6;
                                       }
                                    }
                                    continue loop0;
                                 }
                                 continue loop4;
                              }
                              while(true)
                              {
                                 §4>§.§#2§(this,this.§1!l§);
                                 if(!_loc2_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr32);
                              }
                              §§goto(addr41);
                           }
                           addr146:
                           while(true)
                           {
                              §§push(§1"&§.§1i§);
                              continue loop0;
                              §§goto(addr145);
                           }
                        }
                     }
                     return;
                     addr114:
                  }
                  while(true)
                  {
                     §§pop();
                  }
                  addr145:
               }
            }
         }
         §§goto(addr146);
      }
      
      public function §>"'§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         if(!(_loc4_ && _loc2_))
         {
            §§push(§1"&§.§1i§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     loop8:
                     while(true)
                     {
                        §§pop();
                        addr155:
                        loop7:
                        while(true)
                        {
                           §§push(§1"&§.§1i§);
                           if(_loc4_ && _loc3_)
                           {
                              break;
                           }
                           if(_loc3_)
                           {
                              §§push(§§pop().§]!8§);
                              if(_loc3_)
                              {
                                 if(!_loc3_)
                                 {
                                    continue loop8;
                                 }
                                 addr114:
                                 §§push(Boolean(§§pop()));
                                 while(true)
                                 {
                                    §§goto(addr114);
                                 }
                              }
                              while(§§pop())
                              {
                                 if(!(_loc4_ && this))
                                 {
                                    if(!this.§1!l§)
                                    {
                                    }
                                    break;
                                 }
                                 while(true)
                                 {
                                    §§push(§1"&§.§1i§);
                                    break loop7;
                                 }
                              }
                              §§goto(addr28);
                           }
                           continue loop0;
                        }
                        while(true)
                        {
                           §§pop().removeEventListener(Event.CONTEXT3D_CREATE,this.§%;§);
                           loop5:
                           while(_loc3_)
                           {
                              §§push(int(this.§1!l§.length));
                              loop6:
                              while(true)
                              {
                                 _loc1_ = §§pop();
                                 addr96:
                                 while(true)
                                 {
                                    §§push(0);
                                    if(_loc4_ && _loc2_)
                                    {
                                       continue loop6;
                                    }
                                    _loc2_ = §§pop();
                                    if(!_loc3_)
                                    {
                                       continue;
                                    }
                                    if(!(_loc3_ || this))
                                    {
                                       continue loop5;
                                    }
                                    if(!_loc4_)
                                    {
                                       while(true)
                                       {
                                          if(_loc2_ >= _loc1_)
                                          {
                                             if(_loc3_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   this.§1!l§ = null;
                                                }
                                                else
                                                {
                                                   _loc2_++;
                                                   continue;
                                                   addr57:
                                                }
                                             }
                                             if(_loc3_)
                                             {
                                                break;
                                             }
                                             continue;
                                          }
                                          this.§1!l§[_loc2_].dispose();
                                          §§goto(addr57);
                                       }
                                       addr28:
                                       return;
                                    }
                                    §§goto(addr127);
                                 }
                              }
                           }
                           §§goto(addr155);
                        }
                     }
                     addr154:
                  }
                  §§goto(addr115);
               }
               §§goto(addr154);
            }
         }
         §§goto(addr96);
      }
      
      private function §%;§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§1!l§)
            {
               do
               {
                  this.§1!l§ = new Vector.<§4>§>(0);
                  do
                  {
                     this.flatten();
                  }
                  while(!_loc2_);
                  
               }
               while(_loc3_ && this);
               
               addr45:
            }
            return;
         }
         §§goto(addr45);
      }
      
      public function get §]L§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§1!l§ == null);
         if(_loc2_ || this)
         {
            return !§§pop();
         }
      }
      
      override public function render(param1:§0L§, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(_loc5_)
         {
            §§push(Boolean(this.§1!l§));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     addr185:
                     do
                     {
                        §§push(color == 16777215);
                        if(_loc6_)
                        {
                           continue loop1;
                        }
                     }
                     while(_loc5_);
                     
                     continue loop0;
                  }
               }
               loop3:
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
                     param1.§6"$§();
                     while(true)
                     {
                        §§push(param2);
                        if(_loc5_ || param2)
                        {
                           §§push(§§pop() * this.alpha);
                           if(_loc5_ || _loc3_)
                           {
                              addr146:
                              §§push(Number(§§pop()));
                           }
                           param2 = §§pop();
                           continue loop4;
                        }
                        §§goto(addr146);
                        addr112:
                        if(!(_loc5_ || _loc3_))
                        {
                           continue;
                        }
                        if(_loc5_ || param2)
                        {
                           §§push(0);
                           if(_loc5_ || param2)
                           {
                              _loc4_ = §§pop();
                              if(_loc6_ && _loc3_)
                              {
                                 addr105:
                                 while(true)
                                 {
                                    if(_loc6_ && this)
                                    {
                                       continue loop4;
                                    }
                                    §§goto(addr112);
                                 }
                                 addr105:
                              }
                              while(true)
                              {
                                 if(_loc4_ >= _loc3_)
                                 {
                                    if(!_loc5_)
                                    {
                                       break loop3;
                                    }
                                    if(_loc6_ && this)
                                    {
                                       continue;
                                    }
                                    if(_loc5_ || param2)
                                    {
                                       break;
                                    }
                                 }
                                 else
                                 {
                                    this.§1!l§[_loc4_].render(param1.§`r§,param1.§+!c§,param2);
                                 }
                                 _loc4_++;
                              }
                              addr23:
                              return;
                              addr98:
                           }
                           while(true)
                           {
                              _loc3_ = §§pop();
                              §§goto(addr105);
                              §§goto(addr126);
                           }
                           addr126:
                           addr104:
                        }
                        §§goto(addr185);
                     }
                  }
               }
               §§goto(addr23);
            }
         }
         §§goto(addr98);
      }
   }
}
