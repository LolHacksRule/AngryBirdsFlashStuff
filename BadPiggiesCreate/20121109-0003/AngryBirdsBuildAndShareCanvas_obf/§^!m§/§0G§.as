package §^!m§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §0G§ extends URLLoader
   {
       
      
      protected var §!!l§:int;
      
      protected var §6"%§:URLRequest;
      
      protected var §"!L§:Number;
      
      protected var §%!7§:Timer;
      
      protected var §]c§:Boolean = false;
      
      protected var §`Q§:URLRequest;
      
      public function §0G§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            this.§!!l§ = param2;
            loop0:
            while(true)
            {
               this.§6"%§ = param1;
               loop1:
               while(true)
               {
                  this.§"!L§ = param3;
                  loop2:
                  while(!_loc4_)
                  {
                     super(param1);
                     while(true)
                     {
                        addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§8!x§);
                        if(!_loc4_)
                        {
                           if(_loc5_)
                           {
                              if(_loc5_)
                              {
                                 break;
                              }
                              continue loop1;
                           }
                           continue loop2;
                        }
                     }
                     return;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr57);
      }
      
      public function §[!7§(param1:URLRequest) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§`Q§ = param1;
         }
      }
      
      public function §9!Z§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(this.§`Q§ != null)
            {
               loop0:
               while(true)
               {
                  this.load(this.§`Q§);
                  while(!_loc1_)
                  {
                     this.§`Q§ = null;
                     if(!_loc1_)
                     {
                        if(_loc2_)
                        {
                           break loop0;
                        }
                        continue loop0;
                     }
                  }
               }
               return;
            }
            throw new Error("Pending request is null.");
         }
         §§goto(addr74);
      }
      
      protected function §8!x§(param1:HTTPStatusEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(param1.status == 403)
            {
               if(_loc3_)
               {
                  this.§!!l§ = 0;
                  this.§]c§ = true;
                  addr95:
                  loop1:
                  while(true)
                  {
                     super.dispatchEvent(new §""'§(§""'§.§+!'§));
                     addr63:
                     while(!(_loc3_ || _loc2_))
                     {
                        continue loop1;
                     }
                  }
                  addr95:
               }
               §§goto(addr95);
            }
            else if(param1.status == 400)
            {
               if(!_loc2_)
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     if(_loc3_)
                     {
                        this.§!!l§ = 0;
                        addr20:
                        return;
                        addr55:
                     }
                     else
                     {
                        §§goto(addr95);
                     }
                     §§goto(addr20);
                  }
                  §§goto(addr63);
               }
               §§goto(addr55);
            }
            §§goto(addr20);
         }
         §§goto(addr95);
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(param1.type == IOErrorEvent.IO_ERROR);
            if(!(_loc4_ && _loc3_))
            {
               §§push(§§pop());
               if(!(_loc4_ && _loc3_))
               {
                  if(!§§pop())
                  {
                     if(_loc5_ || this)
                     {
                        §§pop();
                        if(_loc5_)
                        {
                           §§push(param1.type == SecurityErrorEvent.SECURITY_ERROR);
                           if(!_loc4_)
                           {
                              addr57:
                              if(§§pop())
                              {
                                 if(!_loc4_)
                                 {
                                    §§pop();
                                    if(_loc5_)
                                    {
                                       §§push(this.§!!l§ > 0);
                                       if(!_loc4_)
                                       {
                                          addr80:
                                          if(§§pop())
                                          {
                                             if(_loc5_)
                                             {
                                                addr83:
                                                var _loc2_:*;
                                                §§push((_loc2_ = this).§!!l§);
                                                if(!(_loc4_ && param1))
                                                {
                                                   §§push(§§pop() - 1);
                                                }
                                                var _loc3_:* = §§pop();
                                                if(_loc5_)
                                                {
                                                   _loc2_.§!!l§ = _loc3_;
                                                }
                                                if(!(_loc4_ && _loc2_))
                                                {
                                                   super.load(this.§6"%§);
                                                }
                                                else
                                                {
                                                   loop3:
                                                   while(true)
                                                   {
                                                      addr119:
                                                      while(true)
                                                      {
                                                         §§push(this.§]c§);
                                                         loop1:
                                                         while(!_loc4_)
                                                         {
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        §§goto(addr128);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr158:
                                                                     }
                                                                     §§push(true);
                                                                     break loop1;
                                                                  }
                                                                  if(!(_loc5_ || _loc2_))
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                               }
                                                               §§push(true);
                                                               if(_loc5_)
                                                               {
                                                                  §§goto(addr115);
                                                               }
                                                               continue loop1;
                                                            }
                                                         }
                                                         addr152:
                                                         return §§pop();
                                                         continue loop3;
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr158);
                                          }
                                          §§goto(addr119);
                                       }
                                       §§goto(addr123);
                                    }
                                    §§goto(addr128);
                                 }
                                 addr115:
                                 return §§pop();
                              }
                              §§goto(addr80);
                           }
                           §§goto(addr152);
                        }
                        addr128:
                        return super.dispatchEvent(param1);
                     }
                     §§goto(addr80);
                  }
               }
               §§goto(addr57);
            }
            §§goto(addr152);
         }
         §§goto(addr83);
      }
      
      override public function load(param1:URLRequest) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§6"%§ = param1;
            for(; this.§"!L§ <= 0; if(!(_loc2_ || _loc3_))
            {
               continue;
            },§§goto(addr19))
            {
               super.load(param1);
               if(!_loc3_)
               {
                  if(!(_loc3_ && this))
                  {
                     if(!(_loc2_ || _loc3_))
                     {
                        break;
                     }
                     continue;
                  }
                  loop1:
                  while(true)
                  {
                     this.§%!7§.start();
                     addr100:
                     while(true)
                     {
                        this.§%!7§.addEventListener(TimerEvent.TIMER,this.§-u§);
                        continue loop1;
                     }
                  }
                  addr19:
                  return;
                  addr69:
               }
               while(true)
               {
                  if(!_loc2_)
                  {
                     §§goto(addr100);
                  }
                  §§goto(addr69);
               }
            }
         }
         this.§%!7§ = new Timer(this.§"!L§);
         §§goto(addr100);
      }
      
      protected function §-u§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§%!7§.removeEventListener(TimerEvent.TIMER,this.§-u§);
         }
         loop0:
         while(true)
         {
            this.§%!7§.reset();
            while(true)
            {
               this.§%!7§ = null;
               while(_loc3_)
               {
                  continue loop0;
                  super.load(this.§6"%§);
                  if(!_loc2_)
                  {
                     return;
                  }
               }
            }
         }
      }
   }
}
