package §2"Y§
{
   public class §%#@§ extends §2o§
   {
      
      public static const §2#'§:String = "idleState";
      
      public static const §1_§:String = "freezeState";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §2#'§ = "idleState";
            do
            {
               §1_§ = "freezeState";
            }
            while(!(_loc1_ || _loc2_));
            
         }
      }
      
      protected var §9#`§:Object;
      
      protected var §;<§:Number;
      
      protected var §7]§:Number;
      
      public function §%#@§(param1:Object, param2:int, param3:§&!x§, param4:§'#2§, param5:int, param6:Boolean = false, param7:§%"3§ = null)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_)
         {
            super(param1,param2,param3,param4,param5,param6);
         }
         while(true)
         {
            §>"Q§ = param7;
            while(!_loc8_)
            {
               this.§9#`§ = param1.stateAnimations;
               if(!(_loc8_ && this))
               {
                  return;
               }
            }
         }
      }
      
      public function §=";§() : Array
      {
         return [this.§;<§,this.§7]§];
      }
      
      protected function readStateAnimations(param1:Object) : Array
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc2_:Array = null;
         var _loc3_:Array = null;
         var _loc4_:* = null;
         var _loc5_:Array = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         var _loc8_:* = 0;
         var _loc9_:Array = null;
         var _loc10_:Array = null;
         if(!_loc14_)
         {
            if(param1)
            {
               addr46:
               _loc2_ = [];
               _loc3_ = [§2#'§];
               var _loc11_:int = 0;
               var _loc12_:* = param1;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc12_,_loc11_));
                  if(!_loc14_)
                  {
                     if(!§§pop())
                     {
                        if(_loc13_ || _loc2_)
                        {
                           if(_loc13_ || param1)
                           {
                              if(!(_loc14_ && this))
                              {
                                 _loc11_ = 0;
                                 if(_loc13_)
                                 {
                                    _loc12_ = _loc3_;
                                    if(!_loc14_)
                                    {
                                       while(true)
                                       {
                                          §§push(§§hasnext(_loc12_,_loc11_));
                                          break loop0;
                                       }
                                       addr269:
                                       §§push(["1",[§4!g§]]);
                                       if(!(_loc14_ && _loc2_))
                                       {
                                          §§push(null);
                                       }
                                       _loc5_ = §§pop();
                                       if(_loc13_)
                                       {
                                          _loc2_.push([§1_§,_loc5_]);
                                          if(_loc13_ || param1)
                                          {
                                             return _loc2_;
                                          }
                                          addr313:
                                          addr313:
                                          return null;
                                       }
                                       §§goto(addr313);
                                       addr269:
                                       addr272:
                                       addr271:
                                    }
                                    while(true)
                                    {
                                       if(_loc6_ = param1[_loc4_])
                                       {
                                          _loc7_ = [];
                                          if(!_loc14_)
                                          {
                                             §§push(0);
                                             if(!_loc14_)
                                             {
                                                _loc8_ = §§pop();
                                                if(!(_loc14_ && _loc2_))
                                                {
                                                   loop3:
                                                   while(true)
                                                   {
                                                      §§push(_loc8_);
                                                      addr185:
                                                      while(§§pop() < _loc6_.sprites.length)
                                                      {
                                                         _loc9_ = §"!`§(_loc8_,_loc6_);
                                                         if(_loc13_)
                                                         {
                                                            _loc7_.push(_loc9_);
                                                            if(!(_loc14_ && param1))
                                                            {
                                                               _loc8_++;
                                                            }
                                                         }
                                                         continue loop3;
                                                      }
                                                      if(_loc13_)
                                                      {
                                                         _loc2_.push([_loc4_,_loc7_]);
                                                         if(_loc13_ || _loc2_)
                                                         {
                                                            addr203:
                                                            §§push(_loc4_ == §2#'§);
                                                            if(_loc13_ || _loc3_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(!(_loc14_ && _loc2_))
                                                                  {
                                                                     §§pop();
                                                                     addr235:
                                                                     if(_loc13_ || _loc2_)
                                                                     {
                                                                        addr230:
                                                                        §§push(_loc6_.idleTime is Array);
                                                                     }
                                                                     if((_loc10_ = _loc6_.idleTime as Array).length == 2)
                                                                     {
                                                                        if(_loc13_ || this)
                                                                        {
                                                                           this.§;<§ = _loc10_[0];
                                                                           if(_loc13_ || _loc2_)
                                                                           {
                                                                              this.§7]§ = _loc10_[1];
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr269);
                                                                  }
                                                               }
                                                            }
                                                            if(§§pop())
                                                            {
                                                               §§goto(addr235);
                                                            }
                                                            §§goto(addr269);
                                                         }
                                                         §§goto(addr230);
                                                      }
                                                      §§goto(addr235);
                                                   }
                                                }
                                                §§goto(addr203);
                                             }
                                             §§goto(addr185);
                                          }
                                          §§goto(addr235);
                                       }
                                       §§goto(addr269);
                                    }
                                    addr130:
                                 }
                                 §§goto(addr272);
                              }
                           }
                           §§goto(addr269);
                        }
                        §§goto(addr271);
                     }
                     else
                     {
                        §§push(§§nextname(_loc11_,_loc12_));
                        if(!_loc14_)
                        {
                           §§push(§§pop());
                           if(_loc13_ || param1)
                           {
                              _loc4_ = §§pop();
                              addr75:
                              §§push(§2#'§);
                           }
                           if(§§pop() != §§pop())
                           {
                              if(_loc13_ || this)
                              {
                                 _loc3_.push(_loc4_);
                              }
                           }
                           continue;
                        }
                        §§goto(addr75);
                     }
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     _loc4_ = §§nextvalue(_loc11_,_loc12_);
                     §§goto(addr130);
                  }
                  §§goto(addr269);
               }
            }
            §§goto(addr313);
         }
         §§goto(addr46);
      }
      
      override public function getAnimationDefinitions() : Array
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Array = this.readStateAnimations(this.§9#`§);
         if(!_loc2_)
         {
            if(_loc1_)
            {
               if(_loc3_ || _loc3_)
               {
                  §§goto(addr54);
               }
            }
            return super.getAnimationDefinitions();
         }
         addr54:
         return _loc1_;
      }
   }
}
