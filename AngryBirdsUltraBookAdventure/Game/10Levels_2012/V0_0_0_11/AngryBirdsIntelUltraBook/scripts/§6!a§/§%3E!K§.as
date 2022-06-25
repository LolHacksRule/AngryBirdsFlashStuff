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
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§6U§ = param2;
            loop0:
            while(true)
            {
               this.§,Q§ = param1;
               while(true)
               {
                  this.§&!a§ = param3;
                  loop2:
                  for(; _loc4_ || param1; while(!(_loc5_ && param3))
                  {
                     if(_loc4_)
                     {
                        addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§;9§);
                        if(_loc4_ || param2)
                        {
                           return;
                        }
                        continue;
                        continue;
                     }
                     continue loop0;
                  })
                  {
                     while(true)
                     {
                        super(param1);
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr85);
      }
      
      protected function §;9§(param1:HTTPStatusEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(param1.status != 403)
            {
               if(param1.status == 400)
               {
                  if(_loc2_ || _loc2_)
                  {
                     if(_loc2_ || _loc3_)
                     {
                        this.§6U§ = 0;
                        addr62:
                        if(_loc2_ || _loc2_)
                        {
                           if(_loc2_)
                           {
                              §§goto(addr24);
                           }
                           else
                           {
                              addr108:
                              this.§6U§ = 0;
                           }
                           §§goto(addr24);
                        }
                        this.§8!N§ = true;
                        while(true)
                        {
                           super.dispatchEvent(new RetryingURLLoaderErrorEvent(RetryingURLLoaderErrorEvent.§3Y§));
                        }
                        addr103:
                     }
                     while(_loc3_ && this)
                     {
                        §§goto(addr103);
                     }
                     §§goto(addr24);
                  }
                  §§goto(addr62);
               }
               addr24:
               return;
            }
         }
         §§goto(addr108);
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(param1.type == IOErrorEvent.IO_ERROR);
            if(!(_loc4_ && param1))
            {
               §§push(Boolean(§§pop()));
               if(_loc5_ || _loc2_)
               {
                  §§push(§§pop());
                  if(!(_loc4_ && param1))
                  {
                     §§push(Boolean(§§pop()));
                     if(_loc5_)
                     {
                        if(!§§pop())
                        {
                           if(_loc5_)
                           {
                              §§pop();
                              if(_loc5_ || param1)
                              {
                                 §§push(param1.type == SecurityErrorEvent.SECURITY_ERROR);
                                 if(_loc5_)
                                 {
                                    §§goto(addr70);
                                 }
                                 §§goto(addr202);
                              }
                              §§goto(addr203);
                           }
                           §§goto(addr70);
                        }
                        §§goto(addr78);
                     }
                  }
                  §§goto(addr82);
               }
               addr70:
               §§push(Boolean(§§pop()));
               if(_loc5_ || param1)
               {
                  addr78:
                  §§push(§§pop());
                  if(_loc5_)
                  {
                     addr82:
                     if(§§pop())
                     {
                        if(!_loc4_)
                        {
                           §§pop();
                           if(_loc5_)
                           {
                              §§push(this.§6U§ > 0);
                              if(!_loc4_)
                              {
                                 addr104:
                                 §§push(Boolean(§§pop()));
                                 if(!(_loc4_ && param1))
                                 {
                                    addr112:
                                    if(§§pop())
                                    {
                                       if(!_loc4_)
                                       {
                                          var _loc2_:*;
                                          §§push((_loc2_ = this).§6U§);
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             §§push(§§pop() - 1);
                                          }
                                          var _loc3_:* = §§pop();
                                          if(!(_loc4_ && param1))
                                          {
                                             _loc2_.§6U§ = _loc3_;
                                          }
                                          if(_loc5_)
                                          {
                                             super.load(this.§,Q§);
                                             addr142:
                                          }
                                          else
                                          {
                                             §§goto(addr195);
                                          }
                                       }
                                       else
                                       {
                                          do
                                          {
                                             addr156:
                                             §§goto(addr202);
                                          }
                                          while(!(_loc5_ || this));
                                          
                                          if(!_loc4_)
                                          {
                                             §§goto(addr195);
                                          }
                                          addr203:
                                       }
                                       addr202:
                                       while(true)
                                       {
                                          §§push(this.§8!N§);
                                          if(!(_loc4_ && param1))
                                          {
                                             if(_loc4_ && _loc2_)
                                             {
                                                break;
                                             }
                                             §§push(!§§pop());
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc5_)
                                                   {
                                                      break;
                                                   }
                                                }
                                                §§push(true);
                                                if(!(_loc4_ && _loc2_))
                                                {
                                                   §§goto(addr152);
                                                }
                                             }
                                             continue loop0;
                                             addr183:
                                          }
                                          §§goto(addr183);
                                       }
                                       addr202:
                                       return §§pop();
                                       §§push(true);
                                    }
                                    §§goto(addr156);
                                 }
                                 §§goto(addr202);
                              }
                              §§goto(addr183);
                           }
                           addr195:
                           return super.dispatchEvent(param1);
                        }
                        §§goto(addr152);
                     }
                     §§goto(addr112);
                  }
                  §§goto(addr82);
               }
               addr152:
               return §§pop();
            }
            §§goto(addr104);
         }
         §§goto(addr142);
      }
      
      override public function load(param1:URLRequest) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§,Q§ = param1;
            while(true)
            {
               if(this.§&!a§ <= 0)
               {
                  super.load(param1);
                  if(!(_loc2_ && param1))
                  {
                     if(_loc3_)
                     {
                        if(!_loc2_)
                        {
                           addr20:
                           return;
                           addr52:
                        }
                        §§goto(addr105);
                     }
                     this.§3!f§.start();
                     break;
                     addr69:
                  }
                  break;
               }
               if(_loc3_ || this)
               {
                  continue;
               }
               addr105:
               this.§3!f§.addEventListener(TimerEvent.TIMER,this.§#D§);
               addr105:
               §§goto(addr69);
            }
            §§goto(addr20);
         }
         §§goto(addr52);
      }
      
      protected function §#D§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
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
               while(!(_loc2_ || _loc2_));
               
            }
            while(!_loc2_);
            
         }
         while(_loc3_);
         
      }
   }
}
