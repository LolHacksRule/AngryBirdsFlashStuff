package §3§
{
   import §4!r§.§[!m§;
   import §]s§.§&[§;
   import flash.utils.Dictionary;
   
   public class §3!T§
   {
       
      
      private var §1!-§:Vector.<Dictionary>;
      
      private var §!'§:§&[§;
      
      private var §2!?§:uint = 0;
      
      private var §8L§:Vector.<Vector.<§ null§>>;
      
      public function §3!T§(param1:§&[§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§1!-§ = new Vector.<Dictionary>();
            if(!_loc3_)
            {
               addr36:
               this.§8L§ = new Vector.<Vector.<§ null§>>();
               if(_loc2_)
               {
                  super();
                  if(_loc2_ || _loc2_)
                  {
                     addr55:
                     this.§!'§ = param1;
                  }
                  return;
               }
            }
            §§goto(addr55);
         }
         §§goto(addr36);
      }
      
      public function §2X§(param1:Object, param2:String, param3:Dictionary, param4:Vector.<§ null§>) : § null§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:§ null§ = null;
         var _loc5_:Class;
         if((_loc5_ = this.§!'§.§7!<§(param1.constructor,param2)) != null)
         {
            if((_loc6_ = param3[_loc5_] as § null§) == null)
            {
               if(_loc7_)
               {
                  (_loc6_ = new _loc5_()).target = param1;
                  if(!(_loc8_ && this))
                  {
                     param3[_loc5_] = _loc6_;
                     if(_loc8_ && param3)
                     {
                     }
                     §§goto(addr100);
                  }
                  if(param4 != null)
                  {
                     if(!(_loc8_ && param3))
                     {
                        param4.push(_loc6_);
                     }
                  }
               }
               else
               {
                  §§goto(addr102);
               }
            }
            addr100:
            return _loc6_;
         }
         addr102:
         return null;
      }
      
      public function §!!U§(param1:Object, param2:Object, param3:Object, param4:§[!m§) : §`A§
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc8_:* = null;
         var _loc9_:Object = null;
         var _loc10_:Boolean = false;
         var _loc11_:§`A§ = null;
         var _loc12_:§`A§ = null;
         var _loc5_:Dictionary = new Dictionary();
         var _loc6_:Vector.<§`A§> = new Vector.<§`A§>();
         var _loc7_:§<!7§;
         (_loc7_ = new §<!7§()).target = param1;
         if(!_loc17_)
         {
            _loc7_.§-;§ = param4;
            if(!(_loc17_ && param3))
            {
               addr59:
               _loc6_.push(_loc7_);
               if(!_loc17_)
               {
                  §§goto(addr64);
               }
               §§goto(addr67);
            }
            addr64:
            if(param3 != null)
            {
               addr67:
               var _loc13_:int = 0;
               var _loc14_:* = param3;
               while(true)
               {
                  §§push(§§hasnext(_loc14_,_loc13_));
                  if(!(_loc17_ && this))
                  {
                     if(!§§pop())
                     {
                        if(_loc16_ || this)
                        {
                           if(!_loc17_)
                           {
                              if(!_loc17_)
                              {
                                 §§goto(addr221);
                              }
                              §§goto(addr384);
                           }
                           §§goto(addr375);
                        }
                        addr374:
                        §§goto(addr375);
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
                                 if(_loc16_ || param1)
                                 {
                                    §§push(_loc8_);
                                    if(!_loc17_)
                                    {
                                       §§push(§§pop().substr(1));
                                    }
                                    _loc8_ = §§pop();
                                    if(_loc16_ || this)
                                    {
                                    }
                                    _loc11_ = this.§!!U§(_loc7_.getObject(_loc8_),param2 != null ? param2[_loc8_] : null,_loc9_,param4);
                                    addr150:
                                    if(!(_loc17_ && param1))
                                    {
                                       _loc6_.push(new §8!A§(_loc7_,_loc11_,_loc8_));
                                       if(_loc17_)
                                       {
                                          continue;
                                       }
                                    }
                                    _loc5_[_loc8_] = true;
                                    continue;
                                 }
                              }
                           }
                           _loc7_.setSourceValue(_loc8_,Number(_loc9_),_loc10_);
                           if(_loc16_ || this)
                           {
                              continue;
                           }
                        }
                        else if(_loc5_[_loc8_])
                        {
                           continue;
                        }
                        §§goto(addr150);
                     }
                  }
                  break;
               }
               while(§§pop())
               {
                  _loc8_ = §§nextname(_loc13_,_loc14_);
                  §§goto(addr247);
                  §§goto(addr372);
               }
               §§goto(addr374);
            }
            addr221:
            if(param2 != null)
            {
               if(_loc16_)
               {
                  _loc13_ = 0;
                  if(!_loc17_)
                  {
                     _loc14_ = param2;
                     if(!(_loc17_ && param1))
                     {
                        addr372:
                        while(true)
                        {
                           §§push(§§hasnext(_loc14_,_loc13_));
                           break loop0;
                        }
                        addr372:
                     }
                     while(true)
                     {
                        if((_loc9_ = param2[_loc8_]) is Number)
                        {
                           if(_loc16_ || param2)
                           {
                              if(_loc10_ = /^\$/.test(_loc8_))
                              {
                                 if(_loc16_ || param1)
                                 {
                                    addr285:
                                    §§push(_loc8_);
                                    if(!(_loc17_ && this))
                                    {
                                       §§push(§§pop().substr(1));
                                    }
                                    _loc8_ = §§pop();
                                    if(!_loc17_)
                                    {
                                       addr299:
                                       _loc7_.setDestinationValue(_loc8_,Number(_loc9_),_loc10_);
                                       if(_loc16_ || param2)
                                       {
                                       }
                                       §§goto(addr372);
                                    }
                                    _loc11_ = this.§!!U§(_loc7_.getObject(_loc8_),null,param3 != null ? param3[_loc8_] : null,param4);
                                    addr318:
                                    if(!(_loc17_ && param1))
                                    {
                                       _loc6_.push(new §8!A§(_loc7_,_loc11_,_loc8_));
                                       if(_loc17_ && param1)
                                       {
                                       }
                                       §§goto(addr372);
                                    }
                                    _loc5_[_loc8_] = true;
                                    §§goto(addr372);
                                 }
                              }
                              §§goto(addr299);
                           }
                           §§goto(addr285);
                        }
                        else if(!_loc5_[_loc8_])
                        {
                           §§goto(addr318);
                        }
                        §§goto(addr372);
                     }
                     addr247:
                  }
                  addr375:
                  if(!_loc17_)
                  {
                     §§goto(addr378);
                  }
               }
               §§goto(addr394);
            }
            addr378:
            if(_loc6_.length == 1)
            {
               if(_loc16_)
               {
                  addr384:
                  _loc12_ = _loc6_[0];
               }
               else
               {
                  addr394:
                  _loc12_ = new § R§(param1,_loc6_);
               }
            }
            else if(_loc6_.length > 1)
            {
               §§goto(addr394);
            }
            return _loc12_;
         }
         §§goto(addr59);
      }
      
      public function §^`§(param1:Object, param2:Object, param3:Object, param4:Object) : § null§
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         var _loc8_:* = null;
         var _loc9_:Object = null;
         var _loc10_:Boolean = false;
         var _loc11_:Array = null;
         var _loc12_:* = uint(0);
         var _loc13_:* = uint(0);
         var _loc14_:§ null§ = null;
         var _loc15_:§ null§ = null;
         var _loc5_:Dictionary = new Dictionary();
         var _loc6_:Vector.<§ null§> = new Vector.<§ null§>();
         var _loc7_:§0V§;
         (_loc7_ = new §0V§()).target = param1;
         if(!(_loc19_ && param2))
         {
            _loc6_.push(_loc7_);
            if(!_loc19_)
            {
               if(param3 != null)
               {
                  addr72:
                  var _loc16_:* = 0;
                  var _loc17_:* = param3;
                  loop10:
                  while(true)
                  {
                     §§push(§§hasnext(_loc17_,_loc16_));
                     if(!(_loc19_ && param2))
                     {
                        if(!§§pop())
                        {
                           if(!(_loc19_ && param2))
                           {
                              if(!(_loc19_ && param2))
                              {
                                 if(!(_loc19_ && param1))
                                 {
                                    addr230:
                                    if(param2 != null)
                                    {
                                       if(_loc20_)
                                       {
                                          addr235:
                                          §§push(0);
                                          if(_loc20_)
                                          {
                                             _loc16_ = §§pop();
                                             if(_loc20_)
                                             {
                                                _loc17_ = param2;
                                                if(!_loc19_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§§hasnext(_loc17_,_loc16_));
                                                      if(!(_loc19_ && param1))
                                                      {
                                                         break loop10;
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
                                                         if(_loc20_ || this)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!_loc19_)
                                                               {
                                                                  _loc9_ = [_loc9_];
                                                                  addr438:
                                                                  if(_loc9_ is Array)
                                                                  {
                                                                     if(_loc20_ || param2)
                                                                     {
                                                                        if(_loc10_ = /^\$/.test(_loc8_))
                                                                        {
                                                                           if(_loc20_)
                                                                           {
                                                                              addr463:
                                                                              §§push(_loc8_);
                                                                              if(_loc20_)
                                                                              {
                                                                                 §§push(§§pop().substr(1));
                                                                              }
                                                                              _loc8_ = §§pop();
                                                                              if(!(_loc20_ || param2))
                                                                              {
                                                                                 _loc14_ = this.§^`§(_loc7_.getObject(_loc8_),param2 != null ? param2[_loc8_] : null,param3 != null ? param3[_loc8_] : null,_loc9_);
                                                                                 addr551:
                                                                                 if(!(_loc19_ && param3))
                                                                                 {
                                                                                    _loc6_.push(new §[!H§(_loc7_,_loc14_,_loc8_));
                                                                                    if(_loc19_)
                                                                                    {
                                                                                       continue loop1;
                                                                                    }
                                                                                 }
                                                                                 _loc5_[_loc8_] = true;
                                                                                 continue loop1;
                                                                              }
                                                                           }
                                                                        }
                                                                        §§push(uint((_loc11_ = _loc9_ as Array).length));
                                                                        if(!(_loc19_ && param2))
                                                                        {
                                                                           _loc12_ = §§pop();
                                                                           if(_loc20_ || param3)
                                                                           {
                                                                              §§push(uint(0));
                                                                              if(_loc20_)
                                                                              {
                                                                                 _loc13_ = §§pop();
                                                                                 if(_loc20_ || param1)
                                                                                 {
                                                                                    loop4:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc13_);
                                                                                       loop5:
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop() < _loc12_)
                                                                                          {
                                                                                             _loc7_.§2!]§(_loc8_,_loc11_[_loc13_],_loc10_);
                                                                                             if(!_loc19_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc13_);
                                                                                                   if(!(_loc19_ && param1))
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(uint(§§pop() + 1));
                                                                                                         if(_loc19_)
                                                                                                         {
                                                                                                            continue loop5;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc13_ = §§pop();
                                                                                                            if(_loc19_ && param2)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            continue loop4;
                                                                                                         }
                                                                                                      }
                                                                                                      addr531:
                                                                                                   }
                                                                                                   §§goto(addr535);
                                                                                                }
                                                                                                addr523:
                                                                                             }
                                                                                          }
                                                                                          continue loop1;
                                                                                       }
                                                                                    }
                                                                                    addr543:
                                                                                 }
                                                                                 §§goto(addr523);
                                                                              }
                                                                              §§goto(addr535);
                                                                           }
                                                                           §§goto(addr543);
                                                                        }
                                                                        §§goto(addr531);
                                                                     }
                                                                     §§goto(addr463);
                                                                  }
                                                                  else if(_loc5_[_loc8_])
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  §§goto(addr551);
                                                               }
                                                               §§goto(addr463);
                                                            }
                                                         }
                                                         §§goto(addr438);
                                                      }
                                                   }
                                                   addr613:
                                                   if(_loc6_.length == 1)
                                                   {
                                                      if(_loc20_)
                                                      {
                                                         addr619:
                                                         _loc15_ = _loc6_[0];
                                                      }
                                                      else
                                                      {
                                                         addr629:
                                                         _loc15_ = new §#x§(param1,_loc6_);
                                                      }
                                                   }
                                                   else if(_loc6_.length > 1)
                                                   {
                                                      §§goto(addr629);
                                                   }
                                                   return _loc15_;
                                                   addr367:
                                                   addr612:
                                                   addr611:
                                                   addr610:
                                                }
                                                while(true)
                                                {
                                                   if((_loc9_ = param2[_loc8_]) is Number)
                                                   {
                                                      if(!(_loc19_ && this))
                                                      {
                                                         if(_loc10_ = /^\$/.test(_loc8_))
                                                         {
                                                            if(_loc20_)
                                                            {
                                                               §§push(_loc8_);
                                                               if(_loc20_ || param2)
                                                               {
                                                                  §§push(§§pop().substr(1));
                                                               }
                                                               _loc8_ = §§pop();
                                                               if(!_loc19_)
                                                               {
                                                                  _loc7_.setDestinationValue(_loc8_,Number(_loc9_),_loc10_);
                                                                  addr300:
                                                                  if(!_loc20_)
                                                                  {
                                                                  }
                                                                  §§goto(addr367);
                                                               }
                                                               _loc14_ = this.§^`§(_loc7_.getObject(_loc8_),null,param3 != null ? param3[_loc8_] : null,param4 != null ? param4[_loc8_] : null);
                                                               addr324:
                                                               if(_loc20_)
                                                               {
                                                                  _loc6_.push(new §[!H§(_loc7_,_loc14_,_loc8_));
                                                                  if(_loc20_)
                                                                  {
                                                                     _loc5_[_loc8_] = true;
                                                                  }
                                                               }
                                                               §§goto(addr367);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr300);
                                                   }
                                                   else if(!_loc5_[_loc8_])
                                                   {
                                                      §§goto(addr324);
                                                   }
                                                   §§goto(addr367);
                                                }
                                                addr253:
                                             }
                                             addr386:
                                             if(!(_loc19_ && param3))
                                             {
                                                addr394:
                                                if(param4 != null)
                                                {
                                                   addr398:
                                                   _loc16_ = 0;
                                                   if(!_loc19_)
                                                   {
                                                      _loc17_ = param4;
                                                      if(_loc20_)
                                                      {
                                                         §§goto(addr609);
                                                      }
                                                      §§goto(addr413);
                                                   }
                                                   §§goto(addr612);
                                                }
                                             }
                                             §§goto(addr613);
                                          }
                                          §§goto(addr398);
                                       }
                                       §§goto(addr619);
                                    }
                                    §§goto(addr394);
                                 }
                                 §§goto(addr235);
                              }
                              §§goto(addr386);
                           }
                           addr378:
                           if(_loc20_ || this)
                           {
                              §§goto(addr386);
                           }
                           §§goto(addr613);
                        }
                        else
                        {
                           _loc8_ = §§nextname(_loc16_,_loc17_);
                           if((_loc9_ = param3[_loc8_]) is Number)
                           {
                              if(!(_loc19_ && param2))
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
                                       if(_loc20_)
                                       {
                                          addr126:
                                          _loc7_.setSourceValue(_loc8_,Number(_loc9_),_loc10_);
                                          if(_loc19_ && this)
                                          {
                                             _loc14_ = this.§^`§(_loc7_.getObject(_loc8_),param2 != null ? param2[_loc8_] : null,_loc9_,param4 != null ? param4[_loc8_] : null);
                                             addr145:
                                             if(!(_loc19_ && param1))
                                             {
                                                _loc6_.push(new §[!H§(_loc7_,_loc14_,_loc8_));
                                                if(_loc20_ || param3)
                                                {
                                                   _loc5_[_loc8_] = true;
                                                }
                                             }
                                             continue;
                                          }
                                       }
                                       continue;
                                    }
                                    §§goto(addr145);
                                 }
                                 §§goto(addr126);
                              }
                           }
                           else if(_loc5_[_loc8_])
                           {
                              continue;
                           }
                           §§goto(addr145);
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
                           §§goto(addr378);
                        }
                        §§goto(addr611);
                     }
                     else
                     {
                        _loc8_ = §§nextname(_loc16_,_loc17_);
                        §§goto(addr253);
                     }
                  }
               }
               §§goto(addr230);
            }
         }
         §§goto(addr72);
      }
      
      public function §%!o§(param1:Object, param2:Object, param3:Object) : § null§
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc4_:Dictionary = null;
         var _loc5_:Vector.<§ null§> = null;
         var _loc6_:* = null;
         var _loc7_:Object = null;
         var _loc8_:Boolean = false;
         var _loc9_:§ null§ = null;
         var _loc10_:§ null§ = null;
         var _loc11_:§ null§ = null;
         var _loc12_:* = undefined;
         if(!_loc16_)
         {
            if(this.§2!?§ > 0)
            {
               if(_loc17_)
               {
                  var _loc13_:*;
                  var _loc14_:* = (_loc13_ = this).§2!?§ - 1;
                  if(!(_loc16_ && param3))
                  {
                     _loc13_.§2!?§ = _loc14_;
                  }
                  addr69:
                  _loc4_ = this.§1!-§[this.§2!?§];
                  _loc5_ = this.§8L§[this.§2!?§];
                  if(!(_loc16_ && param1))
                  {
                     §§goto(addr101);
                  }
                  §§goto(addr104);
               }
               §§goto(addr69);
            }
            else
            {
               _loc4_ = new Dictionary();
               _loc5_ = new Vector.<§ null§>();
            }
            addr101:
            if(param3 != null)
            {
               addr104:
               _loc13_ = 0;
               _loc14_ = param3;
               while(true)
               {
                  §§push(§§hasnext(_loc14_,_loc13_));
                  if(_loc17_ || param3)
                  {
                     if(!§§pop())
                     {
                        if(!_loc16_)
                        {
                           if(!_loc16_)
                           {
                              if(!_loc16_)
                              {
                                 §§goto(addr230);
                              }
                              §§goto(addr452);
                           }
                           §§goto(addr239);
                        }
                        §§goto(addr420);
                     }
                     else
                     {
                        _loc6_ = §§nextname(_loc13_,_loc14_);
                        if((_loc7_ = param3[_loc6_]) is Number)
                        {
                           if(_loc17_)
                           {
                              if(_loc8_ = /^\$/.test(_loc6_))
                              {
                                 if(_loc17_ || this)
                                 {
                                    §§push(_loc6_);
                                    if(_loc17_)
                                    {
                                       §§push(§§pop().substr(1));
                                    }
                                    _loc6_ = §§pop();
                                    if(_loc16_)
                                    {
                                    }
                                    addr177:
                                    continue;
                                 }
                                 §§goto(addr177);
                              }
                              §§push(this.§2X§(param1,_loc6_,_loc4_,_loc5_));
                              if(_loc16_ && param3)
                              {
                                 addr184:
                                 _loc9_ = §§pop();
                                 _loc10_ = this.§%!o§(_loc9_.getObject(_loc6_),param2 != null ? param2[_loc6_] : null,_loc7_);
                                 if(!_loc16_)
                                 {
                                    _loc5_.push(new §[!H§(_loc9_,_loc10_,_loc6_));
                                 }
                                 continue;
                              }
                              §§pop().setSourceValue(_loc6_,Number(_loc7_),_loc8_);
                           }
                           §§goto(addr177);
                        }
                        else
                        {
                           §§push(this.§2X§(param1,_loc6_,_loc4_,_loc5_));
                        }
                        §§goto(addr184);
                     }
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     _loc6_ = §§nextname(_loc13_,_loc14_);
                     §§goto(addr256);
                  }
                  §§goto(addr421);
               }
            }
            addr230:
            if(param2 != null)
            {
               if(!_loc16_)
               {
                  _loc13_ = 0;
                  if(!_loc16_)
                  {
                     addr239:
                     _loc14_ = param2;
                     if(_loc17_ || param1)
                     {
                        while(true)
                        {
                           §§push(§§hasnext(_loc14_,_loc13_));
                           break loop0;
                        }
                        addr421:
                        if(_loc17_ || param1)
                        {
                           §§goto(addr429);
                        }
                        §§goto(addr440);
                        addr418:
                        addr420:
                     }
                     while(true)
                     {
                        §§push((_loc7_ = param2[_loc6_]) is Number);
                        if(_loc17_)
                        {
                           if(§§pop())
                           {
                              if(!_loc16_)
                              {
                                 if(_loc8_ = /^\$/.test(_loc6_))
                                 {
                                    if(_loc17_ || param2)
                                    {
                                       §§push(_loc6_);
                                       if(_loc17_)
                                       {
                                          §§push(§§pop().substr(1));
                                          if(_loc17_ || this)
                                          {
                                             _loc6_ = §§pop();
                                             if(_loc17_ || param1)
                                             {
                                                addr322:
                                                §§push(this.§2X§(param1,_loc6_,_loc4_,_loc5_));
                                                if(_loc17_ || param2)
                                                {
                                                   §§pop().setDestinationValue(_loc6_,Number(_loc7_),_loc8_);
                                                   if(_loc16_ && param2)
                                                   {
                                                      addr375:
                                                      if(!(_loc6_ in param3))
                                                      {
                                                         addr384:
                                                         _loc9_ = this.§2X§(param1,_loc6_,_loc4_,_loc5_);
                                                         _loc10_ = this.§%!o§(_loc9_.getObject(_loc6_),_loc7_,param3 != null ? param3[_loc6_] : null);
                                                         if(!(_loc16_ && param3))
                                                         {
                                                            _loc5_.push(new §[!H§(_loc9_,_loc10_,_loc6_));
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr348:
                                                   }
                                                   §§goto(addr418);
                                                }
                                                §§goto(addr384);
                                             }
                                             §§goto(addr348);
                                          }
                                       }
                                       §§goto(addr375);
                                    }
                                    §§goto(addr348);
                                 }
                                 §§goto(addr322);
                              }
                              §§goto(addr348);
                           }
                           else
                           {
                              §§push(param3 == null);
                              if(!(_loc16_ && param2))
                              {
                                 §§push(!§§pop());
                                 if(_loc17_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc17_ || this)
                                       {
                                          §§pop();
                                          if(!_loc16_)
                                          {
                                             §§goto(addr375);
                                          }
                                          §§goto(addr384);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr375);
                     }
                     addr256:
                  }
                  §§goto(addr421);
               }
               §§goto(addr452);
            }
            addr429:
            if(_loc5_.length == 1)
            {
               if(!(_loc16_ && param2))
               {
                  addr440:
                  _loc11_ = _loc5_[0];
                  if(_loc17_)
                  {
                     §§goto(addr458);
                  }
                  §§goto(addr525);
               }
               else
               {
                  addr452:
                  _loc11_ = new §#x§(param1,_loc5_);
               }
            }
            else if(_loc5_.length > 1)
            {
               §§goto(addr452);
            }
            addr458:
            _loc13_ = 0;
            if(!_loc16_)
            {
               for(_loc12_ in _loc4_)
               {
                  if(!(_loc16_ && param1))
                  {
                     delete _loc4_[_loc12_];
                  }
               }
            }
            if(!_loc16_)
            {
               _loc5_.length = 0;
               if(!_loc16_)
               {
                  this.§1!-§[this.§2!?§] = _loc4_;
                  if(_loc17_)
                  {
                     this.§8L§[this.§2!?§] = _loc5_;
                     if(_loc17_ || param2)
                     {
                        addr525:
                        _loc14_ = (_loc13_ = this).§2!?§ + 1;
                        if(_loc17_ || param3)
                        {
                           _loc13_.§2!?§ = _loc14_;
                        }
                     }
                  }
               }
               §§goto(addr525);
            }
            return _loc11_;
         }
         §§goto(addr69);
      }
   }
}
