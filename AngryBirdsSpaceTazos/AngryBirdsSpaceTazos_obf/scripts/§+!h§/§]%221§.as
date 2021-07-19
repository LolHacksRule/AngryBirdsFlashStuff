package §+!h§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §]"1§ extends URLLoader
   {
       
      
      protected var §+!B§:int;
      
      protected var §`e§:URLRequest;
      
      protected var §["§:Number;
      
      protected var § !O§:Timer;
      
      protected var §9&§:Boolean = false;
      
      protected var §&!6§:URLRequest;
      
      public function §]"1§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            this.§+!B§ = param2;
            loop0:
            while(true)
            {
               this.§`e§ = param1;
               loop1:
               while(true)
               {
                  this.§["§ = param3;
                  while(true)
                  {
                     super(param1);
                     while(_loc5_)
                     {
                        if(_loc5_)
                        {
                           addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§7a§);
                           if(_loc4_ && param1)
                           {
                              continue;
                           }
                           if(_loc4_)
                           {
                              continue loop0;
                           }
                           continue;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
      }
      
      public function §,z§(param1:URLRequest) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§&!6§ = param1;
         }
      }
      
      public function §<!_§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§&!6§ != null)
            {
               loop0:
               do
               {
                  this.load(this.§&!6§);
                  while(!(_loc2_ && _loc1_))
                  {
                     this.§&!6§ = null;
                     if(!_loc2_)
                     {
                        continue loop0;
                     }
                  }
               }
               while(_loc2_ && this);
               
               return;
               addr46:
            }
            throw new Error("Pending request is null.");
         }
         §§goto(addr46);
      }
      
      protected function §7a§(param1:HTTPStatusEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(param1.status != 403)
            {
               if(param1.status == 400)
               {
                  if(!_loc2_)
                  {
                     if(!(_loc2_ && this))
                     {
                        addr50:
                        this.§+!B§ = 0;
                        §§goto(addr53);
                     }
                     §§goto(addr95);
                  }
                  addr53:
                  if(!_loc2_)
                  {
                     if(!(_loc2_ && param1))
                     {
                        if(!_loc2_)
                        {
                           §§goto(addr20);
                        }
                        else
                        {
                           addr92:
                           this.§+!B§ = 0;
                           this.§9&§ = true;
                           addr95:
                        }
                        §§goto(addr20);
                     }
                     super.dispatchEvent(new §`!O§(§`!O§.§4B§));
                  }
                  §§goto(addr20);
               }
               addr20:
               return;
            }
            §§goto(addr92);
         }
         §§goto(addr50);
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
               if(_loc5_)
               {
                  if(!§§pop())
                  {
                     if(_loc5_)
                     {
                        §§pop();
                        if(_loc5_)
                        {
                           §§push(param1.type == SecurityErrorEvent.SECURITY_ERROR);
                           if(_loc5_)
                           {
                              addr42:
                              if(§§pop())
                              {
                                 if(!_loc4_)
                                 {
                                    §§pop();
                                    if(!_loc4_)
                                    {
                                       §§push(this.§+!B§ > 0);
                                       if(_loc5_)
                                       {
                                          addr55:
                                          if(§§pop())
                                          {
                                             if(!_loc4_)
                                             {
                                                var _loc2_:*;
                                                §§push((_loc2_ = this).§+!B§);
                                                if(!(_loc4_ && param1))
                                                {
                                                   §§push(§§pop() - 1);
                                                }
                                                var _loc3_:* = §§pop();
                                                if(_loc5_)
                                                {
                                                   _loc2_.§+!B§ = _loc3_;
                                                }
                                                if(!_loc4_)
                                                {
                                                   super.load(this.§`e§);
                                                   addr90:
                                                }
                                             }
                                             §§goto(addr90);
                                          }
                                          else
                                          {
                                             loop1:
                                             while(true)
                                             {
                                                §§push(this.§9&§);
                                                loop2:
                                                while(true)
                                                {
                                                   if(!(_loc4_ && _loc3_))
                                                   {
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            if(_loc5_ || _loc3_)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  return super.dispatchEvent(param1);
                                                               }
                                                               addr153:
                                                               §§push(true);
                                                               break;
                                                            }
                                                            if(!(_loc5_ || this))
                                                            {
                                                               while(true)
                                                               {
                                                                  continue loop1;
                                                               }
                                                               addr148:
                                                            }
                                                         }
                                                         §§push(true);
                                                         if(!(_loc4_ && _loc2_))
                                                         {
                                                            §§goto(addr100);
                                                         }
                                                         continue loop2;
                                                      }
                                                      addr147:
                                                      return §§pop();
                                                      addr113:
                                                   }
                                                   §§goto(addr147);
                                                }
                                             }
                                          }
                                          §§goto(addr147);
                                       }
                                       §§goto(addr113);
                                    }
                                    §§goto(addr153);
                                 }
                                 §§goto(addr147);
                              }
                              §§goto(addr55);
                           }
                           §§goto(addr147);
                        }
                        §§goto(addr90);
                     }
                     addr100:
                     return §§pop();
                  }
               }
            }
            §§goto(addr42);
         }
         §§goto(addr148);
      }
      
      override public function load(param1:URLRequest) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§`e§ = param1;
         }
         do
         {
            if(this.§["§ <= 0)
            {
               super.load(param1);
               if(!(_loc3_ && _loc2_))
               {
                  if(_loc2_ || this)
                  {
                     if(!(_loc3_ && this))
                     {
                        §§goto(addr19);
                     }
                     loop1:
                     while(true)
                     {
                        this.§ !O§.addEventListener(TimerEvent.TIMER,this.§!! §);
                        addr89:
                        while(true)
                        {
                           this.§ !O§ = new Timer(this.§["§);
                           continue loop1;
                        }
                     }
                  }
                  while(!_loc2_)
                  {
                  }
                  this.§ !O§.start();
               }
               continue;
            }
            §§goto(addr89);
         }
         while(_loc3_ && _loc2_);
         
         addr19:
      }
      
      protected function §!! §(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§ !O§.removeEventListener(TimerEvent.TIMER,this.§!! §);
            while(true)
            {
               this.§ !O§.reset();
               addr46:
               if(_loc2_ && this)
               {
                  continue;
               }
               return;
               addr53:
            }
         }
         while(true)
         {
            this.§ !O§ = null;
            while(!_loc2_)
            {
               super.load(this.§`e§);
               if(!_loc3_)
               {
                  continue;
               }
               §§goto(addr46);
            }
         }
         §§goto(addr53);
      }
   }
}
