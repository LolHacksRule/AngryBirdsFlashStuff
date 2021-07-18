package §8=§
{
   import §2p§.§1>§;
   import §<!3§.§"`§;
   import flash.utils.Dictionary;
   
   public class §[!H§
   {
       
      
      private var §-"%§:Vector.<Dictionary>;
      
      private var §&!i§:§"`§;
      
      private var §`!i§:uint = 0;
      
      private var §]_§:Vector.<Vector.<§+?§>>;
      
      public function §[!H§(param1:§"`§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§-"%§ = new Vector.<Dictionary>();
            while(true)
            {
               this.§]_§ = new Vector.<Vector.<§+?§>>();
               while(true)
               {
                  super();
                  §§goto(addr63);
               }
            }
         }
         addr63:
         while(true)
         {
            this.§&!i§ = param1;
            if(_loc3_)
            {
               if(!(_loc2_ && param1))
               {
                  continue loop0;
               }
               continue loop1;
            }
         }
         addr59:
      }
      
      public function §+9§(param1:Object, param2:String, param3:Dictionary, param4:Vector.<§+?§>) : §+?§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:§+?§ = null;
         var _loc5_:Class;
         if((_loc5_ = this.§&!i§.§@"3§(param1.constructor,param2)) != null)
         {
            if((_loc6_ = param3[_loc5_] as §+?§) == null)
            {
               if(!_loc7_)
               {
                  (_loc6_ = new _loc5_()).target = param1;
                  if(!_loc7_)
                  {
                     param3[_loc5_] = _loc6_;
                     if(_loc7_ && param2)
                     {
                     }
                     §§goto(addr91);
                  }
                  if(param4 != null)
                  {
                     if(!_loc7_)
                     {
                        param4.push(_loc6_);
                     }
                  }
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
      
      public function §`!I§(param1:Object, param2:Object, param3:Object, param4:§1>§) : §36§
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc8_:* = null;
         var _loc9_:Object = null;
         var _loc10_:Boolean = false;
         var _loc11_:§36§ = null;
         var _loc12_:§36§ = null;
         var _loc5_:Dictionary = new Dictionary();
         var _loc6_:Vector.<§36§> = new Vector.<§36§>();
         var _loc7_:§4"-§;
         (_loc7_ = new §4"-§()).target = param1;
         if(!(_loc17_ && param2))
         {
            _loc7_.§!!T§ = param4;
            if(!_loc17_)
            {
               _loc6_.push(_loc7_);
               if(!(_loc17_ && this))
               {
                  §§goto(addr69);
               }
            }
            §§goto(addr72);
         }
         addr69:
         if(param3 != null)
         {
            addr72:
            var _loc13_:int = 0;
            var _loc14_:* = param3;
            while(true)
            {
               §§push(§§hasnext(_loc14_,_loc13_));
               if(!_loc17_)
               {
                  if(!§§pop())
                  {
                     if(_loc16_)
                     {
                        if(!(_loc17_ && this))
                        {
                           if(_loc16_ || param1)
                           {
                              §§goto(addr206);
                           }
                           §§goto(addr369);
                        }
                        §§goto(addr215);
                     }
                     §§goto(addr334);
                  }
                  else
                  {
                     _loc8_ = §§nextname(_loc13_,_loc14_);
                     if((_loc9_ = param3[_loc8_]) is Number)
                     {
                        if(_loc16_)
                        {
                           if(_loc10_ = /^\$/.test(_loc8_))
                           {
                              if(_loc16_)
                              {
                                 addr112:
                                 §§push(_loc8_);
                                 if(_loc16_ || this)
                                 {
                                    §§push(§§pop().substr(1));
                                 }
                                 _loc8_ = §§pop();
                                 if(!_loc17_)
                                 {
                                    addr126:
                                    _loc7_.setSourceValue(_loc8_,Number(_loc9_),_loc10_);
                                    if(_loc17_)
                                    {
                                       _loc11_ = this.§`!I§(_loc7_.getObject(_loc8_),param2 != null ? param2[_loc8_] : null,_loc9_,param4);
                                       addr140:
                                       if(!_loc17_)
                                       {
                                          _loc6_.push(new §=!b§(_loc7_,_loc11_,_loc8_));
                                          if(_loc16_)
                                          {
                                             _loc5_[_loc8_] = true;
                                          }
                                       }
                                       continue;
                                    }
                                 }
                                 §§goto(addr140);
                              }
                              continue;
                           }
                           §§goto(addr126);
                        }
                        §§goto(addr112);
                     }
                     else if(_loc5_[_loc8_])
                     {
                        continue;
                     }
                     §§goto(addr140);
                  }
               }
               break;
            }
            while(true)
            {
               if(§§pop())
               {
                  _loc8_ = §§nextname(_loc13_,_loc14_);
                  §§goto(addr232);
               }
               §§goto(addr332);
            }
         }
         addr206:
         if(param2 != null)
         {
            if(!_loc17_)
            {
               _loc13_ = 0;
               if(_loc16_)
               {
                  addr215:
                  _loc14_ = param2;
                  if(!(_loc17_ && param1))
                  {
                     while(true)
                     {
                        §§push(§§hasnext(_loc14_,_loc13_));
                        break loop0;
                     }
                     addr332:
                     if(_loc16_ || this)
                     {
                        §§goto(addr343);
                     }
                     §§goto(addr369);
                     addr332:
                     addr334:
                  }
                  while(true)
                  {
                     if((_loc9_ = param2[_loc8_]) is Number)
                     {
                        if(!_loc17_)
                        {
                           if(_loc10_ = /^\$/.test(_loc8_))
                           {
                              if(_loc16_ || this)
                              {
                                 §§push(_loc8_);
                                 if(!_loc17_)
                                 {
                                    §§push(§§pop().substr(1));
                                 }
                                 _loc8_ = §§pop();
                                 if(_loc16_)
                                 {
                                    addr274:
                                    _loc7_.setDestinationValue(_loc8_,Number(_loc9_),_loc10_);
                                    if(_loc17_ && this)
                                    {
                                       _loc11_ = this.§`!I§(_loc7_.getObject(_loc8_),null,param3 != null ? param3[_loc8_] : null,param4);
                                       addr293:
                                       if(!(_loc17_ && param2))
                                       {
                                          _loc6_.push(new §=!b§(_loc7_,_loc11_,_loc8_));
                                          if(_loc16_)
                                          {
                                             _loc5_[_loc8_] = true;
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr332);
                              }
                              §§goto(addr293);
                           }
                        }
                        §§goto(addr274);
                     }
                     else if(!_loc5_[_loc8_])
                     {
                        §§goto(addr293);
                     }
                     §§goto(addr332);
                  }
                  addr232:
               }
               §§goto(addr332);
            }
         }
         addr343:
         if(_loc6_.length == 1)
         {
            if(_loc16_)
            {
               _loc12_ = _loc6_[0];
            }
            else
            {
               addr369:
               _loc12_ = new §<!@§(param1,_loc6_);
            }
         }
         else if(_loc6_.length > 1)
         {
            §§goto(addr369);
         }
         return _loc12_;
      }
      
      public function §6N§(param1:Object, param2:Object, param3:Object, param4:Object) : §+?§
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         var _loc8_:* = null;
         var _loc9_:Object = null;
         var _loc10_:Boolean = false;
         var _loc11_:Array = null;
         var _loc12_:* = uint(0);
         var _loc13_:* = uint(0);
         var _loc14_:§+?§ = null;
         var _loc15_:§+?§ = null;
         var _loc5_:Dictionary = new Dictionary();
         var _loc6_:Vector.<§+?§> = new Vector.<§+?§>();
         var _loc7_:§`L§;
         (_loc7_ = new §`L§()).target = param1;
         if(!_loc19_)
         {
            _loc6_.push(_loc7_);
            if(_loc20_)
            {
               addr64:
               if(param3 != null)
               {
                  addr67:
                  var _loc16_:* = 0;
                  var _loc17_:* = param3;
                  loop0:
                  while(true)
                  {
                     §§push(§§hasnext(_loc17_,_loc16_));
                     if(_loc20_)
                     {
                        if(!§§pop())
                        {
                           if(_loc20_ || this)
                           {
                              if(!_loc19_)
                              {
                                 if(_loc20_)
                                 {
                                    addr200:
                                    if(param2 != null)
                                    {
                                       if(_loc20_ || param3)
                                       {
                                          §§push(0);
                                          if(!_loc19_)
                                          {
                                             _loc16_ = §§pop();
                                             if(!(_loc19_ && this))
                                             {
                                                _loc17_ = param2;
                                                if(_loc20_ || param2)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§§hasnext(_loc17_,_loc16_));
                                                      if(_loc20_ || param3)
                                                      {
                                                         break loop0;
                                                      }
                                                      break;
                                                   }
                                                   loop2:
                                                   for(; §§pop(); while(true)
                                                   {
                                                      continue loop2;
                                                   })
                                                   {
                                                      _loc8_ = §§nextname(_loc16_,_loc17_);
                                                      while(true)
                                                      {
                                                         §§push((_loc9_ = param4[_loc8_]) is Number);
                                                         if(_loc20_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(_loc20_ || param3)
                                                               {
                                                                  _loc9_ = [_loc9_];
                                                                  addr420:
                                                                  addr423:
                                                                  if(_loc9_ is Array)
                                                                  {
                                                                     if(_loc20_ || param3)
                                                                     {
                                                                        if(_loc10_ = /^\$/.test(_loc8_))
                                                                        {
                                                                           if(!_loc19_)
                                                                           {
                                                                              §§push(_loc8_);
                                                                              if(!_loc19_)
                                                                              {
                                                                                 §§push(§§pop().substr(1));
                                                                              }
                                                                              _loc8_ = §§pop();
                                                                              if(!_loc19_)
                                                                              {
                                                                                 addr454:
                                                                                 §§push(uint((_loc11_ = _loc9_ as Array).length));
                                                                                 if(_loc20_ || param3)
                                                                                 {
                                                                                    _loc12_ = §§pop();
                                                                                    if(!(_loc19_ && param3))
                                                                                    {
                                                                                       §§push(uint(0));
                                                                                       if(_loc20_)
                                                                                       {
                                                                                          _loc13_ = §§pop();
                                                                                          addr516:
                                                                                          while(true)
                                                                                          {
                                                                                             addr498:
                                                                                             while(true)
                                                                                             {
                                                                                                addr517:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc13_);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr516:
                                                                                       }
                                                                                       loop3:
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop() < _loc12_)
                                                                                          {
                                                                                             _loc7_.§6!!§(_loc8_,_loc11_[_loc13_],_loc10_);
                                                                                             loop4:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc19_)
                                                                                                {
                                                                                                   §§push(_loc13_);
                                                                                                   if(!(_loc19_ && param2))
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(uint(§§pop() + 1));
                                                                                                         if(_loc19_)
                                                                                                         {
                                                                                                            continue loop3;
                                                                                                         }
                                                                                                      }
                                                                                                      addr487:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc13_ = §§pop();
                                                                                                      if(!_loc19_)
                                                                                                      {
                                                                                                         if(!_loc20_)
                                                                                                         {
                                                                                                            continue loop4;
                                                                                                         }
                                                                                                         if(false)
                                                                                                         {
                                                                                                            break loop4;
                                                                                                         }
                                                                                                         §§goto(addr517);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr516);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr498);
                                                                                          }
                                                                                          continue loop2;
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr516);
                                                                                 }
                                                                                 §§goto(addr487);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr454);
                                                                     }
                                                                  }
                                                                  else if(_loc5_[_loc8_])
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  _loc14_ = this.§6N§(_loc7_.getObject(_loc8_),param2 != null ? param2[_loc8_] : null,param3 != null ? param3[_loc8_] : null,_loc9_);
                                                                  if(!(_loc19_ && param3))
                                                                  {
                                                                     _loc6_.push(new §2@§(_loc7_,_loc14_,_loc8_));
                                                                     if(!(_loc20_ || param2))
                                                                     {
                                                                        continue loop2;
                                                                     }
                                                                  }
                                                                  _loc5_[_loc8_] = true;
                                                                  continue loop2;
                                                               }
                                                               §§goto(addr454);
                                                            }
                                                            §§goto(addr420);
                                                         }
                                                         §§goto(addr423);
                                                      }
                                                   }
                                                   addr352:
                                                   if(!(_loc19_ && param1))
                                                   {
                                                      §§goto(addr589);
                                                   }
                                                   §§goto(addr595);
                                                   addr352:
                                                   addr580:
                                                   addr579:
                                                }
                                                while(true)
                                                {
                                                   if((_loc9_ = param2[_loc8_]) is Number)
                                                   {
                                                      if(!_loc19_)
                                                      {
                                                         if(_loc10_ = /^\$/.test(_loc8_))
                                                         {
                                                            if(!_loc19_)
                                                            {
                                                               §§push(_loc8_);
                                                               if(_loc20_)
                                                               {
                                                                  §§push(§§pop().substr(1));
                                                               }
                                                               _loc8_ = §§pop();
                                                               if(_loc19_ && param2)
                                                               {
                                                               }
                                                               addr294:
                                                               §§goto(addr352);
                                                            }
                                                         }
                                                         _loc7_.setDestinationValue(_loc8_,Number(_loc9_),_loc10_);
                                                         if(!(_loc20_ || param2))
                                                         {
                                                            _loc14_ = this.§6N§(_loc7_.getObject(_loc8_),null,param3 != null ? param3[_loc8_] : null,param4 != null ? param4[_loc8_] : null);
                                                            addr299:
                                                            if(!_loc19_)
                                                            {
                                                               _loc6_.push(new §2@§(_loc7_,_loc14_,_loc8_));
                                                               if(_loc20_)
                                                               {
                                                                  _loc5_[_loc8_] = true;
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr352);
                                                      }
                                                      §§goto(addr294);
                                                   }
                                                   else if(!_loc5_[_loc8_])
                                                   {
                                                      §§goto(addr299);
                                                   }
                                                   §§goto(addr352);
                                                }
                                                addr238:
                                             }
                                             §§goto(addr352);
                                          }
                                          addr380:
                                          _loc16_ = §§pop();
                                          if(_loc20_)
                                          {
                                             _loc17_ = param4;
                                             if(!_loc19_)
                                             {
                                                §§goto(addr578);
                                             }
                                             §§goto(addr395);
                                          }
                                          §§goto(addr352);
                                       }
                                       §§goto(addr595);
                                    }
                                    addr369:
                                    if(param4 != null)
                                    {
                                       if(!(_loc19_ && param1))
                                       {
                                          §§goto(addr380);
                                          §§push(0);
                                       }
                                    }
                                 }
                                 addr589:
                                 if(_loc6_.length == 1)
                                 {
                                    if(!_loc19_)
                                    {
                                       addr595:
                                       _loc15_ = _loc6_[0];
                                    }
                                    else
                                    {
                                       addr615:
                                       _loc15_ = new §^C§(param1,_loc6_);
                                    }
                                 }
                                 else if(_loc6_.length > 1)
                                 {
                                    §§goto(addr615);
                                 }
                                 return _loc15_;
                              }
                              addr366:
                              if(_loc20_)
                              {
                                 §§goto(addr369);
                              }
                              §§goto(addr615);
                           }
                           addr363:
                           if(!_loc19_)
                           {
                              §§goto(addr366);
                           }
                           §§goto(addr352);
                        }
                        else
                        {
                           _loc8_ = §§nextname(_loc16_,_loc17_);
                           if((_loc9_ = param3[_loc8_]) is Number)
                           {
                              if(_loc20_)
                              {
                                 if(_loc10_ = /^\$/.test(_loc8_))
                                 {
                                    if(!_loc19_)
                                    {
                                       §§push(_loc8_);
                                       if(_loc20_ || param2)
                                       {
                                          §§push(§§pop().substr(1));
                                       }
                                       _loc8_ = §§pop();
                                       if(_loc19_ && param1)
                                       {
                                       }
                                       _loc14_ = this.§6N§(_loc7_.getObject(_loc8_),param2 != null ? param2[_loc8_] : null,_loc9_,param4 != null ? param4[_loc8_] : null);
                                       addr140:
                                       if(_loc20_)
                                       {
                                          _loc6_.push(new §2@§(_loc7_,_loc14_,_loc8_));
                                          if(_loc19_)
                                          {
                                             continue;
                                          }
                                       }
                                       _loc5_[_loc8_] = true;
                                       continue;
                                    }
                                    §§goto(addr140);
                                 }
                                 _loc7_.setSourceValue(_loc8_,Number(_loc9_),_loc10_);
                                 if(!_loc19_)
                                 {
                                    continue;
                                 }
                              }
                           }
                           else if(_loc5_[_loc8_])
                           {
                              continue;
                           }
                           §§goto(addr140);
                        }
                     }
                     break;
                  }
                  while(true)
                  {
                     if(!§§pop())
                     {
                        if(_loc20_)
                        {
                           §§goto(addr363);
                        }
                        §§goto(addr580);
                     }
                     else
                     {
                        _loc8_ = §§nextname(_loc16_,_loc17_);
                        §§goto(addr238);
                     }
                  }
               }
               §§goto(addr200);
            }
            §§goto(addr67);
         }
         §§goto(addr64);
      }
      
      public function § !I§(param1:Object, param2:Object, param3:Object) : §+?§
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc4_:Dictionary = null;
         var _loc5_:Vector.<§+?§> = null;
         var _loc6_:* = null;
         var _loc7_:Object = null;
         var _loc8_:Boolean = false;
         var _loc9_:§+?§ = null;
         var _loc10_:§+?§ = null;
         var _loc11_:§+?§ = null;
         var _loc12_:* = undefined;
         if(_loc17_ || this)
         {
            if(this.§`!i§ > 0)
            {
               if(!(_loc16_ && param2))
               {
                  addr61:
                  var _loc13_:*;
                  var _loc14_:* = (_loc13_ = this).§`!i§ - 1;
                  if(!(_loc16_ && param2))
                  {
                     _loc13_.§`!i§ = _loc14_;
                  }
               }
               _loc4_ = this.§-"%§[this.§`!i§];
               _loc5_ = this.§]_§[this.§`!i§];
               if(_loc17_ || this)
               {
                  addr111:
                  if(param3 != null)
                  {
                     addr114:
                     _loc13_ = 0;
                     _loc14_ = param3;
                     loop0:
                     while(true)
                     {
                        §§push(§§hasnext(_loc14_,_loc13_));
                        if(!(_loc16_ && this))
                        {
                           if(!§§pop())
                           {
                              if(_loc17_)
                              {
                                 if(!_loc16_)
                                 {
                                    if(!_loc16_)
                                    {
                                       addr250:
                                       if(param2 != null)
                                       {
                                          if(!_loc16_)
                                          {
                                             _loc13_ = 0;
                                             if(!(_loc16_ && this))
                                             {
                                                _loc14_ = param2;
                                                if(!(_loc16_ && param3))
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§§hasnext(_loc14_,_loc13_));
                                                      break loop0;
                                                   }
                                                   addr438:
                                                   if(!(_loc16_ && param3))
                                                   {
                                                      §§goto(addr449);
                                                   }
                                                   §§goto(addr472);
                                                   addr438:
                                                   addr440:
                                                }
                                                while(true)
                                                {
                                                   §§push((_loc7_ = param2[_loc6_]) is Number);
                                                   if(_loc17_ || param3)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc17_ || param3)
                                                         {
                                                            if(_loc8_ = /^\$/.test(_loc6_))
                                                            {
                                                               if(_loc17_)
                                                               {
                                                                  §§push(_loc6_);
                                                                  if(!(_loc16_ && this))
                                                                  {
                                                                     §§push(§§pop().substr(1));
                                                                     if(!_loc16_)
                                                                     {
                                                                        _loc6_ = §§pop();
                                                                        if(_loc17_ || param1)
                                                                        {
                                                                           addr352:
                                                                           §§push(this.§+9§(param1,_loc6_,_loc4_,_loc5_));
                                                                           if(!_loc16_)
                                                                           {
                                                                              §§pop().setDestinationValue(_loc6_,Number(_loc7_),_loc8_);
                                                                              if(!_loc16_)
                                                                              {
                                                                                 addr368:
                                                                                 §§goto(addr438);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr398:
                                                                                 §§push(this.§+9§(param1,_loc6_,_loc4_,_loc5_));
                                                                              }
                                                                              §§goto(addr438);
                                                                           }
                                                                           _loc9_ = §§pop();
                                                                           _loc10_ = this.§ !I§(_loc9_.getObject(_loc6_),_loc7_,param3 != null ? param3[_loc6_] : null);
                                                                           if(_loc17_ || param3)
                                                                           {
                                                                              _loc5_.push(new §2@§(_loc9_,_loc10_,_loc6_));
                                                                           }
                                                                           §§goto(addr438);
                                                                        }
                                                                        §§goto(addr368);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr395:
                                                                        if(!(§§pop() in param3))
                                                                        {
                                                                           §§goto(addr398);
                                                                        }
                                                                     }
                                                                     §§goto(addr438);
                                                                  }
                                                                  §§goto(addr395);
                                                               }
                                                               §§goto(addr398);
                                                            }
                                                            §§goto(addr352);
                                                         }
                                                         §§goto(addr398);
                                                      }
                                                      else
                                                      {
                                                         §§push(param3 == null);
                                                         if(!_loc16_)
                                                         {
                                                            §§push(!§§pop());
                                                            if(_loc17_ || param2)
                                                            {
                                                               addr382:
                                                               if(§§pop())
                                                               {
                                                                  if(_loc17_ || param1)
                                                                  {
                                                                     §§pop();
                                                                     if(_loc17_)
                                                                     {
                                                                        §§goto(addr395);
                                                                        §§push(_loc6_);
                                                                     }
                                                                     §§goto(addr398);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr382);
                                                      }
                                                   }
                                                   §§goto(addr382);
                                                }
                                                addr291:
                                             }
                                             §§goto(addr438);
                                          }
                                          §§goto(addr472);
                                       }
                                    }
                                    addr449:
                                    if(_loc5_.length == 1)
                                    {
                                       if(_loc17_ || param3)
                                       {
                                          _loc11_ = _loc5_[0];
                                          if(!_loc16_)
                                          {
                                             §§goto(addr478);
                                          }
                                          §§goto(addr531);
                                       }
                                       else
                                       {
                                          addr472:
                                          _loc11_ = new §^C§(param1,_loc5_);
                                       }
                                    }
                                    else if(_loc5_.length > 1)
                                    {
                                       §§goto(addr472);
                                    }
                                    addr478:
                                    _loc13_ = 0;
                                    if(!(_loc16_ && param2))
                                    {
                                       for(_loc12_ in _loc4_)
                                       {
                                          if(_loc17_ || this)
                                          {
                                             delete _loc4_[_loc12_];
                                          }
                                       }
                                    }
                                    if(_loc17_)
                                    {
                                       _loc5_.length = 0;
                                       loop4:
                                       while(true)
                                       {
                                          addr533:
                                          while(true)
                                          {
                                             this.§-"%§[this.§`!i§] = _loc4_;
                                             addr540:
                                             while(_loc17_)
                                             {
                                             }
                                             continue loop4;
                                          }
                                       }
                                    }
                                    loop7:
                                    while(true)
                                    {
                                       this.§]_§[this.§`!i§] = _loc5_;
                                       if(_loc17_ || param1)
                                       {
                                          if(_loc17_)
                                          {
                                             while(true)
                                             {
                                                if(true)
                                                {
                                                   _loc14_ = (_loc13_ = this).§`!i§ + 1;
                                                   if(!_loc16_)
                                                   {
                                                      _loc13_.§`!i§ = _loc14_;
                                                   }
                                                   break loop7;
                                                }
                                                §§goto(addr533);
                                             }
                                             addr531:
                                          }
                                          §§goto(addr540);
                                       }
                                       break;
                                    }
                                    return _loc11_;
                                 }
                                 §§goto(addr438);
                              }
                              §§goto(addr440);
                           }
                           else
                           {
                              _loc6_ = §§nextname(_loc13_,_loc14_);
                              if((_loc7_ = param3[_loc6_]) is Number)
                              {
                                 if(!(_loc16_ && param1))
                                 {
                                    if(_loc8_ = /^\$/.test(_loc6_))
                                    {
                                       if(!(_loc16_ && param2))
                                       {
                                          §§push(_loc6_);
                                          if(!(_loc16_ && param3))
                                          {
                                             §§push(§§pop().substr(1));
                                          }
                                          _loc6_ = §§pop();
                                          if(_loc16_)
                                          {
                                          }
                                          addr192:
                                          continue;
                                       }
                                       §§goto(addr192);
                                    }
                                    §§push(this.§+9§(param1,_loc6_,_loc4_,_loc5_));
                                    if(_loc16_)
                                    {
                                       addr199:
                                       _loc9_ = §§pop();
                                       _loc10_ = this.§ !I§(_loc9_.getObject(_loc6_),param2 != null ? param2[_loc6_] : null,_loc7_);
                                       if(_loc17_ || param2)
                                       {
                                          _loc5_.push(new §2@§(_loc9_,_loc10_,_loc6_));
                                       }
                                       continue;
                                    }
                                    §§pop().setSourceValue(_loc6_,Number(_loc7_),_loc8_);
                                 }
                                 §§goto(addr192);
                              }
                              else
                              {
                                 §§push(this.§+9§(param1,_loc6_,_loc4_,_loc5_));
                              }
                              §§goto(addr199);
                           }
                        }
                        break;
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           _loc6_ = §§nextname(_loc13_,_loc14_);
                           §§goto(addr291);
                        }
                        §§goto(addr438);
                     }
                  }
                  §§goto(addr250);
               }
               §§goto(addr114);
            }
            else
            {
               _loc4_ = new Dictionary();
               _loc5_ = new Vector.<§+?§>();
            }
            §§goto(addr111);
         }
         §§goto(addr61);
      }
   }
}
