package §"!E§
{
   import § !r§.§`![§;
   import §!y§.§2U§;
   import §#!4§.§'^§;
   import §#!4§.§+!S§;
   import §#!4§.§8!L§;
   import §#!4§.§<f§;
   import com.rovio.assets.§1F§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §?j§ extends §[!s§
   {
      
      public static const §"!;§:int = 0;
      
      public static const §8R§:int = 1;
      
      public static const §#!6§:int = 2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §"!;§ = 0;
            if(_loc2_)
            {
               §8R§ = 1;
               if(!(_loc1_ && §?j§))
               {
                  addr49:
                  §#!6§ = 2;
               }
               return;
            }
         }
         §§goto(addr49);
      }
      
      public var §%!F§:String;
      
      public var §!!§:Class;
      
      public var §;!u§:String = null;
      
      public var §9v§:Vector.<§8!L§>;
      
      public var §0$§:int;
      
      public var §?4§:Number;
      
      public var §6!a§:Number;
      
      public var §"!3§:Number;
      
      public var §5W§:Number;
      
      public var §=-§:Number;
      
      public var final:Number;
      
      public var §]x§:Number;
      
      public var §+!3§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §>g§:int;
      
      public var §-<§:Number;
      
      public var §]!k§:String = "";
      
      public var §0!R§:int;
      
      public var §^x§:int;
      
      public var §4!3§:GlowFilter;
      
      public var §-B§:Boolean = true;
      
      public var §3!1§:int;
      
      public var §,k§:int;
      
      public var §#!j§:Number = 0;
      
      public var §[!'§:Number = 0;
      
      public var §]&§:Number = 0;
      
      public var §@!s§:Number = 0;
      
      public var §7]§:Boolean = false;
      
      public var §[&§:Boolean = false;
      
      public var § F§:MovieClip = null;
      
      public function §?j§(param1:XML, param2:§[!s§, param3:§2U§, param4:MovieClip = null)
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1111
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      public function §<!u§(param1:Array = null, param2:Class = null) : void
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§1!W§ = null;
         var _loc8_:§8!L§ = null;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:XML = null;
         var _loc13_:§ else§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:* = 0;
         var _loc16_:* = 0;
         var _loc17_:* = 0;
         var _loc18_:* = 0;
         if(_loc20_ || this)
         {
            if(param2 == null)
            {
               if(!(_loc19_ && param1))
               {
                  param2 = § else§;
               }
               §§goto(addr87);
            }
            this.§9v§ = new Vector.<§8!L§>();
            if(_loc20_)
            {
               this.§;!>§();
               if(_loc20_)
               {
                  §§goto(addr87);
               }
               §§goto(addr99);
            }
         }
         addr87:
         §§push(param1);
         if(!_loc19_)
         {
            if(§§pop() == null)
            {
               if(!(_loc19_ && param2))
               {
                  addr99:
                  param1 = getParentView().getRepeaterDataXML(mName);
                  §§goto(addr105);
               }
               §§goto(addr107);
            }
            addr105:
            §§goto(addr106);
         }
         addr106:
         if(!param1)
         {
            addr107:
            param1 = new Array();
         }
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= param1.length)
            {
               if(_loc20_ || param1)
               {
                  break;
               }
               §§goto(addr808);
            }
            §§push(mName + "_Tab_");
            if(_loc20_ || this)
            {
               §§push(§§pop() + _loc3_);
            }
            _loc4_ = §§pop();
            if(!_loc20_)
            {
               break;
            }
            _loc5_ = new MovieClip();
            (_loc6_ = <Container/>).@name = _loc4_;
            _loc7_ = new §1!W§(_loc6_,this,null,_loc5_);
            if(!_loc19_)
            {
               §?n§.push(_loc7_);
            }
            _loc8_ = new §8!L§(this.§,k§,_loc4_);
            if(!(_loc20_ || this))
            {
               continue;
            }
            this.§9v§.push(_loc8_);
            §§push(this.§=-§);
            if(!_loc19_)
            {
               §§push(int(§§pop()));
               if(_loc20_ || _loc3_)
               {
                  _loc9_ = §§pop();
                  if(_loc19_)
                  {
                     continue;
                  }
                  §§push(this.§0$§);
                  if(_loc20_)
                  {
                     §§push(int(§§pop()));
                     if(_loc20_ || _loc3_)
                     {
                        addr201:
                        _loc10_ = §§pop();
                        §§push(param1);
                        if(_loc20_)
                        {
                           §§push(_loc3_);
                           if(_loc20_ || param1)
                           {
                              if((§§pop()[§§pop()] as Array).length < _loc10_)
                              {
                                 §§push(param1);
                                 if(_loc20_ || this)
                                 {
                                    §§push(_loc3_);
                                    if(!_loc19_)
                                    {
                                       addr235:
                                       _loc10_ = int((§§pop()[§§pop()] as Array).length);
                                       addr230:
                                       if(_loc20_ || param1)
                                       {
                                          addr243:
                                          if(this.§^x§ == §"!;§)
                                          {
                                             §§push(this.§"!3§);
                                             if(_loc20_ || this)
                                             {
                                                addr256:
                                                §§push(_loc10_);
                                                if(_loc20_ || param2)
                                                {
                                                   addr280:
                                                   §§push(§§pop() - 1);
                                                   if(_loc20_)
                                                   {
                                                      §§push(§§pop() * this.§]x§);
                                                   }
                                                   §§push(§§pop() - §§pop());
                                                   if(!(_loc19_ && param1))
                                                   {
                                                      §§push(2);
                                                   }
                                                   _loc9_ = int(§§pop());
                                                   if(!(_loc19_ && param2))
                                                   {
                                                      addr289:
                                                      §§push(0);
                                                      if(!(_loc19_ && param1))
                                                      {
                                                         _loc11_ = §§pop();
                                                         addr298:
                                                         while(true)
                                                         {
                                                            §§push(_loc11_);
                                                         }
                                                         addr749:
                                                      }
                                                      loop2:
                                                      for(; §§pop() < (param1[_loc3_] as Array).length; §§goto(addr749))
                                                      {
                                                         §§push(param1);
                                                         while(true)
                                                         {
                                                            §§push(_loc3_);
                                                            addr302:
                                                            while(true)
                                                            {
                                                               _loc12_ = ((§§pop()[§§pop()] as Array)[_loc11_] as Array)[0] as XML;
                                                               if(_loc20_)
                                                               {
                                                                  if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
                                                                  {
                                                                     if(_loc20_)
                                                                     {
                                                                        _loc7_.§?n§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
                                                                        if(_loc19_)
                                                                        {
                                                                        }
                                                                        addr365:
                                                                        _loc13_ = _loc7_.§?n§[_loc7_.§?n§.length - 1] as § else§;
                                                                        §§push(param1);
                                                                        if(_loc20_ || this)
                                                                        {
                                                                           §§push(_loc3_);
                                                                           if(!(_loc19_ && param1))
                                                                           {
                                                                              if(((§§pop()[§§pop()] as Array)[_loc11_] as Array)[1] != null)
                                                                              {
                                                                                 if(_loc20_)
                                                                                 {
                                                                                    addr417:
                                                                                    _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       _loc13_.setIcon(_loc14_,this.§;!u§);
                                                                                       §§push(this.§0!R§);
                                                                                       if(!_loc19_)
                                                                                       {
                                                                                          addr478:
                                                                                          if(§§pop() == §8R§)
                                                                                          {
                                                                                             §§push(2);
                                                                                          }
                                                                                          §§push(this.§>g§);
                                                                                          §§push(1);
                                                                                          if(_loc20_ || param2)
                                                                                          {
                                                                                             if(§§pop() == §§pop())
                                                                                             {
                                                                                                if(!(_loc19_ && param2))
                                                                                                {
                                                                                                   _loc13_.x = _loc9_ + _loc11_ * this.§]x§;
                                                                                                   if(!_loc19_)
                                                                                                   {
                                                                                                      §§push(_loc13_);
                                                                                                      §§push(this.final);
                                                                                                      if(_loc20_ || this)
                                                                                                      {
                                                                                                         §§push(§§pop() + _loc11_ * this.§+!3§);
                                                                                                      }
                                                                                                      §§pop().y = §§pop();
                                                                                                      if(_loc20_ || this)
                                                                                                      {
                                                                                                      }
                                                                                                      addr748:
                                                                                                      _loc11_++;
                                                                                                      continue loop2;
                                                                                                   }
                                                                                                   addr639:
                                                                                                   if(this.§-B§)
                                                                                                   {
                                                                                                      if(_loc19_)
                                                                                                      {
                                                                                                         continue loop2;
                                                                                                      }
                                                                                                      §§push(_loc13_);
                                                                                                      §§push(_loc9_ + _loc18_ * this.§]x§);
                                                                                                      if(!(_loc19_ && this))
                                                                                                      {
                                                                                                         §§push(_loc16_ * this.§0$§);
                                                                                                         if(!_loc19_)
                                                                                                         {
                                                                                                            §§push(§§pop() * this.§]x§);
                                                                                                         }
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                      }
                                                                                                      §§pop().x = §§pop();
                                                                                                      §§push(_loc13_);
                                                                                                      §§push(this.final);
                                                                                                      if(_loc20_)
                                                                                                      {
                                                                                                         §§push(§§pop() + _loc17_ * this.mButtonMarginY2);
                                                                                                      }
                                                                                                      §§pop().y = §§pop();
                                                                                                      addr745:
                                                                                                      _loc8_.§57§(_loc13_);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                                                                                                      if(_loc20_)
                                                                                                      {
                                                                                                         §§push(_loc13_);
                                                                                                         §§push(this.final);
                                                                                                         if(_loc20_ || this)
                                                                                                         {
                                                                                                            §§push(_loc18_);
                                                                                                            if(_loc20_ || param1)
                                                                                                            {
                                                                                                               §§push(§§pop() * this.§+!3§);
                                                                                                               if(_loc20_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(!(_loc19_ && param2))
                                                                                                                  {
                                                                                                                     addr737:
                                                                                                                     §§push(_loc16_ * this.§0$§);
                                                                                                                     if(!(_loc19_ && _loc3_))
                                                                                                                     {
                                                                                                                        addr733:
                                                                                                                        §§push(§§pop() * this.§+!3§);
                                                                                                                     }
                                                                                                                     §§pop().y = §§pop() + §§pop();
                                                                                                                     if(!(_loc19_ && param1))
                                                                                                                     {
                                                                                                                        §§goto(addr745);
                                                                                                                     }
                                                                                                                     §§goto(addr748);
                                                                                                                  }
                                                                                                                  §§goto(addr737);
                                                                                                               }
                                                                                                               §§goto(addr733);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr737);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr748);
                                                                                                   §§goto(addr748);
                                                                                                }
                                                                                                §§goto(addr745);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(_loc11_);
                                                                                                §§push(this.§0$§);
                                                                                                if(_loc20_ || param2)
                                                                                                {
                                                                                                   addr540:
                                                                                                   §§push(this.§>g§);
                                                                                                   if(_loc20_)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(_loc20_ || this)
                                                                                                      {
                                                                                                         §§push(§§pop() / §§pop());
                                                                                                         if(_loc20_)
                                                                                                         {
                                                                                                            §§push(int(§§pop()));
                                                                                                            if(_loc20_ || param1)
                                                                                                            {
                                                                                                               _loc16_ = §§pop();
                                                                                                               §§push(_loc11_);
                                                                                                               §§push(_loc16_);
                                                                                                               if(!_loc19_)
                                                                                                               {
                                                                                                                  §§push(this.§0$§);
                                                                                                                  if(_loc20_ || _loc3_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(!(_loc19_ && param2))
                                                                                                                     {
                                                                                                                        addr585:
                                                                                                                        §§push(this.§>g§);
                                                                                                                        if(!(_loc19_ && this))
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(!_loc19_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                              if(_loc20_)
                                                                                                                              {
                                                                                                                                 §§push(this.§0$§);
                                                                                                                                 if(_loc20_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() / §§pop());
                                                                                                                                    if(!(_loc19_ && this))
                                                                                                                                    {
                                                                                                                                       addr612:
                                                                                                                                       §§push(int(§§pop()));
                                                                                                                                       if(!_loc19_)
                                                                                                                                       {
                                                                                                                                          addr615:
                                                                                                                                          _loc17_ = §§pop();
                                                                                                                                          addr620:
                                                                                                                                          §§push(_loc11_);
                                                                                                                                          §§push(_loc16_ * this.§0$§);
                                                                                                                                          if(_loc20_)
                                                                                                                                          {
                                                                                                                                             addr626:
                                                                                                                                             §§push(§§pop() - §§pop() * this.§>g§);
                                                                                                                                             if(!(_loc19_ && param1))
                                                                                                                                             {
                                                                                                                                                addr637:
                                                                                                                                                §§push(int(§§pop() % this.§0$§));
                                                                                                                                             }
                                                                                                                                             §§goto(addr637);
                                                                                                                                          }
                                                                                                                                          §§goto(addr626);
                                                                                                                                       }
                                                                                                                                       _loc18_ = §§pop();
                                                                                                                                       §§goto(addr639);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr637);
                                                                                                                              }
                                                                                                                              §§goto(addr612);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr626);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr620);
                                                                                                            }
                                                                                                            §§goto(addr615);
                                                                                                         }
                                                                                                         §§goto(addr637);
                                                                                                      }
                                                                                                      §§goto(addr585);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr615);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr540);
                                                                                       }
                                                                                       _loc15_ = §§pop();
                                                                                       if(!(_loc19_ && this))
                                                                                       {
                                                                                          _loc14_.y -= _loc14_.height / 2;
                                                                                       }
                                                                                       if(this.§;!u§ == null)
                                                                                       {
                                                                                          if(!(_loc19_ && param2))
                                                                                          {
                                                                                             _loc14_.y -= _loc15_;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr478);
                                                                                 }
                                                                                 §§goto(addr748);
                                                                              }
                                                                              §§goto(addr478);
                                                                           }
                                                                        }
                                                                        §§goto(addr417);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     _loc7_.§?n§.push(new param2(_loc12_,_loc7_,new this.§!!§() as MovieClip));
                                                                  }
                                                               }
                                                               §§goto(addr365);
                                                            }
                                                         }
                                                      }
                                                      _loc8_.§#!L§("");
                                                   }
                                                   _loc7_.§5a§(this.§0$§,this.§?4§,this.§6!a§,this.§3!1§ * this.§]x§,this.§3!1§ * this.§+!3§,this.§>g§,this.§3!1§);
                                                   continue;
                                                }
                                                §§push(§§pop() / §§pop());
                                             }
                                             §§goto(addr280);
                                          }
                                          §§goto(addr289);
                                       }
                                       §§goto(addr298);
                                    }
                                    §§goto(addr302);
                                 }
                                 §§goto(addr301);
                              }
                              §§goto(addr243);
                           }
                           §§goto(addr230);
                        }
                        §§goto(addr301);
                     }
                     §§goto(addr243);
                  }
                  §§goto(addr235);
               }
               §§goto(addr201);
            }
            §§goto(addr256);
         }
         if(param1.length > 1)
         {
         }
         addr808:
      }
      
      public function get §^c§() : int
      {
         return this.§0$§;
      }
      
      public function get §1!j§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§^c§);
            if(_loc1_)
            {
               if(§§pop() == 0)
               {
                  if(_loc1_ || _loc1_)
                  {
                     §§push(0);
                  }
                  else
                  {
                     §§goto(addr43);
                  }
               }
               §§goto(addr43);
            }
            return §§pop();
         }
         addr43:
         §§push(this.§+!!§(this.§]!k§).§&!p§.length / this.§^c§);
         if(!_loc2_)
         {
            §§push(§§pop() + 1);
         }
         return §§pop();
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§+!S§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§8!L§ = null;
         var _loc4_:§1!W§ = getItemByName(this.§]!k§) as §1!W§;
         if(_loc7_ || param1)
         {
            §§push(param2);
            if(_loc7_)
            {
               if(§§pop().toUpperCase() == "SCROLL_LEFT")
               {
                  if(_loc4_)
                  {
                     _loc4_.§]!$§(_loc4_.§%<§ - 1);
                     this.§>§();
                  }
               }
               else
               {
                  §§push(param2);
                  if(!_loc6_)
                  {
                     if(§§pop().toUpperCase() == "SCROLL_RIGHT")
                     {
                        if(_loc4_)
                        {
                           _loc4_.§]!$§(_loc4_.§%<§ + 1);
                           addr65:
                           this.§>§();
                        }
                     }
                     else
                     {
                        §§goto(addr69);
                     }
                  }
                  addr69:
                  §§push(param2.length > 0);
                  §§push(param2.length > 0);
                  if(_loc7_ || param2)
                  {
                     if(§§pop())
                     {
                        if(_loc7_)
                        {
                           §§pop();
                           §§push(param1);
                           if(_loc7_ || param1)
                           {
                              §§push(§§pop() == §+!S§.LISTENER_EVENT_MOUSE_DOWN);
                              §§push(§§pop() == §+!S§.LISTENER_EVENT_MOUSE_DOWN);
                              if(_loc7_ || param2)
                              {
                              }
                              §§goto(addr120);
                           }
                           §§push(§§pop() == §+!S§.LISTENER_EVENT_MOUSE_UP);
                        }
                     }
                     §§goto(addr120);
                  }
                  addr120:
                  if(!§§pop())
                  {
                     §§pop();
                     §§push(param1);
                  }
                  if(§§pop())
                  {
                     if(_loc7_ || param3)
                     {
                        §§pop();
                        §§push(param3 is §'^§);
                     }
                  }
                  if(§§pop())
                  {
                     §§push(Boolean(_loc5_ = this.§+!!§((param3 as §'^§).mParentContainer.mName.toUpperCase())));
                     if(!(_loc6_ && param1))
                     {
                        if(§§pop())
                        {
                           if(_loc7_ || this)
                           {
                              §§pop();
                              if(!_loc6_)
                              {
                                 addr177:
                                 if(param3 is § else§)
                                 {
                                    if(_loc6_)
                                    {
                                    }
                                 }
                                 §§goto(addr187);
                              }
                              _loc5_.§#!L§((param3 as §'^§).mName.toUpperCase());
                              §§goto(addr187);
                           }
                        }
                     }
                     §§goto(addr177);
                  }
                  §§goto(addr187);
               }
               addr187:
               super.containerEventOccured(param1,param2,param3);
               return;
            }
            §§goto(addr69);
         }
         §§goto(addr65);
      }
      
      public function §1;§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§1!W§ = getItemByName(param1) as §1!W§;
         if(!(_loc4_ && param1))
         {
            if(_loc3_)
            {
               if(!_loc4_)
               {
                  _loc3_.§]!$§(param2);
                  if(_loc4_)
                  {
                  }
                  §§goto(addr52);
               }
               this.§>§();
            }
         }
         addr52:
      }
      
      public function §+!!§(param1:String) : §8!L§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(_loc2_ < this.§9v§.length)
         {
            if(param1.toUpperCase() == (this.§9v§[_loc2_] as §8!L§).mName.toUpperCase())
            {
               if(_loc4_ || _loc3_)
               {
                  return this.§9v§[_loc2_] as §8!L§;
               }
            }
            else
            {
               _loc2_++;
               if(_loc3_ && this)
               {
                  break;
               }
            }
         }
         return null;
      }
      
      public function §+!b§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§]!k§ = param1;
         }
         var _loc2_:int = 0;
         while(_loc2_ < §?n§.length)
         {
            §§push(§?n§[_loc2_] is §1!W§);
            if(!(_loc3_ && _loc2_))
            {
               if(§§pop())
               {
                  if((§?n§[_loc2_] as §1!W§).mName.toUpperCase() == param1.toUpperCase())
                  {
                     if(_loc4_ || _loc2_)
                     {
                        (§?n§[_loc2_] as §1!W§).setActiveStatus(true);
                        if(!_loc3_)
                        {
                           §§push(this.§7]§);
                           if(!(_loc3_ && _loc3_))
                           {
                              if(§§pop())
                              {
                                 if(_loc3_)
                                 {
                                    continue;
                                 }
                                 this.§ F§.x = (§?n§[_loc2_] as §1!W§).x + this.§]&§;
                                 this.§ F§.width = (§?n§[_loc2_] as §1!W§).width + this.§#!j§;
                              }
                              addr113:
                              if(this.§[&§)
                              {
                                 if(_loc4_ || this)
                                 {
                                    this.§ F§.y = (§?n§[_loc2_] as §1!W§).y + this.§@!s§;
                                    if(_loc4_ || this)
                                    {
                                       this.§ F§.height = (§?n§[_loc2_] as §1!W§).height + this.§[!'§;
                                       addr170:
                                       _loc2_++;
                                       addr162:
                                       if(_loc3_ && _loc2_)
                                       {
                                          break;
                                       }
                                       continue;
                                       addr162:
                                    }
                                    §§goto(addr162);
                                 }
                                 §§goto(addr184);
                              }
                           }
                           §§goto(addr113);
                        }
                        §§goto(addr162);
                     }
                     break;
                  }
                  (§?n§[_loc2_] as §1!W§).setActiveStatus(false);
               }
               §§goto(addr170);
            }
            §§goto(addr113);
         }
         this.§>§();
         addr184:
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§8!L§ = null;
         if(_loc6_ || param1)
         {
            super.setEnabled(param1);
         }
         for each(_loc2_ in this.§9v§)
         {
            if(!_loc5_)
            {
               _loc2_.setEnabled(param1);
            }
         }
      }
      
      public function §>§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(getItemByName("Button_Scroll1") == null);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §§pop();
                     if(_loc3_ || this)
                     {
                        addr53:
                        addr48:
                        if(getItemByName("Button_Scroll2") == null)
                        {
                           if(!_loc2_)
                           {
                              §§goto(addr56);
                           }
                        }
                        var _loc1_:§1!W§ = getItemByName(this.§]!k§) as §1!W§;
                        if(!_loc2_)
                        {
                           if(_loc1_)
                           {
                              if(_loc3_)
                              {
                                 §§push(_loc1_.§%<§);
                                 if(!_loc2_)
                                 {
                                    §§push(0);
                                    if(_loc3_)
                                    {
                                       if(§§pop() > §§pop())
                                       {
                                          if(_loc3_ || _loc1_)
                                          {
                                             (getItemByName("Button_Scroll1") as §#!'§).setComponentState(§<f§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                             if(_loc3_ || _loc3_)
                                             {
                                                addr120:
                                                addr124:
                                                addr122:
                                                if(_loc1_.§%<§ < _loc1_.§>q§ - 1)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      (getItemByName("Button_Scroll2") as §#!'§).setComponentState(§<f§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                      addr128:
                                                   }
                                                }
                                                else
                                                {
                                                   (getItemByName("Button_Scroll2") as §#!'§).setComponentState(§<f§.§!`§);
                                                }
                                             }
                                          }
                                          else
                                          {
                                             addr164:
                                             (getItemByName("Button_Scroll2") as §#!'§).setComponentState(§<f§.§!`§);
                                          }
                                          return;
                                       }
                                       (getItemByName("Button_Scroll1") as §#!'§).setComponentState(§<f§.§!`§);
                                       §§goto(addr120);
                                       §§goto(addr120);
                                    }
                                    §§goto(addr124);
                                 }
                                 §§goto(addr122);
                              }
                              §§goto(addr128);
                           }
                           else
                           {
                              (getItemByName("Button_Scroll1") as §#!'§).setComponentState(§<f§.§!`§);
                           }
                           §§goto(addr164);
                        }
                        §§goto(addr120);
                     }
                     addr56:
                     return;
                  }
               }
            }
            §§goto(addr53);
         }
         §§goto(addr48);
      }
      
      public function §;!>§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§1!W§ = null;
         var _loc1_:* = int(§?n§.length - 1);
         while(_loc1_ >= 0)
         {
            _loc2_ = §?n§[_loc1_] as §1!W§;
            if(!_loc3_)
            {
               if(_loc2_)
               {
                  if(!(_loc4_ || _loc1_))
                  {
                     continue;
                  }
                  _loc2_.clear();
                  if(_loc3_ && _loc2_)
                  {
                     continue;
                  }
                  §?n§.splice(_loc1_,1);
                  if(!(_loc4_ || _loc2_))
                  {
                     continue;
                  }
               }
               §§push(_loc1_);
               if(_loc4_)
               {
                  §§push(§§pop() - 1);
               }
               _loc1_ = §§pop();
            }
         }
         if(_loc4_ || _loc2_)
         {
            this.§+!b§("");
         }
      }
      
      public function §!8§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§8!L§ = null;
         for each(_loc1_ in this.§9v§)
         {
            if(_loc4_ || this)
            {
               _loc1_.§!8§();
            }
         }
      }
      
      public function §9!0§() : Array
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§+!!§(this.§]!k§));
            if(!_loc1_)
            {
               if(§§pop() == null)
               {
                  if(!_loc1_)
                  {
                     addr44:
                     §`![§.log("ERROR! Tried to get selections for noninited repeater!");
                     if(_loc2_)
                     {
                        return new Array();
                     }
                  }
               }
               §§push(this.§+!!§(this.§]!k§));
            }
            return §§pop().§<<§();
         }
         §§goto(addr44);
      }
      
      public function §+!j§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§+!!§(this.§]!k§).§+!j§(param1);
         }
      }
      
      public function §;[§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§+!!§(this.§]!k§).§;[§(param1);
         }
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.clear();
            if(_loc1_)
            {
               this.§!!§ = null;
               if(!(_loc2_ && this))
               {
                  this.§9v§ = null;
                  if(!_loc1_)
                  {
                  }
               }
               §§goto(addr50);
            }
            this.§4!3§ = null;
         }
         addr50:
      }
   }
}
