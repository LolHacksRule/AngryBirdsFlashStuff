package §^V§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §4S§ extends URLLoader
   {
       
      
      protected var §,!-§:int;
      
      protected var §[n§:URLRequest;
      
      protected var §2!e§:Number;
      
      protected var §+s§:Timer;
      
      protected var §-5§:Boolean = false;
      
      protected var §9[§:URLRequest;
      
      public function §4S§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§,!-§ = param2;
            while(true)
            {
               this.§[n§ = param1;
               while(true)
               {
                  this.§2!e§ = param3;
                  addr62:
                  while(_loc5_)
                  {
                  }
               }
            }
            addr83:
         }
         loop3:
         while(true)
         {
            super(param1);
            while(!_loc4_)
            {
               addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§9`§);
               if(_loc4_ && this)
               {
                  continue;
               }
               if(_loc5_)
               {
                  break loop3;
               }
               §§goto(addr83);
            }
            §§goto(addr62);
         }
      }
      
      public function §2!Z§(param1:URLRequest) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§9[§ = param1;
         }
      }
      
      public function §>?§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            if(this.§9[§ != null)
            {
               loop0:
               while(true)
               {
                  this.load(this.§9[§);
                  while(!_loc2_)
                  {
                     if(_loc1_ || _loc1_)
                     {
                        this.§9[§ = null;
                        if(_loc1_ || this)
                        {
                           return;
                        }
                        continue;
                     }
                  }
                  addr83:
                  while(true)
                  {
                     continue loop0;
                  }
               }
            }
            throw new Error("Pending request is null.");
         }
         §§goto(addr83);
      }
      
      protected function §9`§(param1:HTTPStatusEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(param1.status == 403)
            {
               if(!_loc2_)
               {
                  this.§,!-§ = 0;
               }
               this.§-5§ = true;
               super.dispatchEvent(new §;e§(§;e§.§<4§));
               addr100:
               addr80:
               addr75:
            }
            else if(param1.status == 400)
            {
               if(!(_loc2_ && _loc3_))
               {
                  addr38:
                  this.§,!-§ = 0;
               }
               if(_loc3_ || _loc3_)
               {
                  if(!_loc2_)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        §§goto(addr20);
                     }
                     else
                     {
                        §§goto(addr100);
                     }
                  }
                  §§goto(addr80);
               }
               §§goto(addr75);
            }
            addr20:
            return;
         }
         §§goto(addr38);
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
               if(!(_loc5_ && param1))
               {
                  if(!§§pop())
                  {
                     if(_loc4_)
                     {
                        §§pop();
                        if(_loc4_ || _loc3_)
                        {
                           §§push(param1.type == SecurityErrorEvent.SECURITY_ERROR);
                           if(_loc4_)
                           {
                              addr51:
                              if(§§pop())
                              {
                                 if(!_loc5_)
                                 {
                                    §§goto(addr55);
                                 }
                                 §§goto(addr132);
                              }
                              §§goto(addr64);
                           }
                           §§goto(addr55);
                        }
                        §§goto(addr67);
                     }
                     addr55:
                     §§pop();
                     if(!_loc5_)
                     {
                        §§push(this.§,!-§ > 0);
                        if(_loc4_)
                        {
                           addr64:
                           if(§§pop())
                           {
                              if(_loc4_)
                              {
                                 addr67:
                                 var _loc2_:*;
                                 §§push((_loc2_ = this).§,!-§);
                                 if(!(_loc5_ && _loc2_))
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 var _loc3_:* = §§pop();
                                 if(!(_loc5_ && this))
                                 {
                                    _loc2_.§,!-§ = _loc3_;
                                 }
                                 if(_loc4_ || _loc2_)
                                 {
                                    super.load(this.§[n§);
                                    §§push(true);
                                    addr162:
                                    addr109:
                                 }
                                 else
                                 {
                                    §§goto(addr137);
                                 }
                              }
                              else
                              {
                                 loop0:
                                 while(true)
                                 {
                                    loop1:
                                    while(true)
                                    {
                                       §§push(true);
                                       if(_loc4_ || param1)
                                       {
                                          break;
                                       }
                                       loop2:
                                       for(; _loc4_ || this; while(true)
                                       {
                                          continue loop2;
                                       })
                                       {
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                continue loop1;
                                             }
                                             if(!_loc4_)
                                             {
                                                if(_loc4_)
                                                {
                                                   continue loop0;
                                                }
                                                continue loop2;
                                             }
                                             if(_loc4_)
                                             {
                                                §§goto(addr137);
                                             }
                                             else
                                             {
                                                §§goto(addr162);
                                             }
                                          }
                                       }
                                    }
                                    return §§pop();
                                 }
                              }
                              return §§pop();
                           }
                           §§goto(addr123);
                        }
                        §§goto(addr132);
                     }
                     addr137:
                     return super.dispatchEvent(param1);
                  }
               }
            }
            §§goto(addr51);
         }
         §§goto(addr109);
      }
      
      override public function load(param1:URLRequest) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§[n§ = param1;
            loop0:
            while(true)
            {
               if(this.§2!e§ <= 0)
               {
                  super.load(param1);
                  if(!(_loc2_ && param1))
                  {
                     if(_loc3_ || this)
                     {
                        §§goto(addr20);
                     }
                     else
                     {
                        addr70:
                     }
                     this.§+s§.addEventListener(TimerEvent.TIMER,this.§;!Z§);
                     while(true)
                     {
                        this.§+s§.start();
                        break loop0;
                     }
                     addr101:
                  }
                  break;
               }
               if(!(_loc2_ && _loc2_))
               {
                  if(_loc2_)
                  {
                     continue;
                  }
                  this.§+s§ = new Timer(this.§2!e§);
               }
               §§goto(addr101);
            }
            while(!_loc3_)
            {
               §§goto(addr70);
            }
            addr20:
            return;
         }
         §§goto(addr70);
      }
      
      protected function §;!Z§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§+s§.removeEventListener(TimerEvent.TIMER,this.§;!Z§);
            while(true)
            {
               this.§+s§.reset();
               loop1:
               while(_loc2_ || _loc3_)
               {
                  this.§+s§ = null;
                  while(true)
                  {
                     super.load(this.§[n§);
                     if(!(_loc3_ && _loc3_))
                     {
                        if(_loc2_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr52);
      }
   }
}
