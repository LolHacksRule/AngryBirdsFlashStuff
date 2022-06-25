package §6!a§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §>!K§ extends URLLoader
   {
       
      
      [Event(name="thirdPartyCookiesDisabled",type="com.rovio.server.RetryingURLLoaderErrorEvent")]
      protected var §6U§:int;
      
      protected var §,Q§:URLRequest;
      
      protected var §&!a§:Number;
      
      protected var §3!f§:Timer;
      
      protected var §8!N§:Boolean = false;
      
      public function §>!K§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§6U§ = param2;
            while(true)
            {
               this.§,Q§ = param1;
               loop1:
               while(_loc5_)
               {
                  this.§&!a§ = param3;
                  loop2:
                  while(true)
                  {
                     super(param1);
                     while(true)
                     {
                        if(!_loc4_)
                        {
                           if(_loc4_)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop2;
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      protected function §;9§(param1:HTTPStatusEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(param1.status == 403)
            {
               if(!_loc3_)
               {
                  this.§6U§ = 0;
               }
               this.§8!N§ = true;
               loop1:
               while(true)
               {
                  super.dispatchEvent(new RetryingURLLoaderErrorEvent(RetryingURLLoaderErrorEvent.§3Y§));
                  addr79:
                  while(!_loc2_)
                  {
                     continue loop1;
                  }
               }
               addr96:
            }
            else if(param1.status == 400)
            {
               if(_loc2_)
               {
                  if(_loc2_)
                  {
                     this.§6U§ = 0;
                     addr52:
                     if(_loc2_ || _loc2_)
                     {
                        addr24:
                        return;
                        addr69:
                     }
                     else
                     {
                        §§goto(addr96);
                     }
                     §§goto(addr24);
                  }
                  §§goto(addr79);
               }
               §§goto(addr52);
            }
            §§goto(addr24);
         }
         §§goto(addr69);
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §§push(param1.type == IOErrorEvent.IO_ERROR);
            if(!(_loc5_ && _loc3_))
            {
               §§push(Boolean(§§pop()));
               if(_loc4_)
               {
                  §§push(§§pop());
                  if(_loc4_)
                  {
                     §§push(Boolean(§§pop()));
                     if(_loc4_)
                     {
                        if(!§§pop())
                        {
                           if(_loc4_ || _loc3_)
                           {
                              §§pop();
                              if(_loc4_ || _loc3_)
                              {
                                 §§push(param1.type == SecurityErrorEvent.SECURITY_ERROR);
                                 if(_loc4_ || _loc3_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(_loc4_ || param1)
                                    {
                                       addr77:
                                       §§push(§§pop());
                                       if(!_loc5_)
                                       {
                                          addr91:
                                          if(§§pop())
                                          {
                                             if(!_loc5_)
                                             {
                                                §§pop();
                                                if(!_loc5_)
                                                {
                                                   §§push(this.§6U§ > 0);
                                                   if(!_loc5_)
                                                   {
                                                      §§goto(addr103);
                                                   }
                                                   §§goto(addr146);
                                                }
                                                §§goto(addr172);
                                             }
                                             §§goto(addr179);
                                          }
                                          §§goto(addr106);
                                       }
                                       §§goto(addr91);
                                    }
                                    §§goto(addr146);
                                 }
                                 §§goto(addr147);
                              }
                              §§goto(addr176);
                           }
                           §§goto(addr103);
                        }
                        §§goto(addr77);
                     }
                  }
                  §§goto(addr91);
               }
               §§goto(addr146);
            }
            addr103:
            §§push(Boolean(§§pop()));
            if(!_loc5_)
            {
               addr106:
               if(§§pop())
               {
                  if(_loc4_ || this)
                  {
                     var _loc2_:*;
                     §§push((_loc2_ = this).§6U§);
                     if(!_loc5_)
                     {
                        §§push(§§pop() - 1);
                     }
                     var _loc3_:* = §§pop();
                     if(_loc4_)
                     {
                        _loc2_.§6U§ = _loc3_;
                     }
                     if(!_loc5_)
                     {
                        super.load(this.§,Q§);
                     }
                  }
                  addr179:
                  return true;
                  addr188:
               }
               else
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§8!N§);
                     addr146:
                     loop2:
                     while(true)
                     {
                        §§push(!§§pop());
                        addr147:
                        loop0:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc4_ || _loc2_)
                              {
                                 if(_loc4_ || param1)
                                 {
                                    addr172:
                                    return super.dispatchEvent(param1);
                                 }
                                 if(_loc4_)
                                 {
                                    continue loop1;
                                 }
                                 §§goto(addr188);
                              }
                              else
                              {
                                 addr176:
                                 while(true)
                                 {
                                 }
                                 addr176:
                              }
                              §§goto(addr179);
                           }
                           while(true)
                           {
                              §§push(true);
                              if(_loc4_)
                              {
                                 if(!_loc5_)
                                 {
                                    break loop0;
                                 }
                                 continue loop2;
                              }
                              continue loop0;
                           }
                           §§goto(addr179);
                        }
                        if(!_loc4_)
                        {
                           §§goto(addr179);
                        }
                     }
                  }
               }
               §§goto(addr179);
            }
            return §§pop();
         }
         §§goto(addr176);
      }
      
      override public function load(param1:URLRequest) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§,Q§ = param1;
            loop0:
            while(this.§&!a§ <= 0)
            {
               super.load(param1);
               if(_loc3_ && this)
               {
                  while(true)
                  {
                     if(_loc2_ || _loc3_)
                     {
                        if(!_loc3_)
                        {
                           break;
                        }
                        break loop0;
                     }
                     loop2:
                     while(!_loc2_)
                     {
                        while(true)
                        {
                           this.§3!f§.addEventListener(TimerEvent.TIMER,this.§#D§);
                           continue loop2;
                        }
                     }
                     this.§3!f§.start();
                  }
                  return;
               }
               addr19:
               if(_loc3_ && this)
               {
                  continue;
               }
               §§goto(addr19);
            }
            while(true)
            {
               this.§3!f§ = new Timer(this.§&!a§);
            }
         }
         §§goto(addr104);
      }
      
      protected function §#D§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§3!f§.removeEventListener(TimerEvent.TIMER,this.§#D§);
         }
         do
         {
            this.§3!f§.reset();
            do
            {
               this.§3!f§ = null;
               do
               {
                  super.load(this.§,Q§);
               }
               while(!(_loc3_ || _loc2_));
               
            }
            while(!_loc3_);
            
         }
         while(_loc2_ && _loc2_);
         
      }
   }
}
