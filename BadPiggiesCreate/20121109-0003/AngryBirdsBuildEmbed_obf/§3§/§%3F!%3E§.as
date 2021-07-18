package §3§
{
   import §]s§.§&[§;
   import flash.utils.Dictionary;
   
   public class §?!>§ extends §8Y§
   {
       
      
      protected var §;u§:Dictionary;
      
      protected var §?!p§:Object = null;
      
      protected var §'!?§:Dictionary;
      
      protected var §%f§:Dictionary;
      
      public function §?!>§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§%f§ = new Dictionary();
            if(_loc2_)
            {
               this.§;u§ = new Dictionary();
               if(!_loc1_)
               {
                  addr46:
                  this.§'!?§ = new Dictionary();
                  if(!_loc2_)
                  {
                  }
                  §§goto(addr54);
               }
               super();
               addr54:
               return;
            }
         }
         §§goto(addr46);
      }
      
      public static function §-V§(param1:§&[§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            param1.§3!3§(§?!>§,Object,"*");
         }
      }
      
      override public function setObject(param1:String, param2:Object) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            this.§?!p§[param1] = param2;
         }
      }
      
      override public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            this.§;u§[param1] = param2;
            if(_loc5_ || param3)
            {
               this.§'!?§["dest." + param1] = param3;
            }
         }
      }
      
      override protected function newInstance() : §8Y§
      {
         return new §?!>§();
      }
      
      override public function get target() : Object
      {
         return this.§?!p§;
      }
      
      private function § !+§(param1:Object, param2:Object) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = null;
         for(_loc3_ in param2)
         {
            if(_loc7_ || param1)
            {
               param1[_loc3_] = param2[_loc3_];
            }
         }
      }
      
      override public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§%f§[param1] = param2;
            if(!_loc5_)
            {
               this.§'!?§["source." + param1] = param3;
            }
         }
      }
      
      override protected function updateObject(param1:Number) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:* = null;
         §§push(1 - param1);
         if(_loc9_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:Object = this.§?!p§;
         var _loc4_:Dictionary = this.§;u§;
         var _loc5_:Dictionary = this.§%f§;
         for(_loc6_ in _loc4_)
         {
            if(_loc9_ || param1)
            {
               _loc3_[_loc6_] = _loc5_[_loc6_] * _loc2_ + _loc4_[_loc6_] * param1;
            }
         }
      }
      
      override public function set target(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§?!p§ = param1;
         }
      }
      
      override protected function resolveValues() : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc1_:String = null;
         var _loc2_:Object = this.§?!p§;
         var _loc3_:Dictionary = this.§%f§;
         var _loc4_:Dictionary = this.§;u§;
         var _loc5_:Dictionary = this.§'!?§;
         var _loc6_:int = 0;
         var _loc7_:* = _loc3_;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc7_,_loc6_));
            if(!_loc8_)
            {
               if(!§§pop())
               {
                  if(!_loc8_)
                  {
                     if(_loc9_)
                     {
                        if(!(_loc8_ && _loc2_))
                        {
                           _loc6_ = 0;
                           if(_loc9_ || _loc3_)
                           {
                              _loc7_ = _loc4_;
                              if(!(_loc8_ && _loc3_))
                              {
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc7_,_loc6_));
                                    break loop0;
                                 }
                                 addr200:
                                 return;
                                 addr196:
                                 addr199:
                                 addr198:
                              }
                              while(true)
                              {
                                 if(_loc5_["dest." + _loc1_])
                                 {
                                    if(!_loc8_)
                                    {
                                       _loc4_[_loc1_] += _loc2_[_loc1_];
                                    }
                                 }
                                 §§goto(addr196);
                              }
                              addr178:
                           }
                           §§goto(addr199);
                        }
                     }
                     §§goto(addr200);
                  }
                  §§goto(addr198);
               }
               else
               {
                  _loc1_ = §§nextname(_loc6_,_loc7_);
                  if(_loc8_ && _loc2_)
                  {
                     continue;
                  }
                  if(_loc4_[_loc1_] == undefined)
                  {
                     if(!_loc8_)
                     {
                        _loc4_[_loc1_] = _loc2_[_loc1_];
                        if(!(_loc8_ && _loc2_))
                        {
                           addr75:
                           if(!_loc5_["source." + _loc1_])
                           {
                              continue;
                           }
                           if(!_loc9_)
                           {
                              continue;
                           }
                        }
                        _loc3_[_loc1_] += _loc2_[_loc1_];
                        continue;
                     }
                  }
                  §§goto(addr75);
               }
            }
            break;
         }
         while(true)
         {
            if(!§§pop())
            {
               §§goto(addr200);
            }
            else
            {
               _loc1_ = §§nextname(_loc6_,_loc7_);
               if(_loc9_)
               {
                  if(_loc3_[_loc1_] == undefined)
                  {
                     if(_loc8_ && _loc1_)
                     {
                        continue;
                     }
                     _loc3_[_loc1_] = _loc2_[_loc1_];
                     if(!_loc9_)
                     {
                        continue;
                     }
                  }
               }
               §§goto(addr178);
            }
         }
      }
      
      override public function getObject(param1:String) : Object
      {
         return this.§?!p§[param1];
      }
      
      override protected function copyFrom(param1:§8Y§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super.copyFrom(param1);
         }
         var _loc2_:§?!>§ = param1 as §?!>§;
         if(_loc4_)
         {
            this.§?!p§ = _loc2_.§?!p§;
            if(_loc4_ || this)
            {
               this.§ !+§(this.§%f§,_loc2_.§%f§);
               if(!(_loc3_ && _loc3_))
               {
                  §§goto(addr73);
               }
               §§goto(addr86);
            }
         }
         addr73:
         this.§ !+§(this.§;u§,_loc2_.§;u§);
         if(_loc4_ || param1)
         {
            addr86:
            this.§ !+§(this.§'!?§,_loc2_.§'!?§);
         }
      }
   }
}
