package § !@§
{
   import §7g§.§'!;§;
   import §7g§.§1Q§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class §4`§ extends §'!;§
   {
      
      private static const §7A§:Number = 0.2;
      
      private static const §10§:Number = 5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §4`§))
         {
            §7A§ = 0.2;
            if(!(_loc2_ && _loc1_))
            {
               addr43:
               §10§ = 5;
            }
            return;
         }
         §§goto(addr43);
      }
      
      private var §2`§:Boolean = false;
      
      protected var §3!I§:Number = -1;
      
      protected var §7_§:Number = 0;
      
      private var §>!4§:Boolean = false;
      
      private var §#u§:Number = 5;
      
      public function §4`§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            super(param1,param2,param3,param4,param5);
         }
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            super.setLoadingScreen(param1);
            if(!(_loc2_ && this))
            {
               this.§&!'§(0);
            }
         }
      }
      
      private function §]!&§() : int
      {
         return §1Q§.STATE_STATUS_COMPLETED;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = 0;
         §§push(this.§3!I§);
         if(!(_loc5_ && param1))
         {
            if(§§pop() == -1)
            {
               if(!(_loc5_ && _loc2_))
               {
                  this.§3!I§ = new Date().time;
                  addr41:
                  if(!this.§2`§)
                  {
                     §§push(super.run(param1));
                     if(_loc4_ || param1)
                     {
                        §§push(int(§§pop()));
                        if(_loc4_ || this)
                        {
                           addr62:
                           _loc3_ = §§pop();
                           if(_loc4_)
                           {
                              addr66:
                              if(_loc3_ == §1Q§.STATE_STATUS_COMPLETED)
                              {
                                 this.§2`§ = true;
                                 if(_loc4_ || _loc2_)
                                 {
                                 }
                                 addr92:
                                 §§push(this.§1!4§());
                                 if(_loc4_)
                                 {
                                    addr97:
                                    var _loc2_:Number = §§pop();
                                    if(_loc4_)
                                    {
                                       this.§&!'§(_loc2_);
                                       if(_loc4_ || _loc3_)
                                       {
                                          §§push(_loc2_ == 1);
                                          if(!(_loc5_ && param1))
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc4_ || param1)
                                                {
                                                   §§goto(addr129);
                                                }
                                             }
                                             §§goto(addr157);
                                          }
                                          addr129:
                                          §§pop();
                                          if(!(_loc5_ && _loc2_))
                                          {
                                             addr147:
                                             §§push(this.§2`§);
                                             if(_loc4_ || param1)
                                             {
                                                addr157:
                                                if(§§pop())
                                                {
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      §§goto(addr165);
                                                   }
                                                }
                                             }
                                             §§goto(addr157);
                                          }
                                          return §1Q§.STATE_STATUS_RUNNING;
                                       }
                                       addr165:
                                       return this.§]!&§();
                                    }
                                    §§goto(addr147);
                                 }
                                 §§goto(addr97);
                              }
                              §§goto(addr92);
                           }
                           this.§7_§ = 1;
                           §§goto(addr92);
                        }
                        §§goto(addr66);
                     }
                     §§goto(addr62);
                  }
                  §§goto(addr92);
               }
               §§goto(addr66);
            }
            §§goto(addr41);
         }
         §§goto(addr97);
      }
      
      private function §1!4§() : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§8v§(this.§7_§ == 1));
         if(!_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!_loc3_)
         {
            §§push(this.§7_§);
            if(_loc2_)
            {
               §§push(1);
               if(_loc2_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc2_)
                  {
                     if(§§pop())
                     {
                        if(_loc2_)
                        {
                           §§pop();
                           if(_loc2_ || _loc1_)
                           {
                              §§push(_loc1_);
                              if(_loc2_)
                              {
                                 addr65:
                                 if(§§pop() == 1)
                                 {
                                    if(_loc2_ || _loc1_)
                                    {
                                       §§goto(addr83);
                                    }
                                    else
                                    {
                                       §§goto(addr85);
                                    }
                                 }
                                 §§goto(addr85);
                              }
                              §§push(0.8);
                              if(!_loc3_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!_loc3_)
                                 {
                                    §§push(_loc1_);
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       §§push(§§pop() * 0.2);
                                    }
                                 }
                                 §§goto(addr85);
                              }
                              addr85:
                              §§push(this.§7_§);
                              if(_loc3_)
                              {
                              }
                              return §§pop();
                              §§push(§§pop() + §§pop());
                           }
                           §§goto(addr85);
                        }
                     }
                  }
               }
               §§goto(addr65);
            }
            §§goto(addr85);
         }
         addr83:
         return 1;
      }
      
      private function §8v§(param1:Boolean) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            if(param1)
            {
               if(_loc7_ || param1)
               {
                  addr28:
                  var _loc4_:*;
                  §§push((_loc4_ = this).§#u§);
                  if(!_loc6_)
                  {
                     §§push(§§pop() - 1);
                  }
                  var _loc5_:* = §§pop();
                  if(_loc7_ || _loc3_)
                  {
                     _loc4_.§#u§ = _loc5_;
                  }
               }
            }
            §§push(Math.min((new Date().time - this.§3!I§) / 1000,this.§#u§) / this.§#u§);
            if(_loc7_)
            {
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(1 - Math.pow(1 - _loc2_,2));
            if(_loc7_ || param1)
            {
               §§push(Number(§§pop()));
            }
            return §§pop();
         }
         §§goto(addr28);
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§7_§ = param1;
         }
      }
      
      private function §&!'§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(§2-§.getChildByName("Bar"))
            {
               if(_loc2_)
               {
                  addr39:
                  (§2-§.getChildByName("Bar") as MovieClip).mcProgress.scaleX = param1;
               }
            }
            return;
         }
         §§goto(addr39);
      }
   }
}
