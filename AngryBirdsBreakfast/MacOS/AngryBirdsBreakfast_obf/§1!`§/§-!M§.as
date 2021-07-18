package §1!`§
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   
   public class §-!M§ extends URLLoader
   {
       
      
      protected var §'!x§:int;
      
      protected var §8>§:URLRequest;
      
      protected var §]!6§:Number;
      
      protected var §["!§:Timer;
      
      protected var §>!c§:Boolean = false;
      
      protected var §2$§:URLRequest;
      
      public function §-!M§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§'!x§ = param2;
            while(true)
            {
               this.§8>§ = param1;
               addr72:
               while(_loc5_)
               {
                  this.§]!6§ = param3;
               }
            }
         }
         loop2:
         while(true)
         {
            super(param1);
            while(_loc5_)
            {
               addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§]o§);
               if(!_loc5_)
               {
                  continue;
               }
               if(!_loc4_)
               {
                  break loop2;
               }
               §§goto(addr72);
            }
         }
      }
      
      public function §+K§(param1:URLRequest) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§2$§ = param1;
         }
      }
      
      public function §>!§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(this.§2$§ == null)
            {
               if(!_loc1_)
               {
                  throw new Error("Pending request is null.");
               }
               while(true)
               {
               }
               addr79:
            }
            loop1:
            while(true)
            {
               this.load(this.§2$§);
               do
               {
                  if(_loc2_)
                  {
                     continue;
                  }
                  continue loop1;
               }
               while(this.§2$§ = null, _loc1_ && this);
               
            }
         }
      }
      
      protected function §]o§(param1:HTTPStatusEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(param1.status == 403)
            {
               if(!(_loc2_ && param1))
               {
                  this.§'!x§ = 0;
               }
               this.§>!c§ = true;
               loop0:
               while(true)
               {
                  super.dispatchEvent(new §0!_§(§0!_§.§,!4§));
                  addr73:
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        break loop0;
                     }
                     continue loop0;
                  }
               }
               addr105:
               addr80:
               addr75:
            }
            else if(param1.status == 400)
            {
               if(_loc3_ || _loc3_)
               {
                  if(_loc3_ || _loc2_)
                  {
                     this.§'!x§ = 0;
                     §§goto(addr63);
                  }
                  else
                  {
                     §§goto(addr105);
                  }
               }
               addr63:
               if(_loc3_)
               {
                  §§goto(addr25);
               }
               else
               {
                  §§goto(addr73);
               }
            }
            addr25:
            return;
         }
         §§goto(addr75);
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            §§push(param1.type == IOErrorEvent.IO_ERROR);
            if(_loc4_)
            {
               §§push(§§pop());
               if(!_loc5_)
               {
                  if(!§§pop())
                  {
                     if(!_loc5_)
                     {
                        §§pop();
                        if(!_loc5_)
                        {
                           §§push(param1.type == SecurityErrorEvent.SECURITY_ERROR);
                           if(!(_loc5_ && this))
                           {
                              addr51:
                              if(§§pop())
                              {
                                 if(!_loc5_)
                                 {
                                    §§pop();
                                    if(!_loc5_)
                                    {
                                       §§push(this.§'!x§ > 0);
                                       if(_loc4_)
                                       {
                                          addr64:
                                          if(§§pop())
                                          {
                                             if(_loc4_)
                                             {
                                                addr67:
                                                var _loc2_:*;
                                                §§push((_loc2_ = this).§'!x§);
                                                if(!(_loc5_ && _loc2_))
                                                {
                                                   §§push(§§pop() - 1);
                                                }
                                                var _loc3_:* = §§pop();
                                                if(!(_loc5_ && param1))
                                                {
                                                   _loc2_.§'!x§ = _loc3_;
                                                }
                                                if(_loc4_)
                                                {
                                                   super.load(this.§8>§);
                                                   addr156:
                                                   return true;
                                                   addr162:
                                                   addr104:
                                                }
                                                else
                                                {
                                                   §§goto(addr137);
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                }
                                                addr157:
                                             }
                                             §§goto(addr156);
                                          }
                                          while(true)
                                          {
                                             §§push(this.§>!c§);
                                             addr127:
                                             loop0:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   if(_loc4_)
                                                   {
                                                      if(_loc4_ || _loc2_)
                                                      {
                                                         addr137:
                                                         return super.dispatchEvent(param1);
                                                      }
                                                      §§goto(addr157);
                                                   }
                                                   else
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         while(true)
                                                         {
                                                         }
                                                         addr153:
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr162);
                                                      }
                                                      §§goto(addr156);
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§push(true);
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      break loop0;
                                                   }
                                                   continue loop0;
                                                }
                                                §§goto(addr156);
                                             }
                                             if(_loc4_ || _loc2_)
                                             {
                                                return §§pop();
                                             }
                                             §§goto(addr156);
                                          }
                                       }
                                       §§goto(addr127);
                                    }
                                    §§goto(addr104);
                                 }
                                 §§goto(addr156);
                              }
                              §§goto(addr64);
                           }
                           §§goto(addr127);
                        }
                        §§goto(addr153);
                     }
                  }
               }
            }
            §§goto(addr51);
         }
         §§goto(addr67);
      }
      
      override public function load(param1:URLRequest) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§8>§ = param1;
         }
         loop0:
         while(this.§]!6§ <= 0)
         {
            super.load(param1);
            if(!(_loc2_ && this))
            {
               if(_loc3_)
               {
                  if(!_loc3_)
                  {
                     continue;
                  }
               }
               else
               {
                  loop2:
                  while(true)
                  {
                     this.§["!§.start();
                     addr61:
                     while(true)
                     {
                        if(_loc3_)
                        {
                           if(!(_loc2_ && this))
                           {
                              break;
                           }
                           break loop0;
                        }
                        addr101:
                        while(true)
                        {
                           this.§["!§.addEventListener(TimerEvent.TIMER,this.§4!v§);
                           continue loop2;
                        }
                        continue loop2;
                     }
                  }
               }
               return;
            }
            §§goto(addr61);
         }
         while(true)
         {
            this.§["!§ = new Timer(this.§]!6§);
            §§goto(addr101);
         }
      }
      
      protected function §4!v§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§["!§.removeEventListener(TimerEvent.TIMER,this.§4!v§);
            loop0:
            while(true)
            {
               this.§["!§.reset();
               while(true)
               {
                  this.§["!§ = null;
                  loop2:
                  while(_loc3_)
                  {
                     continue loop0;
                     while(true)
                     {
                        this.§]!6§ = 0;
                        do
                        {
                           super.load(this.§8>§);
                        }
                        while(!(_loc3_ || param1));
                        
                        if(_loc3_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr67);
      }
   }
}
