package §@!v§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §69§ extends URLLoader
   {
       
      
      protected var §5!-§:int;
      
      protected var §[!=§:URLRequest;
      
      protected var §7!b§:Number;
      
      protected var §'j§:Timer;
      
      protected var §,"-§:Boolean = false;
      
      protected var §!!K§:URLRequest;
      
      public function §69§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            this.§5!-§ = param2;
         }
         loop0:
         while(true)
         {
            this.§[!=§ = param1;
            loop1:
            while(true)
            {
               this.§7!b§ = param3;
               loop2:
               do
               {
                  super(param1);
                  while(_loc5_)
                  {
                     continue loop0;
                     addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§<D§);
                     if(_loc5_ || param1)
                     {
                        continue loop2;
                     }
                  }
                  continue loop1;
               }
               while(!(_loc5_ || param3));
               
               return;
            }
         }
      }
      
      public function §1" §(param1:URLRequest) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§!!K§ = param1;
         }
      }
      
      public function § D§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(this.§!!K§ != null)
            {
               loop0:
               do
               {
                  this.load(this.§!!K§);
                  while(_loc2_)
                  {
                     this.§!!K§ = null;
                     if(_loc2_ || _loc2_)
                     {
                        continue loop0;
                     }
                  }
               }
               while(_loc1_);
               
               return;
               addr52:
            }
            throw new Error("Pending request is null.");
         }
         §§goto(addr52);
      }
      
      protected function §<D§(param1:HTTPStatusEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1.status != 403)
            {
               if(param1.status == 400)
               {
                  if(_loc2_ || this)
                  {
                     this.§5!-§ = 0;
                  }
                  if(!(_loc2_ || _loc2_))
                  {
                     loop0:
                     while(true)
                     {
                        if(!(_loc2_ || this))
                        {
                           continue;
                        }
                        if(_loc2_ || this)
                        {
                           if(!_loc3_)
                           {
                              break;
                           }
                           addr101:
                           while(true)
                           {
                              this.§5!-§ = 0;
                           }
                        }
                        while(true)
                        {
                           this.§,"-§ = true;
                           continue loop0;
                        }
                     }
                  }
                  else
                  {
                     addr57:
                  }
               }
               return;
            }
            §§goto(addr101);
         }
         §§goto(addr57);
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(param1.type == IOErrorEvent.IO_ERROR);
            if(!_loc4_)
            {
               §§push(§§pop());
               if(_loc5_ || _loc3_)
               {
                  if(!§§pop())
                  {
                     if(!(_loc4_ && _loc2_))
                     {
                        addr42:
                        §§pop();
                        if(_loc5_)
                        {
                           §§push(param1.type == SecurityErrorEvent.SECURITY_ERROR);
                           if(!(_loc4_ && param1))
                           {
                              addr57:
                              if(§§pop())
                              {
                                 if(_loc5_)
                                 {
                                    addr61:
                                    §§pop();
                                    if(_loc5_ || this)
                                    {
                                       §§push(this.§5!-§ > 0);
                                       if(_loc5_)
                                       {
                                          addr75:
                                          if(§§pop())
                                          {
                                             if(!_loc4_)
                                             {
                                                addr88:
                                                var _loc2_:*;
                                                §§push((_loc2_ = this).§5!-§);
                                                if(_loc5_ || _loc2_)
                                                {
                                                   §§push(§§pop() - 1);
                                                }
                                                var _loc3_:* = §§pop();
                                                if(!(_loc4_ && param1))
                                                {
                                                   _loc2_.§5!-§ = _loc3_;
                                                }
                                                if(_loc5_ || param1)
                                                {
                                                   super.load(this.§[!=§);
                                                   addr120:
                                                }
                                             }
                                             §§goto(addr120);
                                          }
                                          else
                                          {
                                             loop0:
                                             while(true)
                                             {
                                                §§push(this.§,"-§);
                                                loop1:
                                                while(_loc5_)
                                                {
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         if(_loc5_ || this)
                                                         {
                                                            break;
                                                         }
                                                         if(!(_loc5_ || this))
                                                         {
                                                            continue loop0;
                                                         }
                                                         if(_loc4_)
                                                         {
                                                            §§push(true);
                                                            break loop1;
                                                            addr173:
                                                         }
                                                      }
                                                      §§push(true);
                                                      if(!_loc4_)
                                                      {
                                                         return §§pop();
                                                      }
                                                      continue loop1;
                                                   }
                                                   return super.dispatchEvent(param1);
                                                }
                                                §§goto(addr167);
                                             }
                                          }
                                          §§goto(addr173);
                                       }
                                       §§goto(addr133);
                                    }
                                    §§goto(addr120);
                                 }
                                 §§goto(addr167);
                              }
                              §§goto(addr75);
                           }
                           addr167:
                           return §§pop();
                        }
                        §§goto(addr88);
                     }
                     §§goto(addr61);
                  }
               }
               §§goto(addr57);
            }
            §§goto(addr42);
         }
         §§goto(addr141);
      }
      
      override public function load(param1:URLRequest) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§[!=§ = param1;
            loop0:
            while(true)
            {
               if(this.§7!b§ <= 0)
               {
                  super.load(param1);
                  if(!_loc2_)
                  {
                     break;
                  }
                  while(true)
                  {
                     if(!(_loc2_ && this))
                     {
                        break loop0;
                     }
                     addr68:
                     do
                     {
                        if(!(_loc3_ || param1))
                        {
                           continue;
                        }
                     }
                     while(_loc2_);
                     
                     continue loop0;
                     addr84:
                     this.§'j§.start();
                  }
                  continue;
               }
            }
            return;
         }
         while(true)
         {
            this.§'j§ = new Timer(this.§7!b§);
            while(true)
            {
               this.§'j§.addEventListener(TimerEvent.TIMER,this.§'!4§);
               §§goto(addr68);
            }
         }
      }
      
      protected function §'!4§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§'j§.removeEventListener(TimerEvent.TIMER,this.§'!4§);
         }
         loop0:
         do
         {
            this.§'j§.reset();
            while(true)
            {
               this.§'j§ = null;
               while(!(_loc2_ && param1))
               {
                  super.load(this.§[!=§);
                  if(!_loc2_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(!(_loc3_ || _loc3_));
         
      }
   }
}
