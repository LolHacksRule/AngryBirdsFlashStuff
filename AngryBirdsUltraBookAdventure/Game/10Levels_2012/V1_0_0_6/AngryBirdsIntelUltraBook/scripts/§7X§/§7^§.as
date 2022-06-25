package §7X§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §7^§ extends URLLoader
   {
       
      
      protected var §var§:int;
      
      protected var §6g§:URLRequest;
      
      protected var §?k§:Number;
      
      protected var §7!]§:Timer;
      
      protected var §%!c§:Boolean = false;
      
      public function §7^§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param3))
         {
            this.§var§ = param2;
            loop0:
            while(true)
            {
               this.§6g§ = param1;
               while(true)
               {
                  this.§?k§ = param3;
                  while(_loc4_)
                  {
                     if(_loc4_)
                     {
                        super(param1);
                        loop3:
                        while(_loc4_)
                        {
                           while(true)
                           {
                              addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§,#§);
                              if(!(_loc5_ && param3))
                              {
                                 break;
                              }
                              continue loop3;
                           }
                           return;
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr69);
      }
      
      protected function §,#§(param1:HTTPStatusEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(param1.status != 403)
            {
               if(param1.status == 400)
               {
                  if(!_loc2_)
                  {
                     if(_loc3_ || param1)
                     {
                        this.§var§ = 0;
                        §§goto(addr58);
                     }
                     §§goto(addr97);
                  }
                  addr58:
                  if(_loc3_ || this)
                  {
                     if(_loc3_)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           §§goto(addr25);
                        }
                        else
                        {
                           addr102:
                           this.§var§ = 0;
                           this.§%!c§ = true;
                           super.dispatchEvent(new §!!5§(§!!5§.§[!§));
                           addr105:
                           addr97:
                        }
                        §§goto(addr25);
                     }
                     §§goto(addr105);
                  }
                  §§goto(addr25);
               }
               addr25:
               return;
            }
         }
         §§goto(addr102);
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            §§push(param1.type == IOErrorEvent.IO_ERROR);
            if(!_loc5_)
            {
               §§push(§§pop());
               if(!_loc5_)
               {
                  if(!§§pop())
                  {
                     if(!(_loc5_ && param1))
                     {
                        §§pop();
                        if(!(_loc5_ && _loc2_))
                        {
                           §§push(param1.type == SecurityErrorEvent.SECURITY_ERROR);
                           if(_loc4_ || _loc3_)
                           {
                              addr61:
                              if(§§pop())
                              {
                                 if(_loc4_ || param1)
                                 {
                                    §§pop();
                                    if(_loc4_ || param1)
                                    {
                                       §§push(this.§var§ > 0);
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          addr99:
                                          if(§§pop())
                                          {
                                             if(_loc4_ || param1)
                                             {
                                                var _loc2_:*;
                                                §§push((_loc2_ = this).§var§);
                                                if(!_loc5_)
                                                {
                                                   §§push(§§pop() - 1);
                                                }
                                                var _loc3_:* = §§pop();
                                                if(_loc4_ || this)
                                                {
                                                   _loc2_.§var§ = _loc3_;
                                                }
                                                if(!_loc5_)
                                                {
                                                   super.load(this.§6g§);
                                                   addr171:
                                                   return true;
                                                   addr177:
                                                }
                                                else
                                                {
                                                   §§goto(addr162);
                                                }
                                             }
                                             else
                                             {
                                                while(_loc5_ && _loc3_)
                                                {
                                                }
                                                addr162:
                                                return super.dispatchEvent(param1);
                                                addr172:
                                             }
                                             §§goto(addr177);
                                          }
                                          while(true)
                                          {
                                             §§push(this.§%!c§);
                                             loop1:
                                             while(_loc4_)
                                             {
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         §§goto(addr155);
                                                      }
                                                      else if(!_loc4_)
                                                      {
                                                         §§goto(addr177);
                                                      }
                                                   }
                                                   §§push(true);
                                                   if(!_loc5_)
                                                   {
                                                      §§goto(addr134);
                                                   }
                                                   continue loop1;
                                                }
                                             }
                                             §§goto(addr171);
                                          }
                                       }
                                       addr134:
                                       return §§pop();
                                    }
                                    §§goto(addr171);
                                 }
                                 §§goto(addr152);
                              }
                           }
                           §§goto(addr99);
                        }
                        §§goto(addr172);
                     }
                     §§goto(addr99);
                  }
               }
            }
            §§goto(addr61);
         }
         §§goto(addr162);
      }
      
      override public function load(param1:URLRequest) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§6g§ = param1;
            while(true)
            {
               if(this.§?k§ <= 0)
               {
                  super.load(param1);
                  if(!_loc3_)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        §§goto(addr19);
                     }
                     while(!(_loc2_ || param1))
                     {
                        §§goto(addr95);
                     }
                     if(_loc2_)
                     {
                        this.§7!]§.start();
                        break;
                     }
                     continue;
                     addr72:
                  }
                  break;
               }
               if(_loc2_)
               {
                  while(true)
                  {
                     this.§7!]§ = new Timer(this.§?k§);
                  }
                  addr89:
               }
               while(true)
               {
                  this.§7!]§.addEventListener(TimerEvent.TIMER,this.§4!<§);
               }
               addr95:
               §§goto(addr72);
            }
            addr19:
            return;
         }
         §§goto(addr89);
      }
      
      protected function §4!<§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§7!]§.removeEventListener(TimerEvent.TIMER,this.§4!<§);
         }
         loop0:
         while(true)
         {
            this.§7!]§.reset();
            while(true)
            {
               this.§7!]§ = null;
               while(!_loc3_)
               {
                  if(!_loc3_)
                  {
                     super.load(this.§6g§);
                     if(_loc2_)
                     {
                        return;
                     }
                     continue;
                     continue;
                  }
                  continue loop0;
               }
            }
         }
      }
   }
}
