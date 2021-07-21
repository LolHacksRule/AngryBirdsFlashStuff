package §0§
{
   import §"E§.§&!h§;
   import §0x§.§?"3§;
   import flash.utils.Dictionary;
   
   public class §6!B§
   {
       
      
      private var §@!P§:Vector.<Dictionary>;
      
      private var §-M§:§&!h§;
      
      private var §3!L§:uint = 0;
      
      private var §"!W§:Vector.<Vector.<§-!G§>>;
      
      public function §6!B§(param1:§&!h§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§@!P§ = new Vector.<Dictionary>();
            loop0:
            do
            {
               this.§"!W§ = new Vector.<Vector.<§-!G§>>();
               while(true)
               {
                  super();
                  while(!(_loc2_ && _loc3_))
                  {
                     this.§-M§ = param1;
                     if(_loc3_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(_loc2_);
            
         }
      }
      
      public function §;2§(param1:Object, param2:String, param3:Dictionary, param4:Vector.<§-!G§>) : §-!G§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:§-!G§ = null;
         var _loc5_:Class;
         if((_loc5_ = this.§-M§.§#">§(param1.constructor,param2)) != null)
         {
            if((_loc6_ = param3[_loc5_] as §-!G§) == null)
            {
               if(_loc7_)
               {
                  (_loc6_ = new _loc5_()).target = param1;
                  if(!_loc8_)
                  {
                     param3[_loc5_] = _loc6_;
                     if(!_loc8_)
                     {
                        if(param4 != null)
                        {
                           if(_loc7_ || this)
                           {
                           }
                        }
                        §§goto(addr90);
                     }
                     param4.push(_loc6_);
                  }
               }
               else
               {
                  §§goto(addr92);
               }
            }
            addr90:
            return _loc6_;
         }
         addr92:
         return null;
      }
      
      public function §'"1§(param1:Object, param2:Object, param3:Object, param4:§?"3§) : §,l§
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc8_:* = null;
         var _loc9_:Object = null;
         var _loc10_:Boolean = false;
         var _loc11_:§,l§ = null;
         var _loc12_:§,l§ = null;
         var _loc5_:Dictionary = new Dictionary();
         var _loc6_:Vector.<§,l§> = new Vector.<§,l§>();
         var _loc7_:§`D§;
         (_loc7_ = new §`D§()).target = param1;
         if(!_loc16_)
         {
            _loc7_.§3!`§ = param4;
            if(_loc17_ || param1)
            {
               _loc6_.push(_loc7_);
               if(_loc17_ || param1)
               {
               }
               addr73:
               var _loc13_:int = 0;
               var _loc14_:* = param3;
               loop2:
               while(true)
               {
                  §§push(§§hasnext(_loc14_,_loc13_));
                  if(!(_loc16_ && param3))
                  {
                     if(!§§pop())
                     {
                        if(_loc17_)
                        {
                           if(_loc17_ || param1)
                           {
                              if(_loc17_ || param1)
                              {
                                 addr232:
                                 if(param2 != null)
                                 {
                                    if(!_loc16_)
                                    {
                                       _loc13_ = 0;
                                       if(!(_loc16_ && param3))
                                       {
                                          _loc14_ = param2;
                                          if(_loc17_ || param3)
                                          {
                                             while(true)
                                             {
                                                §§push(§§hasnext(_loc14_,_loc13_));
                                                break loop2;
                                             }
                                             addr358:
                                             if(_loc17_)
                                             {
                                                §§goto(addr364);
                                             }
                                             §§goto(addr395);
                                             addr358:
                                             addr360:
                                          }
                                          while(true)
                                          {
                                             if((_loc9_ = param2[_loc8_]) is Number)
                                             {
                                                if(_loc17_ || this)
                                                {
                                                   if(_loc10_ = /^\$/.test(_loc8_))
                                                   {
                                                      if(!_loc16_)
                                                      {
                                                         addr296:
                                                         §§push(_loc8_);
                                                         if(_loc17_)
                                                         {
                                                            §§push(§§pop().substr(1));
                                                         }
                                                         _loc8_ = §§pop();
                                                         if(_loc17_ || param1)
                                                         {
                                                            addr310:
                                                            _loc7_.setDestinationValue(_loc8_,Number(_loc9_),_loc10_);
                                                            if(!_loc17_)
                                                            {
                                                               _loc11_ = this.§'"1§(_loc7_.getObject(_loc8_),null,param3 != null ? param3[_loc8_] : null,param4);
                                                               addr324:
                                                               if(_loc17_)
                                                               {
                                                                  _loc6_.push(new §8!<§(_loc7_,_loc11_,_loc8_));
                                                                  if(_loc17_)
                                                                  {
                                                                     _loc5_[_loc8_] = true;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr358);
                                                      }
                                                      §§goto(addr324);
                                                   }
                                                   §§goto(addr310);
                                                }
                                                §§goto(addr296);
                                             }
                                             else if(!_loc5_[_loc8_])
                                             {
                                                §§goto(addr324);
                                             }
                                             §§goto(addr358);
                                          }
                                          addr263:
                                       }
                                       §§goto(addr358);
                                    }
                                 }
                              }
                              addr364:
                              if(_loc6_.length == 1)
                              {
                                 if(!(_loc16_ && this))
                                 {
                                    _loc12_ = _loc6_[0];
                                 }
                                 else
                                 {
                                    addr395:
                                    _loc12_ = new §2!5§(param1,_loc6_);
                                 }
                              }
                              else if(_loc6_.length > 1)
                              {
                                 §§goto(addr395);
                              }
                              return _loc12_;
                           }
                           §§goto(addr358);
                        }
                        §§goto(addr360);
                     }
                     else
                     {
                        _loc8_ = §§nextname(_loc13_,_loc14_);
                        if((_loc9_ = param3[_loc8_]) is Number)
                        {
                           if(_loc17_)
                           {
                              if(_loc10_ = /^\$/.test(_loc8_))
                              {
                                 if(_loc17_ || param3)
                                 {
                                    §§push(_loc8_);
                                    if(!_loc16_)
                                    {
                                       §§push(§§pop().substr(1));
                                    }
                                    _loc8_ = §§pop();
                                    if(_loc17_ || param3)
                                    {
                                       addr132:
                                       _loc7_.setSourceValue(_loc8_,Number(_loc9_),_loc10_);
                                       if(!(_loc17_ || param2))
                                       {
                                          _loc11_ = this.§'"1§(_loc7_.getObject(_loc8_),param2 != null ? param2[_loc8_] : null,_loc9_,param4);
                                          addr151:
                                          if(_loc17_ || param1)
                                          {
                                             _loc6_.push(new §8!<§(_loc7_,_loc11_,_loc8_));
                                             if(!(_loc16_ && param2))
                                             {
                                                _loc5_[_loc8_] = true;
                                             }
                                          }
                                          continue;
                                       }
                                    }
                                    continue;
                                 }
                              }
                           }
                           §§goto(addr132);
                        }
                        else if(_loc5_[_loc8_])
                        {
                           continue;
                        }
                        §§goto(addr151);
                     }
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     _loc8_ = §§nextname(_loc13_,_loc14_);
                     §§goto(addr263);
                  }
                  §§goto(addr358);
               }
            }
            if(param3 != null)
            {
               §§goto(addr73);
            }
            §§goto(addr232);
         }
         §§goto(addr73);
      }
      
      public function §1!m§(param1:Object, param2:Object, param3:Object, param4:Object) : §-!G§
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         var _loc8_:* = null;
         var _loc9_:Object = null;
         var _loc10_:Boolean = false;
         var _loc11_:Array = null;
         var _loc12_:* = uint(0);
         var _loc13_:* = uint(0);
         var _loc14_:§-!G§ = null;
         var _loc15_:§-!G§ = null;
         var _loc5_:Dictionary = new Dictionary();
         var _loc6_:Vector.<§-!G§> = new Vector.<§-!G§>();
         var _loc7_:§8L§;
         (_loc7_ = new §8L§()).target = param1;
         if(_loc20_ || this)
         {
            _loc6_.push(_loc7_);
            if(_loc20_)
            {
               addr69:
               if(param3 != null)
               {
                  addr72:
                  var _loc16_:* = 0;
                  var _loc17_:* = param3;
                  loop0:
                  while(true)
                  {
                     §§push(§§hasnext(_loc17_,_loc16_));
                     if(!(_loc19_ && param2))
                     {
                        if(!§§pop())
                        {
                           if(_loc20_ || param2)
                           {
                              if(!_loc19_)
                              {
                                 if(!(_loc19_ && param3))
                                 {
                                    addr225:
                                    if(param2 != null)
                                    {
                                       if(!_loc19_)
                                       {
                                          addr230:
                                          §§push(0);
                                          if(_loc20_ || this)
                                          {
                                             _loc16_ = §§pop();
                                             if(!(_loc19_ && param1))
                                             {
                                                _loc17_ = param2;
                                                if(!_loc19_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§§hasnext(_loc17_,_loc16_));
                                                      if(_loc20_)
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
                                                               if(_loc20_)
                                                               {
                                                                  _loc9_ = [_loc9_];
                                                                  addr450:
                                                                  addr453:
                                                                  if(_loc9_ is Array)
                                                                  {
                                                                     if(_loc20_)
                                                                     {
                                                                        if(_loc10_ = /^\$/.test(_loc8_))
                                                                        {
                                                                           if(_loc20_)
                                                                           {
                                                                              §§push(_loc8_);
                                                                              if(_loc20_)
                                                                              {
                                                                                 §§push(§§pop().substr(1));
                                                                              }
                                                                              _loc8_ = §§pop();
                                                                              if(_loc20_ || param2)
                                                                              {
                                                                                 addr484:
                                                                                 §§push(uint((_loc11_ = _loc9_ as Array).length));
                                                                                 if(_loc20_)
                                                                                 {
                                                                                    _loc12_ = §§pop();
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       §§push(uint(0));
                                                                                       loop3:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc13_ = §§pop();
                                                                                          while(true)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc13_);
                                                                                                   addr558:
                                                                                                   loop7:
                                                                                                   while(§§pop() < _loc12_)
                                                                                                   {
                                                                                                      _loc7_.§7!f§(_loc8_,_loc11_[_loc13_],_loc10_);
                                                                                                      loop8:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc13_);
                                                                                                         if(!(_loc19_ && param2))
                                                                                                         {
                                                                                                            continue loop3;
                                                                                                         }
                                                                                                         addr523:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc13_ = §§pop();
                                                                                                            if(!(_loc20_ || param1))
                                                                                                            {
                                                                                                               break loop7;
                                                                                                            }
                                                                                                            continue loop8;
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop3;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    continue loop2;
                                                                                 }
                                                                                 §§goto(addr523);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr484);
                                                                     }
                                                                  }
                                                                  else if(_loc5_[_loc8_])
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  _loc14_ = this.§1!m§(_loc7_.getObject(_loc8_),param2 != null ? param2[_loc8_] : null,param3 != null ? param3[_loc8_] : null,_loc9_);
                                                                  if(!(_loc19_ && param3))
                                                                  {
                                                                     _loc6_.push(new §#!^§(_loc7_,_loc14_,_loc8_));
                                                                     if(!(_loc19_ && param3))
                                                                     {
                                                                        _loc5_[_loc8_] = true;
                                                                     }
                                                                  }
                                                                  continue loop2;
                                                               }
                                                               §§goto(addr484);
                                                            }
                                                            §§goto(addr450);
                                                         }
                                                         §§goto(addr453);
                                                      }
                                                   }
                                                   addr377:
                                                   if(_loc20_)
                                                   {
                                                      §§goto(addr624);
                                                   }
                                                   §§goto(addr650);
                                                   addr377:
                                                   addr620:
                                                   addr619:
                                                }
                                                while(true)
                                                {
                                                   if((_loc9_ = param2[_loc8_]) is Number)
                                                   {
                                                      if(!_loc19_)
                                                      {
                                                         if(_loc10_ = /^\$/.test(_loc8_))
                                                         {
                                                            if(_loc20_)
                                                            {
                                                               §§push(_loc8_);
                                                               if(!(_loc19_ && param2))
                                                               {
                                                                  §§push(§§pop().substr(1));
                                                               }
                                                               _loc8_ = §§pop();
                                                               if(_loc20_)
                                                               {
                                                                  addr300:
                                                                  _loc7_.setDestinationValue(_loc8_,Number(_loc9_),_loc10_);
                                                                  if(_loc19_ && this)
                                                                  {
                                                                     _loc14_ = this.§1!m§(_loc7_.getObject(_loc8_),null,param3 != null ? param3[_loc8_] : null,param4 != null ? param4[_loc8_] : null);
                                                                     addr329:
                                                                     if(_loc20_)
                                                                     {
                                                                        _loc6_.push(new §#!^§(_loc7_,_loc14_,_loc8_));
                                                                        if(_loc20_ || param2)
                                                                        {
                                                                           _loc5_[_loc8_] = true;
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr377);
                                                               }
                                                            }
                                                            §§goto(addr377);
                                                         }
                                                      }
                                                      §§goto(addr300);
                                                   }
                                                   else if(!_loc5_[_loc8_])
                                                   {
                                                      §§goto(addr329);
                                                   }
                                                   §§goto(addr377);
                                                }
                                                addr258:
                                             }
                                             §§goto(addr377);
                                          }
                                          addr410:
                                          _loc16_ = §§pop();
                                          if(!_loc19_)
                                          {
                                             addr413:
                                             _loc17_ = param4;
                                             if(_loc20_ || this)
                                             {
                                                §§goto(addr618);
                                             }
                                             §§goto(addr430);
                                          }
                                          §§goto(addr377);
                                       }
                                       §§goto(addr630);
                                    }
                                    §§goto(addr399);
                                 }
                                 §§goto(addr230);
                              }
                              §§goto(addr413);
                           }
                           addr388:
                           if(_loc20_)
                           {
                              if(!(_loc19_ && this))
                              {
                                 addr399:
                                 if(param4 != null)
                                 {
                                    if(_loc20_ || param3)
                                    {
                                       §§goto(addr410);
                                       §§push(0);
                                    }
                                    §§goto(addr650);
                                 }
                                 addr624:
                                 if(_loc6_.length == 1)
                                 {
                                    if(_loc20_)
                                    {
                                       addr630:
                                       _loc15_ = _loc6_[0];
                                    }
                                    else
                                    {
                                       addr650:
                                       _loc15_ = new §;$§(param1,_loc6_);
                                    }
                                 }
                                 else if(_loc6_.length > 1)
                                 {
                                    §§goto(addr650);
                                 }
                                 return _loc15_;
                              }
                              §§goto(addr650);
                           }
                           §§goto(addr377);
                        }
                        else
                        {
                           _loc8_ = §§nextname(_loc16_,_loc17_);
                           if((_loc9_ = param3[_loc8_]) is Number)
                           {
                              if(_loc20_ || param2)
                              {
                                 if(_loc10_ = /^\$/.test(_loc8_))
                                 {
                                    if(!(_loc19_ && param3))
                                    {
                                       §§push(_loc8_);
                                       if(_loc20_)
                                       {
                                          §§push(§§pop().substr(1));
                                       }
                                       _loc8_ = §§pop();
                                       if(_loc19_ && param1)
                                       {
                                       }
                                       _loc14_ = this.§1!m§(_loc7_.getObject(_loc8_),param2 != null ? param2[_loc8_] : null,_loc9_,param4 != null ? param4[_loc8_] : null);
                                       addr155:
                                       if(_loc20_)
                                       {
                                          _loc6_.push(new §#!^§(_loc7_,_loc14_,_loc8_));
                                          if(!_loc19_)
                                          {
                                             _loc5_[_loc8_] = true;
                                          }
                                       }
                                       continue;
                                    }
                                 }
                                 _loc7_.setSourceValue(_loc8_,Number(_loc9_),_loc10_);
                                 if(_loc20_ || param1)
                                 {
                                    continue;
                                 }
                              }
                           }
                           else if(_loc5_[_loc8_])
                           {
                              continue;
                           }
                           §§goto(addr155);
                        }
                     }
                     break;
                  }
                  while(true)
                  {
                     if(!§§pop())
                     {
                        if(_loc20_ || param1)
                        {
                           §§goto(addr388);
                        }
                        §§goto(addr620);
                     }
                     else
                     {
                        _loc8_ = §§nextname(_loc16_,_loc17_);
                        §§goto(addr258);
                     }
                  }
               }
               §§goto(addr225);
            }
            §§goto(addr72);
         }
         §§goto(addr69);
      }
      
      public function §?!S§(param1:Object, param2:Object, param3:Object) : §-!G§
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc4_:Dictionary = null;
         var _loc5_:Vector.<§-!G§> = null;
         var _loc6_:* = null;
         var _loc7_:Object = null;
         var _loc8_:Boolean = false;
         var _loc9_:§-!G§ = null;
         var _loc10_:§-!G§ = null;
         var _loc11_:§-!G§ = null;
         var _loc12_:* = undefined;
         if(!(_loc16_ && param3))
         {
            if(this.§3!L§ > 0)
            {
               if(_loc17_ || this)
               {
                  addr61:
                  var _loc13_:*;
                  var _loc14_:* = (_loc13_ = this).§3!L§ - 1;
                  if(_loc17_)
                  {
                     _loc13_.§3!L§ = _loc14_;
                  }
               }
               _loc4_ = this.§@!P§[this.§3!L§];
               _loc5_ = this.§"!W§[this.§3!L§];
               if(!(_loc16_ && param1))
               {
                  addr106:
                  if(param3 != null)
                  {
                     addr109:
                     _loc13_ = 0;
                     _loc14_ = param3;
                     loop0:
                     while(true)
                     {
                        §§push(§§hasnext(_loc14_,_loc13_));
                        if(_loc17_)
                        {
                           if(!§§pop())
                           {
                              if(_loc17_ || this)
                              {
                                 if(!(_loc16_ && this))
                                 {
                                    if(!_loc16_)
                                    {
                                       addr245:
                                       if(param2 != null)
                                       {
                                          if(!(_loc16_ && param3))
                                          {
                                             _loc13_ = 0;
                                             if(_loc17_ || param1)
                                             {
                                                _loc14_ = param2;
                                                if(_loc17_ || param2)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§§hasnext(_loc14_,_loc13_));
                                                      break loop0;
                                                   }
                                                   addr431:
                                                   if(!_loc16_)
                                                   {
                                                      addr434:
                                                      if(_loc5_.length == 1)
                                                      {
                                                         if(_loc17_)
                                                         {
                                                            addr440:
                                                            _loc11_ = _loc5_[0];
                                                            if(_loc17_ || param3)
                                                            {
                                                               addr463:
                                                               _loc13_ = 0;
                                                               if(_loc17_)
                                                               {
                                                                  for(_loc12_ in _loc4_)
                                                                  {
                                                                     if(_loc17_)
                                                                     {
                                                                        delete _loc4_[_loc12_];
                                                                     }
                                                                  }
                                                               }
                                                               if(_loc17_ || this)
                                                               {
                                                                  _loc5_.length = 0;
                                                               }
                                                               while(true)
                                                               {
                                                                  loop5:
                                                                  while(true)
                                                                  {
                                                                     this.§@!P§[this.§3!L§] = _loc4_;
                                                                     while(true)
                                                                     {
                                                                        this.§"!W§[this.§3!L§] = _loc5_;
                                                                        if(!_loc16_)
                                                                        {
                                                                           if(!_loc17_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(_loc16_)
                                                                           {
                                                                              break loop5;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(true)
                                                                              {
                                                                                 _loc14_ = (_loc13_ = this).§3!L§ + 1;
                                                                                 if(_loc17_ || param3)
                                                                                 {
                                                                                    _loc13_.§3!L§ = _loc14_;
                                                                                 }
                                                                              }
                                                                              continue loop5;
                                                                           }
                                                                        }
                                                                        break;
                                                                     }
                                                                     return _loc11_;
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr508);
                                                         }
                                                         else
                                                         {
                                                            addr457:
                                                            _loc11_ = new §;$§(param1,_loc5_);
                                                         }
                                                      }
                                                      else if(_loc5_.length > 1)
                                                      {
                                                         §§goto(addr457);
                                                      }
                                                      §§goto(addr463);
                                                   }
                                                   §§goto(addr457);
                                                   addr428:
                                                   addr430:
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
                                                                  if(!_loc16_)
                                                                  {
                                                                     §§push(§§pop().substr(1));
                                                                     if(_loc17_)
                                                                     {
                                                                        addr334:
                                                                        _loc6_ = §§pop();
                                                                        if(!_loc16_)
                                                                        {
                                                                           addr337:
                                                                           §§push(this.§;2§(param1,_loc6_,_loc4_,_loc5_));
                                                                           if(!_loc16_)
                                                                           {
                                                                              §§pop().setDestinationValue(_loc6_,Number(_loc7_),_loc8_);
                                                                              if(!(_loc17_ || this))
                                                                              {
                                                                                 addr390:
                                                                                 if(!(_loc6_ in param3))
                                                                                 {
                                                                                    addr399:
                                                                                    _loc9_ = this.§;2§(param1,_loc6_,_loc4_,_loc5_);
                                                                                    _loc10_ = this.§?!S§(_loc9_.getObject(_loc6_),_loc7_,param3 != null ? param3[_loc6_] : null);
                                                                                    if(!_loc16_)
                                                                                    {
                                                                                       _loc5_.push(new §#!^§(_loc9_,_loc10_,_loc6_));
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr428);
                                                                           }
                                                                        }
                                                                        §§goto(addr399);
                                                                     }
                                                                     §§goto(addr390);
                                                                  }
                                                                  §§goto(addr334);
                                                               }
                                                            }
                                                            §§goto(addr337);
                                                         }
                                                         §§goto(addr390);
                                                      }
                                                      else
                                                      {
                                                         §§push(param3 == null);
                                                         if(!(_loc16_ && this))
                                                         {
                                                            addr369:
                                                            §§push(!§§pop());
                                                            if(_loc17_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(_loc17_ || param3)
                                                                  {
                                                                     §§pop();
                                                                     if(!(_loc16_ && this))
                                                                     {
                                                                        §§goto(addr390);
                                                                     }
                                                                     §§goto(addr399);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr390);
                                                   }
                                                   §§goto(addr369);
                                                }
                                                addr291:
                                             }
                                             §§goto(addr431);
                                          }
                                          §§goto(addr457);
                                       }
                                       §§goto(addr434);
                                    }
                                    §§goto(addr440);
                                 }
                                 §§goto(addr431);
                              }
                              §§goto(addr430);
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
                                       if(_loc17_ || param1)
                                       {
                                          addr154:
                                          §§push(_loc6_);
                                          if(!(_loc16_ && param2))
                                          {
                                             §§push(§§pop().substr(1));
                                          }
                                          _loc6_ = §§pop();
                                          if(_loc17_ || param3)
                                          {
                                             addr173:
                                             §§push(this.§;2§(param1,_loc6_,_loc4_,_loc5_));
                                             if(!_loc17_)
                                             {
                                                addr194:
                                                _loc9_ = §§pop();
                                                _loc10_ = this.§?!S§(_loc9_.getObject(_loc6_),param2 != null ? param2[_loc6_] : null,_loc7_);
                                                if(_loc17_)
                                                {
                                                   _loc5_.push(new §#!^§(_loc9_,_loc10_,_loc6_));
                                                }
                                                continue;
                                             }
                                             §§pop().setSourceValue(_loc6_,Number(_loc7_),_loc8_);
                                          }
                                          continue;
                                       }
                                    }
                                    §§goto(addr173);
                                 }
                                 §§goto(addr154);
                              }
                              else
                              {
                                 §§push(this.§;2§(param1,_loc6_,_loc4_,_loc5_));
                              }
                              §§goto(addr194);
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
                        §§goto(addr431);
                     }
                  }
                  §§goto(addr245);
               }
               §§goto(addr109);
            }
            else
            {
               _loc4_ = new Dictionary();
               _loc5_ = new Vector.<§-!G§>();
            }
            §§goto(addr106);
         }
         §§goto(addr61);
      }
   }
}
