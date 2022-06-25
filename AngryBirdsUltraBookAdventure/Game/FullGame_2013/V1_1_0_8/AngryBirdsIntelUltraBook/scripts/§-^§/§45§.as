package §-^§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §45§ extends URLLoader
   {
       
      
      protected var §#s§:int;
      
      protected var §[%§:URLRequest;
      
      protected var §01§:Number;
      
      protected var §1E§:Timer;
      
      protected var §"P§:Boolean = false;
      
      protected var §?e§:URLRequest;
      
      public function §45§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§#s§ = param2;
         }
         loop0:
         while(true)
         {
            this.§[%§ = param1;
            loop1:
            while(true)
            {
               this.§01§ = param3;
               while(_loc4_)
               {
                  super(param1);
                  while(_loc4_)
                  {
                     if(_loc4_)
                     {
                        addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§#1§);
                        if(_loc4_ || param3)
                        {
                           return;
                        }
                        continue;
                        continue;
                     }
                     continue loop1;
                  }
               }
               continue loop0;
            }
         }
      }
      
      public function §3@§(param1:URLRequest) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§?e§ = param1;
         }
      }
      
      public function §3!d§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§?e§ != null)
            {
               while(true)
               {
                  this.load(this.§?e§);
                  while(!(_loc1_ && _loc2_))
                  {
                     this.§?e§ = null;
                     if(_loc1_ && _loc1_)
                     {
                        continue;
                     }
                     if(_loc2_ || _loc1_)
                     {
                        return;
                     }
                  }
               }
            }
         }
         throw new Error("Pending request is null.");
      }
      
      protected function §#1§(param1:HTTPStatusEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(param1.status != 403)
            {
               if(param1.status == 400)
               {
                  if(!_loc3_)
                  {
                     if(!_loc3_)
                     {
                        if(_loc2_)
                        {
                           if(!_loc3_)
                           {
                              this.§#s§ = 0;
                              addr24:
                              return;
                              addr66:
                           }
                           else
                           {
                              loop0:
                              while(true)
                              {
                                 this.§"P§ = true;
                                 addr86:
                                 while(true)
                                 {
                                    this.§#s§ = 0;
                                    continue loop0;
                                 }
                              }
                           }
                           §§goto(addr24);
                        }
                        while(true)
                        {
                           super.dispatchEvent(new §4-§(§4-§.§4!m§));
                        }
                     }
                     while(!_loc2_)
                     {
                        §§goto(addr86);
                     }
                     §§goto(addr24);
                  }
                  §§goto(addr66);
               }
               §§goto(addr24);
            }
         }
         §§goto(addr86);
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(param1.type == IOErrorEvent.IO_ERROR);
            if(!(_loc4_ && param1))
            {
               §§push(§§pop());
               if(!(_loc4_ && param1))
               {
                  if(!§§pop())
                  {
                     if(_loc5_ || _loc3_)
                     {
                        §§pop();
                        if(_loc5_ || _loc2_)
                        {
                           §§push(param1.type == SecurityErrorEvent.SECURITY_ERROR);
                           if(!_loc4_)
                           {
                              addr62:
                              if(§§pop())
                              {
                                 if(!_loc4_)
                                 {
                                    addr66:
                                    §§pop();
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       §§push(this.§#s§ > 0);
                                       if(_loc5_ || this)
                                       {
                                          addr95:
                                          if(§§pop())
                                          {
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                addr103:
                                                var _loc2_:*;
                                                §§push((_loc2_ = this).§#s§);
                                                if(_loc5_ || _loc2_)
                                                {
                                                   §§push(§§pop() - 1);
                                                }
                                                var _loc3_:* = §§pop();
                                                if(_loc5_)
                                                {
                                                   _loc2_.§#s§ = _loc3_;
                                                }
                                                if(_loc5_ || _loc3_)
                                                {
                                                   super.load(this.§[%§);
                                                }
                                                else
                                                {
                                                   loop5:
                                                   while(true)
                                                   {
                                                      addr154:
                                                      while(true)
                                                      {
                                                         §§push(this.§"P§);
                                                         loop1:
                                                         while(_loc5_)
                                                         {
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  if(!(_loc4_ && this))
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        return super.dispatchEvent(param1);
                                                                     }
                                                                     addr183:
                                                                     §§push(true);
                                                                     break loop1;
                                                                  }
                                                                  if(!_loc5_)
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(true);
                                                                  if(_loc5_ || param1)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop1;
                                                               }
                                                               return §§pop();
                                                            }
                                                         }
                                                         return §§pop();
                                                         continue loop5;
                                                      }
                                                   }
                                                   addr178:
                                                }
                                             }
                                             §§goto(addr183);
                                          }
                                          §§goto(addr154);
                                       }
                                       §§goto(addr158);
                                    }
                                    §§goto(addr103);
                                 }
                                 §§goto(addr158);
                              }
                              §§goto(addr95);
                           }
                           §§goto(addr66);
                        }
                        §§goto(addr174);
                     }
                     §§goto(addr158);
                  }
               }
               §§goto(addr62);
            }
            §§goto(addr158);
         }
         §§goto(addr178);
      }
      
      override public function load(param1:URLRequest) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§[%§ = param1;
            loop0:
            while(this.§01§ <= 0)
            {
               super.load(param1);
               if(_loc2_)
               {
                  while(!_loc3_)
                  {
                     loop2:
                     while(true)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           if(_loc3_)
                           {
                              break;
                           }
                           break loop0;
                        }
                        addr101:
                        while(true)
                        {
                           this.§1E§.addEventListener(TimerEvent.TIMER,this.§1w§);
                           continue loop2;
                        }
                     }
                     this.§1E§.start();
                  }
                  return;
               }
               addr25:
               if(_loc2_ && _loc3_)
               {
                  continue;
               }
               addr54:
               §§goto(addr25);
            }
            while(true)
            {
               this.§1E§ = new Timer(this.§01§);
               §§goto(addr101);
            }
         }
         §§goto(addr54);
      }
      
      protected function §1w§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§1E§.removeEventListener(TimerEvent.TIMER,this.§1w§);
            while(true)
            {
               this.§1E§.reset();
               while(!_loc2_)
               {
                  this.§1E§ = null;
                  do
                  {
                     super.load(this.§[%§);
                  }
                  while(!(_loc3_ || param1));
                  
                  if(!(_loc2_ && param1))
                  {
                     return;
                     addr63:
                  }
               }
            }
         }
         §§goto(addr63);
      }
   }
}
