package §<"F§
{
   import §,l§.§+I§;
   import §2<§.§3d§;
   import §2<§.§9!7§;
   import §5!Y§.§9"6§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §6!G§
   {
       
      
      private var §4"T§:Array;
      
      private var §0>§:Number;
      
      private var §=^§:String;
      
      private var §?!K§:int;
      
      private var §8i§:Number;
      
      private var §%!N§:String;
      
      private var §2!H§:URLLoader;
      
      public function §6!G§(param1:Object)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            loop0:
            while(true)
            {
               §§push(Boolean(param1.start));
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr81:
                        while(true)
                        {
                           §§push(param1.start == 0);
                           if(!_loc2_)
                           {
                              break;
                           }
                           if(_loc3_)
                           {
                              continue loop1;
                           }
                        }
                     }
                  }
                  loop4:
                  while(§§pop())
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        if(!_loc2_)
                        {
                           continue loop0;
                        }
                        while(true)
                        {
                           this.§;x§(param1);
                        }
                     }
                     while(true)
                     {
                        if(!(_loc3_ && this))
                        {
                           break loop4;
                        }
                        §§goto(addr81);
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr63);
      }
      
      public function §;x§(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§4"T§ = param1.drawCounts;
            loop0:
            while(true)
            {
               this.§0>§ = param1.end;
               while(true)
               {
                  this.§=^§ = param1.email;
                  loop2:
                  while(_loc3_ || this)
                  {
                     this.§?!K§ = param1.entriesPerSlot;
                     loop3:
                     while(true)
                     {
                        this.§8i§ = param1.start;
                        while(true)
                        {
                           if(_loc3_)
                           {
                              if(_loc2_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           continue loop3;
                           addr68:
                           this.§%!N§ = param1.token;
                           if(!_loc2_)
                           {
                              return;
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr74);
      }
      
      public function §34§() : int
      {
         return this.§4"T§.length * this.§?!K§;
      }
      
      public function §+"&§() : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = 0;
         var _loc1_:* = 0;
         var _loc3_:int = 0;
         var _loc4_:* = this.§4"T§;
         while(§§hasnext(_loc4_,_loc3_))
         {
            §§push(int(§§nextvalue(_loc3_,_loc4_)));
            if(_loc5_ || _loc3_)
            {
               _loc2_ = §§pop();
               if(_loc6_)
               {
                  continue;
               }
               §§push(_loc1_);
               if(!(_loc6_ && _loc1_))
               {
                  §§push(int(§§pop() + _loc2_));
               }
            }
            _loc1_ = §§pop();
         }
         return _loc1_;
      }
      
      public function get email() : String
      {
         return this.§=^§;
      }
      
      public function get token() : String
      {
         return this.§%!N§;
      }
      
      public function get entriesPerSlot() : int
      {
         return this.§?!K§;
      }
      
      public function §+!n§() : Boolean
      {
         return this.§^!!§ >= this.entriesPerSlot;
      }
      
      public function get §^!!§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§4"T§);
            if(!(_loc1_ && _loc1_))
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§push(this.§4"T§);
                  }
                  else
                  {
                     §§goto(addr47);
                  }
               }
               §§goto(addr47);
            }
            return §§pop()[this.§0"<§];
         }
         addr47:
         return 0;
      }
      
      public function get §>"R§() : int
      {
         return this.§4"T§.length;
      }
      
      public function §5t§() : Number
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc1_:int = this.§4"T§.length;
         §§push(this.§0>§);
         if(_loc9_ || _loc1_)
         {
            §§push(§§pop() - this.§8i§);
            if(!_loc8_)
            {
               addr36:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(_loc2_);
            if(_loc9_ || _loc2_)
            {
               §§push(§§pop() / _loc1_);
               if(_loc9_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc3_:* = §§pop();
            §§push(this.§0"<§ * _loc3_);
            if(_loc9_ || this)
            {
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(this.§0"<§);
            if(_loc9_ || _loc2_)
            {
               §§push(int(§§pop() + 1));
            }
            var _loc5_:* = §§pop();
            §§push(this.§8i§);
            if(!(_loc8_ && this))
            {
               §§push(§§pop() + _loc5_ * _loc3_);
               if(_loc9_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc6_:* = §§pop();
            §§push(this.§9"%§.§ Y§.§?!;§);
            if(_loc9_ || this)
            {
               §§push(Number(§§pop()));
            }
            var _loc7_:* = §§pop();
            return Math.round(_loc6_ - _loc7_);
         }
         §§goto(addr36);
      }
      
      public function get §0"<§() : int
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(this.§9"%§.§ Y§.§?!;§);
         if(_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:int = this.§4"T§.length;
         §§push(_loc1_);
         if(!(_loc7_ && _loc2_))
         {
            §§push(§§pop() - this.§8i§);
            if(!(_loc7_ && _loc2_))
            {
               addr58:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(this.§0>§);
            if(!_loc7_)
            {
               §§push(§§pop() - this.§8i§);
               if(!(_loc7_ && this))
               {
                  addr84:
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               §§push(_loc3_);
               if(!_loc7_)
               {
                  §§push(§§pop() / _loc4_);
                  if(!(_loc7_ && _loc2_))
                  {
                     addr98:
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  return int(Math.floor(_loc5_ * _loc2_));
               }
               §§goto(addr98);
            }
            §§goto(addr84);
         }
         §§goto(addr58);
      }
      
      public function §;&§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§9"%§);
            loop0:
            while(true)
            {
               §§push(§§pop().§ Y§);
               addr122:
               while(true)
               {
                  if(!§§pop())
                  {
                     if(_loc2_ || _loc2_)
                     {
                        §§push(false);
                        break;
                     }
                     addr132:
                     while(true)
                     {
                     }
                  }
                  while(true)
                  {
                     §§push(this.§9"%§);
                     continue loop0;
                  }
               }
               addr131:
               return §§pop();
            }
         }
         §§goto(addr132);
      }
      
      private function get §9"%§() : §+I§
      {
         return §%"S§.§!C§.§9"%§;
      }
      
      public function § "A§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§9!7§);
         §§push(AngryBirdsFP11.§?8§ + "/getdrawconfig/");
         if(_loc3_)
         {
            §§push(§§pop() + §["M§.§0<§);
         }
         var _loc1_:URLRequest = §§pop().§,!l§(§§pop());
         if(!_loc2_)
         {
            _loc1_.method = URLRequestMethod.POST;
            while(true)
            {
               this.§2!H§ = new §3d§();
               loop1:
               while(true)
               {
                  this.§2!H§.addEventListener(Event.COMPLETE,this.onComplete);
                  addr109:
                  while(true)
                  {
                     this.§2!H§.addEventListener(IOErrorEvent.IO_ERROR,this.§]!^§);
                     continue loop1;
                  }
               }
               if(_loc2_ && _loc2_)
               {
                  continue;
               }
               §§goto(addr74);
            }
         }
         §§goto(addr44);
      }
      
      protected function §2!q§(param1:SecurityErrorEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §9"6§.§#!o§();
         }
         do
         {
            this.§2!H§ = null;
         }
         while(_loc3_);
         
      }
      
      private function §]!^§(param1:IOErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §9"6§.§#!o§();
            do
            {
               this.§2!H§ = null;
            }
            while(_loc2_);
            
         }
      }
      
      protected function onComplete(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         if(!(_loc4_ && _loc2_))
         {
            §§pop().§§slot[2] = null;
            if(_loc5_)
            {
               addr35:
               var e:Event = param1;
            }
            try
            {
               §§push(§§newactivation());
               if(_loc5_)
               {
                  §§pop().§§slot[2] = JSON.parse(e.currentTarget.data);
                  if(!(_loc4_ && _loc2_))
                  {
                     §§push(§§newactivation());
                     loop7:
                     while(true)
                     {
                        §§push(Boolean(§§pop().§§slot[2].draw));
                        loop8:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop9:
                              while(true)
                              {
                                 §§pop();
                                 addr151:
                                 while(true)
                                 {
                                    addr93:
                                    while(true)
                                    {
                                       §§push(§§newactivation());
                                       if(_loc4_ && param1)
                                       {
                                          continue loop7;
                                       }
                                       §§push(§§pop().§§slot[2].draw == §["M§.§0<§);
                                       if(_loc4_ && param1)
                                       {
                                          continue loop9;
                                       }
                                       if(!_loc5_)
                                       {
                                          continue loop8;
                                       }
                                    }
                                    continue loop9;
                                 }
                              }
                           }
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(_loc5_ || this)
                                 {
                                    §§push(§%"S§.§!C§);
                                    while(true)
                                    {
                                       §§push(§§pop().§9"%§);
                                       addr138:
                                       while(true)
                                       {
                                          §§pop().§7"T§ = new §["M§(data);
                                          addr143:
                                          while(true)
                                          {
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr151);
                                 addr118:
                              }
                              while(true)
                              {
                                 §§push(§%"S§.§!C§);
                                 if(_loc5_)
                                 {
                                    §§push(§§pop().§9"%§);
                                    if(_loc5_ || param1)
                                    {
                                       if(§§pop().§7"T§.§-"5§ > 0)
                                       {
                                          if(_loc5_)
                                          {
                                             §9"6§.§'0§();
                                          }
                                          if(!_loc5_)
                                          {
                                             continue;
                                          }
                                          if(_loc5_)
                                          {
                                             if(true)
                                             {
                                                break;
                                             }
                                             §§goto(addr93);
                                          }
                                          else
                                          {
                                             §§goto(addr118);
                                          }
                                       }
                                       break;
                                    }
                                    §§goto(addr138);
                                 }
                                 §§goto(addr127);
                              }
                              §§goto(addr166);
                           }
                        }
                     }
                     addr145:
                  }
                  §§goto(addr151);
               }
               §§goto(addr145);
            }
            catch(e:Error)
            {
            }
            addr166:
            return;
         }
         §§goto(addr35);
      }
   }
}
