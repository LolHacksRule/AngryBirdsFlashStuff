package §>!A§
{
   import §"!&§.§#!,§;
   import §"!&§.§=F§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class §#!3§ extends §=F§
   {
      
      private static const §!q§:Number = 0.2;
      
      private static const §6j§:Number = 5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §!q§ = 0.2;
            if(!_loc1_)
            {
               §6j§ = 5;
            }
         }
      }
      
      private var §`!5§:Boolean = false;
      
      protected var §6A§:Number = -1;
      
      protected var §'!2§:Number = 0;
      
      private var §6!;§:Boolean = false;
      
      private var §+!4§:Number = 5;
      
      public function §#!3§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
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
               this.§6!>§(0);
            }
         }
      }
      
      private function §1r§() : int
      {
         return §#!,§.STATE_STATUS_COMPLETED;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = 0;
         if(_loc5_)
         {
            §§push(this.§6A§);
            if(_loc5_)
            {
               if(§§pop() == -1)
               {
                  if(!_loc4_)
                  {
                     this.§6A§ = new Date().time;
                     addr34:
                     if(!this.§`!5§)
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
                                 this.§`!5§ = true;
                                 this.§'!2§ = 1;
                                 §§push(this.§9!'§());
                                 if(_loc5_ || param1)
                                 {
                                    addr95:
                                    var _loc2_:Number = §§pop();
                                    if(_loc5_ || param1)
                                    {
                                       this.§6!>§(_loc2_);
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
                                                   return this.§1r§();
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
                                          §§push(this.§`!5§);
                                          if(!_loc4_)
                                          {
                                             addr139:
                                             §§push(Boolean(§§pop()));
                                          }
                                       }
                                       return §#!,§.STATE_STATUS_RUNNING;
                                    }
                                    §§goto(addr135);
                                 }
                                 §§goto(addr95);
                              }
                              if(§§pop() == §#!,§.STATE_STATUS_COMPLETED)
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
      
      private function §9!'§() : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§<"§(this.§'!2§ == 1));
         if(!(_loc2_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(_loc3_ || _loc2_)
         {
            §§push(this.§'!2§);
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
                                 §§push(this.§'!2§);
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
      
      private function §<"§(param1:Boolean) : Number
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
                  §§push((_loc4_ = this).§+!4§);
                  if(_loc6_ || _loc3_)
                  {
                     §§push(§§pop() - 1);
                  }
                  var _loc5_:* = §§pop();
                  if(_loc6_ || param1)
                  {
                     _loc4_.§+!4§ = _loc5_;
                  }
               }
            }
            §§push(Math.min((new Date().time - this.§6A§) / 1000,this.§+!4§) / this.§+!4§);
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
            this.§'!2§ = param1;
         }
      }
      
      private function §6!>§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(§&G§.getChildByName("Bar"))
            {
               if(!(_loc3_ && param1))
               {
                  (§&G§.getChildByName("Bar") as MovieClip).mcProgress.scaleX = param1;
               }
            }
         }
      }
   }
}
