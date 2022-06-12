package § "C§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §0]§ extends URLLoader
   {
       
      
      protected var §-w§:int;
      
      protected var §3!8§:URLRequest;
      
      protected var §'B§:Number;
      
      protected var §8!K§:Timer;
      
      protected var §2!+§:Boolean = false;
      
      protected var §8!M§:URLRequest;
      
      public function §0]§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            this.§-w§ = param2;
            loop0:
            while(true)
            {
               this.§3!8§ = param1;
               loop1:
               while(true)
               {
                  this.§'B§ = param3;
                  while(true)
                  {
                     super(param1);
                     loop3:
                     while(!(_loc5_ && param3))
                     {
                        continue loop0;
                        while(true)
                        {
                           addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§%'§);
                           if(_loc4_ || this)
                           {
                              continue loop1;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr88);
      }
      
      public function §%=§(param1:URLRequest) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§8!M§ = param1;
         }
      }
      
      public function §5s§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            if(this.§8!M§ != null)
            {
               loop0:
               while(true)
               {
                  this.load(this.§8!M§);
                  while(!(_loc2_ && _loc2_))
                  {
                     this.§8!M§ = null;
                     if(!_loc1_)
                     {
                        continue;
                     }
                     if(_loc1_ || this)
                     {
                        return;
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
      
      protected function §%'§(param1:HTTPStatusEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1.status == 403)
            {
               if(_loc2_)
               {
                  this.§-w§ = 0;
                  this.§2!+§ = true;
                  super.dispatchEvent(new §+!D§(§+!D§.§25§));
                  addr94:
                  addr84:
                  addr79:
               }
               §§goto(addr94);
            }
            else if(param1.status == 400)
            {
               if(_loc2_ || _loc2_)
               {
                  this.§-w§ = 0;
               }
               if(_loc2_)
               {
                  if(_loc2_ || _loc3_)
                  {
                     if(_loc2_)
                     {
                        §§goto(addr19);
                     }
                     else
                     {
                        §§goto(addr94);
                     }
                  }
                  §§goto(addr84);
               }
               §§goto(addr79);
            }
            addr19:
            return;
         }
         §§goto(addr94);
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(param1.type == IOErrorEvent.IO_ERROR);
            if(!_loc4_)
            {
               §§push(§§pop());
               if(_loc5_ || param1)
               {
                  if(!§§pop())
                  {
                     if(_loc5_ || _loc2_)
                     {
                        §§pop();
                        if(!(_loc4_ && _loc2_))
                        {
                           §§push(param1.type == SecurityErrorEvent.SECURITY_ERROR);
                           if(_loc5_ || _loc3_)
                           {
                              addr62:
                              if(§§pop())
                              {
                                 if(!_loc4_)
                                 {
                                    addr66:
                                    §§pop();
                                    if(_loc5_)
                                    {
                                       §§push(this.§-w§ > 0);
                                       if(_loc5_ || _loc3_)
                                       {
                                          addr90:
                                          if(§§pop())
                                          {
                                             if(!(_loc4_ && this))
                                             {
                                                addr98:
                                                var _loc2_:*;
                                                §§push((_loc2_ = this).§-w§);
                                                if(!(_loc4_ && _loc2_))
                                                {
                                                   §§push(§§pop() - 1);
                                                }
                                                var _loc3_:* = §§pop();
                                                if(!(_loc4_ && param1))
                                                {
                                                   _loc2_.§-w§ = _loc3_;
                                                }
                                                if(!_loc4_)
                                                {
                                                   super.load(this.§3!8§);
                                                   addr125:
                                                }
                                                addr160:
                                                return true;
                                                addr173:
                                             }
                                             else
                                             {
                                                §§goto(addr151);
                                             }
                                          }
                                          else
                                          {
                                             loop0:
                                             while(true)
                                             {
                                                §§push(this.§2!+§);
                                                do
                                                {
                                                   if(!§§pop())
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         §§goto(addr151);
                                                      }
                                                      else if(!_loc5_)
                                                      {
                                                         if(!(_loc4_ && param1))
                                                         {
                                                            continue loop0;
                                                         }
                                                         §§goto(addr173);
                                                      }
                                                   }
                                                   §§push(true);
                                                }
                                                while(!_loc5_);
                                                
                                                if(!_loc4_)
                                                {
                                                   return §§pop();
                                                }
                                                §§goto(addr160);
                                             }
                                          }
                                       }
                                       §§goto(addr160);
                                    }
                                    §§goto(addr125);
                                 }
                              }
                              §§goto(addr90);
                           }
                           §§goto(addr160);
                        }
                        §§goto(addr98);
                     }
                     §§goto(addr66);
                  }
               }
               §§goto(addr62);
            }
            §§goto(addr66);
         }
         addr151:
         return super.dispatchEvent(param1);
      }
      
      override public function load(param1:URLRequest) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§3!8§ = param1;
            while(true)
            {
               if(this.§'B§ <= 0)
               {
                  super.load(param1);
                  if(!_loc3_)
                  {
                     if(!(_loc2_ || param1))
                     {
                        while(_loc3_ && _loc2_)
                        {
                           §§goto(addr92);
                        }
                        this.§8!K§.start();
                     }
                     if(!_loc3_)
                     {
                        §§goto(addr24);
                     }
                     loop1:
                     while(!_loc3_)
                     {
                        this.§8!K§.addEventListener(TimerEvent.TIMER,this.§%!"§);
                        while(true)
                        {
                           this.§8!K§ = new Timer(this.§'B§);
                           continue loop1;
                        }
                     }
                     continue;
                     break;
                  }
                  break;
               }
            }
            addr24:
            return;
         }
         §§goto(addr92);
      }
      
      protected function §%!"§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§8!K§.removeEventListener(TimerEvent.TIMER,this.§%!"§);
         }
         loop0:
         do
         {
            this.§8!K§.reset();
            while(true)
            {
               this.§8!K§ = null;
               while(_loc3_ || this)
               {
                  super.load(this.§3!8§);
                  if(!_loc2_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(!_loc3_);
         
      }
   }
}
