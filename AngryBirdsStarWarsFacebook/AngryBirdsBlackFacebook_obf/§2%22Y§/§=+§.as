package §2"Y§
{
   import §7P§.§&#=§;
   import §7P§.§&l§;
   import §7P§.§3!y§;
   import §7P§.§?"N§;
   import §7P§.§^#$§;
   
   public class §=+§ extends §,",§
   {
      
      protected static const §3#P§:String = "sprites";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §3#P§ = "sprites";
         }
      }
      
      public function §=+§(param1:Object, param2:int, param3:§&!x§, param4:§'#2§, param5:int, param6:Boolean = false, param7:§%"3§ = null)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_ || param1)
         {
            super(param1,param2,param3,param4,param5,param6,param7);
         }
         do
         {
            §4#L§ = getProperty(§3#P§,"score");
         }
         while(!(_loc9_ || param1));
         
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:Array = this.§6!p§();
         var _loc2_:Array = this.§1#Y§();
         if(_loc3_ || _loc3_)
         {
            if(_loc2_)
            {
               if(_loc3_ || _loc1_)
               {
                  _loc1_.push([§&l§.§;#0§,[["1",_loc2_[0],_loc2_[1]]]]);
               }
            }
         }
         return _loc1_;
      }
      
      protected function §6!p§() : Array
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc1_:String = getProperty(§3#P§,"default");
         var _loc2_:String = getProperty(§3#P§,"blink");
         var _loc3_:String = getProperty(§3#P§,"flying");
         var _loc4_:String = getProperty(§3#P§,"yell");
         var _loc5_:String = getProperty(§3#P§,"flying");
         var _loc6_:String = getProperty(§3#P§,"collision");
         §§push(§&#=§.§'%§);
         §§push(["1",[_loc1_]]);
         if(_loc8_)
         {
            §§push(null);
         }
         §§push(null);
         if(_loc8_)
         {
            §§push(§^#$§.§^?§);
            §§push(["1",[_loc2_]]);
            if(_loc8_ || _loc3_)
            {
               §§push(null);
            }
            §§push(null);
            §§push(§?"N§.§;!U§);
            §§push(["1",[_loc3_]]);
            if(_loc8_ || _loc3_)
            {
               §§push(null);
            }
            §§push(null);
            §§push(§^#$§.§3"=§);
            §§push(["1",[_loc4_]]);
            if(_loc8_ || _loc3_)
            {
               §§push(null);
            }
            §§push(null);
            §§push(§?"N§.§-"[§);
            §§push(["1",[_loc5_]]);
            if(_loc8_ || this)
            {
               §§push(null);
            }
            §§push(null);
            §§push(§3!y§.§4!v§);
            §§push(["1",[_loc6_]]);
            if(!(_loc7_ && _loc3_))
            {
               §§push(null);
            }
            return null;
         }
      }
      
      protected function §1#Y§() : Array
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc1_:Array = null;
         var _loc2_:int = getNumberProperty(§3#P§,"timer","length");
         if(!_loc7_)
         {
            if(_loc2_ > 0)
            {
               addr43:
               _loc3_ = [];
               _loc4_ = [];
               _loc1_ = [_loc3_,_loc4_];
               if(_loc8_)
               {
                  _loc5_ = 0;
               }
               loop0:
               while(true)
               {
                  if(_loc5_ < _loc2_)
                  {
                     _loc6_ = getProperty(§3#P§,"timer",_loc5_);
                     while(true)
                     {
                        _loc3_.push(_loc6_);
                        loop2:
                        while(true)
                        {
                           addr89:
                           while(true)
                           {
                              _loc4_.push(70);
                              while(true)
                              {
                                 _loc5_++;
                                 if(_loc7_)
                                 {
                                    break;
                                 }
                                 if(!_loc7_)
                                 {
                                    continue loop2;
                                 }
                              }
                           }
                           continue loop0;
                        }
                        if(!(_loc8_ || this))
                        {
                           continue;
                        }
                        if(true)
                        {
                           continue loop0;
                        }
                        §§goto(addr89);
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr43);
      }
   }
}
