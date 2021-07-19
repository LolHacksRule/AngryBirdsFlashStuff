package §`!o§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §2,§ extends URLLoader
   {
       
      
      protected var §`"m§:int;
      
      protected var §^!y§:URLRequest;
      
      protected var §7!+§:Number;
      
      protected var §&"c§:Timer;
      
      protected var §?""§:Boolean = false;
      
      protected var §5#2§:URLRequest;
      
      public function §2,§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§`"m§ = param2;
            loop0:
            while(true)
            {
               this.§^!y§ = param1;
               while(true)
               {
                  this.§7!+§ = param3;
                  continue loop0;
                  addr48:
                  if(!(_loc4_ && param1))
                  {
                     return;
                     addr55:
                  }
               }
            }
         }
         §§goto(addr62);
      }
      
      public function §;#<§(param1:URLRequest) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§5#2§ = param1;
         }
      }
      
      public function §="I§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            if(this.§5#2§ != null)
            {
               loop0:
               do
               {
                  this.load(this.§5#2§);
                  while(!_loc1_)
                  {
                     this.§5#2§ = null;
                     if(_loc2_ || this)
                     {
                        continue loop0;
                     }
                  }
               }
               while(!(_loc2_ || _loc2_));
               
               return;
            }
         }
         throw new Error("Pending request is null.");
      }
      
      protected function §-!c§(param1:HTTPStatusEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1.status == 403)
            {
               if(_loc2_ || this)
               {
                  this.§`"m§ = 0;
               }
               this.§?""§ = true;
               super.dispatchEvent(new §##[§(§##[§.§>g§));
               addr104:
               addr79:
               addr74:
            }
            else if(param1.status == 400)
            {
               if(!_loc3_)
               {
                  this.§`"m§ = 0;
               }
               if(_loc2_ || this)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     if(!(_loc3_ && this))
                     {
                        §§goto(addr19);
                     }
                     else
                     {
                        §§goto(addr104);
                     }
                  }
                  §§goto(addr79);
               }
               §§goto(addr74);
            }
            addr19:
            return;
         }
         §§goto(addr104);
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            §§push(param1.type == IOErrorEvent.IO_ERROR);
            if(!_loc4_)
            {
               §§push(§§pop());
               if(_loc5_)
               {
                  if(!§§pop())
                  {
                     if(_loc5_)
                     {
                        §§pop();
                        if(!(_loc4_ && _loc2_))
                        {
                           §§push(param1.type == SecurityErrorEvent.SECURITY_ERROR);
                           if(_loc5_)
                           {
                              addr52:
                              if(§§pop())
                              {
                                 if(_loc5_)
                                 {
                                    §§pop();
                                    if(_loc5_)
                                    {
                                       §§push(this.§`"m§ > 0);
                                       if(!_loc4_)
                                       {
                                          addr65:
                                          if(§§pop())
                                          {
                                             if(_loc5_)
                                             {
                                                var _loc2_:*;
                                                §§push((_loc2_ = this).§`"m§);
                                                if(_loc5_)
                                                {
                                                   §§push(§§pop() - 1);
                                                }
                                                var _loc3_:* = §§pop();
                                                if(_loc5_)
                                                {
                                                   _loc2_.§`"m§ = _loc3_;
                                                }
                                                if(_loc5_ || _loc3_)
                                                {
                                                   super.load(this.§^!y§);
                                                   addr135:
                                                   return true;
                                                   addr158:
                                                }
                                             }
                                             §§goto(addr121);
                                          }
                                          else
                                          {
                                             loop3:
                                             while(true)
                                             {
                                                §§push(this.§?""§);
                                                loop2:
                                                while(true)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      addr113:
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            if(_loc5_ || param1)
                                                            {
                                                               addr121:
                                                               return super.dispatchEvent(param1);
                                                            }
                                                            if(_loc4_ && param1)
                                                            {
                                                               if(_loc5_ || _loc3_)
                                                               {
                                                                  addr153:
                                                                  while(true)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  addr153:
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr158);
                                                               }
                                                            }
                                                         }
                                                         §§push(true);
                                                         if(_loc5_)
                                                         {
                                                         }
                                                         continue loop2;
                                                      }
                                                      §§goto(addr135);
                                                      addr113:
                                                   }
                                                   §§goto(addr135);
                                                }
                                             }
                                          }
                                          §§goto(addr135);
                                       }
                                       return §§pop();
                                    }
                                    §§goto(addr153);
                                 }
                                 §§goto(addr113);
                              }
                              §§goto(addr65);
                           }
                           §§goto(addr113);
                        }
                        §§goto(addr153);
                     }
                     §§goto(addr135);
                  }
               }
            }
            §§goto(addr52);
         }
         §§goto(addr135);
      }
      
      override public function load(param1:URLRequest) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§^!y§ = param1;
         }
         loop0:
         while(true)
         {
            if(this.§7!+§ <= 0)
            {
               super.load(param1);
               if(_loc2_ || _loc2_)
               {
                  if(_loc2_ || param1)
                  {
                     if(_loc2_ || param1)
                     {
                        §§goto(addr19);
                     }
                     while(true)
                     {
                        this.§&"c§.addEventListener(TimerEvent.TIMER,this.§+#D§);
                        addr94:
                        this.§&"c§ = new Timer(this.§7!+§);
                     }
                  }
                  while(_loc3_ && _loc2_)
                  {
                     continue loop0;
                  }
                  this.§&"c§.start();
                  break;
               }
            }
         }
         addr19:
      }
      
      protected function §+#D§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§&"c§.removeEventListener(TimerEvent.TIMER,this.§+#D§);
            loop0:
            while(true)
            {
               this.§&"c§.reset();
               loop1:
               while(true)
               {
                  this.§&"c§ = null;
                  while(true)
                  {
                     this.§7!+§ = 0;
                     continue loop1;
                     addr31:
                     if(!(_loc2_ && _loc3_))
                     {
                        if(!_loc2_)
                        {
                           return;
                           addr50:
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr62);
      }
   }
}
