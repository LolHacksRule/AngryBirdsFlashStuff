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
            while(true)
            {
               this.§01§ = param3;
               while(_loc4_ || param2)
               {
                  continue loop0;
                  super(param1);
                  do
                  {
                     addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§#1§);
                  }
                  while(_loc5_);
                  
                  if(_loc4_ || param2)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      public function §3@§(param1:URLRequest) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§?e§ = param1;
         }
      }
      
      public function §3!d§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            if(this.§?e§ != null)
            {
               do
               {
                  this.load(this.§?e§);
                  do
                  {
                     this.§?e§ = null;
                  }
                  while(!_loc1_);
                  
               }
               while(_loc2_);
               
               if(_loc1_)
               {
                  return;
                  addr58:
               }
            }
            throw new Error("Pending request is null.");
         }
         §§goto(addr58);
      }
      
      protected function §#1§(param1:HTTPStatusEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(param1.status != 403)
            {
               if(param1.status == 400)
               {
                  if(_loc3_)
                  {
                     if(!_loc2_)
                     {
                        this.§#s§ = 0;
                        addr48:
                        if(_loc3_ || _loc2_)
                        {
                           if(!(_loc2_ && _loc3_))
                           {
                              §§goto(addr20);
                           }
                           else
                           {
                              addr95:
                              while(true)
                              {
                                 this.§"P§ = true;
                              }
                              addr95:
                           }
                           §§goto(addr20);
                        }
                        while(true)
                        {
                           super.dispatchEvent(new §4-§(§4-§.§4!m§));
                        }
                        addr87:
                     }
                     while(!_loc3_)
                     {
                        while(true)
                        {
                           this.§#s§ = 0;
                           §§goto(addr95);
                        }
                        §§goto(addr87);
                     }
                     §§goto(addr20);
                  }
                  §§goto(addr48);
               }
               addr20:
               return;
            }
            §§goto(addr92);
         }
         §§goto(addr95);
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || _loc3_)
         {
            §§push(param1.type == IOErrorEvent.IO_ERROR);
            if(!_loc5_)
            {
               §§push(§§pop());
               if(!(_loc5_ && _loc3_))
               {
                  if(!§§pop())
                  {
                     if(_loc4_)
                     {
                        §§pop();
                        if(_loc4_ || param1)
                        {
                           §§push(param1.type == SecurityErrorEvent.SECURITY_ERROR);
                           if(_loc4_)
                           {
                              addr56:
                              if(§§pop())
                              {
                                 if(_loc4_ || _loc3_)
                                 {
                                    addr65:
                                    §§pop();
                                    if(!(_loc5_ && param1))
                                    {
                                       §§push(this.§#s§ > 0);
                                       if(!_loc5_)
                                       {
                                          §§goto(addr89);
                                       }
                                       §§goto(addr129);
                                    }
                                    §§goto(addr92);
                                 }
                              }
                              §§goto(addr89);
                           }
                           §§goto(addr137);
                        }
                        §§goto(addr157);
                     }
                     addr89:
                     if(§§pop())
                     {
                        if(!_loc5_)
                        {
                           addr92:
                           var _loc2_:*;
                           §§push((_loc2_ = this).§#s§);
                           if(_loc4_ || _loc2_)
                           {
                              §§push(§§pop() - 1);
                           }
                           var _loc3_:* = §§pop();
                           if(_loc4_ || _loc2_)
                           {
                              _loc2_.§#s§ = _loc3_;
                           }
                           if(_loc4_)
                           {
                              super.load(this.§[%§);
                              addr119:
                           }
                           else
                           {
                              §§goto(addr157);
                           }
                        }
                        addr177:
                        return true;
                     }
                     else
                     {
                        loop1:
                        while(true)
                        {
                           §§push(this.§"P§);
                           loop2:
                           while(true)
                           {
                              if(!_loc5_)
                              {
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          if(!_loc5_)
                                          {
                                             addr157:
                                             return super.dispatchEvent(param1);
                                          }
                                          continue loop1;
                                       }
                                       if(!(_loc4_ || _loc3_))
                                       {
                                          §§goto(addr177);
                                       }
                                    }
                                    §§push(true);
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       addr129:
                                       return §§pop();
                                    }
                                    continue loop2;
                                 }
                                 addr137:
                              }
                           }
                        }
                     }
                     return §§pop();
                  }
               }
               §§goto(addr56);
            }
            §§goto(addr65);
         }
         §§goto(addr119);
      }
      
      override public function load(param1:URLRequest) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§[%§ = param1;
            loop0:
            while(true)
            {
               if(this.§01§ <= 0)
               {
                  super.load(param1);
                  if(!_loc3_)
                  {
                     if(!_loc3_)
                     {
                        return;
                     }
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           continue loop0;
                        }
                        while(true)
                        {
                           this.§1E§.start();
                           addr48:
                           while(_loc3_ && this)
                           {
                              while(true)
                              {
                                 this.§1E§ = new Timer(this.§01§);
                                 continue loop0;
                              }
                           }
                        }
                        addr95:
                        this.§1E§.addEventListener(TimerEvent.TIMER,this.§1w§);
                     }
                     continue;
                  }
                  §§goto(addr48);
               }
               §§goto(addr82);
            }
         }
         §§goto(addr76);
      }
      
      protected function §1w§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§1E§.removeEventListener(TimerEvent.TIMER,this.§1w§);
            while(true)
            {
               this.§1E§.reset();
               while(_loc2_)
               {
                  this.§1E§ = null;
                  while(!_loc3_)
                  {
                     super.load(this.§[%§);
                     if(_loc2_)
                     {
                        return;
                        addr55:
                     }
                  }
               }
            }
         }
         §§goto(addr55);
      }
   }
}
