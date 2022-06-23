package §%4§
{
   import §-!D§.§4!,§;
   import §0!#§.§'!,§;
   import §0!#§.§-P§;
   import §0!#§.§0K§;
   import §0!#§.§1Z§;
   import §3a§.§7!+§;
   import com.rovio.assets.§]!>§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §]q§ extends §4!=§
   {
      
      public static const §7!?§:int = 0;
      
      public static const §%'§:int = 1;
      
      public static const §-4§:int = 2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §]q§)
         {
            §7!?§ = 0;
            if(!(_loc1_ && _loc1_))
            {
               §%'§ = 1;
               if(_loc2_ || _loc1_)
               {
               }
               §§goto(addr57);
            }
            §-4§ = 2;
         }
         addr57:
      }
      
      public var §`!C§:String;
      
      public var §=m§:Class;
      
      public var §=C§:String = null;
      
      public var §+!&§:Vector.<§1Z§>;
      
      public var § ;§:int;
      
      public var §6F§:Number;
      
      public var §+a§:Number;
      
      public var §,!9§:Number;
      
      public var §]g§:Number;
      
      public var §6!5§:Number;
      
      public var §>!J§:Number;
      
      public var §#!;§:Number;
      
      public var §;Y§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §@U§:int;
      
      public var §]!H§:Number;
      
      public var §^^§:String = "";
      
      public var §1G§:int;
      
      public var §0W§:int;
      
      public var §1=§:GlowFilter;
      
      public var §<!0§:Boolean = true;
      
      public var §+!@§:int;
      
      public var §1"§:int;
      
      public var §,c§:Number = 0;
      
      public var §7!6§:Number = 0;
      
      public var §=T§:Number = 0;
      
      public var §4T§:Number = 0;
      
      public var §=G§:Boolean = false;
      
      public var §3K§:Boolean = false;
      
      public var §`!0§:MovieClip = null;
      
      public function §]q§(param1:XML, param2:§4!=§, param3:§4!,§, param4:MovieClip = null)
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1052
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      public function §=i§(param1:Array = null, param2:Class = null) : void
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§9!&§ = null;
         var _loc8_:§1Z§ = null;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:XML = null;
         var _loc13_:§0!I§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:* = 0;
         var _loc18_:int = 0;
         if(_loc20_)
         {
            if(param2 == null)
            {
               if(!_loc19_)
               {
                  param2 = §0!I§;
                  addr65:
                  this.§+!&§ = new Vector.<§1Z§>();
                  if(!(_loc19_ && param1))
                  {
                     this.§;]§();
                     if(!(_loc19_ && _loc3_))
                     {
                        §§goto(addr87);
                     }
                  }
                  §§goto(addr104);
               }
               addr87:
               §§push(param1);
               if(_loc20_ || param2)
               {
                  if(§§pop() == null)
                  {
                     if(_loc20_ || this)
                     {
                        addr104:
                        param1 = getParentView().getRepeaterDataXML(mName);
                     }
                     §§goto(addr112);
                  }
                  §§push(param1);
               }
               if(!§§pop())
               {
                  addr112:
                  param1 = new Array();
                  §§goto(addr116);
               }
               addr116:
               var _loc3_:int = 0;
               loop0:
               while(true)
               {
                  if(_loc3_ >= param1.length)
                  {
                     if(_loc20_ || this)
                     {
                        if(param1.length > 1)
                        {
                        }
                        break;
                     }
                     break;
                  }
                  §§push(mName + "_Tab_");
                  if(_loc20_)
                  {
                     §§push(§§pop() + _loc3_);
                  }
                  _loc4_ = §§pop();
                  if(_loc19_ && param2)
                  {
                     break;
                  }
                  _loc5_ = new MovieClip();
                  (_loc6_ = <Container/>).@name = _loc4_;
                  _loc7_ = new §9!&§(_loc6_,this,null,_loc5_);
                  if(_loc20_ || this)
                  {
                     §+q§.push(_loc7_);
                  }
                  _loc8_ = new §1Z§(this.§1"§,_loc4_);
                  this.§+!&§.push(_loc8_);
                  if(!(_loc19_ && _loc3_))
                  {
                     §§push(this.§6!5§);
                     if(!(_loc19_ && this))
                     {
                        _loc9_ = int(§§pop());
                        if(_loc19_)
                        {
                           continue;
                        }
                        §§push(int(this.§ ;§));
                        if(!_loc19_)
                        {
                           _loc10_ = §§pop();
                           §§push(param1);
                           if(_loc20_)
                           {
                              §§push(_loc3_);
                              if(!_loc19_)
                              {
                                 if((§§pop()[§§pop()] as Array).length < _loc10_)
                                 {
                                    §§push(param1);
                                    if(!_loc19_)
                                    {
                                       addr218:
                                       §§push(_loc3_);
                                       if(!_loc19_)
                                       {
                                          _loc10_ = int((§§pop()[§§pop()] as Array).length);
                                          if(_loc20_)
                                          {
                                             addr229:
                                             if(this.§0W§ == §7!?§)
                                             {
                                                addr233:
                                                §§push(this.§,!9§);
                                                if(_loc20_ || param2)
                                                {
                                                   §§push(_loc10_);
                                                   if(!(_loc19_ && param2))
                                                   {
                                                      addr271:
                                                      §§push(§§pop() - 1);
                                                      if(!(_loc19_ && param2))
                                                      {
                                                         §§push(§§pop() * this.§#!;§);
                                                      }
                                                      §§push(§§pop() - §§pop());
                                                      if(!(_loc19_ && param2))
                                                      {
                                                         addr269:
                                                         §§push(2);
                                                      }
                                                      §§push(int(§§pop()));
                                                      if(_loc20_)
                                                      {
                                                         _loc9_ = §§pop();
                                                         addr275:
                                                         §§push(0);
                                                         if(!(_loc19_ && _loc3_))
                                                         {
                                                            addr283:
                                                            _loc11_ = §§pop();
                                                            if(!_loc19_)
                                                            {
                                                               loop4:
                                                               while(true)
                                                               {
                                                                  §§push(_loc11_);
                                                                  addr737:
                                                                  while(§§pop() < (param1[_loc3_] as Array).length)
                                                                  {
                                                                     addr287:
                                                                     §§push(param1);
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc3_);
                                                                        addr290:
                                                                        while(true)
                                                                        {
                                                                           _loc12_ = ((§§pop()[§§pop()] as Array)[_loc11_] as Array)[0] as XML;
                                                                           if(_loc20_)
                                                                           {
                                                                              if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
                                                                              {
                                                                                 if(_loc20_ || param2)
                                                                                 {
                                                                                    _loc7_.§+q§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
                                                                                    if(_loc19_ && this)
                                                                                    {
                                                                                    }
                                                                                    addr363:
                                                                                    _loc13_ = _loc7_.§+q§[_loc7_.§+q§.length - 1] as §0!I§;
                                                                                    if(_loc20_)
                                                                                    {
                                                                                       §§push(param1);
                                                                                       if(!_loc19_)
                                                                                       {
                                                                                          §§push(_loc3_);
                                                                                          if(_loc20_)
                                                                                          {
                                                                                             if(((§§pop()[§§pop()] as Array)[_loc11_] as Array)[1] != null)
                                                                                             {
                                                                                                if(!(_loc19_ && this))
                                                                                                {
                                                                                                   addr412:
                                                                                                   _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                                                                                                   if(_loc20_)
                                                                                                   {
                                                                                                      _loc13_.§-!B§(_loc14_,this.§=C§);
                                                                                                      if(!(_loc19_ && param1))
                                                                                                      {
                                                                                                         addr439:
                                                                                                         §§push(this.§1G§);
                                                                                                         if(!_loc19_)
                                                                                                         {
                                                                                                            if(§§pop() == §%'§)
                                                                                                            {
                                                                                                               if(_loc20_ || _loc3_)
                                                                                                               {
                                                                                                                  addr453:
                                                                                                                  _loc15_ = 2;
                                                                                                                  if(!_loc19_)
                                                                                                                  {
                                                                                                                     addr456:
                                                                                                                     _loc14_.y -= _loc14_.height / 2;
                                                                                                                     addr465:
                                                                                                                     if(this.§=C§ == null)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     addr475:
                                                                                                                     §§push(this.§@U§);
                                                                                                                     §§push(1);
                                                                                                                     if(!(_loc19_ && this))
                                                                                                                     {
                                                                                                                        if(§§pop() == §§pop())
                                                                                                                        {
                                                                                                                           _loc13_.x = _loc9_ + _loc11_ * this.§#!;§;
                                                                                                                           §§push(_loc13_);
                                                                                                                           §§push(this.§>!J§);
                                                                                                                           if(_loc20_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + _loc11_ * this.§;Y§);
                                                                                                                           }
                                                                                                                           §§pop().y = §§pop();
                                                                                                                           addr505:
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§push(_loc11_);
                                                                                                                           §§push(this.§ ;§);
                                                                                                                           if(_loc20_ || this)
                                                                                                                           {
                                                                                                                              §§push(this.§@U§);
                                                                                                                              if(!_loc19_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(!(_loc19_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() / §§pop());
                                                                                                                                    if(!(_loc19_ && param1))
                                                                                                                                    {
                                                                                                                                       _loc16_ = §§pop();
                                                                                                                                       if(_loc20_ || param1)
                                                                                                                                       {
                                                                                                                                          §§push(_loc11_);
                                                                                                                                          if(!(_loc19_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             §§push(_loc16_);
                                                                                                                                             if(!(_loc19_ && param2))
                                                                                                                                             {
                                                                                                                                                addr561:
                                                                                                                                                §§push(this.§ ;§);
                                                                                                                                                if(_loc20_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(!(_loc19_ && this))
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§@U§);
                                                                                                                                                      if(!_loc19_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(_loc20_)
                                                                                                                                                         {
                                                                                                                                                            addr580:
                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                            if(!(_loc19_ && param1))
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§ ;§);
                                                                                                                                                               if(!_loc19_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() / §§pop());
                                                                                                                                                                  if(_loc20_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(int(§§pop()));
                                                                                                                                                                     if(!_loc19_)
                                                                                                                                                                     {
                                                                                                                                                                        _loc17_ = §§pop();
                                                                                                                                                                        if(!_loc19_)
                                                                                                                                                                        {
                                                                                                                                                                           addr610:
                                                                                                                                                                           §§push(_loc11_);
                                                                                                                                                                           §§push(_loc16_ * this.§ ;§);
                                                                                                                                                                           if(!_loc19_)
                                                                                                                                                                           {
                                                                                                                                                                              addr616:
                                                                                                                                                                              §§push(§§pop() - §§pop() * this.§@U§);
                                                                                                                                                                              if(!(_loc19_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 addr628:
                                                                                                                                                                                 _loc18_ = §§pop() % this.§ ;§;
                                                                                                                                                                                 addr627:
                                                                                                                                                                                 if(!this.§<!0§)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                                                                                                                                                                                    if(!_loc19_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc13_);
                                                                                                                                                                                       §§push(this.§>!J§);
                                                                                                                                                                                       if(!(_loc19_ && _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc18_);
                                                                                                                                                                                          if(!_loc19_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() * this.§;Y§);
                                                                                                                                                                                             if(_loc20_ || _loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr724:
                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                if(!_loc19_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr715:
                                                                                                                                                                                                   §§push(_loc16_ * this.§ ;§);
                                                                                                                                                                                                   if(!_loc19_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() * this.§;Y§);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§pop().y = §§pop();
                                                                                                                                                                                                _loc8_.§[H§(_loc13_);
                                                                                                                                                                                                if(!(_loc19_ && _loc3_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr735:
                                                                                                                                                                                                   _loc11_++;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop4;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr724);
                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr715);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr724);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr627);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr616);
                                                                                                                                                                        }
                                                                                                                                                                        §§push(_loc13_);
                                                                                                                                                                        §§push(_loc9_ + _loc18_ * this.§#!;§);
                                                                                                                                                                        if(_loc20_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc16_ * this.§ ;§);
                                                                                                                                                                           if(!_loc19_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * this.§#!;§);
                                                                                                                                                                           }
                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                        }
                                                                                                                                                                        §§pop().x = §§pop();
                                                                                                                                                                        if(!(_loc19_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc13_);
                                                                                                                                                                           §§push(this.§>!J§);
                                                                                                                                                                           if(!(_loc19_ && _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() + _loc17_ * this.mButtonMarginY2);
                                                                                                                                                                           }
                                                                                                                                                                           §§pop().y = §§pop();
                                                                                                                                                                           if(_loc19_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop4;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr724);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr628);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr616);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr580);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr610);
                                                                                                                                          }
                                                                                                                                          §§goto(addr628);
                                                                                                                                       }
                                                                                                                                       §§goto(addr735);
                                                                                                                                    }
                                                                                                                                    §§goto(addr628);
                                                                                                                                 }
                                                                                                                                 §§goto(addr580);
                                                                                                                              }
                                                                                                                              §§goto(addr610);
                                                                                                                           }
                                                                                                                           §§goto(addr561);
                                                                                                                        }
                                                                                                                        §§goto(addr724);
                                                                                                                     }
                                                                                                                     §§goto(addr610);
                                                                                                                  }
                                                                                                                  _loc14_.y -= _loc15_;
                                                                                                                  §§goto(addr475);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr465);
                                                                                                         }
                                                                                                         §§goto(addr453);
                                                                                                      }
                                                                                                      §§goto(addr456);
                                                                                                   }
                                                                                                   §§goto(addr439);
                                                                                                }
                                                                                                §§goto(addr505);
                                                                                             }
                                                                                             §§goto(addr456);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr412);
                                                                                    }
                                                                                    §§goto(addr610);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 _loc7_.§+q§.push(new param2(_loc12_,_loc7_,new this.§=m§() as MovieClip));
                                                                              }
                                                                           }
                                                                           §§goto(addr363);
                                                                        }
                                                                        §§goto(addr287);
                                                                     }
                                                                  }
                                                                  if(!(_loc19_ && _loc3_))
                                                                  {
                                                                     _loc8_.§>J§("");
                                                                     if(_loc19_)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     _loc7_.§4^§(this.§ ;§,this.§6F§,this.§+a§,this.§+!@§ * this.§#!;§,this.§+!@§ * this.§;Y§,this.§@U§,this.§+!@§);
                                                                     if(_loc19_ && _loc3_)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            _loc3_++;
                                                            continue;
                                                         }
                                                         §§goto(addr737);
                                                      }
                                                      §§goto(addr283);
                                                   }
                                                   §§push(§§pop() / §§pop());
                                                }
                                                §§goto(addr271);
                                             }
                                             §§goto(addr275);
                                          }
                                          §§goto(addr233);
                                       }
                                       §§goto(addr290);
                                    }
                                    §§goto(addr289);
                                 }
                                 §§goto(addr229);
                              }
                              §§goto(addr290);
                           }
                           §§goto(addr218);
                        }
                        §§goto(addr283);
                     }
                     §§goto(addr269);
                  }
                  §§goto(addr233);
               }
               return;
            }
            §§goto(addr65);
         }
         §§goto(addr112);
      }
      
      public function get §>O§() : int
      {
         return this.§ ;§;
      }
      
      public function get §<!-§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§>O§);
            if(_loc2_)
            {
               if(§§pop() == 0)
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     §§goto(addr43);
                  }
               }
               §§push(this.§^o§(this.§^^§).§<F§.length / this.§>O§);
               if(_loc2_)
               {
                  §§push(§§pop() + 1);
               }
               return §§pop();
            }
            §§goto(addr43);
         }
         addr43:
         return 0;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§-P§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§1Z§ = null;
         var _loc4_:§9!&§ = getItemByName(this.§^^§) as §9!&§;
         if(_loc7_)
         {
            §§push(param2);
            if(_loc7_)
            {
               if(§§pop().toUpperCase() == "SCROLL_LEFT")
               {
                  if(!(_loc6_ && param3))
                  {
                     if(_loc4_)
                     {
                        if(!(_loc6_ && this))
                        {
                           _loc4_.§<!#§(_loc4_.§1x§ - 1);
                           this.§-B§();
                           if(!_loc7_)
                           {
                              addr84:
                              _loc4_.§<!#§(_loc4_.§1x§ + 1);
                              if(_loc7_)
                              {
                                 addr92:
                                 this.§-B§();
                                 addr94:
                              }
                              else
                              {
                                 addr146:
                                 §§push(param1 == §-P§.LISTENER_EVENT_MOUSE_UP);
                                 if(!(_loc6_ && param1))
                                 {
                                    addr157:
                                    addr158:
                                    if(§§pop())
                                    {
                                       addr159:
                                       §§pop();
                                       addr173:
                                       if(_loc7_)
                                       {
                                          addr162:
                                          §§push(param3 is §'!,§);
                                       }
                                       §§push(Boolean(_loc5_ = this.§^o§((param3 as §'!,§).mParentContainer.mName.toUpperCase())));
                                       if(!(_loc6_ && param2))
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc7_ || param1)
                                             {
                                                addr211:
                                                §§pop();
                                                §§goto(addr232);
                                             }
                                          }
                                          if(§§pop())
                                          {
                                             if(_loc7_ || param2)
                                             {
                                                _loc5_.§>J§((param3 as §'!,§).mName.toUpperCase());
                                             }
                                             §§goto(addr232);
                                          }
                                          addr232:
                                          if(!_loc6_)
                                          {
                                             §§push(param3 is §0!I§);
                                          }
                                          super.containerEventOccured(param1,param2,param3);
                                          return;
                                       }
                                       §§goto(addr211);
                                    }
                                    if(§§pop())
                                    {
                                       if(!(_loc6_ && param1))
                                       {
                                          §§goto(addr173);
                                       }
                                    }
                                    §§goto(addr211);
                                 }
                                 §§goto(addr159);
                              }
                           }
                           else
                           {
                              addr61:
                           }
                           §§goto(addr211);
                        }
                        §§goto(addr159);
                     }
                     §§goto(addr61);
                  }
                  §§goto(addr162);
               }
               else
               {
                  §§push(param2);
                  if(!(_loc6_ && this))
                  {
                     addr70:
                     if(§§pop().toUpperCase() == "SCROLL_RIGHT")
                     {
                        if(!(_loc6_ && param3))
                        {
                           if(_loc4_)
                           {
                              if(!_loc6_)
                              {
                                 §§goto(addr84);
                              }
                              §§goto(addr211);
                           }
                           §§goto(addr94);
                        }
                        else
                        {
                           addr116:
                           §§push(param1);
                           if(!(_loc6_ && param1))
                           {
                              §§push(§§pop() == §-P§.LISTENER_EVENT_MOUSE_DOWN);
                              §§push(§§pop() == §-P§.LISTENER_EVENT_MOUSE_DOWN);
                              if(_loc7_)
                              {
                                 if(!§§pop())
                                 {
                                    if(!(_loc6_ && this))
                                    {
                                       addr138:
                                       §§pop();
                                       if(!(_loc6_ && param1))
                                       {
                                          §§goto(addr146);
                                       }
                                       §§goto(addr159);
                                    }
                                 }
                                 §§goto(addr157);
                              }
                              §§goto(addr158);
                           }
                        }
                        §§goto(addr146);
                     }
                     else
                     {
                        addr96:
                        §§push(param2.length > 0);
                        if(_loc7_)
                        {
                           §§push(§§pop());
                           if(!_loc6_)
                           {
                              if(§§pop())
                              {
                                 §§pop();
                                 §§goto(addr116);
                              }
                           }
                           §§goto(addr157);
                        }
                     }
                     §§goto(addr138);
                  }
                  §§goto(addr96);
               }
            }
            §§goto(addr70);
         }
         §§goto(addr92);
      }
      
      public function § H§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§9!&§ = getItemByName(param1) as §9!&§;
         if(_loc5_ || this)
         {
            if(_loc3_)
            {
               if(_loc5_ || param2)
               {
                  addr50:
                  _loc3_.§<!#§(param2);
                  if(_loc4_)
                  {
                  }
                  §§goto(addr57);
               }
               this.§-B§();
            }
            addr57:
            return;
         }
         §§goto(addr50);
      }
      
      public function §^o§(param1:String) : §1Z§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(_loc2_ < this.§+!&§.length)
         {
            if(param1.toUpperCase() == (this.§+!&§[_loc2_] as §1Z§).mName.toUpperCase())
            {
               if(_loc3_)
               {
                  return this.§+!&§[_loc2_] as §1Z§;
               }
            }
            _loc2_++;
            if(!_loc3_)
            {
               break;
            }
         }
         return null;
      }
      
      public function §^B§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§^^§ = param1;
         }
         var _loc2_:int = 0;
         for(; _loc2_ < §+q§.length; _loc2_++)
         {
            §§push(§+q§[_loc2_] is §9!&§);
            if(!(_loc4_ && _loc3_))
            {
               if(!§§pop())
               {
                  continue;
               }
               if((§+q§[_loc2_] as §9!&§).mName.toUpperCase() != param1.toUpperCase())
               {
                  (§+q§[_loc2_] as §9!&§).setActiveStatus(false);
                  continue;
               }
               (§+q§[_loc2_] as §9!&§).setActiveStatus(true);
               §§push(this.§=G§);
               if(!(_loc4_ && _loc2_))
               {
                  addr64:
                  if(§§pop())
                  {
                     if(_loc4_ && _loc2_)
                     {
                        break;
                     }
                     this.§`!0§.x = (§+q§[_loc2_] as §9!&§).x + this.§=T§;
                     if(_loc3_)
                     {
                        this.§`!0§.width = (§+q§[_loc2_] as §9!&§).width + this.§,c§;
                        addr108:
                        if(this.§3K§)
                        {
                           this.§`!0§.y = (§+q§[_loc2_] as §9!&§).y + this.§4T§;
                           if(_loc4_ && param1)
                           {
                              continue;
                           }
                           this.§`!0§.height = (§+q§[_loc2_] as §9!&§).height + this.§7!6§;
                        }
                     }
                     continue;
                  }
               }
               §§goto(addr108);
            }
            §§goto(addr64);
         }
         this.§-B§();
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§1Z§ = null;
         if(_loc5_ || param1)
         {
            super.setEnabled(param1);
         }
         for each(_loc2_ in this.§+!&§)
         {
            if(_loc5_)
            {
               _loc2_.setEnabled(param1);
            }
         }
      }
      
      public function §-B§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(getItemByName("Button_Scroll1") == null);
            if(_loc2_ || _loc1_)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     §§pop();
                     if(_loc2_ || _loc2_)
                     {
                        addr47:
                        if(getItemByName("Button_Scroll2") == null)
                        {
                           if(!(_loc2_ || this))
                           {
                              addr56:
                              var _loc1_:§9!&§ = getItemByName(this.§^^§) as §9!&§;
                              if(!(_loc3_ && this))
                              {
                                 if(_loc1_)
                                 {
                                    if(_loc2_ || _loc1_)
                                    {
                                       §§push(_loc1_.§1x§);
                                       if(_loc2_)
                                       {
                                          §§push(0);
                                          if(_loc2_ || _loc3_)
                                          {
                                             if(§§pop() > §§pop())
                                             {
                                                (getItemByName("Button_Scroll1") as §7-§).setComponentState(§0K§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                addr122:
                                                if(_loc1_.§1x§ < _loc1_.§-!=§ - 1)
                                                {
                                                   addr128:
                                                   (getItemByName("Button_Scroll2") as §7-§).setComponentState(§0K§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                }
                                                else
                                                {
                                                   (getItemByName("Button_Scroll2") as §7-§).setComponentState(§0K§.§]x§);
                                                   if(_loc3_ && this)
                                                   {
                                                      addr171:
                                                      (getItemByName("Button_Scroll2") as §7-§).setComponentState(§0K§.§]x§);
                                                   }
                                                   else
                                                   {
                                                      addr162:
                                                   }
                                                   return;
                                                }
                                             }
                                             else
                                             {
                                                (getItemByName("Button_Scroll1") as §7-§).setComponentState(§0K§.§]x§);
                                                if(!_loc3_)
                                                {
                                                   §§goto(addr122);
                                                }
                                             }
                                             §§goto(addr162);
                                          }
                                       }
                                       §§goto(addr122);
                                    }
                                    §§goto(addr128);
                                 }
                                 else
                                 {
                                    (getItemByName("Button_Scroll1") as §7-§).setComponentState(§0K§.§]x§);
                                 }
                              }
                              §§goto(addr171);
                           }
                        }
                        §§goto(addr56);
                     }
                     return;
                  }
               }
            }
            §§goto(addr47);
         }
         §§goto(addr56);
      }
      
      public function §;]§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§9!&§ = null;
         var _loc1_:* = int(§+q§.length - 1);
         while(_loc1_ >= 0)
         {
            _loc2_ = §+q§[_loc1_] as §9!&§;
            if(_loc4_)
            {
               if(_loc2_)
               {
                  if(_loc4_ || _loc2_)
                  {
                     _loc2_.clear();
                     if(_loc4_)
                     {
                        addr69:
                        §+q§.splice(_loc1_,1);
                        if(!_loc4_)
                        {
                           continue;
                        }
                     }
                  }
                  §§goto(addr69);
               }
               §§push(_loc1_);
               if(_loc4_)
               {
                  §§push(§§pop() - 1);
               }
               _loc1_ = §§pop();
               continue;
            }
            §§goto(addr69);
         }
         if(_loc4_ || _loc2_)
         {
            this.§^B§("");
         }
      }
      
      public function §'!J§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§1Z§ = null;
         for each(_loc1_ in this.§+!&§)
         {
            if(!_loc5_)
            {
               _loc1_.§'!J§();
            }
         }
      }
      
      public function §[2§() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§^o§(this.§^^§));
            if(_loc1_ || _loc1_)
            {
               if(§§pop() == null)
               {
                  if(!(_loc2_ && this))
                  {
                     §7!+§.log("ERROR! Tried to get selections for noninited repeater!");
                     if(_loc1_ || this)
                     {
                        §§goto(addr73);
                     }
                  }
                  §§goto(addr73);
               }
               §§push(this.§^o§(this.§^^§));
            }
            return §§pop().§35§();
         }
         addr73:
         return new Array();
      }
      
      public function §[f§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§^o§(this.§^^§).§[f§(param1);
         }
      }
      
      public function §6,§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§^o§(this.§^^§).§6,§(param1);
         }
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.clear();
            if(_loc1_ || _loc2_)
            {
               addr47:
               this.§=m§ = null;
               if(!(_loc2_ && this))
               {
                  §§goto(addr57);
               }
               §§goto(addr67);
            }
            addr57:
            this.§+!&§ = null;
            if(!(_loc2_ && this))
            {
               addr67:
               this.§1=§ = null;
            }
            return;
         }
         §§goto(addr47);
      }
   }
}
