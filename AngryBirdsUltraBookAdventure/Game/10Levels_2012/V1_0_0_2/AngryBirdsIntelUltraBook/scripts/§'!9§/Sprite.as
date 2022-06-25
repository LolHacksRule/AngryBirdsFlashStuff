package §'!9§
{
   import §<&§.§!j§;
   import §<&§.§^b§;
   import §<&§.§`K§;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import starling.events.Event;
   import starling.events.TouchEvent;
   
   public class Sprite extends DisplayObjectContainer
   {
       
      
      private var §!@§:Vector.<§!j§>;
      
      private var §6!g§:Boolean;
      
      public function Sprite()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
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
            this.§=!f§();
            do
            {
               super.dispose();
            }
            while(!(_loc2_ || this));
            
         }
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§6!g§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop() == this.§6!g§)
               {
                  if(_loc3_)
                  {
                     break;
                  }
                  loop1:
                  while(true)
                  {
                     addr97:
                     addr86:
                     while(true)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           continue loop0;
                        }
                        continue loop1;
                        addr55:
                        if(_loc2_ && _loc2_)
                        {
                           break;
                        }
                        if(!_loc2_)
                        {
                           addr25:
                           return;
                           addr64:
                        }
                     }
                     addr92:
                     addEventListener(TouchEvent.§2!6§,this.§0,§);
                     §§goto(addr25);
                  }
               }
               while(true)
               {
                  this.§6!g§ = param1;
                  §§goto(addr97);
               }
            }
            return;
         }
         §§goto(addr64);
      }
      
      private function §0,§(param1:TouchEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            Mouse.cursor = !!param1.§9[§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
         }
      }
      
      public function flatten() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(§^b§.§9E§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               while(true)
               {
                  if(!§§pop())
                  {
                     loop2:
                     do
                     {
                        if(§§pop())
                        {
                           if(_loc2_ || _loc2_)
                           {
                              while(true)
                              {
                                 dispatchEventOnChildren(new Event(Event.§&!E§));
                              }
                              addr126:
                           }
                           loop3:
                           for(; _loc2_ || _loc1_; while(_loc2_ || _loc1_)
                           {
                              §§push(§^b§.§9E§);
                              if(!(_loc1_ && this))
                              {
                                 if(_loc1_)
                                 {
                                    continue loop0;
                                 }
                                 §§pop().addEventListener(Event.CONTEXT3D_CREATE,this.§!!X§);
                                 while(true)
                                 {
                                    §§goto(addr29);
                                 }
                              }
                              else
                              {
                                 addr99:
                                 §§push(§§pop().§]d§);
                                 if(_loc2_)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(!_loc1_)
                                 {
                                    continue loop2;
                                 }
                                 addr145:
                                 addr145:
                                 while(true)
                                 {
                                    §§pop();
                                    break loop3;
                                 }
                              }
                           })
                           {
                              if(this.§!@§ != null)
                              {
                                 do
                                 {
                                    §!j§.§^!1§(this,this.§!@§);
                                    if(!_loc2_)
                                    {
                                       continue;
                                    }
                                    if(_loc1_ && _loc2_)
                                    {
                                       continue loop3;
                                    }
                                 }
                                 while(_loc1_);
                                 
                                 addr25:
                                 return;
                                 addr29:
                              }
                              while(true)
                              {
                                 this.§!@§ = new Vector.<§!j§>(0);
                                 continue loop3;
                              }
                           }
                           while(true)
                           {
                              §§goto(addr99);
                              §§goto(addr145);
                           }
                           continue;
                        }
                        §§goto(addr25);
                     }
                     while(!_loc1_);
                     
                     continue;
                  }
                  §§goto(addr145);
               }
            }
         }
         §§goto(addr126);
      }
      
      public function §=!f§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         if(_loc4_ || _loc1_)
         {
            §§push(§^b§.§9E§);
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
                        loop3:
                        while(true)
                        {
                           §§push(§^b§.§9E§);
                           if(_loc4_ || this)
                           {
                              §§push(§§pop().§]d§);
                              if(_loc4_)
                              {
                                 if(_loc3_)
                                 {
                                    continue loop9;
                                 }
                                 addr118:
                                 §§push(Boolean(§§pop()));
                                 while(true)
                                 {
                                    §§goto(addr118);
                                 }
                              }
                              loop2:
                              while(§§pop())
                              {
                                 if(_loc4_ || this)
                                 {
                                    if(_loc4_)
                                    {
                                       if(!this.§!@§)
                                       {
                                       }
                                       break;
                                    }
                                    continue loop3;
                                 }
                                 while(true)
                                 {
                                    §§push(§^b§.§9E§);
                                    break loop3;
                                    loop7:
                                    while(_loc4_ || _loc3_)
                                    {
                                       while(true)
                                       {
                                          §§push(0);
                                          if(!(_loc3_ && _loc1_))
                                          {
                                             _loc2_ = §§pop();
                                             if(!_loc4_)
                                             {
                                                continue loop7;
                                             }
                                             if(_loc4_)
                                             {
                                                while(true)
                                                {
                                                   if(_loc2_ >= _loc1_)
                                                   {
                                                      if(_loc4_ || this)
                                                      {
                                                         this.§!@§ = null;
                                                      }
                                                      if(!_loc4_)
                                                      {
                                                         continue;
                                                      }
                                                      if(!_loc3_)
                                                      {
                                                         break;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      this.§!@§[_loc2_].dispose();
                                                   }
                                                   _loc2_++;
                                                }
                                                break loop2;
                                             }
                                             addr152:
                                             while(true)
                                             {
                                                §§push(int(this.§!@§.length));
                                             }
                                          }
                                          while(true)
                                          {
                                             _loc1_ = §§pop();
                                             continue loop7;
                                          }
                                       }
                                    }
                                 }
                                 continue loop0;
                              }
                              return;
                           }
                           break;
                        }
                        while(true)
                        {
                           if(_loc3_)
                           {
                              continue loop0;
                           }
                           §§pop().removeEventListener(Event.CONTEXT3D_CREATE,this.§!!X§);
                           §§goto(addr152);
                        }
                     }
                     addr160:
                  }
                  §§goto(addr119);
               }
               §§goto(addr160);
            }
         }
         §§goto(addr102);
      }
      
      private function §!!X§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§!@§)
            {
               do
               {
                  this.§!@§ = new Vector.<§!j§>(0);
                  do
                  {
                     this.flatten();
                  }
                  while(_loc2_ && _loc2_);
                  
               }
               while(!_loc3_);
               
               addr50:
            }
            return;
         }
         §§goto(addr50);
      }
      
      public function get §+`§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§!@§ == null);
         if(_loc1_)
         {
            return !§§pop();
         }
      }
      
      override public function render(param1:§`K§, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(_loc6_ || _loc3_)
         {
            §§push(Boolean(this.§!@§));
            if(_loc6_)
            {
               if(§§pop())
               {
                  loop5:
                  while(true)
                  {
                     §§pop();
                     addr171:
                     while(true)
                     {
                        §§push(color == 16777215);
                        if(!_loc5_)
                        {
                           break;
                        }
                        continue loop5;
                     }
                  }
                  addr170:
               }
               loop0:
               while(true)
               {
                  if(!§§pop())
                  {
                     super.render(param1,param2);
                     break;
                  }
                  if(!_loc5_)
                  {
                     if(!(_loc6_ || this))
                     {
                        continue;
                     }
                     param1.§!r§();
                     do
                     {
                        §§push(param2);
                        if(_loc6_)
                        {
                           §§push(§§pop() * this.alpha);
                           if(!(_loc5_ && this))
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        param2 = §§pop();
                        loop7:
                        do
                        {
                           §§push(int(this.§!@§.length));
                           while(true)
                           {
                              _loc3_ = §§pop();
                              while(true)
                              {
                                 §§push(0);
                                 if(!(_loc6_ || param2))
                                 {
                                    break;
                                 }
                                 _loc4_ = §§pop();
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    continue loop7;
                                 }
                              }
                           }
                        }
                        while(_loc5_);
                        
                     }
                     while(!(_loc6_ || param1));
                     
                     loop10:
                     while(true)
                     {
                        if(_loc4_ >= _loc3_)
                        {
                           addr37:
                           if(!(_loc6_ || this))
                           {
                              break loop0;
                           }
                           if(!_loc5_)
                           {
                              §§goto(addr29);
                           }
                           continue;
                        }
                        addr81:
                        addr60:
                        this.§!@§[_loc4_].render(param1.§8"§,param1.§7!Y§,param2);
                        while(true)
                        {
                           _loc4_++;
                           continue loop10;
                        }
                     }
                     addr162:
                  }
                  §§goto(addr162);
               }
               while(!_loc6_)
               {
                  §§goto(addr81);
                  §§goto(addr37);
               }
               addr29:
               return;
            }
            §§goto(addr170);
         }
         §§goto(addr162);
      }
   }
}
