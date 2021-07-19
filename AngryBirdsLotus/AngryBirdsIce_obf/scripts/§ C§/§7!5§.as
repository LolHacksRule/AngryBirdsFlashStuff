package § C§
{
   import §]4§.§ !G§;
   import §]4§.§-§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class §7!5§ extends § !G§
   {
      
      private static const §0§:Number = 0.2;
      
      private static const §=!<§:Number = 5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §0§ = 0.2;
         }
         do
         {
            §=!<§ = 5;
         }
         while(!_loc2_);
         
      }
      
      private var §@!-§:Boolean = false;
      
      protected var §6!=§:Number = -1;
      
      protected var §1!<§:Number = 0;
      
      private var §"V§:Boolean = false;
      
      private var §'a§:Number = 5;
      
      public function §7!5§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || this)
         {
            super(param1,param2,param3,param4,param5);
         }
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            super.setLoadingScreen(param1);
            do
            {
               this.§]!1§(0);
            }
            while(_loc3_);
            
         }
      }
      
      private function §&I§() : int
      {
         return §-§.STATE_STATUS_COMPLETED;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = 0;
         if(!_loc4_)
         {
            §§push(this.§6!=§);
            if(_loc5_ || _loc3_)
            {
               if(§§pop() == -1)
               {
                  loop0:
                  while(true)
                  {
                     this.§6!=§ = new Date().time;
                     addr112:
                     while(true)
                     {
                     }
                     loop5:
                     while(true)
                     {
                        if(!(_loc5_ || _loc3_))
                        {
                           continue loop0;
                        }
                        loop6:
                        do
                        {
                           §§push(_loc3_);
                           if(!(_loc4_ && _loc3_))
                           {
                              if(!(_loc4_ && _loc3_))
                              {
                                 if(§§pop() == §-§.STATE_STATUS_COMPLETED)
                                 {
                                    if(!(_loc5_ || _loc2_))
                                    {
                                       continue loop5;
                                    }
                                    this.§@!-§ = true;
                                    while(_loc5_)
                                    {
                                       this.§1!<§ = 1;
                                       if(!_loc5_)
                                       {
                                          continue;
                                       }
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          continue loop6;
                                       }
                                       addr73:
                                       while(true)
                                       {
                                          §§push(super.run(param1));
                                          addr76:
                                          while(true)
                                          {
                                             §§push(int(§§pop()));
                                             addr77:
                                             while(true)
                                             {
                                                _loc3_ = §§pop();
                                                continue loop5;
                                             }
                                             continue loop0;
                                          }
                                       }
                                    }
                                    §§goto(addr112);
                                 }
                                 break;
                              }
                              §§goto(addr76);
                           }
                           §§goto(addr77);
                        }
                        while(false);
                        
                        §§push(this.§&U§());
                        if(_loc5_ || _loc2_)
                        {
                           §§push(Number(§§pop()));
                        }
                        var _loc2_:* = §§pop();
                        if(!(_loc4_ && this))
                        {
                           this.§]!1§(_loc2_);
                           loop8:
                           while(true)
                           {
                              §§push(_loc2_ == 1);
                              loop9:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    while(§§pop())
                                    {
                                       if(!(_loc4_ && param1))
                                       {
                                          return this.§&I§();
                                       }
                                       if(!_loc4_)
                                       {
                                          if(_loc5_)
                                          {
                                             break;
                                          }
                                          continue loop8;
                                       }
                                       addr192:
                                       loop12:
                                       while(true)
                                       {
                                          §§push(this.§@!-§);
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          if(!_loc4_)
                                          {
                                             continue loop9;
                                          }
                                          addr191:
                                          while(true)
                                          {
                                             §§pop();
                                             continue loop12;
                                          }
                                       }
                                    }
                                    return §-§.STATE_STATUS_RUNNING;
                                    addr168:
                                 }
                                 §§goto(addr191);
                              }
                           }
                        }
                        §§goto(addr192);
                     }
                  }
               }
               while(true)
               {
                  if(!this.§@!-§)
                  {
                     §§goto(addr73);
                  }
                  §§goto(addr113);
                  §§goto(addr112);
               }
            }
            §§goto(addr113);
         }
         §§goto(addr112);
      }
      
      private function §&U§() : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§;!F§(this.§1!<§ == 1));
         if(_loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            §§push(this.§1!<§);
            loop0:
            while(true)
            {
               §§push(1);
               addr150:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  addr151:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                        }
                        addr153:
                     }
                     else
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc2_ || this)
                              {
                                 §§goto(addr137);
                              }
                              if(_loc3_ && _loc2_)
                              {
                                 while(true)
                                 {
                                    §§push(_loc1_);
                                    continue loop0;
                                 }
                                 addr154:
                              }
                           }
                           §§push(this.§1!<§);
                           if(!(_loc3_ && _loc3_))
                           {
                              addr44:
                              if(_loc3_ && this)
                              {
                                 continue loop0;
                              }
                              §§push(0.8);
                              if(!(_loc3_ && this))
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    break;
                                 }
                                 §§goto(addr83);
                              }
                              addr83:
                              return §§pop();
                              §§push(§§pop() + §§pop());
                           }
                           break;
                        }
                        §§push(_loc1_);
                        if(!_loc3_)
                        {
                           §§push(§§pop() * 0.2);
                        }
                        §§goto(addr82);
                        addr128:
                     }
                     §§goto(addr154);
                  }
               }
            }
         }
         addr137:
         return 1;
      }
      
      private function §;!F§(param1:Boolean) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param1)
         {
            if(param1)
            {
               if(_loc6_)
               {
                  addr27:
                  var _loc4_:*;
                  §§push((_loc4_ = this).§'a§);
                  if(_loc6_)
                  {
                     §§push(§§pop() - 1);
                  }
                  var _loc5_:* = §§pop();
                  if(!_loc7_)
                  {
                     _loc4_.§'a§ = _loc5_;
                  }
               }
            }
            §§push(Math.min((new Date().time - this.§6!=§) / 1000,this.§'a§) / this.§'a§);
            if(!(_loc7_ && _loc3_))
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
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§1!<§ = param1;
         }
      }
      
      private function §]!1§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(§=Z§.getChildByName("Bar"))
            {
               if(_loc2_)
               {
                  addr24:
                  (§=Z§.getChildByName("Bar") as MovieClip).mcProgress.scaleX = param1;
               }
            }
            return;
         }
         §§goto(addr24);
      }
   }
}
