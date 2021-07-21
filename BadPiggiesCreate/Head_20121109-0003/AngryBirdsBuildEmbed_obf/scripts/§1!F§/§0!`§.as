package §1!F§
{
   import §=!3§.§;!!§;
   import §=!3§.§<!=§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class §0!`§ extends §<!=§
   {
      
      private static const §"!Q§:Number = 0.2;
      
      private static const §;!h§:Number = 5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §"!Q§ = 0.2;
            if(_loc2_ || _loc1_)
            {
               addr29:
               §;!h§ = 5;
            }
            return;
         }
         §§goto(addr29);
      }
      
      private var §+K§:Boolean = false;
      
      protected var §2!;§:Number = -1;
      
      protected var §&!V§:Number = 0;
      
      private var §?]§:Boolean = false;
      
      private var §`!R§:Number = 5;
      
      public function §0!`§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param3)
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
            if(!_loc2_)
            {
               addr29:
               this.§^!6§(0);
            }
            return;
         }
         §§goto(addr29);
      }
      
      private function §]!F§() : int
      {
         return §;!!§.STATE_STATUS_COMPLETED;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = 0;
         §§push(this.§2!;§);
         if(!_loc4_)
         {
            if(§§pop() == -1)
            {
               this.§2!;§ = new Date().time;
               if(!(_loc4_ && param1))
               {
                  §§goto(addr37);
               }
               §§goto(addr72);
            }
            addr37:
            if(!this.§+K§)
            {
               if(!_loc4_)
               {
                  §§push(super.run(param1));
                  if(_loc5_)
                  {
                     §§push(int(§§pop()));
                     if(_loc5_)
                     {
                        _loc3_ = §§pop();
                        §§goto(addr80);
                     }
                  }
                  if(§§pop() == §;!!§.STATE_STATUS_COMPLETED)
                  {
                     addr72:
                     this.§+K§ = true;
                     if(!_loc5_)
                     {
                     }
                  }
                  §§goto(addr80);
               }
               this.§&!V§ = 1;
            }
            addr80:
            if(!(_loc4_ && _loc2_))
            {
               §§push(_loc3_);
            }
            §§push(this.§ !o§());
            if(_loc4_)
            {
            }
            §§goto(addr85);
         }
         addr85:
         var _loc2_:Number = §§pop();
         if(!_loc4_)
         {
            this.§^!6§(_loc2_);
            if(!(_loc4_ && _loc3_))
            {
               §§goto(addr98);
            }
            §§goto(addr125);
         }
         addr98:
         §§push(_loc2_ == 1);
         if(_loc5_)
         {
            if(§§pop())
            {
               if(!_loc4_)
               {
                  §§pop();
                  if(_loc5_ || _loc3_)
                  {
                     addr125:
                     §§push(this.§+K§);
                     if(_loc4_ && param1)
                     {
                     }
                     §§goto(addr135);
                  }
                  §§goto(addr143);
               }
            }
            addr135:
            §§goto(addr134);
         }
         addr134:
         if(§§pop())
         {
            if(!(_loc4_ && _loc2_))
            {
               addr143:
               return this.§]!F§();
            }
         }
         return §;!!§.STATE_STATUS_RUNNING;
      }
      
      private function § !o§() : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§&;§(this.§&!V§ == 1));
         if(_loc3_ || _loc1_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(_loc3_ || this)
         {
            §§push(this.§&!V§);
            if(!(_loc2_ && this))
            {
               §§push(1);
               if(!(_loc2_ && _loc1_))
               {
                  §§push(§§pop() == §§pop());
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        if(!_loc2_)
                        {
                           §§pop();
                           if(!(_loc2_ && _loc2_))
                           {
                              §§push(_loc1_);
                              if(!_loc2_)
                              {
                                 addr96:
                                 addr95:
                                 if(§§pop() == 1)
                                 {
                                    if(_loc3_)
                                    {
                                       §§goto(addr99);
                                    }
                                 }
                                 §§push(this.§&!V§);
                                 if(!_loc2_)
                                 {
                                    addr105:
                                    §§push(0.8);
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc2_)
                                       {
                                       }
                                       §§goto(addr122);
                                    }
                                    §§goto(addr119);
                                 }
                              }
                              addr122:
                              §§push(_loc1_);
                              if(!_loc2_)
                              {
                                 addr119:
                                 §§push(§§pop() * 0.2);
                              }
                              return §§pop() + §§pop();
                           }
                           §§goto(addr99);
                        }
                     }
                  }
                  §§goto(addr96);
               }
               §§goto(addr95);
            }
            §§goto(addr105);
         }
         addr99:
         return 1;
      }
      
      private function §&;§(param1:Boolean) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || this)
         {
            if(param1)
            {
               if(!_loc6_)
               {
                  addr28:
                  var _loc4_:*;
                  §§push((_loc4_ = this).§`!R§);
                  if(!_loc6_)
                  {
                     §§push(§§pop() - 1);
                  }
                  var _loc5_:* = §§pop();
                  if(!_loc6_)
                  {
                     _loc4_.§`!R§ = _loc5_;
                  }
               }
            }
            §§push(Math.min((new Date().time - this.§2!;§) / 1000,this.§`!R§) / this.§`!R§);
            if(_loc7_)
            {
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(1 - Math.pow(1 - _loc2_,2));
            if(!(_loc6_ && _loc2_))
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
         if(_loc2_)
         {
            this.§&!V§ = param1;
         }
      }
      
      private function §^!6§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(§^U§.getChildByName("Bar"))
            {
               if(_loc3_ || param1)
               {
                  (§^U§.getChildByName("Bar") as MovieClip).mcProgress.scaleX = param1;
               }
            }
         }
      }
   }
}
