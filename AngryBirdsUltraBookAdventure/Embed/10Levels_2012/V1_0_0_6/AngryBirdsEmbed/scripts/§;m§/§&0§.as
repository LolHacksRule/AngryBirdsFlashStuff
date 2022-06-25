package §;m§
{
   import §6H§.§>3§;
   import §6H§.§?i§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class §&0§ extends §?i§
   {
      
      private static const §"!+§:Number = 0.2;
      
      private static const §>e§:Number = 5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §"!+§ = 0.2;
            if(!_loc1_)
            {
               §>e§ = 5;
            }
         }
      }
      
      private var § !B§:Boolean = false;
      
      protected var §7h§:Number = -1;
      
      protected var §<j§:Number = 0;
      
      private var §@!6§:Boolean = false;
      
      private var §4_§:Number = 5;
      
      public function §&0§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            super(param1,param2,param3,param4,param5);
         }
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.setLoadingScreen(param1);
            if(_loc2_)
            {
               this.§9A§(0);
            }
         }
      }
      
      private function §+!E§() : int
      {
         return §>3§.STATE_STATUS_COMPLETED;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = 0;
         if(_loc5_)
         {
            §§push(this.§7h§);
            if(_loc5_)
            {
               if(§§pop() == -1)
               {
                  if(!_loc4_)
                  {
                     this.§7h§ = new Date().time;
                     addr34:
                     if(!this.§ !B§)
                     {
                        if(_loc5_ || param1)
                        {
                           addr44:
                           §§push(super.run(param1));
                           if(_loc5_ || _loc3_)
                           {
                              §§push(int(§§pop()));
                              if(_loc5_)
                              {
                                 addr57:
                                 _loc3_ = §§pop();
                                 addr79:
                                 if(!(_loc4_ && param1))
                                 {
                                    addr75:
                                    §§push(_loc3_);
                                 }
                                 this.§ !B§ = true;
                                 this.§<j§ = 1;
                                 §§push(this.§>!,§());
                                 if(_loc5_ || param1)
                                 {
                                    addr95:
                                    var _loc2_:Number = §§pop();
                                    if(_loc5_ || param1)
                                    {
                                       this.§9A§(_loc2_);
                                       if(!_loc4_)
                                       {
                                          §§push(_loc2_ == 1);
                                          if(!_loc4_)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc5_ || this)
                                                {
                                                   §§pop();
                                                   §§goto(addr146);
                                                }
                                             }
                                             if(§§pop())
                                             {
                                                if(_loc5_)
                                                {
                                                   return this.§+!E§();
                                                }
                                                §§goto(addr146);
                                             }
                                             §§goto(addr146);
                                          }
                                          §§goto(addr139);
                                       }
                                       addr146:
                                       if(!_loc4_)
                                       {
                                          addr135:
                                          §§push(this.§ !B§);
                                          if(!_loc4_)
                                          {
                                             addr139:
                                             §§push(Boolean(§§pop()));
                                          }
                                       }
                                       return §>3§.STATE_STATUS_RUNNING;
                                    }
                                    §§goto(addr135);
                                 }
                                 §§goto(addr95);
                              }
                              if(§§pop() == §>3§.STATE_STATUS_COMPLETED)
                              {
                              }
                              §§goto(addr79);
                           }
                           §§goto(addr57);
                        }
                        §§goto(addr75);
                     }
                  }
                  §§goto(addr57);
               }
               §§goto(addr34);
            }
            §§goto(addr95);
         }
         §§goto(addr44);
      }
      
      private function §>!,§() : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§[!4§(this.§<j§ == 1));
         if(!(_loc2_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(_loc3_ || _loc2_)
         {
            §§push(this.§<j§);
            if(_loc3_)
            {
               §§push(1);
               if(_loc3_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        if(_loc3_)
                        {
                           §§pop();
                           if(!_loc2_)
                           {
                              addr66:
                              §§push(_loc1_);
                              if(!_loc2_)
                              {
                                 addr71:
                                 addr70:
                                 if(§§pop() == 1)
                                 {
                                    if(_loc3_)
                                    {
                                       §§goto(addr84);
                                    }
                                 }
                                 §§push(this.§<j§);
                                 if(!_loc2_)
                                 {
                                    addr90:
                                    §§push(0.8);
                                    if(_loc3_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc3_ || _loc2_)
                                       {
                                          addr101:
                                          §§push(_loc1_);
                                          if(_loc3_ || _loc3_)
                                          {
                                             addr111:
                                             §§push(§§pop() + §§pop() * 0.2);
                                          }
                                          §§goto(addr111);
                                       }
                                       return §§pop();
                                    }
                                    §§goto(addr111);
                                 }
                                 §§goto(addr101);
                              }
                              §§goto(addr90);
                           }
                           addr84:
                           return 1;
                        }
                     }
                  }
                  §§goto(addr71);
               }
               §§goto(addr70);
            }
            §§goto(addr90);
         }
         §§goto(addr66);
      }
      
      private function §[!4§(param1:Boolean) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            if(param1)
            {
               if(_loc6_ || this)
               {
                  addr27:
                  var _loc4_:*;
                  §§push((_loc4_ = this).§4_§);
                  if(_loc6_ || _loc3_)
                  {
                     §§push(§§pop() - 1);
                  }
                  var _loc5_:* = §§pop();
                  if(_loc6_ || param1)
                  {
                     _loc4_.§4_§ = _loc5_;
                  }
               }
            }
            §§push(Math.min((new Date().time - this.§7h§) / 1000,this.§4_§) / this.§4_§);
            if(!_loc7_)
            {
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(1 - Math.pow(1 - _loc2_,2));
            if(_loc6_ || this)
            {
               §§push(Number(§§pop()));
            }
            return §§pop();
         }
         §§goto(addr27);
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§<j§ = param1;
         }
      }
      
      private function §9A§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(§8a§.getChildByName("Bar"))
            {
               if(!(_loc3_ && param1))
               {
                  (§8a§.getChildByName("Bar") as MovieClip).mcProgress.scaleX = param1;
               }
            }
         }
      }
   }
}
