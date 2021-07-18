package §2!&§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §;"%§ extends URLLoader
   {
       
      
      protected var §`l§:int;
      
      protected var §^E§:URLRequest;
      
      protected var §,y§:Number;
      
      protected var §5m§:Timer;
      
      protected var § ",§:Boolean = false;
      
      protected var §4N§:URLRequest;
      
      public function §;"%§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param3)
         {
            this.§`l§ = param2;
            while(true)
            {
               this.§^E§ = param1;
            }
            addr88:
         }
         while(true)
         {
            this.§,y§ = param3;
            while(!_loc4_)
            {
               super(param1);
               for(; !(_loc4_ && this); addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§`L§),if(_loc5_)
               {
                  return;
               })
               {
                  if(_loc5_)
                  {
                     continue;
                  }
                  §§goto(addr88);
               }
            }
         }
      }
      
      public function § m§(param1:URLRequest) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§4N§ = param1;
         }
      }
      
      public function §<!#§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§4N§ == null)
            {
               if(_loc1_)
               {
                  throw new Error("Pending request is null.");
               }
               while(true)
               {
                  §§goto(addr47);
               }
               addr68:
            }
            while(true)
            {
               this.load(this.§4N§);
               §§goto(addr68);
            }
         }
         addr47:
         while(true)
         {
            this.§4N§ = null;
            if(_loc1_)
            {
               if(!_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      protected function §`L§(param1:HTTPStatusEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1.status != 403)
            {
               if(param1.status == 400)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     if(_loc2_ || _loc2_)
                     {
                        this.§`l§ = 0;
                        addr57:
                     }
                     else
                     {
                        while(_loc3_)
                        {
                           loop1:
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 addr91:
                                 while(true)
                                 {
                                    this.§`l§ = 0;
                                 }
                              }
                              while(true)
                              {
                                 this.§ ",§ = true;
                                 continue loop1;
                              }
                           }
                           super.dispatchEvent(new §#4§(§#4§.§75§));
                        }
                     }
                  }
                  §§goto(addr57);
               }
               return;
            }
            §§goto(addr91);
         }
         §§goto(addr57);
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            §§push(param1.type == IOErrorEvent.IO_ERROR);
            if(_loc5_ || param1)
            {
               §§push(§§pop());
               if(!(_loc4_ && _loc3_))
               {
                  if(!§§pop())
                  {
                     if(!_loc4_)
                     {
                        §§pop();
                        if(_loc5_ || _loc3_)
                        {
                           §§push(param1.type == SecurityErrorEvent.SECURITY_ERROR);
                           if(!(_loc4_ && _loc3_))
                           {
                              addr67:
                              if(§§pop())
                              {
                                 if(_loc5_ || _loc3_)
                                 {
                                    addr76:
                                    §§pop();
                                    if(_loc5_ || _loc2_)
                                    {
                                       addr94:
                                       §§push(this.§`l§ > 0);
                                       if(!_loc4_)
                                       {
                                          addr100:
                                          if(§§pop())
                                          {
                                             if(_loc5_)
                                             {
                                                var _loc2_:*;
                                                §§push((_loc2_ = this).§`l§);
                                                if(!_loc4_)
                                                {
                                                   §§push(§§pop() - 1);
                                                }
                                                var _loc3_:* = §§pop();
                                                if(!(_loc4_ && this))
                                                {
                                                   _loc2_.§`l§ = _loc3_;
                                                }
                                                if(_loc5_)
                                                {
                                                   super.load(this.§^E§);
                                                   addr177:
                                                   return true;
                                                   addr183:
                                                   addr125:
                                                }
                                                §§goto(addr177);
                                             }
                                             loop0:
                                             while(true)
                                             {
                                                loop1:
                                                while(true)
                                                {
                                                   §§push(true);
                                                   if(!_loc4_)
                                                   {
                                                      break;
                                                   }
                                                   addr136:
                                                   while(_loc5_ || _loc2_)
                                                   {
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            continue loop1;
                                                         }
                                                         if(!(_loc4_ && this))
                                                         {
                                                            break;
                                                         }
                                                         if(!_loc4_)
                                                         {
                                                            if(!(_loc4_ && this))
                                                            {
                                                               continue loop0;
                                                            }
                                                            §§goto(addr183);
                                                         }
                                                      }
                                                      return super.dispatchEvent(param1);
                                                   }
                                                   §§goto(addr177);
                                                }
                                                §§goto(addr130);
                                             }
                                          }
                                          while(true)
                                          {
                                             §§goto(addr136);
                                          }
                                       }
                                       §§goto(addr143);
                                    }
                                    §§goto(addr125);
                                 }
                                 §§goto(addr177);
                              }
                              §§goto(addr100);
                           }
                           §§goto(addr177);
                        }
                        §§goto(addr94);
                     }
                     addr130:
                     return §§pop();
                  }
               }
               §§goto(addr67);
            }
            §§goto(addr76);
         }
         §§goto(addr177);
      }
      
      override public function load(param1:URLRequest) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§^E§ = param1;
         }
         loop0:
         while(this.§,y§ <= 0)
         {
            super.load(param1);
            if(_loc3_ && this)
            {
               while(true)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     if(!_loc3_)
                     {
                        break;
                     }
                     break loop0;
                  }
                  loop3:
                  while(_loc3_ && _loc3_)
                  {
                     while(true)
                     {
                        this.§5m§.addEventListener(TimerEvent.TIMER,this.§;!>§);
                        continue loop3;
                     }
                  }
                  this.§5m§.start();
               }
            }
            else
            {
               addr19:
            }
            continue;
            if(!(_loc3_ && param1))
            {
               §§goto(addr19);
            }
            continue;
            return;
         }
         while(true)
         {
            this.§5m§ = new Timer(this.§,y§);
            §§goto(addr105);
         }
      }
      
      protected function §;!>§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§5m§.removeEventListener(TimerEvent.TIMER,this.§;!>§);
            loop0:
            while(true)
            {
               this.§5m§.reset();
               while(true)
               {
                  this.§5m§ = null;
                  continue loop0;
                  addr35:
                  if(!(_loc3_ && this))
                  {
                     return;
                     addr52:
                  }
               }
            }
         }
         while(true)
         {
            this.§,y§ = 0;
            §§goto(addr57);
         }
         §§goto(addr52);
      }
   }
}
