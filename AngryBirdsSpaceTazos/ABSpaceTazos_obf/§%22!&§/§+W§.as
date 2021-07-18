package §"!&§
{
   import §]">§.§ 6§;
   import §]">§.§"!s§;
   import §]">§.§%!E§;
   import §]">§.§1!0§;
   import §]">§.§5=§;
   
   public class §+W§ extends §0"?§
   {
      
      protected static const §&! §:String = "sprites";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §&! § = "sprites";
         }
      }
      
      public function §+W§(param1:Object, param2:int, param3:§<s§, param4:§=C§, param5:int, param6:Boolean = false, param7:§="D§ = null)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!(_loc8_ && param1))
         {
            super(param1,param2,param3,param4,param5,param6,param7);
         }
         do
         {
            §5"F§ = §0%§(§&! §,"score");
         }
         while(!(_loc9_ || param1));
         
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Array = this.§8J§();
         var _loc2_:Array = this.§!"5§();
         if(_loc4_)
         {
            if(_loc2_)
            {
               if(!_loc3_)
               {
                  _loc1_.push([§"!s§.§7"3§,[["1",_loc2_[0],_loc2_[1]]]]);
                  addr41:
               }
            }
            return _loc1_;
         }
         §§goto(addr41);
      }
      
      protected function §8J§() : Array
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc1_:String = §0%§(§&! §,"default");
         var _loc2_:String = §0%§(§&! §,"blink");
         var _loc3_:String = §0%§(§&! §,"flying");
         var _loc4_:String = §0%§(§&! §,"yell");
         var _loc5_:String = §0%§(§&! §,"flying");
         var _loc6_:String = §0%§(§&! §,"collision");
         §§push(§1!0§.§,!Y§);
         §§push(["1",[_loc1_]]);
         if(!(_loc7_ && this))
         {
            §§push(null);
         }
         §§push(null);
         if(!(_loc7_ && _loc1_))
         {
            §§push(§5=§.§[_§);
            §§push(["1",[_loc2_]]);
            if(!(_loc7_ && this))
            {
               §§push(null);
            }
            §§push(null);
            §§push(§ 6§.§>E§);
            §§push(["1",[_loc3_]]);
            if(_loc8_ || _loc3_)
            {
               §§push(null);
            }
            §§push(null);
            §§push(§5=§.§3P§);
            §§push(["1",[_loc4_]]);
            if(!(_loc7_ && this))
            {
               §§push(null);
            }
            §§push(null);
            §§push(§ 6§.§#D§);
            §§push(["1",[_loc5_]]);
            if(!_loc7_)
            {
               §§push(null);
            }
            §§push(null);
            §§push(§%!E§.§;O§);
            §§push(["1",[_loc6_]]);
            if(!(_loc7_ && _loc3_))
            {
               §§push(null);
            }
            return null;
         }
      }
      
      protected function §!"5§() : Array
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc1_:Array = null;
         var _loc2_:int = §=c§(§&! §,"timer","length");
         if(_loc7_)
         {
            if(_loc2_ > 0)
            {
               addr42:
               _loc3_ = [];
               _loc4_ = [];
               _loc1_ = [_loc3_,_loc4_];
               if(_loc7_ || this)
               {
                  _loc5_ = 0;
               }
               loop0:
               while(true)
               {
                  if(_loc5_ < _loc2_)
                  {
                     _loc6_ = §0%§(§&! §,"timer",_loc5_);
                     while(true)
                     {
                        _loc3_.push(_loc6_);
                        loop2:
                        while(_loc7_)
                        {
                           do
                           {
                              _loc4_.push(70);
                              while(true)
                              {
                                 _loc5_++;
                                 if(!_loc7_)
                                 {
                                    break;
                                 }
                                 if(_loc7_)
                                 {
                                    if(_loc8_ && _loc3_)
                                    {
                                       continue loop2;
                                    }
                                    §§goto(addr84);
                                    continue loop2;
                                 }
                              }
                           }
                           while(false);
                           
                           continue loop0;
                        }
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr42);
      }
   }
}
