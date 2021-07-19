package §"U§
{
   import §6v§.§64§;
   import §6v§.§@V§;
   import §6v§.§`M§;
   import §6v§.§var §;
   import §]!-§.§`o§;
   import §`K§.§ L§;
   import com.rovio.assets.§[!D§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §"]§ extends §[Q§
   {
      
      public static const §1W§:int = 0;
      
      public static const §>b§:int = 1;
      
      public static const §&@§:int = 2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §1W§ = 0;
         }
         while(true)
         {
            §>b§ = 1;
            while(!_loc2_)
            {
               §&@§ = 2;
               if(!_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public var §=!@§:String;
      
      public var §`C§:Class;
      
      public var §0!@§:String = null;
      
      public var §"P§:Vector.<§64§>;
      
      public var §0g§:int;
      
      public var §9;§:Number;
      
      public var §>p§:Number;
      
      public var §;!!§:Number;
      
      public var §`§:Number;
      
      public var §&C§:Number;
      
      public var §+E§:Number;
      
      public var §2E§:Number;
      
      public var §%!B§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §&R§:int;
      
      public var § 9§:Number;
      
      public var §!Q§:String = "";
      
      public var §?E§:int;
      
      public var §4>§:int;
      
      public var §@O§:GlowFilter;
      
      public var §8!A§:Boolean = true;
      
      public var §^T§:int;
      
      public var §?<§:int;
      
      public var §[!P§:Number = 0;
      
      public var §1n§:Number = 0;
      
      public var §<q§:Number = 0;
      
      public var §5!4§:Number = 0;
      
      public var §5!;§:Boolean = false;
      
      public var §]$§:Boolean = false;
      
      public var §!w§:MovieClip = null;
      
      public function §"]§(param1:XML, param2:§[Q§, param3:§`o§, param4:MovieClip = null)
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1105
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      public function §90§(param1:Array = null, param2:Class = null) : void
      {
         var _loc19_:Boolean = true;
         var _loc20_:Boolean = false;
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§@!E§ = null;
         var _loc8_:§64§ = null;
         var _loc9_:int = 0;
         var _loc10_:* = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§&!M§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:* = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:* = 0;
         if(_loc19_ || this)
         {
            if(param2 == null)
            {
               if(!_loc20_)
               {
                  addr66:
                  param2 = §&!M§;
                  addr69:
                  this.§"P§ = new Vector.<§64§>();
                  if(!(_loc20_ && _loc3_))
                  {
                     this.§^-§();
                     if(_loc19_)
                     {
                        §§push(param1);
                        if(_loc19_ || param1)
                        {
                           if(§§pop() == null)
                           {
                              if(!_loc20_)
                              {
                                 param1 = getParentView().getRepeaterDataXML(mName);
                              }
                              §§goto(addr106);
                           }
                           §§push(param1);
                        }
                        if(!§§pop())
                        {
                           addr106:
                           param1 = new Array();
                           §§goto(addr110);
                        }
                        addr110:
                        var _loc3_:int = 0;
                        loop0:
                        while(true)
                        {
                           if(_loc3_ >= param1.length)
                           {
                              if(_loc19_)
                              {
                                 if(param1.length > 1)
                                 {
                                 }
                                 break;
                              }
                              break;
                           }
                           §§push(mName + "_Tab_");
                           if(_loc19_ || param1)
                           {
                              §§push(§§pop() + _loc3_);
                           }
                           _loc4_ = §§pop();
                           if(!_loc19_)
                           {
                              break;
                           }
                           _loc5_ = new MovieClip();
                           (_loc6_ = <Container/>).@name = _loc4_;
                           _loc7_ = new §@!E§(_loc6_,this,null,_loc5_);
                           if(_loc19_ || param1)
                           {
                              §`!O§.push(_loc7_);
                           }
                           _loc8_ = new §64§(this.§?<§,_loc4_);
                           if(_loc19_)
                           {
                              this.§"P§.push(_loc8_);
                              §§push(this.§&C§);
                              while(true)
                              {
                                 _loc9_ = §§pop();
                                 loop2:
                                 while(true)
                                 {
                                    §§push(this.§0g§);
                                    loop3:
                                    while(true)
                                    {
                                       _loc10_ = int(§§pop());
                                       §§push(param1);
                                       if(_loc19_ || param2)
                                       {
                                          §§push(_loc3_);
                                          if(!_loc20_)
                                          {
                                             if((§§pop()[§§pop()] as Array).length < _loc10_)
                                             {
                                                loop4:
                                                while(true)
                                                {
                                                   if(!_loc20_)
                                                   {
                                                      §§push(param1);
                                                      if(_loc19_ || this)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(_loc3_);
                                                            if(_loc20_ && param1)
                                                            {
                                                               break;
                                                               addr281:
                                                            }
                                                            loop6:
                                                            while(true)
                                                            {
                                                               §§push(int((§§pop()[§§pop()] as Array).length));
                                                               if(!_loc19_)
                                                               {
                                                                  continue loop3;
                                                               }
                                                               _loc10_ = §§pop();
                                                               if(!_loc19_)
                                                               {
                                                                  break;
                                                               }
                                                               loop5:
                                                               while(true)
                                                               {
                                                                  §§push(this.§4>§);
                                                                  if(_loc19_)
                                                                  {
                                                                     if(§§pop() == §1W§)
                                                                     {
                                                                        if(!(_loc20_ && _loc3_))
                                                                        {
                                                                           continue loop4;
                                                                        }
                                                                        addr244:
                                                                        while(true)
                                                                        {
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        _loc11_ = 0;
                                                                        if(_loc19_ || this)
                                                                        {
                                                                           if(true)
                                                                           {
                                                                              §§push(_loc11_);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr805:
                                                                           }
                                                                           continue loop5;
                                                                           break loop5;
                                                                        }
                                                                        addr813:
                                                                        _loc8_.§6L§("");
                                                                        if(_loc19_)
                                                                        {
                                                                           _loc7_.§%7§(this.§0g§,this.§9;§,this.§>p§,this.§^T§ * this.§2E§,this.§^T§ * this.§%!B§,this.§&R§,this.§^T§);
                                                                           break loop6;
                                                                        }
                                                                        break loop6;
                                                                     }
                                                                  }
                                                                  break;
                                                               }
                                                               if(§§pop() < (param1[_loc3_] as Array).length)
                                                               {
                                                                  §§push(param1);
                                                                  break loop4;
                                                               }
                                                               §§goto(addr813);
                                                            }
                                                            continue loop0;
                                                         }
                                                         addr313:
                                                         _loc12_ = ((§§pop()[§§pop()] as Array)[_loc11_] as Array)[0] as XML;
                                                         if(!(_loc20_ && _loc3_))
                                                         {
                                                            if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
                                                            {
                                                               if(_loc19_ || this)
                                                               {
                                                                  addr352:
                                                                  _loc7_.§`!O§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
                                                                  if(!(_loc20_ && _loc3_))
                                                                  {
                                                                     addr379:
                                                                  }
                                                                  addr391:
                                                                  _loc13_ = _loc7_.§`!O§[_loc7_.§`!O§.length - 1] as §&!M§;
                                                                  §§push(param1);
                                                                  if(_loc19_)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     if(!(_loc20_ && param1))
                                                                     {
                                                                        if(((§§pop()[§§pop()] as Array)[_loc11_] as Array)[1] != null)
                                                                        {
                                                                           addr436:
                                                                           _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                                                                           addr435:
                                                                           if(_loc19_ || this)
                                                                           {
                                                                              _loc13_.§[!0§(_loc14_,this.§0!@§);
                                                                           }
                                                                           §§push(this.§?E§);
                                                                           if(_loc19_ || _loc3_)
                                                                           {
                                                                              addr518:
                                                                              if(§§pop() == §>b§)
                                                                              {
                                                                                 addr509:
                                                                                 §§push(2);
                                                                              }
                                                                              §§push(this.§&R§);
                                                                              §§push(1);
                                                                              if(_loc19_ || this)
                                                                              {
                                                                                 if(§§pop() == §§pop())
                                                                                 {
                                                                                    _loc13_.x = _loc9_ + _loc11_ * this.§2E§;
                                                                                    if(_loc19_ || this)
                                                                                    {
                                                                                       §§push(_loc13_);
                                                                                       §§push(this.§+E§);
                                                                                       if(!(_loc20_ && this))
                                                                                       {
                                                                                          §§push(§§pop() + _loc11_ * this.§%!B§);
                                                                                       }
                                                                                       §§pop().y = §§pop();
                                                                                       addr551:
                                                                                       _loc8_.§3!F§(_loc13_);
                                                                                       addr804:
                                                                                       if(_loc19_ || this)
                                                                                       {
                                                                                          if(!_loc20_)
                                                                                          {
                                                                                             if(_loc19_ || _loc3_)
                                                                                             {
                                                                                                if(_loc19_)
                                                                                                {
                                                                                                   _loc11_++;
                                                                                                   if(!_loc20_)
                                                                                                   {
                                                                                                      if(false)
                                                                                                      {
                                                                                                         §§goto(addr551);
                                                                                                      }
                                                                                                      §§goto(addr805);
                                                                                                   }
                                                                                                   §§goto(addr551);
                                                                                                }
                                                                                                §§goto(addr804);
                                                                                             }
                                                                                             §§push(_loc13_);
                                                                                             §§push(this.§+E§);
                                                                                             if(_loc19_)
                                                                                             {
                                                                                                §§push(§§pop() + _loc17_ * this.mButtonMarginY2);
                                                                                             }
                                                                                             §§pop().y = §§pop();
                                                                                             addr669:
                                                                                          }
                                                                                          §§goto(addr551);
                                                                                       }
                                                                                       §§push(_loc13_);
                                                                                       §§push(this.§+E§);
                                                                                       if(!_loc20_)
                                                                                       {
                                                                                          §§push(_loc18_);
                                                                                          if(!_loc20_)
                                                                                          {
                                                                                             §§push(§§pop() * this.§%!B§);
                                                                                             if(_loc19_)
                                                                                             {
                                                                                                addr606:
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(!_loc20_)
                                                                                                {
                                                                                                   addr592:
                                                                                                   §§push(_loc16_ * this.§0g§);
                                                                                                   if(_loc19_ || _loc3_)
                                                                                                   {
                                                                                                      §§push(§§pop() * this.§%!B§);
                                                                                                   }
                                                                                                }
                                                                                                §§pop().y = §§pop();
                                                                                                §§goto(addr551);
                                                                                             }
                                                                                             §§goto(addr606);
                                                                                             §§push(§§pop() + §§pop());
                                                                                          }
                                                                                          §§goto(addr592);
                                                                                       }
                                                                                       §§goto(addr606);
                                                                                       addr619:
                                                                                    }
                                                                                    addr787:
                                                                                    §§push(_loc11_);
                                                                                    §§push(_loc16_);
                                                                                    §§push(this.§0g§);
                                                                                    if(!_loc20_)
                                                                                    {
                                                                                       addr774:
                                                                                       _loc17_ = (§§pop() - §§pop() * §§pop() * this.§&R§) / this.§0g§;
                                                                                       addr770:
                                                                                       addr772:
                                                                                       addr773:
                                                                                       addr766:
                                                                                       addr768:
                                                                                       addr769:
                                                                                       §§push(_loc11_);
                                                                                       if(_loc19_)
                                                                                       {
                                                                                          if(!(_loc20_ && param2))
                                                                                          {
                                                                                             §§push(_loc16_);
                                                                                             if(!_loc20_)
                                                                                             {
                                                                                                if(!(_loc20_ && this))
                                                                                                {
                                                                                                   §§push(this.§0g§);
                                                                                                   if(!_loc20_)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(!_loc20_)
                                                                                                      {
                                                                                                         if(!_loc20_)
                                                                                                         {
                                                                                                            if(!(_loc20_ && _loc3_))
                                                                                                            {
                                                                                                               §§push(this.§&R§);
                                                                                                               if(_loc19_ || param2)
                                                                                                               {
                                                                                                                  addr717:
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(!(_loc20_ && param1))
                                                                                                                  {
                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                     if(!_loc20_)
                                                                                                                     {
                                                                                                                        if(_loc19_ || param1)
                                                                                                                        {
                                                                                                                           if(!_loc20_)
                                                                                                                           {
                                                                                                                              §§push(this.§0g§);
                                                                                                                              if(_loc19_ || this)
                                                                                                                              {
                                                                                                                                 addr746:
                                                                                                                                 §§push(§§pop() % §§pop());
                                                                                                                                 if(_loc19_)
                                                                                                                                 {
                                                                                                                                    addr749:
                                                                                                                                    §§push(int(§§pop()));
                                                                                                                                    if(!(_loc20_ && this))
                                                                                                                                    {
                                                                                                                                       _loc18_ = §§pop();
                                                                                                                                       if(this.§8!A§)
                                                                                                                                       {
                                                                                                                                          if(_loc19_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc13_);
                                                                                                                                             §§push(_loc9_ + _loc18_ * this.§2E§);
                                                                                                                                             if(_loc19_ || param1)
                                                                                                                                             {
                                                                                                                                                §§push(_loc16_ * this.§0g§);
                                                                                                                                                if(_loc19_ || this)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * this.§2E§);
                                                                                                                                                }
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                             }
                                                                                                                                             §§pop().x = §§pop();
                                                                                                                                          }
                                                                                                                                          §§goto(addr669);
                                                                                                                                       }
                                                                                                                                       _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                                                                                                                                       §§goto(addr619);
                                                                                                                                    }
                                                                                                                                    §§goto(addr774);
                                                                                                                                 }
                                                                                                                                 §§goto(addr770);
                                                                                                                              }
                                                                                                                              §§goto(addr772);
                                                                                                                           }
                                                                                                                           addr786:
                                                                                                                           _loc16_ = §§pop();
                                                                                                                           addr785:
                                                                                                                           §§goto(addr787);
                                                                                                                        }
                                                                                                                        §§goto(addr773);
                                                                                                                     }
                                                                                                                     §§goto(addr746);
                                                                                                                  }
                                                                                                                  §§goto(addr766);
                                                                                                               }
                                                                                                               §§goto(addr768);
                                                                                                            }
                                                                                                            addr784:
                                                                                                            §§goto(addr785);
                                                                                                            §§push(§§pop() / §§pop());
                                                                                                         }
                                                                                                         §§goto(addr769);
                                                                                                      }
                                                                                                      §§goto(addr717);
                                                                                                   }
                                                                                                   §§goto(addr787);
                                                                                                }
                                                                                                addr783:
                                                                                                §§goto(addr784);
                                                                                                §§push(§§pop() * this.§&R§);
                                                                                             }
                                                                                             §§goto(addr787);
                                                                                          }
                                                                                          §§goto(addr786);
                                                                                       }
                                                                                       §§goto(addr749);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr783);
                                                                                 §§push(_loc11_);
                                                                                 §§push(this.§0g§);
                                                                              }
                                                                              §§goto(addr787);
                                                                           }
                                                                           _loc15_ = §§pop();
                                                                           addr486:
                                                                           _loc14_.y -= _loc14_.height / 2;
                                                                           addr517:
                                                                           if(this.§0!@§ == null)
                                                                           {
                                                                              if(_loc19_ || this)
                                                                              {
                                                                                 if(_loc19_ || param1)
                                                                                 {
                                                                                    _loc14_.y -= _loc15_;
                                                                                    addr482:
                                                                                    if(!_loc20_)
                                                                                    {
                                                                                       if(false)
                                                                                       {
                                                                                          §§goto(addr486);
                                                                                       }
                                                                                       §§goto(addr518);
                                                                                    }
                                                                                    §§goto(addr509);
                                                                                 }
                                                                                 §§goto(addr517);
                                                                              }
                                                                              §§goto(addr482);
                                                                           }
                                                                        }
                                                                        §§goto(addr518);
                                                                     }
                                                                     §§goto(addr436);
                                                                  }
                                                                  §§goto(addr435);
                                                               }
                                                               §§goto(addr379);
                                                            }
                                                            _loc7_.§`!O§.push(new param2(_loc12_,_loc7_,new this.§`C§() as MovieClip));
                                                            §§goto(addr391);
                                                         }
                                                         §§goto(addr352);
                                                         addr273:
                                                      }
                                                      break;
                                                   }
                                                   continue loop2;
                                                }
                                                §§goto(addr313);
                                                §§push(_loc3_);
                                             }
                                             §§goto(addr182);
                                          }
                                          §§goto(addr281);
                                       }
                                       §§goto(addr273);
                                    }
                                 }
                              }
                           }
                           §§goto(addr203);
                        }
                        return;
                     }
                  }
               }
               §§goto(addr106);
            }
            §§goto(addr69);
         }
         §§goto(addr66);
      }
      
      public function get §"X§() : int
      {
         return this.§0g§;
      }
      
      public function get §%w§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§"X§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop() == 0)
               {
                  if(_loc2_)
                  {
                     §§goto(addr43);
                  }
               }
               §§push(this.§%s§(this.§!Q§).§%%§.length / this.§"X§);
               if(!_loc1_)
               {
                  return §§pop() + 1;
               }
            }
            §§goto(addr43);
         }
         addr43:
         return 0;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§`M§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§64§ = null;
         var _loc4_:§@!E§ = getItemByName(this.§!Q§) as §@!E§;
         §§push(param2);
         loop0:
         while(§§pop().toUpperCase() != "SCROLL_LEFT")
         {
            §§push(param2);
            loop1:
            while(true)
            {
               if(§§pop().toUpperCase() == "SCROLL_RIGHT")
               {
                  if(!_loc7_)
                  {
                     if(_loc4_)
                     {
                        if(_loc6_ || param3)
                        {
                           if(_loc6_)
                           {
                              _loc4_.§5N§(_loc4_.§,8§ + 1);
                              this.§7!E§();
                              if(_loc6_ || param3)
                              {
                                 if(!(_loc7_ && param3))
                                 {
                                    addr80:
                                    break;
                                 }
                                 break loop0;
                              }
                              addr172:
                              §§push(Boolean(_loc5_ = this.§%s§((param3 as §var §).mParentContainer.mName.toUpperCase())));
                              if(!_loc7_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc6_)
                                    {
                                       addr200:
                                       §§pop();
                                       if(!_loc7_)
                                       {
                                          addr206:
                                          if(param3 is §&!M§)
                                          {
                                             if(_loc6_ || param3)
                                             {
                                                _loc5_.§6L§((param3 as §var §).mName.toUpperCase());
                                                break;
                                             }
                                             break;
                                          }
                                          break;
                                       }
                                       break;
                                    }
                                 }
                                 §§goto(addr206);
                              }
                              §§goto(addr200);
                              addr149:
                           }
                           this.§7!E§();
                           addr123:
                           break;
                           addr153:
                           addr167:
                        }
                        §§goto(addr149);
                     }
                     §§goto(addr80);
                  }
                  §§goto(addr153);
               }
               else
               {
                  §§push(param2);
                  if(!_loc6_)
                  {
                     continue;
                  }
                  if(_loc7_)
                  {
                     continue loop0;
                  }
                  §§push(§§pop().length > 0);
                  §§push(§§pop().length > 0);
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(param1);
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop() == §`M§.LISTENER_EVENT_MOUSE_DOWN);
                                 §§push(§§pop() == §`M§.LISTENER_EVENT_MOUSE_DOWN);
                                 addr75:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       if(!_loc6_)
                                       {
                                          break;
                                       }
                                       §§pop();
                                       §§push(param1);
                                       if(_loc7_ && param1)
                                       {
                                          continue loop5;
                                       }
                                       §§push(§§pop() == §`M§.LISTENER_EVENT_MOUSE_UP);
                                       if(!(_loc6_ || param1))
                                       {
                                          while(true)
                                          {
                                             §§pop();
                                             if(true)
                                             {
                                                break loop4;
                                             }
                                             continue loop4;
                                          }
                                          addr171:
                                          if(§§pop())
                                          {
                                             §§goto(addr172);
                                          }
                                          break loop1;
                                          addr66:
                                       }
                                    }
                                 }
                                 continue loop3;
                              }
                           }
                           §§goto(addr171);
                        }
                     }
                     while(true)
                     {
                        §§push(§§pop());
                        if(_loc6_)
                        {
                           continue loop2;
                        }
                        §§goto(addr75);
                     }
                  }
               }
               §§goto(addr172);
            }
            super.containerEventOccured(param1,param2,param3);
            return;
         }
         if(_loc4_)
         {
            if(!_loc7_)
            {
               _loc4_.§5N§(_loc4_.§,8§ - 1);
            }
            §§goto(addr167);
         }
         §§goto(addr123);
      }
      
      public function §2$§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§@!E§ = getItemByName(param1) as §@!E§;
         if(!(_loc4_ && param2))
         {
            if(_loc3_)
            {
               do
               {
                  _loc3_.§5N§(param2);
                  do
                  {
                     this.§7!E§();
                  }
                  while(_loc4_);
                  
               }
               while(_loc4_ && param2);
               
               addr68:
            }
            return;
         }
         §§goto(addr68);
      }
      
      public function §%s§(param1:String) : §64§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§"P§.length)
            {
               if(!(_loc4_ || _loc2_))
               {
                  continue;
               }
               if(!(_loc3_ && _loc3_))
               {
                  if(_loc4_ || _loc2_)
                  {
                     return null;
                  }
                  break;
               }
            }
            else if(param1.toUpperCase() == (this.§"P§[_loc2_] as §64§).mName.toUpperCase())
            {
               break;
            }
            _loc2_++;
         }
         return this.§"P§[_loc2_] as §64§;
      }
      
      public function §false§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§!Q§ = param1;
         }
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= §`!O§.length)
            {
               if(_loc4_)
               {
                  this.§7!E§();
               }
               if(_loc4_)
               {
                  break;
               }
               loop1:
               for(; _loc3_; while(true)
               {
                  _loc2_++;
                  continue loop1;
               })
               {
                  while(true)
                  {
                     if(!_loc4_)
                     {
                        loop3:
                        while(!(_loc4_ || _loc2_))
                        {
                           loop4:
                           while(true)
                           {
                              this.§!w§.x = (§`!O§[_loc2_] as §@!E§).x + this.§<q§;
                              loop5:
                              while(_loc4_)
                              {
                                 if(!(_loc3_ && param1))
                                 {
                                    this.§!w§.width = (§`!O§[_loc2_] as §@!E§).width + this.§[!P§;
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       loop6:
                                       while(true)
                                       {
                                          §§push(this.§]$§);
                                          if(!_loc3_)
                                          {
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                if(!§§pop())
                                                {
                                                   break;
                                                }
                                                addr46:
                                                continue loop3;
                                             }
                                             addr180:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   break loop6;
                                                }
                                                while(true)
                                                {
                                                   if((§`!O§[_loc2_] as §@!E§).mName.toUpperCase() == param1.toUpperCase())
                                                   {
                                                      (§`!O§[_loc2_] as §@!E§).setActiveStatus(true);
                                                      break loop5;
                                                   }
                                                   (§`!O§[_loc2_] as §@!E§).setActiveStatus(false);
                                                   break loop6;
                                                }
                                             }
                                          }
                                          addr140:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                continue loop4;
                                             }
                                             continue loop6;
                                          }
                                       }
                                       continue loop1;
                                    }
                                    continue;
                                 }
                                 §§goto(addr181);
                              }
                              while(true)
                              {
                                 §§goto(addr140);
                              }
                           }
                        }
                        this.§!w§.y = (§`!O§[_loc2_] as §@!E§).y + this.§5!4§;
                        this.§!w§.height = (§`!O§[_loc2_] as §@!E§).height + this.§1n§;
                        continue;
                     }
                     §§goto(addr46);
                  }
               }
               continue;
            }
            §§push(§`!O§[_loc2_] is §@!E§);
            §§goto(addr180);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§64§ = null;
         if(_loc6_ || this)
         {
            super.setEnabled(param1);
         }
         for each(_loc2_ in this.§"P§)
         {
            if(_loc6_)
            {
               _loc2_.setEnabled(param1);
            }
         }
      }
      
      public function §7!E§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(getItemByName("Button_Scroll1") == null);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     §§pop();
                     §§goto(addr41);
                  }
               }
            }
            if(§§pop())
            {
               if(_loc3_)
               {
                  §§goto(addr41);
               }
            }
            var _loc1_:§@!E§ = getItemByName(this.§!Q§) as §@!E§;
            if(_loc1_)
            {
               §§push(_loc1_.§,8§);
               loop3:
               while(true)
               {
                  §§push(0);
                  loop4:
                  while(true)
                  {
                     if(§§pop() > §§pop())
                     {
                        loop5:
                        while(true)
                        {
                           (getItemByName("Button_Scroll1") as §^'§).setComponentState(§@V§.COMPONENT_STATE_ACTIVE_DEFAULT);
                           addr178:
                           while(true)
                           {
                              continue loop5;
                           }
                        }
                        addr170:
                     }
                     else
                     {
                        addr154:
                        (getItemByName("Button_Scroll1") as §^'§).setComponentState(§@V§.§!%§);
                     }
                     while(true)
                     {
                        §§push(_loc1_.§,8§);
                        if(!_loc2_)
                        {
                           §§push(_loc1_.§#$§);
                           if(!_loc2_)
                           {
                              break;
                           }
                           continue loop4;
                        }
                        continue loop3;
                        §§goto(addr154);
                     }
                     if(§§pop() >= §§pop() - 1)
                     {
                        (getItemByName("Button_Scroll2") as §^'§).setComponentState(§@V§.§!%§);
                        if(!_loc3_)
                        {
                           (getItemByName("Button_Scroll2") as §^'§).setComponentState(§@V§.COMPONENT_STATE_ACTIVE_DEFAULT);
                           addr133:
                        }
                        §§goto(addr51);
                     }
                     §§goto(addr133);
                  }
               }
            }
            else
            {
               (getItemByName("Button_Scroll1") as §^'§).setComponentState(§@V§.§!%§);
               while(!(_loc2_ && this))
               {
                  (getItemByName("Button_Scroll2") as §^'§).setComponentState(§@V§.§!%§);
                  if(_loc3_ || _loc3_)
                  {
                     if(!(_loc3_ || _loc3_))
                     {
                        §§goto(addr178);
                     }
                     addr51:
                     return;
                  }
               }
            }
            §§goto(addr170);
         }
         addr41:
         if(!_loc2_)
         {
            §§push(getItemByName("Button_Scroll2") == null);
         }
      }
      
      public function §^-§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§@!E§ = null;
         var _loc1_:* = int(§`!O§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = §`!O§[_loc1_] as §@!E§;
            if(!_loc3_)
            {
               if(_loc2_)
               {
                  loop1:
                  while(true)
                  {
                     _loc2_.clear();
                     loop2:
                     while(true)
                     {
                        addr67:
                        while(true)
                        {
                           §`!O§.splice(_loc1_,1);
                           addr72:
                           while(!(_loc3_ && _loc1_))
                           {
                              continue loop1;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
               while(true)
               {
                  §§push(_loc1_);
                  if(_loc4_ || _loc3_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc1_ = §§pop();
                  if(_loc4_ || this)
                  {
                     while(false)
                     {
                        §§goto(addr67);
                     }
                     continue loop0;
                     addr65:
                  }
                  §§goto(addr72);
               }
            }
            §§goto(addr65);
         }
         if(_loc4_ || _loc3_)
         {
            this.§false§("");
         }
      }
      
      public function §%!;§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§64§ = null;
         for each(_loc1_ in this.§"P§)
         {
            if(_loc4_)
            {
               _loc1_.§%!;§();
            }
         }
      }
      
      public function §6U§() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§%s§(this.§!Q§));
            while(§§pop() != null)
            {
               §§push(this.§%s§(this.§!Q§));
               if(_loc1_ || this)
               {
                  return §§pop().§7!=§();
               }
            }
            if(_loc1_)
            {
               § L§.log("ERROR! Tried to get selections for noninited repeater!");
            }
         }
         return new Array();
      }
      
      public function §6x§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§%s§(this.§!Q§).§6x§(param1);
         }
      }
      
      public function §>!1§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§%s§(this.§!Q§).§>!1§(param1);
         }
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.clear();
            while(true)
            {
               this.§`C§ = null;
               §§goto(addr59);
            }
         }
         addr59:
         while(true)
         {
            this.§"P§ = null;
            do
            {
               this.§@O§ = null;
            }
            while(!(_loc2_ || _loc2_));
            
            if(_loc2_)
            {
               if(!_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
   }
}
