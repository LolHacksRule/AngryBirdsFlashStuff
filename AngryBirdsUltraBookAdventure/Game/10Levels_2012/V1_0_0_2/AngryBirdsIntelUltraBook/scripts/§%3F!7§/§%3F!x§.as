package §?!7§
{
   import §2h§.§'!^§;
   import §9Y§.§+!!§;
   import §9Y§.§2!2§;
   import §9Y§.§6!8§;
   import §9Y§.§9j§;
   import §^_§.§!>§;
   import com.rovio.assets.§%!G§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §?!x§ extends §8;§
   {
      
      public static const § !q§:int = 0;
      
      public static const §,!§:int = 1;
      
      public static const §<!5§:int = 2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            § !q§ = 0;
         }
         while(true)
         {
            §,!§ = 1;
            while(!_loc2_)
            {
               §<!5§ = 2;
               if(_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      public var §7G§:String;
      
      public var §+!#§:Class;
      
      public var §'Z§:String = null;
      
      public var §>!e§:Vector.<§2!2§>;
      
      public var §%!_§:int;
      
      public var §37§:Number;
      
      public var §3!l§:Number;
      
      public var §'!J§:Number;
      
      public var §%;§:Number;
      
      public var §^9§:Number;
      
      public var §7w§:Number;
      
      public var §[6§:Number;
      
      public var §69§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §;I§:int;
      
      public var §?!3§:Number;
      
      public var §5!i§:String = "";
      
      public var §9l§:int;
      
      public var §0!m§:int;
      
      public var §3!m§:GlowFilter;
      
      public var §^!;§:Boolean = true;
      
      public var §=<§:int;
      
      public var §>r§:int;
      
      public var §4!!§:Number = 0;
      
      public var §3y§:Number = 0;
      
      public var §%!2§:Number = 0;
      
      public var §+!9§:Number = 0;
      
      public var §]!1§:Boolean = false;
      
      public var §[]§:Boolean = false;
      
      public var §0H§:MovieClip = null;
      
      public function §?!x§(param1:XML, param2:§8;§, param3:§'!^§, param4:MovieClip = null)
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1321
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      public function §8!2§(param1:Array = null, param2:Class = null) : void
      {
         var _loc19_:Boolean = true;
         var _loc20_:Boolean = false;
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§7p§ = null;
         var _loc8_:§2!2§ = null;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:XML = null;
         var _loc13_:§=!#§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:* = 0;
         var _loc16_:int = 0;
         var _loc17_:* = 0;
         var _loc18_:* = 0;
         if(_loc19_ || _loc3_)
         {
            if(param2 == null)
            {
               if(_loc19_)
               {
                  param2 = §=!#§;
                  addr69:
                  this.§>!e§ = new Vector.<§2!2§>();
                  if(!(_loc20_ && param1))
                  {
                     this.§7g§();
                     if(!_loc20_)
                     {
                        §§push(param1);
                        if(!_loc20_)
                        {
                           if(§§pop() == null)
                           {
                              if(!_loc20_)
                              {
                                 addr93:
                                 param1 = getParentView().getRepeaterDataXML(mName);
                              }
                              §§goto(addr101);
                           }
                           §§push(param1);
                        }
                        if(!§§pop())
                        {
                           addr101:
                           param1 = new Array();
                           §§goto(addr105);
                        }
                        addr105:
                        var _loc3_:int = 0;
                        loop0:
                        while(true)
                        {
                           if(_loc3_ >= param1.length)
                           {
                              if(!_loc20_)
                              {
                                 if(param1.length > 1)
                                 {
                                 }
                                 break;
                              }
                              break;
                           }
                           §§push(mName + "_Tab_");
                           if(!(_loc20_ && param1))
                           {
                              §§push(§§pop() + _loc3_);
                           }
                           _loc4_ = §§pop();
                           if(_loc20_)
                           {
                              break;
                           }
                           _loc5_ = new MovieClip();
                           (_loc6_ = <Container/>).@name = _loc4_;
                           _loc7_ = new §7p§(_loc6_,this,null,_loc5_);
                           if(_loc19_ || this)
                           {
                              §>!!§.push(_loc7_);
                           }
                           _loc8_ = new §2!2§(this.§>r§,_loc4_);
                           if(_loc20_)
                           {
                              continue;
                           }
                           this.§>!e§.push(_loc8_);
                           if(_loc19_ || _loc3_)
                           {
                              §§push(this.§^9§);
                              loop1:
                              while(true)
                              {
                                 §§push(int(§§pop()));
                                 if(_loc19_ || _loc3_)
                                 {
                                    _loc9_ = §§pop();
                                    loop2:
                                    while(true)
                                    {
                                       §§push(this.§%!_§);
                                       loop3:
                                       while(true)
                                       {
                                          §§push(int(§§pop()));
                                          loop4:
                                          while(true)
                                          {
                                             _loc10_ = §§pop();
                                             if(!_loc20_)
                                             {
                                                §§push(param1);
                                                if(_loc19_ || param1)
                                                {
                                                   §§push(_loc3_);
                                                   if(!_loc20_)
                                                   {
                                                      if((§§pop()[§§pop()] as Array).length < _loc10_)
                                                      {
                                                         if(_loc20_ && _loc3_)
                                                         {
                                                            break;
                                                         }
                                                         continue loop2;
                                                      }
                                                      loop5:
                                                      while(true)
                                                      {
                                                         §§push(this.§0!m§);
                                                         if(_loc19_)
                                                         {
                                                            if(§§pop() != § !q§)
                                                            {
                                                               loop8:
                                                               while(true)
                                                               {
                                                                  §§push(0);
                                                                  if(!(_loc20_ && _loc3_))
                                                                  {
                                                                     if(!_loc20_)
                                                                     {
                                                                        if(_loc19_)
                                                                        {
                                                                           _loc11_ = §§pop();
                                                                           if(_loc19_ || param1)
                                                                           {
                                                                              if(_loc19_)
                                                                              {
                                                                                 if(true)
                                                                                 {
                                                                                    §§push(_loc11_);
                                                                                    break;
                                                                                 }
                                                                                 addr891:
                                                                                 continue loop5;
                                                                              }
                                                                           }
                                                                           addr955:
                                                                           _loc3_++;
                                                                           continue loop0;
                                                                        }
                                                                        continue loop4;
                                                                     }
                                                                     addr238:
                                                                     loop7:
                                                                     while(true)
                                                                     {
                                                                        if(_loc19_)
                                                                        {
                                                                           if(_loc20_)
                                                                           {
                                                                              continue loop3;
                                                                           }
                                                                           _loc9_ = §§pop();
                                                                           if(_loc19_)
                                                                           {
                                                                              if(_loc20_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue loop8;
                                                                           }
                                                                           §§goto(addr955);
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              _loc10_ = §§pop();
                                                                              break loop7;
                                                                           }
                                                                           addr296:
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     §§goto(addr955);
                                                                  }
                                                                  break;
                                                               }
                                                               addr892:
                                                               if(§§pop() < (param1[_loc3_] as Array).length)
                                                               {
                                                                  addr335:
                                                                  _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
                                                                  if(_loc19_)
                                                                  {
                                                                     if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
                                                                     {
                                                                        if(!_loc20_)
                                                                        {
                                                                           addr364:
                                                                           _loc7_.§>!!§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
                                                                           if(_loc20_ && param1)
                                                                           {
                                                                           }
                                                                        }
                                                                        addr403:
                                                                        _loc13_ = _loc7_.§>!!§[_loc7_.§>!!§.length - 1] as §=!#§;
                                                                        if(!(_loc20_ && _loc3_))
                                                                        {
                                                                           §§push(param1);
                                                                           if(!_loc20_)
                                                                           {
                                                                              §§push(_loc3_);
                                                                              if(!(_loc20_ && param2))
                                                                              {
                                                                                 if(((§§pop()[§§pop()] as Array)[_loc11_] as Array)[1] != null)
                                                                                 {
                                                                                    if(!_loc20_)
                                                                                    {
                                                                                       addr447:
                                                                                       _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                                                                                       if(_loc19_)
                                                                                       {
                                                                                          _loc13_.setIcon(_loc14_,this.§'Z§);
                                                                                          §§push(this.§9l§);
                                                                                          if(!(_loc20_ && _loc3_))
                                                                                          {
                                                                                             addr548:
                                                                                             if(§§pop() == §,!§)
                                                                                             {
                                                                                                addr539:
                                                                                                §§push(2);
                                                                                             }
                                                                                             §§push(this.§;I§);
                                                                                             if(_loc19_ || param2)
                                                                                             {
                                                                                                §§push(1);
                                                                                                if(_loc19_)
                                                                                                {
                                                                                                   if(§§pop() == §§pop())
                                                                                                   {
                                                                                                      if(_loc19_ || _loc3_)
                                                                                                      {
                                                                                                         _loc13_.x = _loc9_ + _loc11_ * this.§[6§;
                                                                                                         if(_loc19_)
                                                                                                         {
                                                                                                            §§push(_loc13_);
                                                                                                            §§push(this.§7w§);
                                                                                                            if(_loc19_)
                                                                                                            {
                                                                                                               §§push(§§pop() + _loc11_ * this.§69§);
                                                                                                            }
                                                                                                            §§pop().y = §§pop();
                                                                                                         }
                                                                                                         addr590:
                                                                                                         _loc8_.§+!-§(_loc13_);
                                                                                                         addr890:
                                                                                                         if(_loc19_ || this)
                                                                                                         {
                                                                                                            if(_loc19_)
                                                                                                            {
                                                                                                               if(_loc19_)
                                                                                                               {
                                                                                                                  if(_loc19_)
                                                                                                                  {
                                                                                                                     _loc11_++;
                                                                                                                     if(!(_loc20_ && _loc3_))
                                                                                                                     {
                                                                                                                        if(false)
                                                                                                                        {
                                                                                                                           §§goto(addr590);
                                                                                                                        }
                                                                                                                        §§goto(addr891);
                                                                                                                     }
                                                                                                                     §§goto(addr590);
                                                                                                                  }
                                                                                                                  addr878:
                                                                                                                  §§push(_loc11_);
                                                                                                                  §§push(_loc16_);
                                                                                                                  §§push(this.§%!_§);
                                                                                                                  if(!(_loc20_ && param1))
                                                                                                                  {
                                                                                                                     addr849:
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(_loc19_)
                                                                                                                     {
                                                                                                                        addr857:
                                                                                                                        §§push((§§pop() - §§pop() * this.§;I§) / this.§%!_§);
                                                                                                                        if(!_loc20_)
                                                                                                                        {
                                                                                                                           addr861:
                                                                                                                           §§push(int(§§pop()));
                                                                                                                           if(_loc19_)
                                                                                                                           {
                                                                                                                              addr863:
                                                                                                                              _loc17_ = §§pop();
                                                                                                                              addr864:
                                                                                                                              if(_loc19_)
                                                                                                                              {
                                                                                                                                 §§push(_loc11_);
                                                                                                                                 if(_loc19_ || param1)
                                                                                                                                 {
                                                                                                                                    §§push(_loc16_);
                                                                                                                                    if(!(_loc20_ && param2))
                                                                                                                                    {
                                                                                                                                       if(_loc19_ || param1)
                                                                                                                                       {
                                                                                                                                          addr754:
                                                                                                                                          §§push(this.§%!_§);
                                                                                                                                          if(_loc19_ || param1)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(_loc19_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                §§push(this.§;I§);
                                                                                                                                                if(_loc19_ || this)
                                                                                                                                                {
                                                                                                                                                   addr781:
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(!(_loc20_ && this))
                                                                                                                                                   {
                                                                                                                                                      if(_loc19_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                         if(_loc19_ || param1)
                                                                                                                                                         {
                                                                                                                                                            if(_loc19_)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc20_ && param2))
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§%!_§);
                                                                                                                                                                  if(!(_loc20_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     addr817:
                                                                                                                                                                     §§push(int(§§pop() % §§pop()));
                                                                                                                                                                     if(_loc19_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc19_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc19_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              _loc18_ = §§pop();
                                                                                                                                                                              addr835:
                                                                                                                                                                              if(this.§^!;§)
                                                                                                                                                                              {
                                                                                                                                                                                 addr697:
                                                                                                                                                                                 if(_loc19_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr699:
                                                                                                                                                                                    §§push(_loc13_);
                                                                                                                                                                                    §§push(_loc9_ + _loc18_ * this.§[6§);
                                                                                                                                                                                    if(!(_loc20_ && param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc16_ * this.§%!_§);
                                                                                                                                                                                       if(!(_loc20_ && _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * this.§[6§);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                    }
                                                                                                                                                                                    §§pop().x = §§pop();
                                                                                                                                                                                    §§push(_loc13_);
                                                                                                                                                                                    §§push(this.§7w§);
                                                                                                                                                                                    if(_loc19_ || param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() + _loc17_ * this.mButtonMarginY2);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                                                                    addr690:
                                                                                                                                                                                    if(_loc19_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr590);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr729:
                                                                                                                                                                                    §§goto(addr729);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr835);
                                                                                                                                                                              }
                                                                                                                                                                              _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                                                                                                                                                                              addr670:
                                                                                                                                                                              if(_loc19_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc13_);
                                                                                                                                                                                 §§push(this.§7w§);
                                                                                                                                                                                 if(_loc19_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc18_);
                                                                                                                                                                                    if(!_loc20_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() * this.§69§);
                                                                                                                                                                                       if(_loc19_ || this)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                          if(_loc19_ || _loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr650:
                                                                                                                                                                                             addr641:
                                                                                                                                                                                             §§push(_loc16_ * this.§%!_§);
                                                                                                                                                                                             if(_loc19_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr646:
                                                                                                                                                                                                §§push(§§pop() * this.§69§);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§pop().y = §§pop() + §§pop();
                                                                                                                                                                                             if(_loc19_ || param2)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr658:
                                                                                                                                                                                                §§goto(addr590);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr670);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr650);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr646);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr641);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr650);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr690);
                                                                                                                                                                           }
                                                                                                                                                                           addr877:
                                                                                                                                                                           _loc16_ = §§pop() / (this.§%!_§ * this.§;I§);
                                                                                                                                                                           addr872:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr878);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr861);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr857);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr817);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr849);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr857);
                                                                                                                                             }
                                                                                                                                             §§goto(addr781);
                                                                                                                                          }
                                                                                                                                          §§goto(addr878);
                                                                                                                                       }
                                                                                                                                       §§goto(addr872);
                                                                                                                                    }
                                                                                                                                    §§goto(addr878);
                                                                                                                                 }
                                                                                                                                 §§goto(addr817);
                                                                                                                              }
                                                                                                                              §§goto(addr890);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr877);
                                                                                                               }
                                                                                                               §§goto(addr864);
                                                                                                            }
                                                                                                            §§goto(addr697);
                                                                                                         }
                                                                                                         §§goto(addr650);
                                                                                                      }
                                                                                                      §§goto(addr658);
                                                                                                   }
                                                                                                   §§goto(addr877);
                                                                                                   §§push(_loc11_);
                                                                                                }
                                                                                                §§goto(addr754);
                                                                                             }
                                                                                             §§goto(addr863);
                                                                                          }
                                                                                          _loc15_ = §§pop();
                                                                                          addr509:
                                                                                          _loc14_.y -= _loc14_.height / 2;
                                                                                          addr547:
                                                                                          addr541:
                                                                                          if(_loc19_ || param2)
                                                                                          {
                                                                                             if(this.§'Z§ == null)
                                                                                             {
                                                                                                if(!(_loc20_ && _loc3_))
                                                                                                {
                                                                                                   if(_loc19_ || _loc3_)
                                                                                                   {
                                                                                                      addr492:
                                                                                                      _loc14_.y -= _loc15_;
                                                                                                      addr498:
                                                                                                      if(!_loc20_)
                                                                                                      {
                                                                                                         if(!(_loc20_ && param2))
                                                                                                         {
                                                                                                            if(false)
                                                                                                            {
                                                                                                               §§goto(addr509);
                                                                                                            }
                                                                                                            §§goto(addr548);
                                                                                                         }
                                                                                                         §§goto(addr547);
                                                                                                      }
                                                                                                      §§goto(addr541);
                                                                                                   }
                                                                                                   §§goto(addr509);
                                                                                                }
                                                                                                §§goto(addr498);
                                                                                             }
                                                                                             §§goto(addr548);
                                                                                          }
                                                                                          §§goto(addr539);
                                                                                       }
                                                                                       §§goto(addr492);
                                                                                    }
                                                                                    §§goto(addr699);
                                                                                 }
                                                                                 §§goto(addr548);
                                                                              }
                                                                           }
                                                                           §§goto(addr447);
                                                                        }
                                                                        §§goto(addr699);
                                                                     }
                                                                     _loc7_.§>!!§.push(new param2(_loc12_,_loc7_,new this.§+!#§() as MovieClip));
                                                                     §§goto(addr403);
                                                                  }
                                                                  §§goto(addr364);
                                                               }
                                                               if(!(_loc20_ && param2))
                                                               {
                                                                  break loop4;
                                                               }
                                                               §§goto(addr955);
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(this.§'!J§);
                                                               if(!_loc20_)
                                                               {
                                                                  §§push(_loc10_);
                                                                  if(!(_loc20_ && this))
                                                                  {
                                                                     §§push(§§pop() - 1);
                                                                     if(!(_loc20_ && param1))
                                                                     {
                                                                        §§push(§§pop() * this.§[6§);
                                                                     }
                                                                     §§push(§§pop() - §§pop());
                                                                     if(_loc20_ && this)
                                                                     {
                                                                        continue loop1;
                                                                     }
                                                                     §§push(2);
                                                                  }
                                                                  §§push(§§pop() / §§pop());
                                                               }
                                                               continue loop1;
                                                            }
                                                            continue loop1;
                                                         }
                                                         §§goto(addr892);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr291:
                                                      §§push(int((§§pop()[§§pop()] as Array).length));
                                                   }
                                                   §§goto(addr296);
                                                }
                                                else
                                                {
                                                   addr283:
                                                   §§push(_loc3_);
                                                   if(_loc19_ || _loc3_)
                                                   {
                                                      §§goto(addr291);
                                                   }
                                                }
                                                §§goto(addr335);
                                             }
                                             break;
                                          }
                                          _loc8_.§`N§("");
                                          if(_loc19_ || _loc3_)
                                          {
                                             _loc7_.§#!v§(this.§%!_§,this.§37§,this.§3!l§,this.§=<§ * this.§[6§,this.§=<§ * this.§69§,this.§;I§,this.§=<§);
                                             if(!(_loc19_ || _loc3_))
                                             {
                                                continue loop0;
                                             }
                                          }
                                          §§goto(addr955);
                                       }
                                    }
                                 }
                                 §§goto(addr892);
                              }
                           }
                           §§goto(addr955);
                        }
                        return;
                     }
                  }
               }
               §§goto(addr93);
            }
            §§goto(addr69);
         }
         §§goto(addr101);
      }
      
      public function get §[p§() : int
      {
         return this.§%!_§;
      }
      
      public function get §4f§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§[p§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop() == 0)
               {
                  if(_loc2_)
                  {
                     §§goto(addr43);
                  }
               }
               §§push(this.§#!0§(this.§5!i§).§&!A§.length / this.§[p§);
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
      
      override public function containerEventOccured(param1:int, param2:String, param3:§6!8§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§2!2§ = null;
         var _loc4_:§7p§ = getItemByName(this.§5!i§) as §7p§;
         if(_loc7_)
         {
            §§push(param2);
            loop0:
            while(§§pop().toUpperCase() != "SCROLL_LEFT")
            {
               §§push(param2);
               loop1:
               while(true)
               {
                  if(!(_loc7_ || param1))
                  {
                     continue loop0;
                  }
                  if(§§pop().toUpperCase() != "SCROLL_RIGHT")
                  {
                     continue;
                  }
                  if(_loc7_)
                  {
                     if(_loc4_)
                     {
                        loop11:
                        while(true)
                        {
                           if(_loc6_ && this)
                           {
                              break loop0;
                           }
                           _loc4_.§7&§(_loc4_.§;!q§ + 1);
                           if(_loc7_)
                           {
                              while(true)
                              {
                                 this.§!C§();
                                 continue loop11;
                              }
                              addr198:
                           }
                           else
                           {
                              addr223:
                              §§push(Boolean(_loc5_ = this.§#!0§((param3 as §9j§).mParentContainer.mName.toUpperCase())));
                              if(_loc7_)
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc6_ && this))
                                    {
                                       addr246:
                                       §§pop();
                                       if(!(_loc6_ && this))
                                       {
                                          addr267:
                                          if(param3 is §=!#§)
                                          {
                                             if(!(_loc6_ && this))
                                             {
                                                addr275:
                                                _loc5_.§`N§((param3 as §9j§).mName.toUpperCase());
                                                break loop1;
                                             }
                                             break loop1;
                                          }
                                          break loop1;
                                       }
                                       §§goto(addr275);
                                    }
                                 }
                                 §§goto(addr267);
                              }
                              §§goto(addr246);
                           }
                        }
                        addr165:
                        break;
                     }
                     break;
                  }
                  §§goto(addr198);
               }
               super.containerEventOccured(param1,param2,param3);
               §§goto(addr287);
            }
            if(_loc4_)
            {
               if(!_loc6_)
               {
                  _loc4_.§7&§(_loc4_.§;!q§ - 1);
                  §§goto(addr216);
               }
               §§goto(addr287);
            }
            §§goto(addr165);
         }
         §§goto(addr109);
      }
      
      public function §!P§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§7p§ = getItemByName(param1) as §7p§;
         if(!(_loc5_ && _loc3_))
         {
            if(_loc3_)
            {
               if(!(_loc5_ && _loc3_))
               {
                  _loc3_.§7&§(param2);
               }
               do
               {
                  this.§!C§();
               }
               while(!_loc4_);
               
               addr60:
            }
            return;
         }
         §§goto(addr60);
      }
      
      public function §#!0§(param1:String) : §2!2§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§>!e§.length)
            {
               if(!(_loc4_ || _loc2_))
               {
                  continue;
               }
               if(_loc4_ || _loc3_)
               {
                  return null;
               }
               addr89:
            }
            else if(param1.toUpperCase() == (this.§>!e§[_loc2_] as §2!2§).mName.toUpperCase())
            {
               if(!_loc3_)
               {
                  break;
               }
               §§goto(addr89);
            }
            _loc2_++;
         }
         return this.§>!e§[_loc2_] as §2!2§;
      }
      
      public function §'!g§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§5!i§ = param1;
         }
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= §>!!§.length)
            {
               if(!_loc4_)
               {
                  if(_loc3_ || param1)
                  {
                     if(!(_loc4_ && param1))
                     {
                        this.§!C§();
                        addr51:
                        if(_loc3_)
                        {
                           if(_loc3_)
                           {
                              if(_loc3_ || this)
                              {
                                 break;
                              }
                              loop12:
                              while(true)
                              {
                                 §§push(this.§]!1§);
                                 loop9:
                                 while(true)
                                 {
                                    if(!_loc4_)
                                    {
                                       if(§§pop())
                                       {
                                          break;
                                       }
                                       loop7:
                                       while(true)
                                       {
                                          §§push(this.§[]§);
                                          if(_loc4_ && _loc3_)
                                          {
                                             continue loop9;
                                          }
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                this.§0H§.y = (§>!!§[_loc2_] as §7p§).y + this.§+!9§;
                                                loop4:
                                                while(true)
                                                {
                                                   if(!(_loc4_ && param1))
                                                   {
                                                      this.§0H§.height = (§>!!§[_loc2_] as §7p§).height + this.§3y§;
                                                      while(true)
                                                      {
                                                         if(!(_loc4_ && param1))
                                                         {
                                                            break loop4;
                                                         }
                                                         continue loop4;
                                                      }
                                                      addr104:
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         this.§0H§.width = (§>!!§[_loc2_] as §7p§).width + this.§4!!§;
                                                         addr166:
                                                         while(true)
                                                         {
                                                            if(!(_loc4_ && _loc2_))
                                                            {
                                                               continue loop7;
                                                            }
                                                            addr228:
                                                            while(true)
                                                            {
                                                               (§>!!§[_loc2_] as §7p§).setActiveStatus(true);
                                                               continue loop12;
                                                            }
                                                         }
                                                      }
                                                      addr209:
                                                   }
                                                }
                                             }
                                             addr133:
                                          }
                                          while(true)
                                          {
                                             break loop7;
                                          }
                                       }
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                if((§>!!§[_loc2_] as §7p§).mName.toUpperCase() != param1.toUpperCase())
                                                {
                                                   (§>!!§[_loc2_] as §7p§).setActiveStatus(false);
                                                   while(true)
                                                   {
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         loop2:
                                                         while(true)
                                                         {
                                                            _loc2_++;
                                                            addr65:
                                                            while(true)
                                                            {
                                                               if(_loc3_ || param1)
                                                               {
                                                                  break loop2;
                                                               }
                                                               §§goto(addr133);
                                                            }
                                                         }
                                                         continue loop0;
                                                         addr63:
                                                      }
                                                      §§goto(addr166);
                                                   }
                                                   addr83:
                                                }
                                                §§goto(addr228);
                                             }
                                             addr218:
                                          }
                                       }
                                       addr217:
                                    }
                                    §§goto(addr63);
                                 }
                                 if(!(_loc4_ && param1))
                                 {
                                    this.§0H§.x = (§>!!§[_loc2_] as §7p§).x + this.§%!2§;
                                 }
                                 §§goto(addr209);
                              }
                           }
                           §§goto(addr83);
                        }
                        §§goto(addr65);
                     }
                     §§goto(addr218);
                  }
                  §§goto(addr104);
               }
               §§goto(addr51);
            }
            else
            {
               §§push(§>!!§[_loc2_] is §7p§);
            }
            §§goto(addr217);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§2!2§ = null;
         if(_loc6_)
         {
            super.setEnabled(param1);
         }
         var _loc3_:int = 0;
         for each(_loc2_ in this.§>!e§)
         {
            if(_loc6_ || _loc3_)
            {
               _loc2_.setEnabled(param1);
            }
         }
      }
      
      public function §!C§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc1_))
         {
            §§push(getItemByName("Button_Scroll1") == null);
            if(_loc2_ || _loc3_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§pop();
                     if(!(_loc3_ && _loc3_))
                     {
                        addr52:
                        if(getItemByName("Button_Scroll2") == null)
                        {
                           if(!_loc3_)
                           {
                              §§goto(addr55);
                           }
                        }
                     }
                     var _loc1_:§7p§ = getItemByName(this.§5!i§) as §7p§;
                     if(!_loc3_)
                     {
                        if(!_loc1_)
                        {
                           (getItemByName("Button_Scroll1") as §5!I§).setComponentState(§+!!§.§ H§);
                           loop0:
                           while(!(_loc3_ && _loc3_))
                           {
                              (getItemByName("Button_Scroll2") as §5!I§).setComponentState(§+!!§.§ H§);
                              if(_loc2_ || _loc2_)
                              {
                                 if(_loc3_)
                                 {
                                    loop1:
                                    for(; !(_loc2_ || this); (getItemByName("Button_Scroll2") as §5!I§).setComponentState(§+!!§.COMPONENT_STATE_ACTIVE_DEFAULT))
                                    {
                                       while(true)
                                       {
                                          §§push(_loc1_.§;!q§);
                                          loop9:
                                          while(true)
                                          {
                                             §§push(0);
                                             loop10:
                                             while(true)
                                             {
                                                if(§§pop() <= §§pop())
                                                {
                                                   (getItemByName("Button_Scroll1") as §5!I§).setComponentState(§+!!§.§ H§);
                                                   loop5:
                                                   while(true)
                                                   {
                                                      addr142:
                                                      loop4:
                                                      while(true)
                                                      {
                                                         §§push(_loc1_.§;!q§);
                                                         if(!_loc2_)
                                                         {
                                                            continue loop9;
                                                         }
                                                         §§push(_loc1_.§9!;§);
                                                         if(!(_loc2_ || _loc2_))
                                                         {
                                                            continue loop10;
                                                         }
                                                         if(§§pop() >= §§pop() - 1)
                                                         {
                                                            addr121:
                                                            (getItemByName("Button_Scroll2") as §5!I§).setComponentState(§+!!§.§ H§);
                                                            break loop0;
                                                         }
                                                         while(true)
                                                         {
                                                            if(_loc3_ && this)
                                                            {
                                                               break loop4;
                                                            }
                                                            continue loop1;
                                                         }
                                                         continue loop5;
                                                      }
                                                   }
                                                   addr202:
                                                }
                                                loop7:
                                                while(true)
                                                {
                                                   (getItemByName("Button_Scroll1") as §5!I§).setComponentState(§+!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                   addr217:
                                                   while(true)
                                                   {
                                                      §§goto(addr142);
                                                      continue loop7;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    addr90:
                                 }
                                 return;
                              }
                           }
                           while(true)
                           {
                              if(!_loc3_)
                              {
                                 if(!_loc3_)
                                 {
                                    if(_loc3_ && _loc2_)
                                    {
                                       §§goto(addr217);
                                    }
                                    else
                                    {
                                       addr141:
                                    }
                                    §§goto(addr90);
                                 }
                                 §§goto(addr202);
                              }
                              §§goto(addr158);
                              §§goto(addr121);
                           }
                        }
                        §§goto(addr205);
                     }
                     §§goto(addr141);
                  }
               }
            }
            §§goto(addr52);
         }
         addr55:
      }
      
      public function §7g§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§7p§ = null;
         var _loc1_:* = int(§>!!§.length - 1);
         while(_loc1_ >= 0)
         {
            _loc2_ = §>!!§[_loc1_] as §7p§;
            if(!_loc3_)
            {
               if(_loc2_)
               {
                  if(!(_loc3_ && _loc1_))
                  {
                     addr94:
                     _loc2_.clear();
                  }
                  loop1:
                  while(true)
                  {
                     addr67:
                     while(true)
                     {
                        §>!!§.splice(_loc1_,1);
                        addr82:
                        while(_loc4_)
                        {
                        }
                        continue loop1;
                     }
                  }
               }
               while(true)
               {
                  §§push(_loc1_);
                  if(_loc4_ || _loc1_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc1_ = §§pop();
                  if(_loc4_ || _loc1_)
                  {
                     if(true)
                     {
                        break;
                     }
                     §§goto(addr67);
                  }
                  §§goto(addr82);
               }
               continue;
            }
            §§goto(addr94);
         }
         if(_loc4_ || this)
         {
            this.§'!g§("");
         }
      }
      
      public function §0F§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§2!2§ = null;
         for each(_loc1_ in this.§>!e§)
         {
            if(!(_loc4_ && _loc1_))
            {
               _loc1_.§0F§();
            }
         }
      }
      
      public function §'F§() : Array
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§#!0§(this.§5!i§));
            while(§§pop() != null)
            {
               §§push(this.§#!0§(this.§5!i§));
               if(_loc2_)
               {
                  return §§pop().§"h§();
               }
            }
            if(_loc2_ || _loc2_)
            {
               §!>§.log("ERROR! Tried to get selections for noninited repeater!");
            }
         }
         return new Array();
      }
      
      public function §9!f§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§#!0§(this.§5!i§).§9!f§(param1);
         }
      }
      
      public function §8!=§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§#!0§(this.§5!i§).§8!=§(param1);
         }
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.clear();
            while(true)
            {
               this.§+!#§ = null;
            }
            addr76:
         }
         loop1:
         do
         {
            this.§>!e§ = null;
            while(_loc1_)
            {
               this.§3!m§ = null;
               if(_loc1_ || this)
               {
                  continue loop1;
               }
            }
            §§goto(addr76);
         }
         while(_loc2_ && _loc1_);
         
      }
   }
}
