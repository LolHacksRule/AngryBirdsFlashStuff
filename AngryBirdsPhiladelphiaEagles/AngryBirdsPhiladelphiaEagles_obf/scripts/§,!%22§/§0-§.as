package §,!"§
{
   import §'!O§.§'!#§;
   import §'!O§.§]L§;
   import §]p§.§9!,§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §0-§ extends §]L§
   {
      
      private static const § !%§:Number = 0.2;
      
      private static const §9Q§:Number = 5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            § !%§ = 0.2;
            do
            {
               §9Q§ = 5;
            }
            while(!(_loc1_ || _loc1_));
            
         }
      }
      
      private var §,!O§:Boolean = false;
      
      protected var §5!@§:Number = -1;
      
      protected var §1s§:Number = 0;
      
      private var §9-§:Boolean = false;
      
      private var §&!<§:Number = 5;
      
      private var §5!2§:Boolean = false;
      
      private var §"'§:Boolean = false;
      
      public function §0-§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param2)
         {
            super(param1,param2,param3,param4,param5);
         }
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            super.setLoadingScreen(param1);
         }
         do
         {
            this.§<8§(0);
         }
         while(!(_loc3_ || this));
         
      }
      
      private function §0j§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(!this.§"'§)
            {
               if(_loc1_)
               {
                  §§goto(addr23);
               }
            }
            return §'!#§.STATE_STATUS_COMPLETED;
         }
         addr23:
         return §'!#§.STATE_STATUS_RUNNING;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = 0;
         §§push(this.§5!@§);
         if(_loc4_ || _loc3_)
         {
            if(§§pop() == -1)
            {
               while(true)
               {
                  this.§5!@§ = new Date().time;
                  addr94:
                  while(true)
                  {
                  }
               }
               addr89:
            }
            loop2:
            while(true)
            {
               if(!this.§,!O§)
               {
                  while(true)
                  {
                     §§push(super.run(param1));
                     loop4:
                     while(true)
                     {
                        §§push(int(§§pop()));
                        loop5:
                        while(true)
                        {
                           _loc3_ = §§pop();
                           loop6:
                           while(true)
                           {
                              addr41:
                              while(true)
                              {
                                 §§push(_loc3_);
                                 if(!_loc5_)
                                 {
                                    if(!(_loc5_ && param1))
                                    {
                                       if(§§pop() != §'!#§.STATE_STATUS_COMPLETED)
                                       {
                                          break;
                                       }
                                       while(true)
                                       {
                                          if(!_loc4_)
                                          {
                                             break loop6;
                                          }
                                          this.§,!O§ = true;
                                          if(!(_loc5_ && this))
                                          {
                                             continue;
                                          }
                                          continue loop6;
                                       }
                                       continue loop2;
                                    }
                                    continue loop4;
                                 }
                                 continue loop5;
                              }
                           }
                           §§goto(addr89);
                        }
                     }
                     if(_loc5_ && _loc2_)
                     {
                        continue;
                     }
                     if(_loc5_ && param1)
                     {
                        continue loop2;
                     }
                     if(false)
                     {
                        §§goto(addr41);
                     }
                     addr95:
                     §§push(this.§]Q§());
                     if(_loc4_)
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc2_:* = §§pop();
                     this.§<8§(_loc2_);
                     §§push(_loc2_ == 1);
                     loop9:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           while(true)
                           {
                              loop13:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc5_ && param1))
                                    {
                                       §§push(this.§5!2§);
                                       while(§§pop())
                                       {
                                          §§push(this.§"'§);
                                          if(_loc4_ || _loc2_)
                                          {
                                             if(!(_loc5_ && this))
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc4_)
                                                   {
                                                      if(_loc4_ || this)
                                                      {
                                                         return this.§0j§();
                                                      }
                                                      addr159:
                                                      if(!(_loc4_ || _loc3_))
                                                      {
                                                         addr170:
                                                         §9!,§.§>o§.addEventListener(§9!,§.SERVER_CALL_COMPLETE,this.§6!"§);
                                                         §§push(§9!,§.§>o§);
                                                         if(_loc4_)
                                                         {
                                                            §§pop().§>!9§();
                                                            §§goto(addr159);
                                                         }
                                                         §§goto(addr170);
                                                         addr221:
                                                      }
                                                   }
                                                   else if(_loc5_)
                                                   {
                                                      break;
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§pop();
                                                   §§push(this.§,!O§);
                                                   if(_loc4_ || _loc2_)
                                                   {
                                                      continue loop9;
                                                   }
                                                   continue loop13;
                                                }
                                                addr228:
                                             }
                                             §§goto(addr112);
                                          }
                                       }
                                       this.§5!2§ = true;
                                       addr217:
                                    }
                                    §§goto(addr221);
                                 }
                                 addr112:
                                 return §'!#§.STATE_STATUS_RUNNING;
                              }
                           }
                           addr206:
                        }
                        §§goto(addr228);
                     }
                  }
               }
               §§goto(addr95);
            }
         }
         §§goto(addr110);
      }
      
      private function §6!"§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§"'§ = true;
         }
      }
      
      private function §]Q§() : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§1!+§(this.§1s§ == 1));
         if(!_loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§1s§);
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
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           addr130:
                           while(true)
                           {
                              §§push(_loc1_);
                              addr81:
                              while(true)
                              {
                                 §§push(1);
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop() == §§pop());
                                 if(_loc2_ && _loc3_)
                                 {
                                    continue loop3;
                                 }
                                 if(_loc2_ && _loc3_)
                                 {
                                    continue loop2;
                                 }
                              }
                              continue loop1;
                           }
                        }
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc2_ && _loc2_)
                           {
                              addr35:
                              §§push(this.§1s§);
                              if(_loc3_)
                              {
                                 if(_loc3_)
                                 {
                                    §§push(0.8);
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc3_)
                                       {
                                          break;
                                       }
                                       §§goto(addr76);
                                    }
                                    addr73:
                                    addr76:
                                    return §§pop();
                                    §§push(§§pop() + §§pop() * 0.2);
                                 }
                                 else
                                 {
                                    §§goto(addr81);
                                 }
                              }
                              break;
                           }
                           if(_loc3_)
                           {
                              §§goto(addr120);
                           }
                           §§goto(addr130);
                           §§goto(addr81);
                        }
                        §§goto(addr35);
                     }
                     if(!_loc3_)
                     {
                        continue loop0;
                     }
                     §§push(_loc1_);
                     if(_loc2_ && _loc1_)
                     {
                     }
                     §§goto(addr73);
                  }
               }
            }
         }
         addr120:
         return 1;
      }
      
      private function §1!+§(param1:Boolean) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && _loc3_))
         {
            if(param1)
            {
               if(_loc7_)
               {
                  addr28:
                  var _loc4_:*;
                  §§push((_loc4_ = this).§&!<§);
                  if(!(_loc6_ && this))
                  {
                     §§push(§§pop() - 1);
                  }
                  var _loc5_:* = §§pop();
                  if(_loc7_)
                  {
                     _loc4_.§&!<§ = _loc5_;
                  }
               }
            }
            §§push(Math.min((new Date().time - this.§5!@§) / 1000,this.§&!<§) / this.§&!<§);
            if(_loc7_ || _loc2_)
            {
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(1 - Math.pow(1 - _loc2_,2));
            if(!(_loc6_ && param1))
            {
               return Number(§§pop());
            }
         }
         §§goto(addr28);
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§1s§ = param1;
         }
      }
      
      private function §<8§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(§#s§.getChildByName("Bar"))
            {
               if(_loc2_)
               {
                  addr39:
                  (§#s§.getChildByName("Bar") as MovieClip).mcProgress.scaleX = param1;
               }
            }
            return;
         }
         §§goto(addr39);
      }
   }
}
