package §2<§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §3d§ extends URLLoader
   {
       
      
      protected var §>Z§:int;
      
      protected var §#",§:URLRequest;
      
      protected var §48§:Number;
      
      protected var §!"Z§:Timer;
      
      protected var §#x§:Boolean = false;
      
      protected var §2"1§:URLRequest;
      
      public function §3d§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            this.§>Z§ = param2;
            while(true)
            {
               this.§#",§ = param1;
               loop1:
               for(; !(_loc5_ && param1); while(_loc4_ || this)
               {
                  super(param1);
                  while(!_loc5_)
                  {
                     addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§`c§);
                     if(!(_loc5_ && param1))
                     {
                        return;
                     }
                  }
               })
               {
                  while(true)
                  {
                     this.§48§ = param3;
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr93);
      }
      
      public function §[&§(param1:URLRequest) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§2"1§ = param1;
         }
      }
      
      public function §9^§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§2"1§ != null)
            {
               do
               {
                  this.load(this.§2"1§);
                  do
                  {
                     this.§2"1§ = null;
                  }
                  while(_loc1_);
                  
               }
               while(!_loc2_);
               
               if(_loc2_ || this)
               {
                  return;
                  addr59:
               }
            }
            throw new Error("Pending request is null.");
         }
         §§goto(addr59);
      }
      
      protected function §`c§(param1:HTTPStatusEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(param1.status == 403)
            {
               if(!_loc2_)
               {
                  this.§>Z§ = 0;
               }
               loop2:
               while(true)
               {
                  this.§#x§ = true;
                  addr78:
                  addr85:
                  while(_loc2_ && _loc3_)
                  {
                     continue loop2;
                  }
                  loop3:
                  while(true)
                  {
                     super.dispatchEvent(new §9G§(§9G§.§33§));
                     addr71:
                     while(_loc2_)
                     {
                        §§goto(addr78);
                        continue loop3;
                     }
                  }
               }
            }
            else if(param1.status == 400)
            {
               if(!(_loc2_ && param1))
               {
                  this.§>Z§ = 0;
               }
               if(_loc2_)
               {
                  §§goto(addr71);
               }
            }
            return;
         }
         §§goto(addr85);
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(param1.type == IOErrorEvent.IO_ERROR);
            if(!_loc5_)
            {
               §§push(§§pop());
               if(!(_loc5_ && this))
               {
                  if(!§§pop())
                  {
                     if(_loc4_ || this)
                     {
                        §§pop();
                        if(_loc4_)
                        {
                           §§push(param1.type == SecurityErrorEvent.SECURITY_ERROR);
                           if(_loc4_ || _loc2_)
                           {
                              addr56:
                              if(§§pop())
                              {
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    addr65:
                                    §§pop();
                                    if(_loc4_ || _loc3_)
                                    {
                                       §§push(this.§>Z§ > 0);
                                       if(_loc4_)
                                       {
                                          addr89:
                                          if(§§pop())
                                          {
                                             if(!(_loc5_ && param1))
                                             {
                                                var _loc2_:*;
                                                §§push((_loc2_ = this).§>Z§);
                                                if(_loc4_)
                                                {
                                                   §§push(§§pop() - 1);
                                                }
                                                var _loc3_:* = §§pop();
                                                if(_loc4_)
                                                {
                                                   _loc2_.§>Z§ = _loc3_;
                                                }
                                                if(_loc4_ || _loc2_)
                                                {
                                                   super.load(this.§#",§);
                                                   addr166:
                                                   return true;
                                                   addr172:
                                                }
                                                §§goto(addr172);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                }
                                                addr167:
                                             }
                                             §§goto(addr166);
                                          }
                                          while(true)
                                          {
                                             §§push(this.§#x§);
                                             loop3:
                                             while(true)
                                             {
                                                if(_loc4_ || _loc2_)
                                                {
                                                   addr152:
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               return super.dispatchEvent(param1);
                                                            }
                                                            §§goto(addr167);
                                                         }
                                                         else if(!_loc5_)
                                                         {
                                                            while(true)
                                                            {
                                                            }
                                                            addr163:
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr166);
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(true);
                                                         if(_loc4_ || param1)
                                                         {
                                                            return §§pop();
                                                         }
                                                         continue loop3;
                                                      }
                                                      continue loop3;
                                                   }
                                                   addr152:
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr152);
                                    }
                                 }
                                 §§goto(addr166);
                              }
                              §§goto(addr89);
                           }
                           §§goto(addr152);
                        }
                        §§goto(addr166);
                     }
                  }
               }
               §§goto(addr56);
            }
            §§goto(addr65);
         }
         §§goto(addr163);
      }
      
      override public function load(param1:URLRequest) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§#",§ = param1;
            while(true)
            {
               if(this.§48§ <= 0)
               {
                  super.load(param1);
                  if(!_loc3_)
                  {
                     if(_loc3_ && param1)
                     {
                        loop1:
                        while(true)
                        {
                           if(!_loc3_)
                           {
                              this.§!"Z§.start();
                              while(_loc3_)
                              {
                                 while(true)
                                 {
                                    this.§!"Z§ = new Timer(this.§48§);
                                 }
                              }
                              addr19:
                              return;
                              addr53:
                           }
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 break loop1;
                              }
                              continue loop1;
                           }
                        }
                        continue;
                     }
                     addr48:
                     §§goto(addr19);
                  }
                  §§goto(addr53);
               }
               §§goto(addr82);
            }
         }
         §§goto(addr48);
      }
      
      protected function §^!4§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§!"Z§.removeEventListener(TimerEvent.TIMER,this.§^!4§);
            loop0:
            while(true)
            {
               this.§!"Z§.reset();
               while(true)
               {
                  this.§!"Z§ = null;
                  loop2:
                  while(_loc3_)
                  {
                     continue loop0;
                     while(true)
                     {
                        super.load(this.§#",§);
                        if(!(_loc2_ && _loc3_))
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr70);
      }
   }
}
