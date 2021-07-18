package §[k§
{
   import §<"c§.§1#"§;
   import §="V§.§""v§;
   import §>@§.§5"H§;
   import §`!o§.§+"k§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.utils.getTimer;
   
   public class § "l§ extends §1#"§
   {
      
      private static const §5"m§:Number = 60;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §5"m§ = 60;
         }
      }
      
      private var §6#0§:Number = 60;
      
      private var §@#-§:int = -1;
      
      private var §?9§:Boolean = false;
      
      private var §3"9§:Boolean = false;
      
      private var §3]§:Number = 0;
      
      private var §6!J§:§+"k§;
      
      private var §""T§:§8K§;
      
      public function § "l§(param1:§5"H§, param2:§+"k§, param3:Boolean = true, param4:String = "load", param5:Number = 1000, param6:String = "", param7:String = "")
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_)
         {
            this.§6!J§ = param2;
            while(true)
            {
               super(param1,param3,param4,param5,param6,param7);
               while(_loc8_)
               {
                  this.§6!J§.addEventListener(Event.COMPLETE,this.§%"?§);
                  if(!_loc9_)
                  {
                     return;
                     addr43:
                  }
               }
            }
         }
         §§goto(addr43);
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            super.setLoadingScreen(param1);
            do
            {
               this.§""T§ = new §8K§(MovieClip(§'#F§.getChildByName("MovieClip_Tips")));
            }
            while(!_loc3_);
            
         }
      }
      
      private function §%"?§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§6!J§.removeEventListener(Event.COMPLETE,this.§%"?§);
            do
            {
               this.§3"9§ = true;
            }
            while(!_loc3_);
            
         }
      }
      
      private function §-!K§(param1:ErrorEvent) : void
      {
         throw new Error(param1.text);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(this.§@#-§ == -1)
            {
               if(_loc3_)
               {
                  addr24:
                  this.§@#-§ = getTimer();
                  if(_loc3_)
                  {
                     addr30:
                     if(!this.§?9§)
                     {
                        if(!(_loc4_ && param1))
                        {
                           super.update(param1);
                        }
                     }
                  }
               }
               §§push(this.§1#I§());
               if(_loc3_ || _loc2_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc2_:* = §§pop();
               if(!(_loc4_ && param1))
               {
                  super.setLoadingPercentage(_loc2_);
                  loop0:
                  while(true)
                  {
                     §§push(_loc2_ == 1);
                     if(_loc3_)
                     {
                        if(§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              §§pop();
                              loop4:
                              while(true)
                              {
                                 §§push(this.§?9§);
                                 if(_loc4_ && param1)
                                 {
                                    loop2:
                                    while(§§pop())
                                    {
                                       while(true)
                                       {
                                          §""v§.§&R§("onFlashLoadComplete");
                                          do
                                          {
                                             § g§(§"l§);
                                          }
                                          while(_loc4_ && this);
                                          
                                          if(!_loc4_)
                                          {
                                             if(_loc3_ || _loc2_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   break loop2;
                                                }
                                                continue loop0;
                                             }
                                             continue loop4;
                                          }
                                       }
                                    }
                                 }
                                 else
                                 {
                                    addr118:
                                 }
                                 continue loop3;
                                 return;
                              }
                           }
                           addr141:
                        }
                        while(true)
                        {
                           §§goto(addr118);
                           §§goto(addr116);
                        }
                     }
                     §§goto(addr141);
                  }
               }
               §§goto(addr119);
            }
            §§goto(addr30);
         }
         §§goto(addr24);
      }
      
      override protected function setLoadingReady() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§?9§ = true;
            do
            {
               this.§3]§ = 1;
            }
            while(!_loc2_);
            
         }
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§3]§ = param1;
         }
      }
      
      private function §1#I§() : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc2_))
         {
            if(this.§3"9§)
            {
               addr26:
               §§push(1);
               if(_loc3_ || _loc3_)
               {
                  §§push(Number(§§pop()));
                  if(!_loc4_)
                  {
                     addr42:
                     §§push(Number(§§pop()));
                  }
               }
               else
               {
                  addr39:
                  §§push(Number(§§pop()));
                  if(_loc3_)
                  {
                     §§goto(addr42);
                  }
               }
               var _loc1_:* = §§pop();
               §§push(this);
               if(_loc3_)
               {
                  §§push(_loc1_);
                  if(!_loc4_)
                  {
                     §§push(1);
                     if(!(_loc4_ && _loc2_))
                     {
                        §§push(§§pop() == §§pop());
                        if(_loc3_)
                        {
                           if(§§pop())
                           {
                              if(_loc3_ || _loc1_)
                              {
                                 addr70:
                                 §§pop();
                                 §§push(this.§3]§ == 1);
                              }
                           }
                           §§push(§§pop().§]^§(§§pop()));
                           if(!(_loc4_ && _loc3_))
                           {
                              §§push(Number(§§pop()));
                           }
                           var _loc2_:* = §§pop();
                           if(!(_loc4_ && this))
                           {
                              §§push(this.§3]§);
                              loop0:
                              while(true)
                              {
                                 §§push(1);
                                 loop1:
                                 while(true)
                                 {
                                    §§push(§§pop() == §§pop());
                                    loop2:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       loop3:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             loop4:
                                             while(true)
                                             {
                                                §§pop();
                                                loop5:
                                                while(true)
                                                {
                                                   §§push(_loc1_);
                                                   loop6:
                                                   while(true)
                                                   {
                                                      §§push(1);
                                                      loop7:
                                                      while(_loc3_)
                                                      {
                                                         §§push(§§pop() == §§pop());
                                                         if(_loc3_ || _loc2_)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               if(!(_loc3_ || _loc2_))
                                                               {
                                                                  break;
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  loop8:
                                                                  while(_loc3_)
                                                                  {
                                                                     §§pop();
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc4_ && this))
                                                                        {
                                                                           §§push(_loc2_);
                                                                           do
                                                                           {
                                                                              §§push(1);
                                                                              if(_loc4_ && _loc3_)
                                                                              {
                                                                                 continue loop7;
                                                                              }
                                                                              §§push(§§pop() == §§pop());
                                                                              if(_loc4_)
                                                                              {
                                                                                 continue loop8;
                                                                              }
                                                                              if(_loc4_ && _loc2_)
                                                                              {
                                                                                 continue loop2;
                                                                              }
                                                                           }
                                                                           while(!_loc3_);
                                                                           
                                                                           return §§pop();
                                                                        }
                                                                        break;
                                                                        addr197:
                                                                        if(_loc4_ && _loc3_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           addr93:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§3]§);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 continue loop6;
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop5;
                                                                  }
                                                                  continue loop4;
                                                                  addr228:
                                                               }
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(!(_loc4_ && _loc3_))
                                                                     {
                                                                        return 1;
                                                                     }
                                                                     §§goto(addr197);
                                                                  }
                                                                  §§goto(addr93);
                                                               }
                                                            }
                                                            continue loop3;
                                                            addr218:
                                                         }
                                                         §§goto(addr228);
                                                      }
                                                      continue loop1;
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr218);
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr204);
                        }
                     }
                  }
               }
               §§goto(addr70);
            }
            else
            {
               §§push(0);
            }
            §§goto(addr39);
         }
         §§goto(addr26);
      }
      
      private function §]^§(param1:Boolean) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param1))
         {
            if(param1)
            {
               if(_loc6_)
               {
                  addr27:
                  var _loc4_:*;
                  §§push((_loc4_ = this).§6#0§);
                  if(!_loc7_)
                  {
                     §§push(§§pop() - 1);
                  }
                  var _loc5_:* = §§pop();
                  if(_loc6_)
                  {
                     _loc4_.§6#0§ = _loc5_;
                  }
               }
            }
            §§push(Math.min((getTimer() - this.§@#-§) / 1000,this.§6#0§) / this.§6#0§);
            if(_loc6_ || param1)
            {
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(1 - Math.pow(1 - _loc2_,2));
            if(!_loc7_)
            {
               return Number(§§pop());
            }
         }
         §§goto(addr27);
      }
   }
}
