package §"!&§
{
   public class §3",§ extends §5!f§
   {
      
      public static const §#"B§:String = "idleState";
      
      public static const §!R§:String = "freezeState";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §#"B§ = "idleState";
         }
         do
         {
            §!R§ = "freezeState";
         }
         while(_loc1_);
         
      }
      
      protected var §?! §:Object;
      
      protected var §"x§:Number;
      
      protected var §[W§:Number;
      
      public function §3",§(param1:Object, param2:int, param3:§<s§, param4:§=C§, param5:int, param6:Boolean = false, param7:§="D§ = null)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!(_loc9_ && param1))
         {
            super(param1,param2,param3,param4,param5,param6);
         }
         while(true)
         {
            §9"3§ = param7;
            while(_loc8_ || param1)
            {
               this.§?! § = param1.stateAnimations;
               if(_loc8_ || param2)
               {
                  return;
               }
            }
         }
      }
      
      public function §+!5§() : Array
      {
         return [this.§"x§,this.§[W§];
      }
      
      protected function §-!R§(param1:Object) : Array
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc2_:Array = null;
         var _loc3_:Array = null;
         var _loc4_:* = null;
         var _loc5_:Array = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         var _loc8_:* = 0;
         var _loc9_:Array = null;
         var _loc10_:Array = null;
         if(!(_loc13_ && this))
         {
            if(param1)
            {
               addr52:
               _loc2_ = [];
               _loc3_ = [§#"B§];
               var _loc11_:int = 0;
               var _loc12_:* = param1;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc12_,_loc11_));
                  if(!(_loc13_ && this))
                  {
                     if(!§§pop())
                     {
                        if(!(_loc13_ && _loc2_))
                        {
                           if(_loc14_ || param1)
                           {
                              if(_loc14_ || _loc3_)
                              {
                                 _loc11_ = 0;
                                 if(_loc14_ || this)
                                 {
                                    addr129:
                                    _loc12_ = _loc3_;
                                    if(_loc14_)
                                    {
                                       while(true)
                                       {
                                          §§push(§§hasnext(_loc12_,_loc11_));
                                          break loop0;
                                       }
                                       addr290:
                                       §§push(["1",[§%Q§]]);
                                       if(!_loc13_)
                                       {
                                          §§push(null);
                                       }
                                       _loc5_ = §§pop();
                                       if(!_loc13_)
                                       {
                                          _loc2_.push([§!R§,_loc5_]);
                                          if(!_loc13_)
                                          {
                                             return _loc2_;
                                          }
                                          addr324:
                                          addr324:
                                          return null;
                                       }
                                       §§goto(addr324);
                                       addr290:
                                       addr293:
                                       addr292:
                                    }
                                    while(true)
                                    {
                                       if(_loc6_ = param1[_loc4_])
                                       {
                                          _loc7_ = [];
                                          if(!(_loc13_ && _loc3_))
                                          {
                                             §§push(0);
                                             if(!(_loc13_ && this))
                                             {
                                                _loc8_ = §§pop();
                                                if(!_loc13_)
                                                {
                                                   loop3:
                                                   while(true)
                                                   {
                                                      §§push(_loc8_);
                                                      addr206:
                                                      for(; §§pop() < _loc6_.sprites.length; continue loop3)
                                                      {
                                                         _loc9_ = § "+§(_loc8_,_loc6_);
                                                         if(_loc14_ || this)
                                                         {
                                                            _loc7_.push(_loc9_);
                                                            if(!(_loc14_ || param1))
                                                            {
                                                               continue;
                                                            }
                                                         }
                                                         _loc8_++;
                                                      }
                                                      if(!(_loc13_ && _loc2_))
                                                      {
                                                         addr217:
                                                         _loc2_.push([_loc4_,_loc7_]);
                                                         if(!(_loc13_ && this))
                                                         {
                                                            §§push(_loc4_ == §#"B§);
                                                            if(!(_loc13_ && this))
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(_loc14_ || _loc3_)
                                                                  {
                                                                     addr248:
                                                                     §§pop();
                                                                     addr261:
                                                                     if(!(_loc13_ && _loc2_))
                                                                     {
                                                                        addr256:
                                                                        §§push(_loc6_.idleTime is Array);
                                                                     }
                                                                     if((_loc10_ = _loc6_.idleTime as Array).length == 2)
                                                                     {
                                                                        if(!_loc13_)
                                                                        {
                                                                           this.§"x§ = _loc10_[0];
                                                                           if(_loc14_ || param1)
                                                                           {
                                                                              this.§[W§ = _loc10_[1];
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr290);
                                                                  }
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  §§goto(addr261);
                                                               }
                                                               §§goto(addr290);
                                                            }
                                                            §§goto(addr248);
                                                         }
                                                         §§goto(addr256);
                                                      }
                                                      §§goto(addr248);
                                                   }
                                                }
                                                §§goto(addr256);
                                             }
                                             §§goto(addr206);
                                          }
                                          §§goto(addr217);
                                       }
                                       §§goto(addr290);
                                    }
                                    addr141:
                                 }
                                 §§goto(addr293);
                              }
                              §§goto(addr290);
                           }
                           §§goto(addr129);
                        }
                        §§goto(addr292);
                     }
                     else
                     {
                        §§push(§§nextname(_loc11_,_loc12_));
                        if(_loc14_)
                        {
                           §§push(§§pop());
                           if(_loc14_)
                           {
                              _loc4_ = §§pop();
                              addr76:
                              §§push(§#"B§);
                           }
                           if(§§pop() != §§pop())
                           {
                              if(_loc14_ || this)
                              {
                                 _loc3_.push(_loc4_);
                              }
                           }
                           continue;
                        }
                        §§goto(addr76);
                     }
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     _loc4_ = §§nextvalue(_loc11_,_loc12_);
                     §§goto(addr141);
                  }
                  §§goto(addr290);
               }
            }
            §§goto(addr324);
         }
         §§goto(addr52);
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Array = this.§-!R§(this.§?! §);
         if(_loc3_ || _loc2_)
         {
            if(_loc1_)
            {
               if(_loc3_ || _loc1_)
               {
                  §§goto(addr59);
               }
            }
            return super.getAnimationDefinitions();
         }
         addr59:
         return _loc1_;
      }
   }
}
