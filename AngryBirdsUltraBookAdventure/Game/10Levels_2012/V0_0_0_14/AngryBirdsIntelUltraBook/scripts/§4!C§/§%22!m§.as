package §4!C§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §"!m§ extends URLLoader
   {
       
      
      protected var §!!K§:int;
      
      protected var §&!u§:URLRequest;
      
      protected var §3!g§:Number;
      
      protected var §"!4§:Timer;
      
      protected var §?W§:Boolean = false;
      
      public function §"!m§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§!!K§ = param2;
            loop0:
            while(true)
            {
               this.§&!u§ = param1;
               addr84:
               while(true)
               {
                  this.§3!g§ = param3;
                  continue loop0;
               }
            }
         }
         §§goto(addr79);
      }
      
      protected function §<G§(param1:HTTPStatusEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(param1.status != 403)
            {
               if(param1.status == 400)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     if(!_loc2_)
                     {
                        this.§!!K§ = 0;
                        §§goto(addr53);
                     }
                     else
                     {
                        addr97:
                        this.§!!K§ = 0;
                     }
                     while(true)
                     {
                        this.§?W§ = true;
                        §§goto(addr85);
                     }
                  }
                  addr53:
                  if(!_loc2_)
                  {
                     §§goto(addr20);
                  }
                  else
                  {
                     loop2:
                     while(true)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           §§goto(addr20);
                        }
                        else
                        {
                           while(!(_loc2_ && _loc2_))
                           {
                              super.dispatchEvent(new §^!g§(§^!g§.§]P§));
                              continue loop2;
                           }
                           addr85:
                        }
                     }
                  }
                  §§goto(addr20);
               }
               addr20:
               return;
            }
         }
         §§goto(addr97);
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §§push(param1.type == IOErrorEvent.IO_ERROR);
            if(_loc4_)
            {
               §§push(§§pop());
               if(!(_loc5_ && this))
               {
                  if(!§§pop())
                  {
                     if(!(_loc5_ && param1))
                     {
                        §§pop();
                        if(!(_loc5_ && param1))
                        {
                           §§push(param1.type == SecurityErrorEvent.SECURITY_ERROR);
                           if(!(_loc5_ && _loc3_))
                           {
                              addr61:
                              if(§§pop())
                              {
                                 if(_loc4_ || _loc2_)
                                 {
                                    §§goto(addr70);
                                 }
                              }
                              §§goto(addr94);
                           }
                           §§goto(addr137);
                        }
                        §§goto(addr119);
                     }
                     §§goto(addr94);
                  }
               }
               §§goto(addr61);
            }
            addr70:
            §§pop();
            if(!(_loc5_ && this))
            {
               §§push(this.§!!K§ > 0);
               if(_loc4_)
               {
                  addr94:
                  if(§§pop())
                  {
                     if(!_loc5_)
                     {
                        var _loc2_:*;
                        §§push((_loc2_ = this).§!!K§);
                        if(_loc4_)
                        {
                           §§push(§§pop() - 1);
                        }
                        var _loc3_:* = §§pop();
                        if(_loc4_)
                        {
                           _loc2_.§!!K§ = _loc3_;
                        }
                        if(!(_loc5_ && param1))
                        {
                           super.load(this.§&!u§);
                           addr177:
                           §§push(true);
                           addr119:
                        }
                        else
                        {
                           loop1:
                           while(true)
                           {
                              loop2:
                              while(true)
                              {
                                 §§push(true);
                                 if(!_loc5_)
                                 {
                                    §§goto(addr124);
                                 }
                                 loop3:
                                 while(true)
                                 {
                                    if(_loc4_ || this)
                                    {
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             continue loop2;
                                          }
                                          if(!_loc5_)
                                          {
                                             §§goto(addr150);
                                          }
                                          if(!(_loc5_ && _loc2_))
                                          {
                                             continue loop1;
                                          }
                                          if(_loc4_ || _loc2_)
                                          {
                                             while(true)
                                             {
                                                continue loop3;
                                             }
                                             addr128:
                                          }
                                          else
                                          {
                                             §§goto(addr177);
                                          }
                                          continue loop3;
                                       }
                                       addr137:
                                    }
                                 }
                              }
                           }
                           addr161:
                        }
                        return §§pop();
                     }
                     §§goto(addr161);
                  }
                  §§goto(addr128);
               }
               addr124:
               return §§pop();
            }
            §§goto(addr150);
         }
         addr150:
         return super.dispatchEvent(param1);
      }
      
      override public function load(param1:URLRequest) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§&!u§ = param1;
            while(this.§3!g§ <= 0)
            {
               super.load(param1);
               if(_loc3_ || _loc2_)
               {
                  if(_loc3_ || _loc3_)
                  {
                     if(!(_loc3_ || this))
                     {
                        break;
                     }
                     if(_loc2_ && _loc2_)
                     {
                        continue;
                     }
                     §§goto(addr20);
                     continue;
                  }
                  loop1:
                  while(_loc2_ && _loc3_)
                  {
                     while(true)
                     {
                        this.§"!4§.addEventListener(TimerEvent.TIMER,this.§%!+§);
                        continue loop1;
                     }
                  }
                  this.§"!4§.start();
                  addr99:
               }
               return;
            }
            this.§"!4§ = new Timer(this.§3!g§);
            §§goto(addr111);
         }
         §§goto(addr99);
      }
      
      protected function §%!+§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§"!4§.removeEventListener(TimerEvent.TIMER,this.§%!+§);
         }
         loop0:
         do
         {
            this.§"!4§.reset();
            while(true)
            {
               this.§"!4§ = null;
               while(_loc2_ || _loc3_)
               {
                  super.load(this.§&!u§);
                  if(_loc2_ || param1)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(_loc3_ && _loc3_);
         
      }
   }
}
