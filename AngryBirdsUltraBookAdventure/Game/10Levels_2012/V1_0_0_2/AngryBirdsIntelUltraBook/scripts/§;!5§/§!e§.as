package §;!5§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §!e§ extends URLLoader
   {
       
      
      protected var §<s§:int;
      
      protected var §3!1§:URLRequest;
      
      protected var §^P§:Number;
      
      protected var §^<§:Timer;
      
      protected var §2!7§:Boolean = false;
      
      public function §!e§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            this.§<s§ = param2;
         }
         loop0:
         while(true)
         {
            this.§3!1§ = param1;
            loop1:
            do
            {
               this.§^P§ = param3;
               while(true)
               {
                  super(param1);
                  while(_loc4_ || this)
                  {
                     if(!_loc5_)
                     {
                        addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§1!x§);
                        if(!_loc5_)
                        {
                           continue loop1;
                        }
                        continue;
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
            while(_loc5_ && param2);
            
            return;
         }
      }
      
      protected function §1!x§(param1:HTTPStatusEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(param1.status == 403)
            {
               if(!_loc3_)
               {
                  addr96:
                  this.§<s§ = 0;
               }
               this.§2!7§ = true;
               super.dispatchEvent(new §3!^§(§3!^§.§2_§));
               addr99:
               addr84:
               addr89:
            }
            else if(param1.status == 400)
            {
               if(!(_loc3_ && _loc3_))
               {
                  if(_loc2_)
                  {
                     this.§<s§ = 0;
                     addr57:
                     if(_loc2_ || _loc2_)
                     {
                        if(!_loc3_)
                        {
                           §§goto(addr24);
                        }
                        else
                        {
                           §§goto(addr99);
                        }
                     }
                     §§goto(addr84);
                  }
                  §§goto(addr89);
               }
               §§goto(addr57);
            }
            addr24:
            return;
         }
         §§goto(addr96);
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || _loc3_)
         {
            §§push(param1.type == IOErrorEvent.IO_ERROR);
            if(_loc4_ || _loc2_)
            {
               §§push(§§pop());
               if(_loc4_)
               {
                  if(!§§pop())
                  {
                     if(_loc4_ || _loc3_)
                     {
                        addr46:
                        §§pop();
                        if(_loc4_)
                        {
                           §§push(param1.type == SecurityErrorEvent.SECURITY_ERROR);
                           if(_loc4_)
                           {
                              addr56:
                              if(§§pop())
                              {
                                 if(_loc4_ || _loc2_)
                                 {
                                    addr65:
                                    §§pop();
                                    if(!_loc5_)
                                    {
                                       §§push(this.§<s§ > 0);
                                       if(_loc4_ || param1)
                                       {
                                          addr89:
                                          if(§§pop())
                                          {
                                             addr168:
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                var _loc2_:*;
                                                §§push((_loc2_ = this).§<s§);
                                                if(!_loc5_)
                                                {
                                                   §§push(§§pop() - 1);
                                                }
                                                var _loc3_:* = §§pop();
                                                if(_loc4_)
                                                {
                                                   _loc2_.§<s§ = _loc3_;
                                                }
                                                if(!(_loc5_ && param1))
                                                {
                                                   super.load(this.§3!1§);
                                                   addr171:
                                                   return true;
                                                   addr177:
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                   }
                                                   addr172:
                                                }
                                                §§goto(addr171);
                                             }
                                             loop4:
                                             while(true)
                                             {
                                                loop5:
                                                while(true)
                                                {
                                                   §§push(true);
                                                   if(!(_loc5_ && this))
                                                   {
                                                      return §§pop();
                                                   }
                                                   addr135:
                                                   while(true)
                                                   {
                                                      if(!(_loc5_ && param1))
                                                      {
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               continue loop5;
                                                            }
                                                            if(_loc4_)
                                                            {
                                                               if(_loc4_ || param1)
                                                               {
                                                                  return super.dispatchEvent(param1);
                                                               }
                                                               §§goto(addr172);
                                                            }
                                                            else
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  continue loop4;
                                                               }
                                                               §§goto(addr177);
                                                            }
                                                         }
                                                         §§goto(addr171);
                                                         addr152:
                                                      }
                                                      §§goto(addr171);
                                                   }
                                                }
                                             }
                                             addr168:
                                          }
                                          while(true)
                                          {
                                             §§goto(addr135);
                                          }
                                       }
                                       §§goto(addr152);
                                    }
                                    §§goto(addr168);
                                 }
                                 §§goto(addr171);
                              }
                              §§goto(addr89);
                           }
                           §§goto(addr65);
                        }
                        §§goto(addr168);
                     }
                     §§goto(addr171);
                  }
               }
               §§goto(addr56);
            }
            §§goto(addr46);
         }
         §§goto(addr168);
      }
      
      override public function load(param1:URLRequest) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§3!1§ = param1;
            do
            {
               if(this.§^P§ > 0)
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     this.§^<§ = new Timer(this.§^P§);
                     addr111:
                     while(true)
                     {
                        this.§^<§.addEventListener(TimerEvent.TIMER,this.§]1§);
                        while(true)
                        {
                           this.§^<§.start();
                        }
                     }
                     addr111:
                  }
                  §§goto(addr111);
               }
               else
               {
                  super.load(param1);
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr25);
                  }
               }
               do
               {
                  if(_loc2_ && this)
                  {
                     continue;
                  }
               }
               while(!_loc3_);
               
            }
            while(_loc2_ && this);
            
            addr25:
            return;
         }
         §§goto(addr111);
      }
      
      protected function §]1§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§^<§.removeEventListener(TimerEvent.TIMER,this.§]1§);
            while(true)
            {
               this.§^<§.reset();
               while(_loc2_)
               {
                  this.§^<§ = null;
                  loop2:
                  while(_loc2_ || this)
                  {
                     while(true)
                     {
                        super.load(this.§3!1§);
                        if(_loc2_)
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
         §§goto(addr67);
      }
   }
}
