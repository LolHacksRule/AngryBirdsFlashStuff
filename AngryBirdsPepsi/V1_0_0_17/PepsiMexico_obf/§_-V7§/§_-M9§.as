package §_-V7§
{
   import §_-5y§.§_-Bf§;
   import §_-wT§.§_-c9§;
   import flash.utils.Dictionary;
   
   public class §_-M9§
   {
       
      
      private var §_-qw§:Vector.<Dictionary>;
      
      private var §_-5O§:§_-c9§;
      
      private var §_-OK§:uint = 0;
      
      private var §_-YV§:Vector.<Vector.<§_-S1§>>;
      
      public function §_-M9§(param1:§_-c9§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§_-qw§ = new Vector.<Dictionary>();
            if(_loc2_)
            {
               this.§_-YV§ = new Vector.<Vector.<§_-S1§>>();
               if(_loc2_)
               {
                  super();
                  if(_loc2_ || this)
                  {
                     addr61:
                     this.§_-5O§ = param1;
                  }
                  return;
               }
            }
         }
         §§goto(addr61);
      }
      
      public function §_-aT§(param1:Object, param2:String, param3:Dictionary, param4:Vector.<§_-S1§>) : §_-S1§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:§_-S1§ = null;
         var _loc5_:Class;
         if((_loc5_ = this.§_-5O§.§_-eX§(param1.constructor,param2)) != null)
         {
            if((_loc6_ = param3[_loc5_] as §_-S1§) == null)
            {
               if(!_loc8_)
               {
                  (_loc6_ = new _loc5_()).target = param1;
                  if(!(_loc8_ && param3))
                  {
                     param3[_loc5_] = _loc6_;
                     if(!(_loc8_ && param3))
                     {
                        if(param4 != null)
                        {
                           if(_loc7_ || param2)
                           {
                           }
                        }
                     }
                     §§goto(addr91);
                  }
                  param4.push(_loc6_);
               }
               else
               {
                  §§goto(addr93);
               }
            }
            addr91:
            return _loc6_;
         }
         addr93:
         return null;
      }
      
      public function §_-2W§(param1:Object, param2:Object, param3:Object, param4:§_-Bf§) : §_-gL§
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc8_:* = null;
         var _loc9_:Object = null;
         var _loc10_:Boolean = false;
         var _loc11_:§_-gL§ = null;
         var _loc12_:§_-gL§ = null;
         var _loc5_:Dictionary = new Dictionary();
         var _loc6_:Vector.<§_-gL§> = new Vector.<§_-gL§>();
         var _loc7_:§_-f6§;
         (_loc7_ = new §_-f6§()).target = param1;
         if(!(_loc17_ && this))
         {
            _loc7_.§_-5E§ = param4;
            if(!(_loc17_ && param3))
            {
               addr61:
               _loc6_.push(_loc7_);
               if(!_loc17_)
               {
                  §§goto(addr66);
               }
               §§goto(addr69);
            }
            addr66:
            if(param3 != null)
            {
               addr69:
               var _loc13_:int = 0;
               var _loc14_:* = param3;
               while(true)
               {
                  §§push(§§hasnext(_loc14_,_loc13_));
                  if(!(_loc17_ && this))
                  {
                     if(!§§pop())
                     {
                        if(_loc16_)
                        {
                           if(_loc16_ || param1)
                           {
                              if(!(_loc17_ && this))
                              {
                                 §§goto(addr210);
                              }
                              §§goto(addr348);
                           }
                           §§goto(addr219);
                        }
                        §§goto(addr333);
                     }
                     else
                     {
                        _loc8_ = §§nextname(_loc13_,_loc14_);
                        if((_loc9_ = param3[_loc8_]) is Number)
                        {
                           if(!(_loc17_ && param3))
                           {
                              if(_loc10_ = /^\$/.test(_loc8_))
                              {
                                 if(!_loc17_)
                                 {
                                    addr114:
                                    §§push(_loc8_);
                                    if(!_loc17_)
                                    {
                                       §§push(§§pop().substr(1));
                                    }
                                    _loc8_ = §§pop();
                                    if(_loc17_)
                                    {
                                    }
                                    _loc11_ = this.§_-2W§(_loc7_.getObject(_loc8_),param2 != null ? param2[_loc8_] : null,_loc9_,param4);
                                    addr142:
                                    if(!_loc17_)
                                    {
                                       _loc6_.push(new §_-ag§(_loc7_,_loc11_,_loc8_));
                                       if(_loc17_)
                                       {
                                          continue;
                                       }
                                    }
                                    _loc5_[_loc8_] = true;
                                    continue;
                                 }
                                 §§goto(addr142);
                              }
                              _loc7_.setSourceValue(_loc8_,Number(_loc9_),_loc10_);
                              if(!(_loc17_ && param2))
                              {
                                 continue;
                              }
                              §§goto(addr142);
                           }
                           §§goto(addr114);
                        }
                        else if(_loc5_[_loc8_])
                        {
                           continue;
                        }
                        §§goto(addr114);
                     }
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     _loc8_ = §§nextname(_loc13_,_loc14_);
                     §§goto(addr231);
                  }
                  §§goto(addr331);
               }
            }
            addr210:
            if(param2 != null)
            {
               if(!_loc17_)
               {
                  _loc13_ = 0;
                  if(_loc16_)
                  {
                     addr219:
                     _loc14_ = param2;
                     if(_loc16_)
                     {
                        while(true)
                        {
                           §§push(§§hasnext(_loc14_,_loc13_));
                           break loop0;
                        }
                        addr331:
                        if(!(_loc17_ && param2))
                        {
                           §§goto(addr342);
                        }
                        §§goto(addr365);
                        addr331:
                        addr333:
                     }
                     while(true)
                     {
                        if((_loc9_ = param2[_loc8_]) is Number)
                        {
                           if(_loc16_)
                           {
                              if(_loc10_ = /^\$/.test(_loc8_))
                              {
                                 if(!(_loc17_ && this))
                                 {
                                    §§push(_loc8_);
                                    if(!_loc17_)
                                    {
                                       §§push(§§pop().substr(1));
                                    }
                                    _loc8_ = §§pop();
                                    if(_loc16_ || this)
                                    {
                                       addr278:
                                       _loc7_.setDestinationValue(_loc8_,Number(_loc9_),_loc10_);
                                       if(!_loc16_)
                                       {
                                       }
                                       §§goto(addr331);
                                    }
                                    _loc11_ = this.§_-2W§(_loc7_.getObject(_loc8_),null,param3 != null ? param3[_loc8_] : null,param4);
                                    addr292:
                                    if(_loc16_)
                                    {
                                       _loc6_.push(new §_-ag§(_loc7_,_loc11_,_loc8_));
                                       if(!(_loc17_ && this))
                                       {
                                          _loc5_[_loc8_] = true;
                                       }
                                    }
                                    §§goto(addr331);
                                 }
                              }
                           }
                           §§goto(addr278);
                        }
                        else if(!_loc5_[_loc8_])
                        {
                           §§goto(addr292);
                        }
                        §§goto(addr331);
                     }
                     addr231:
                  }
                  §§goto(addr331);
               }
            }
            addr342:
            if(_loc6_.length == 1)
            {
               if(!_loc17_)
               {
                  addr348:
                  _loc12_ = _loc6_[0];
               }
               else
               {
                  addr365:
                  _loc12_ = new §_-FB§(param1,_loc6_);
               }
            }
            else if(_loc6_.length > 1)
            {
               §§goto(addr365);
            }
            return _loc12_;
         }
         §§goto(addr61);
      }
      
      public function §_-Mk§(param1:Object, param2:Object, param3:Object, param4:Object) : §_-S1§
      {
         var _loc19_:Boolean = true;
         var _loc20_:Boolean = false;
         var _loc8_:* = null;
         var _loc9_:Object = null;
         var _loc10_:Boolean = false;
         var _loc11_:Array = null;
         var _loc12_:* = uint(0);
         var _loc13_:* = uint(0);
         var _loc14_:§_-S1§ = null;
         var _loc15_:§_-S1§ = null;
         var _loc5_:Dictionary = new Dictionary();
         var _loc6_:Vector.<§_-S1§> = new Vector.<§_-S1§>();
         var _loc7_:§_-md§;
         (_loc7_ = new §_-md§()).target = param1;
         if(!_loc20_)
         {
            _loc6_.push(_loc7_);
            if(_loc19_)
            {
               if(param3 != null)
               {
                  addr63:
                  var _loc16_:* = 0;
                  var _loc17_:* = param3;
                  loop9:
                  while(true)
                  {
                     §§push(§§hasnext(_loc17_,_loc16_));
                     if(!_loc20_)
                     {
                        if(!§§pop())
                        {
                           if(!_loc20_)
                           {
                              if(_loc19_)
                              {
                                 addr353:
                                 if(param2 != null)
                                 {
                                    if(!_loc20_)
                                    {
                                       §§push(0);
                                       if(_loc19_)
                                       {
                                          _loc16_ = §§pop();
                                          if(!_loc20_)
                                          {
                                             _loc17_ = param2;
                                             if(_loc19_)
                                             {
                                                while(true)
                                                {
                                                   §§push(§§hasnext(_loc17_,_loc16_));
                                                   if(_loc19_)
                                                   {
                                                      break loop9;
                                                   }
                                                   break;
                                                }
                                                loop1:
                                                for(; §§pop(); while(true)
                                                {
                                                   continue loop1;
                                                })
                                                {
                                                   _loc8_ = §§nextname(_loc16_,_loc17_);
                                                   while(true)
                                                   {
                                                      §§push((_loc9_ = param4[_loc8_]) is Number);
                                                      if(!_loc20_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!_loc20_)
                                                            {
                                                               _loc9_ = [_loc9_];
                                                               addr409:
                                                               addr412:
                                                               if(_loc9_ is Array)
                                                               {
                                                                  if(!_loc20_)
                                                                  {
                                                                     if(_loc10_ = /^\$/.test(_loc8_))
                                                                     {
                                                                        if(!_loc20_)
                                                                        {
                                                                           §§push(_loc8_);
                                                                           if(_loc19_ || param2)
                                                                           {
                                                                              §§push(§§pop().substr(1));
                                                                           }
                                                                           _loc8_ = §§pop();
                                                                           if(_loc19_ || this)
                                                                           {
                                                                              addr448:
                                                                              §§push(uint((_loc11_ = _loc9_ as Array).length));
                                                                              if(_loc19_ || param2)
                                                                              {
                                                                                 _loc12_ = §§pop();
                                                                                 if(_loc19_ || param2)
                                                                                 {
                                                                                    §§push(uint(0));
                                                                                    if(_loc19_)
                                                                                    {
                                                                                       _loc13_ = §§pop();
                                                                                       if(!(_loc20_ && param1))
                                                                                       {
                                                                                          loop2:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc13_);
                                                                                             loop3:
                                                                                             while(§§pop() < _loc12_)
                                                                                             {
                                                                                                _loc7_.§_-yi§(_loc8_,_loc11_[_loc13_],_loc10_);
                                                                                                if(!(_loc20_ && param3))
                                                                                                {
                                                                                                   §§push(_loc13_);
                                                                                                   if(!_loc20_)
                                                                                                   {
                                                                                                      addr502:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(uint(§§pop() + 1));
                                                                                                         if(!_loc19_)
                                                                                                         {
                                                                                                            continue loop3;
                                                                                                         }
                                                                                                      }
                                                                                                      addr502:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc13_ = §§pop();
                                                                                                      if(!_loc19_)
                                                                                                      {
                                                                                                         break loop3;
                                                                                                      }
                                                                                                      continue loop2;
                                                                                                   }
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr502);
                                                                                 }
                                                                                 continue loop1;
                                                                              }
                                                                              §§goto(addr502);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr448);
                                                               }
                                                               else if(_loc5_[_loc8_])
                                                               {
                                                                  continue loop1;
                                                               }
                                                               _loc14_ = this.§_-Mk§(_loc7_.getObject(_loc8_),param2 != null ? param2[_loc8_] : null,param3 != null ? param3[_loc8_] : null,_loc9_);
                                                               if(!_loc20_)
                                                               {
                                                                  _loc6_.push(new §_-YG§(_loc7_,_loc14_,_loc8_));
                                                                  if(!_loc19_)
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                               }
                                                               _loc5_[_loc8_] = true;
                                                               continue loop1;
                                                            }
                                                            §§goto(addr448);
                                                         }
                                                         §§goto(addr409);
                                                      }
                                                      §§goto(addr412);
                                                   }
                                                }
                                                addr564:
                                                if(_loc6_.length == 1)
                                                {
                                                   if(_loc19_)
                                                   {
                                                      addr570:
                                                      _loc15_ = _loc6_[0];
                                                   }
                                                   else
                                                   {
                                                      addr587:
                                                      _loc15_ = new §_-X5§(param1,_loc6_);
                                                   }
                                                }
                                                else if(_loc6_.length > 1)
                                                {
                                                   §§goto(addr587);
                                                }
                                                return _loc15_;
                                                addr338:
                                                addr563:
                                                addr562:
                                                addr561:
                                             }
                                             while(true)
                                             {
                                                if((_loc9_ = param2[_loc8_]) is Number)
                                                {
                                                   if(!_loc20_)
                                                   {
                                                      if(_loc10_ = /^\$/.test(_loc8_))
                                                      {
                                                         if(_loc19_)
                                                         {
                                                            addr250:
                                                            §§push(_loc8_);
                                                            if(!(_loc20_ && param2))
                                                            {
                                                               §§push(§§pop().substr(1));
                                                            }
                                                            _loc8_ = §§pop();
                                                            if(_loc19_ || this)
                                                            {
                                                               addr269:
                                                               _loc7_.setDestinationValue(_loc8_,Number(_loc9_),_loc10_);
                                                               if(!(_loc19_ || this))
                                                               {
                                                                  _loc14_ = this.§_-Mk§(_loc7_.getObject(_loc8_),null,param3 != null ? param3[_loc8_] : null,param4 != null ? param4[_loc8_] : null);
                                                                  addr288:
                                                                  if(!_loc20_)
                                                                  {
                                                                     _loc6_.push(new §_-YG§(_loc7_,_loc14_,_loc8_));
                                                                     if(_loc19_)
                                                                     {
                                                                        _loc5_[_loc8_] = true;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr338);
                                                         }
                                                      }
                                                      §§goto(addr269);
                                                   }
                                                   §§goto(addr250);
                                                }
                                                else if(!_loc5_[_loc8_])
                                                {
                                                   §§goto(addr288);
                                                }
                                                §§goto(addr338);
                                             }
                                             addr222:
                                          }
                                          §§goto(addr563);
                                       }
                                       addr364:
                                       _loc16_ = §§pop();
                                       if(!(_loc20_ && param3))
                                       {
                                          _loc17_ = param4;
                                          if(!(_loc20_ && param1))
                                          {
                                             §§goto(addr560);
                                          }
                                          §§goto(addr389);
                                       }
                                       §§goto(addr338);
                                    }
                                    addr363:
                                    §§goto(addr364);
                                    §§push(0);
                                 }
                                 if(param4 != null)
                                 {
                                    if(!(_loc20_ && this))
                                    {
                                       §§goto(addr363);
                                    }
                                    §§goto(addr570);
                                 }
                                 §§goto(addr564);
                              }
                              addr352:
                              §§goto(addr353);
                           }
                           §§goto(addr562);
                        }
                        else
                        {
                           _loc8_ = §§nextname(_loc16_,_loc17_);
                           if((_loc9_ = param3[_loc8_]) is Number)
                           {
                              if(!(_loc20_ && param1))
                              {
                                 if(_loc10_ = /^\$/.test(_loc8_))
                                 {
                                    if(_loc19_)
                                    {
                                       §§push(_loc8_);
                                       if(_loc19_ || param2)
                                       {
                                          §§push(§§pop().substr(1));
                                       }
                                       _loc8_ = §§pop();
                                       if(!_loc20_)
                                       {
                                          addr122:
                                          _loc7_.setSourceValue(_loc8_,Number(_loc9_),_loc10_);
                                          if(!(_loc19_ || param1))
                                          {
                                             _loc14_ = this.§_-Mk§(_loc7_.getObject(_loc8_),param2 != null ? param2[_loc8_] : null,_loc9_,param4 != null ? param4[_loc8_] : null);
                                             addr141:
                                             if(_loc19_ || this)
                                             {
                                                _loc6_.push(new §_-YG§(_loc7_,_loc14_,_loc8_));
                                                if(!_loc19_)
                                                {
                                                   continue;
                                                }
                                             }
                                             _loc5_[_loc8_] = true;
                                             continue;
                                          }
                                       }
                                    }
                                    continue;
                                 }
                                 §§goto(addr122);
                              }
                           }
                           else if(_loc5_[_loc8_])
                           {
                              continue;
                           }
                           §§goto(addr141);
                        }
                     }
                     break;
                  }
                  while(true)
                  {
                     if(!§§pop())
                     {
                        if(_loc19_ || param3)
                        {
                           if(!_loc20_)
                           {
                              §§goto(addr352);
                           }
                        }
                        §§goto(addr564);
                     }
                     else
                     {
                        _loc8_ = §§nextname(_loc16_,_loc17_);
                        §§goto(addr222);
                     }
                  }
               }
               §§goto(addr353);
            }
         }
         §§goto(addr63);
      }
      
      public function §_-6D§(param1:Object, param2:Object, param3:Object) : §_-S1§
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc4_:Dictionary = null;
         var _loc5_:Vector.<§_-S1§> = null;
         var _loc6_:* = null;
         var _loc7_:Object = null;
         var _loc8_:Boolean = false;
         var _loc9_:§_-S1§ = null;
         var _loc10_:§_-S1§ = null;
         var _loc11_:§_-S1§ = null;
         var _loc12_:* = undefined;
         if(_loc17_ || param1)
         {
            if(this.§_-OK§ > 0)
            {
               if(!(_loc16_ && this))
               {
                  addr58:
                  var _loc13_:*;
                  var _loc14_:* = (_loc13_ = this).§_-OK§ - 1;
                  if(!(_loc16_ && param1))
                  {
                     _loc13_.§_-OK§ = _loc14_;
                  }
               }
               _loc4_ = this.§_-qw§[this.§_-OK§];
               _loc5_ = this.§_-YV§[this.§_-OK§];
               if(_loc17_ || param2)
               {
                  addr108:
                  if(param3 != null)
                  {
                     addr111:
                     _loc13_ = 0;
                     _loc14_ = param3;
                     loop0:
                     while(true)
                     {
                        §§push(§§hasnext(_loc14_,_loc13_));
                        if(_loc17_ || param2)
                        {
                           if(!§§pop())
                           {
                              if(_loc17_)
                              {
                                 if(_loc17_ || this)
                                 {
                                    if(_loc17_)
                                    {
                                       addr252:
                                       if(param2 != null)
                                       {
                                          if(!(_loc16_ && param3))
                                          {
                                             _loc13_ = 0;
                                             if(!_loc16_)
                                             {
                                                _loc14_ = param2;
                                                addr266:
                                                if(_loc17_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§§hasnext(_loc14_,_loc13_));
                                                      break loop0;
                                                   }
                                                   addr427:
                                                   if(_loc17_ || param1)
                                                   {
                                                      addr438:
                                                      if(_loc5_.length == 1)
                                                      {
                                                         if(!(_loc16_ && param2))
                                                         {
                                                            §§goto(addr449);
                                                         }
                                                         else
                                                         {
                                                            addr461:
                                                            _loc11_ = new §_-X5§(param1,_loc5_);
                                                         }
                                                      }
                                                      else if(_loc5_.length > 1)
                                                      {
                                                         §§goto(addr461);
                                                      }
                                                      §§goto(addr467);
                                                   }
                                                   §§goto(addr461);
                                                   addr427:
                                                   addr429:
                                                }
                                                while(true)
                                                {
                                                   §§push((_loc7_ = param2[_loc6_]) is Number);
                                                   if(_loc17_ || param3)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc17_)
                                                         {
                                                            if(_loc8_ = /^\$/.test(_loc6_))
                                                            {
                                                               if(_loc17_)
                                                               {
                                                                  addr320:
                                                                  §§push(_loc6_);
                                                                  if(_loc17_ || param2)
                                                                  {
                                                                     §§push(§§pop().substr(1));
                                                                     if(_loc17_)
                                                                     {
                                                                        _loc6_ = §§pop();
                                                                        if(_loc17_)
                                                                        {
                                                                           addr336:
                                                                           §§push(this.§_-aT§(param1,_loc6_,_loc4_,_loc5_));
                                                                           if(!_loc16_)
                                                                           {
                                                                              §§pop().setDestinationValue(_loc6_,Number(_loc7_),_loc8_);
                                                                              if(!(_loc16_ && param1))
                                                                              {
                                                                                 §§goto(addr427);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr387:
                                                                                 §§push(this.§_-aT§(param1,_loc6_,_loc4_,_loc5_));
                                                                              }
                                                                              §§goto(addr427);
                                                                           }
                                                                           _loc9_ = §§pop();
                                                                           _loc10_ = this.§_-6D§(_loc9_.getObject(_loc6_),_loc7_,param3 != null ? param3[_loc6_] : null);
                                                                           if(_loc17_ || this)
                                                                           {
                                                                              _loc5_.push(new §_-YG§(_loc9_,_loc10_,_loc6_));
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr384:
                                                                           if(!(_loc6_ in param3))
                                                                           {
                                                                              §§goto(addr387);
                                                                           }
                                                                        }
                                                                        §§goto(addr427);
                                                                     }
                                                                  }
                                                                  §§goto(addr384);
                                                               }
                                                               §§goto(addr387);
                                                            }
                                                            §§goto(addr336);
                                                         }
                                                         §§goto(addr320);
                                                      }
                                                      else
                                                      {
                                                         §§push(param3 == null);
                                                         if(!_loc16_)
                                                         {
                                                            §§push(!§§pop());
                                                            if(_loc17_)
                                                            {
                                                               addr366:
                                                               if(§§pop())
                                                               {
                                                                  if(_loc16_ && param2)
                                                                  {
                                                                  }
                                                               }
                                                               §§goto(addr384);
                                                            }
                                                            §§pop();
                                                            if(_loc17_ || this)
                                                            {
                                                               §§goto(addr384);
                                                            }
                                                            §§goto(addr387);
                                                         }
                                                         §§goto(addr366);
                                                      }
                                                   }
                                                   §§goto(addr366);
                                                }
                                                addr285:
                                             }
                                             §§goto(addr427);
                                          }
                                          addr449:
                                          _loc11_ = _loc5_[0];
                                          if(_loc17_)
                                          {
                                             addr467:
                                             _loc13_ = 0;
                                             if(!_loc16_)
                                             {
                                                for(_loc12_ in _loc4_)
                                                {
                                                   if(!_loc16_)
                                                   {
                                                      delete _loc4_[_loc12_];
                                                   }
                                                }
                                             }
                                             if(_loc17_)
                                             {
                                                _loc5_.length = 0;
                                                if(_loc17_ || param2)
                                                {
                                                   §§goto(addr503);
                                                }
                                                §§goto(addr529);
                                             }
                                             §§goto(addr516);
                                          }
                                          addr503:
                                          this.§_-qw§[this.§_-OK§] = _loc4_;
                                          if(!(_loc16_ && param1))
                                          {
                                             addr516:
                                             this.§_-YV§[this.§_-OK§] = _loc5_;
                                             if(_loc17_ || this)
                                             {
                                                _loc14_ = (_loc13_ = this).§_-OK§ + 1;
                                                addr529:
                                                if(_loc17_)
                                                {
                                                   _loc13_.§_-OK§ = _loc14_;
                                                }
                                             }
                                          }
                                          return _loc11_;
                                       }
                                    }
                                    §§goto(addr438);
                                 }
                                 §§goto(addr266);
                              }
                              §§goto(addr429);
                           }
                           else
                           {
                              _loc6_ = §§nextname(_loc13_,_loc14_);
                              if((_loc7_ = param3[_loc6_]) is Number)
                              {
                                 if(!(_loc16_ && this))
                                 {
                                    if(_loc8_ = /^\$/.test(_loc6_))
                                    {
                                       if(_loc17_)
                                       {
                                          addr156:
                                          §§push(_loc6_);
                                          if(_loc17_ || this)
                                          {
                                             §§push(§§pop().substr(1));
                                          }
                                          _loc6_ = §§pop();
                                          if(_loc17_)
                                          {
                                             addr170:
                                             §§push(this.§_-aT§(param1,_loc6_,_loc4_,_loc5_));
                                             if(_loc16_ && param2)
                                             {
                                                addr196:
                                                _loc9_ = §§pop();
                                                _loc10_ = this.§_-6D§(_loc9_.getObject(_loc6_),param2 != null ? param2[_loc6_] : null,_loc7_);
                                                if(!(_loc16_ && param2))
                                                {
                                                   _loc5_.push(new §_-YG§(_loc9_,_loc10_,_loc6_));
                                                }
                                                continue;
                                             }
                                             §§pop().setSourceValue(_loc6_,Number(_loc7_),_loc8_);
                                          }
                                          continue;
                                       }
                                    }
                                    §§goto(addr170);
                                 }
                                 §§goto(addr156);
                              }
                              else
                              {
                                 §§push(this.§_-aT§(param1,_loc6_,_loc4_,_loc5_));
                              }
                              §§goto(addr196);
                           }
                        }
                        break;
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           _loc6_ = §§nextname(_loc13_,_loc14_);
                           §§goto(addr285);
                        }
                        §§goto(addr427);
                     }
                  }
                  §§goto(addr252);
               }
               §§goto(addr111);
            }
            else
            {
               _loc4_ = new Dictionary();
               _loc5_ = new Vector.<§_-S1§>();
            }
            §§goto(addr108);
         }
         §§goto(addr58);
      }
   }
}
