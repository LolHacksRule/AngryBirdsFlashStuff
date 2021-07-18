package §]]§
{
   import §2<§.§3d§;
   import §2<§.§9!7§;
   import §2<§.§9G§;
   import §5!Y§.§9"6§;
   import §5!Y§.§]!I§;
   import §59§.§="C§;
   import §9@§.§1!j§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   
   public class §!!X§ extends EventDispatcher
   {
       
      
      private var §>L§:§3d§;
      
      private var §%0§:Vector.<§="C§>;
      
      private var §9k§:Vector.<§="C§>;
      
      private var §&v§:Object;
      
      public function §!!X§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public function get §,1§() : Vector.<§="C§>
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(!this.§%0§)
            {
               if(!(_loc1_ && _loc1_))
               {
                  this.§9!R§();
               }
               return null;
            }
         }
         return this.§%0§;
      }
      
      public function get §<$§() : Vector.<§="C§>
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(!this.§9k§)
            {
               if(_loc2_ || _loc1_)
               {
                  this.§9!R§();
               }
               return null;
            }
         }
         return this.§9k§;
      }
      
      private function §9!R§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§>L§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(Boolean(this.§%0§));
                              if(_loc2_)
                              {
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(_loc1_)
                                    {
                                       break;
                                    }
                                    if(!§§pop())
                                    {
                                       loop5:
                                       while(true)
                                       {
                                          §§pop();
                                          loop6:
                                          while(true)
                                          {
                                             §§push(Boolean(this.§9k§));
                                             if(!_loc2_)
                                             {
                                                continue loop5;
                                             }
                                             if(!(_loc2_ || _loc1_))
                                             {
                                                continue loop3;
                                             }
                                             if(!_loc2_)
                                             {
                                                break;
                                             }
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc2_ || this)
                                                   {
                                                      §§goto(addr193);
                                                   }
                                                   while(true)
                                                   {
                                                      addr136:
                                                      if(!(_loc2_ || this))
                                                      {
                                                         continue;
                                                      }
                                                      §§push(this.§>L§);
                                                      loop14:
                                                      while(!(_loc1_ && _loc2_))
                                                      {
                                                         §§pop().addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§<W§);
                                                         do
                                                         {
                                                            §§push(this.§>L§);
                                                            loop16:
                                                            while(true)
                                                            {
                                                               if(_loc2_ || this)
                                                               {
                                                                  addr80:
                                                                  if(!(_loc1_ && this))
                                                                  {
                                                                     §§pop().addEventListener(§9G§.§33§,this.§<W§);
                                                                     loop17:
                                                                     while(!(_loc1_ && _loc2_))
                                                                     {
                                                                        §§push(this.§>L§);
                                                                        loop18:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc2_)
                                                                           {
                                                                              continue loop16;
                                                                           }
                                                                           if(!_loc2_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§pop().dataFormat = URLLoaderDataFormat.TEXT;
                                                                           while(true)
                                                                           {
                                                                              if(_loc2_)
                                                                              {
                                                                                 if(_loc1_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 continue loop18;
                                                                              }
                                                                              continue loop17;
                                                                              addr29:
                                                                              §§pop().load(§9!7§.§,!l§(AngryBirdsFP11.§?8§ + "/shoplisting"));
                                                                              if(_loc1_ && this)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§goto(addr43);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§>L§);
                                                                              break loop14;
                                                                           }
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                     while(!_loc1_)
                                                                     {
                                                                        §§goto(addr136);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§>L§);
                                                                        break loop16;
                                                                     }
                                                                     addr134:
                                                                     addr158:
                                                                  }
                                                                  break;
                                                               }
                                                               continue loop14;
                                                            }
                                                            while(true)
                                                            {
                                                               §§pop().addEventListener(Event.COMPLETE,this.§7"X§);
                                                               §§goto(addr152);
                                                               §§goto(addr80);
                                                            }
                                                            continue loop14;
                                                         }
                                                         while(!(_loc2_ || this));
                                                         
                                                         if(!_loc1_)
                                                         {
                                                            if(!_loc1_)
                                                            {
                                                               return;
                                                            }
                                                            continue loop4;
                                                         }
                                                         continue loop6;
                                                      }
                                                      while(true)
                                                      {
                                                         §§pop().addEventListener(IOErrorEvent.IO_ERROR,this.§<W§);
                                                         §§goto(addr134);
                                                         §§goto(addr113);
                                                      }
                                                      addr113:
                                                   }
                                                   addr194:
                                                }
                                                while(true)
                                                {
                                                   this.§>L§ = new §3d§();
                                                   §§goto(addr158);
                                                   §§goto(addr194);
                                                }
                                             }
                                          }
                                          continue loop1;
                                       }
                                       addr207:
                                    }
                                    §§goto(addr174);
                                 }
                                 continue loop2;
                                 addr202:
                              }
                              §§goto(addr207);
                           }
                        }
                     }
                     §§goto(addr202);
                  }
               }
            }
         }
         addr193:
      }
      
      private function §7"X§(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var e:Event = param1;
         while(true)
         {
            §§push(this.§>L§);
            loop1:
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§7"X§);
               addr92:
               while(true)
               {
                  §§push(this.§>L§);
                  continue loop1;
               }
            }
            if(_loc5_ || param1)
            {
               if(false)
               {
                  §§goto(addr49);
               }
               try
               {
                  this.§&v§ = JSON.parse(this.§>L§.data);
                  if(_loc5_ || _loc2_)
                  {
                     this.§^!6§(this.§&v§);
                     if(_loc5_ || this)
                     {
                        dispatchEvent(new Event(Event.COMPLETE));
                     }
                  }
               }
               catch(e:Error)
               {
                  throw new Error("Error parsing JSON: " + §>L§.data,§1!j§.§%e§);
               }
               return;
            }
         }
      }
      
      private function §^!6§(param1:Object) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:§="C§ = null;
         var _loc5_:§="C§ = null;
         if(_loc9_ || _loc3_)
         {
            this.§9k§ = new Vector.<§="C§>();
            if(!_loc8_)
            {
               this.§%0§ = new Vector.<§="C§>();
            }
         }
         var _loc6_:int = 0;
         var _loc7_:* = param1.fbCredits.commodities;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc7_,_loc6_));
            if(!_loc8_)
            {
               if(§§pop())
               {
                  _loc2_ = §§nextvalue(_loc6_,_loc7_);
                  _loc4_ = new §="C§(_loc2_.id,_loc2_.prices,_loc2_.h);
                  if(!(_loc8_ && param1))
                  {
                     this.§9k§.push(_loc4_);
                  }
                  continue;
               }
               if(!_loc8_)
               {
                  if(_loc9_ || _loc2_)
                  {
                     if(!(_loc8_ && _loc3_))
                     {
                        _loc6_ = 0;
                        if(!_loc8_)
                        {
                           _loc7_ = param1.vc.commodities;
                           while(true)
                           {
                              §§push(§§hasnext(_loc7_,_loc6_));
                              break loop0;
                           }
                           addr162:
                           addr161:
                           addr159:
                        }
                        §§goto(addr162);
                     }
                     return;
                  }
                  §§goto(addr162);
               }
               §§goto(addr161);
            }
            break;
         }
         while(true)
         {
            if(§§pop())
            {
               _loc3_ = §§nextvalue(_loc6_,_loc7_);
               _loc5_ = new §="C§(_loc3_.id,_loc3_.prices,_loc3_.h);
               if(!_loc8_)
               {
                  this.§%0§.push(_loc5_);
               }
               continue;
            }
            §§goto(addr162);
         }
      }
      
      private function §<W§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§>L§);
            loop0:
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§7"X§);
               addr144:
               while(true)
               {
                  §§push(this.§>L§);
                  continue loop0;
               }
            }
         }
         §§goto(addr99);
      }
   }
}
