package §0X§
{
   import §9!y§.§2v§;
   import §9!y§.§@M§;
   import §;!5§.§ v§;
   import §;!5§.§!e§;
   import §;!5§.§3!^§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §3S§
   {
      
      public static const §]!;§:int = 300.0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §]!;§ = 5 * 60;
         }
      }
      
      private var §2'§:String = "";
      
      private var §;V§:int = 300.0;
      
      private var §^x§:Timer;
      
      private var §6a§:§!e§;
      
      private var §4!K§:Boolean = false;
      
      private var §[!l§:Boolean = false;
      
      public function §3S§(param1:String, param2:int = 300.0)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            super();
         }
         do
         {
            this.§2'§ = param1;
            do
            {
               this.§;V§ = param2;
            }
            while(!_loc4_);
            
         }
         while(_loc3_);
         
      }
      
      public function start() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(!this.§^x§)
            {
               loop0:
               while(true)
               {
                  this.§^x§ = new Timer(this.§;V§ * 1000);
                  loop1:
                  while(true)
                  {
                     this.§^x§.addEventListener(TimerEvent.TIMER,this.§]!V§);
                     addr72:
                     while(true)
                     {
                        this.§^x§.start();
                        if(!(_loc2_ && this))
                        {
                           if(!_loc2_)
                           {
                              if(!_loc2_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr72);
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(this.§^x§)
            {
               if(_loc2_ || _loc1_)
               {
                  this.§^x§.stop();
               }
               do
               {
                  this.§^x§.removeEventListener(TimerEvent.TIMER,this.§]!V§);
                  do
                  {
                     this.§^x§ = null;
                  }
                  while(!(_loc2_ || this));
                  
               }
               while(_loc1_);
               
               addr62:
            }
            return;
         }
         §§goto(addr62);
      }
      
      public function set §default§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§4!K§ = param1;
            loop0:
            while(true)
            {
               §§push(this.§4!K§);
               loop1:
               while(true)
               {
                  §§push(!§§pop());
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop5:
                        while(§§pop())
                        {
                           if(!_loc3_)
                           {
                              if(_loc3_ && this)
                              {
                                 loop4:
                                 while(true)
                                 {
                                    §§push(this.§[!l§);
                                    if(_loc2_ || _loc3_)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(!_loc3_)
                                    {
                                       if(_loc3_ && this)
                                       {
                                          break;
                                       }
                                       continue loop1;
                                    }
                                    addr97:
                                    while(true)
                                    {
                                       §§pop();
                                       continue loop4;
                                    }
                                 }
                                 continue loop2;
                              }
                              while(true)
                              {
                                 §@M§.§-!@§();
                              }
                           }
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 break loop5;
                              }
                              continue loop0;
                           }
                        }
                        return;
                        addr75:
                     }
                     §§goto(addr97);
                  }
               }
            }
         }
         §§goto(addr86);
      }
      
      public function §6,§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§6a§);
            loop0:
            while(!§§pop())
            {
               while(true)
               {
                  this.§6a§ = new §!e§();
                  loop2:
                  while(true)
                  {
                     §§push(this.§6a§);
                     loop3:
                     while(true)
                     {
                        §§pop().addEventListener(Event.COMPLETE,this.§<t§);
                        loop4:
                        while(_loc2_)
                        {
                           §§push(this.§6a§);
                           loop5:
                           while(true)
                           {
                              §§pop().addEventListener(IOErrorEvent.IO_ERROR,this.onError);
                              while(!(_loc1_ && _loc1_))
                              {
                                 §§push(this.§6a§);
                                 loop7:
                                 for(; !_loc1_; while(true)
                                 {
                                    if(_loc2_ || this)
                                    {
                                       continue loop5;
                                    }
                                    continue loop7;
                                    §§goto(addr104);
                                 },continue loop5)
                                 {
                                    §§pop().addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                                    loop8:
                                    while(true)
                                    {
                                       §§push(this.§6a§);
                                       continue loop7;
                                       addr97:
                                       while(true)
                                       {
                                          if(!(_loc1_ && _loc1_))
                                          {
                                             §§push(this.§6a§);
                                             if(_loc2_ || this)
                                             {
                                                if(!_loc2_)
                                                {
                                                   break;
                                                }
                                                continue;
                                             }
                                             continue loop7;
                                             addr104:
                                          }
                                          continue loop8;
                                       }
                                       continue loop0;
                                    }
                                 }
                                 continue loop3;
                              }
                              continue loop4;
                              if(!(_loc2_ || this))
                              {
                                 continue;
                              }
                              §§pop().addEventListener(§3!^§.§2_§,this.onError);
                              §§goto(addr97);
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr64);
      }
      
      private function §]!V§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§6,§();
         }
      }
      
      private function §<t§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:String = this.§6a§.data;
         if(!_loc4_)
         {
            §§push(this.§2'§);
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop6:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              this.§2'§ = _loc2_;
                              addr226:
                              while(true)
                              {
                              }
                              addr125:
                              if(!(_loc3_ || _loc3_))
                              {
                                 continue;
                              }
                              loop21:
                              while(true)
                              {
                                 this.§2'§ = _loc2_;
                                 loop22:
                                 while(true)
                                 {
                                    if(_loc3_)
                                    {
                                       if(!(_loc4_ && _loc2_))
                                       {
                                          this.stop();
                                          if(_loc4_)
                                          {
                                             continue;
                                          }
                                          addr35:
                                          if(!(_loc4_ && param1))
                                          {
                                             if(_loc3_ || _loc2_)
                                             {
                                                §§goto(addr27);
                                             }
                                             break;
                                          }
                                          loop20:
                                          while(true)
                                          {
                                             if(!(_loc4_ && this))
                                             {
                                                addr76:
                                                if(_loc4_ && _loc2_)
                                                {
                                                   break;
                                                }
                                                continue loop21;
                                             }
                                             addr96:
                                             addr212:
                                             loop19:
                                             while(true)
                                             {
                                                §§push(this.§4!K§);
                                                if(!(_loc3_ || _loc2_))
                                                {
                                                   break;
                                                }
                                                if(§§pop())
                                                {
                                                   addr137:
                                                   while(!_loc4_)
                                                   {
                                                      this.§[!l§ = true;
                                                      break loop22;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      if(_loc4_ && _loc3_)
                                                      {
                                                         break;
                                                      }
                                                      if(§§pop() == this.§2'§)
                                                      {
                                                         addr27:
                                                         return;
                                                      }
                                                      continue loop19;
                                                   }
                                                   continue loop0;
                                                   addr137:
                                                   addr116:
                                                }
                                                §@M§.§-!@§();
                                                continue loop20;
                                             }
                                             while(true)
                                             {
                                                if(!_loc4_)
                                                {
                                                   if(_loc4_ && _loc3_)
                                                   {
                                                      break;
                                                   }
                                                   continue loop6;
                                                }
                                                addr233:
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr234:
                                                   while(true)
                                                   {
                                                      §§push(this.§2'§);
                                                      continue loop0;
                                                   }
                                                }
                                                §§goto(addr96);
                                             }
                                             continue loop1;
                                          }
                                          while(true)
                                          {
                                             if(_loc3_)
                                             {
                                                if(_loc3_)
                                                {
                                                   while(true)
                                                   {
                                                      this.§6a§ = null;
                                                      §§goto(addr137);
                                                   }
                                                   addr152:
                                                }
                                                §§goto(addr234);
                                             }
                                             break;
                                             §§goto(addr76);
                                          }
                                          while(true)
                                          {
                                             §§push(this.§6a§);
                                             if(!_loc4_)
                                             {
                                                §§pop().removeEventListener(§3!^§.§2_§,this.onError);
                                                §§goto(addr148);
                                             }
                                             break;
                                          }
                                          addr148:
                                          for(; _loc3_ || this; §§goto(addr170))
                                          {
                                             if(!_loc4_)
                                             {
                                                §§pop().removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                                                continue;
                                             }
                                             addr183:
                                             while(true)
                                             {
                                                §§pop().removeEventListener(Event.COMPLETE,this.§<t§);
                                                break loop21;
                                             }
                                          }
                                          addr170:
                                          while(true)
                                          {
                                             §§pop().removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
                                             §§goto(addr156);
                                          }
                                          addr156:
                                       }
                                       while(true)
                                       {
                                          §§goto(addr35);
                                       }
                                    }
                                    §§goto(addr116);
                                 }
                                 while(_loc3_)
                                 {
                                    if(!_loc4_)
                                    {
                                       §§goto(addr125);
                                    }
                                    else
                                    {
                                       §§goto(addr226);
                                    }
                                 }
                                 break;
                              }
                              addr132:
                              while(true)
                              {
                                 §§goto(addr174);
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr183);
                           §§goto(addr226);
                        }
                     }
                  }
                  §§goto(addr233);
               }
            }
         }
         §§goto(addr152);
      }
      
      private function onError(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1.type == §3!^§.§2_§)
            {
               if(!(_loc3_ && _loc3_))
               {
                  §@M§.§!!g§(§2v§.§'1§);
               }
               while(true)
               {
               }
               addr118:
            }
            loop1:
            while(true)
            {
               §§push(this.§6a§);
               loop2:
               while(true)
               {
                  §§pop().removeEventListener(Event.COMPLETE,this.§<t§);
                  while(!_loc3_)
                  {
                     §§push(this.§6a§);
                     loop4:
                     while(_loc2_)
                     {
                        §§pop().removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
                        while(true)
                        {
                           §§push(this.§6a§);
                           if(_loc2_ || this)
                           {
                              continue;
                           }
                           continue loop4;
                        }
                        return;
                     }
                     continue loop2;
                  }
                  continue loop1;
               }
            }
         }
         §§goto(addr90);
      }
   }
}
