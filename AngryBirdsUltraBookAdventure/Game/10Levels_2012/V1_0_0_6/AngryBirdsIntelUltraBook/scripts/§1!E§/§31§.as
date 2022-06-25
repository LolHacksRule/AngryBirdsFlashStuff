package §1!E§
{
   import §"x§.§-8§;
   import §>7§.§&! §;
   import §>7§.§,!c§;
   import §>7§.§4+§;
   import §>7§.§4f§;
   import §[!+§.§4`§;
   import com.rovio.assets.§`!t§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §31§ extends §#?§
   {
      
      public static const §[p§:int = 0;
      
      public static const §#[§:int = 1;
      
      public static const §8!9§:int = 2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §31§)
         {
            §[p§ = 0;
            while(true)
            {
               §#[§ = 1;
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     §8!9§ = 2;
                     if(!(_loc1_ && _loc1_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr57);
      }
      
      public var §^!2§:String;
      
      public var §,t§:Class;
      
      public var §<!]§:String = null;
      
      public var §-P§:Vector.<§4f§>;
      
      public var §6D§:int;
      
      public var §&W§:Number;
      
      public var §9V§:Number;
      
      public var §,!P§:Number;
      
      public var §7!S§:Number;
      
      public var §<@§:Number;
      
      public var §@D§:Number;
      
      public var §7q§:Number;
      
      public var §+!9§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §^!B§:int;
      
      public var §%!J§:Number;
      
      public var §!=§:String = "";
      
      public var §<s§:int;
      
      public var §<!X§:int;
      
      public var §1O§:GlowFilter;
      
      public var §<!4§:Boolean = true;
      
      public var §%!q§:int;
      
      public var §2B§:int;
      
      public var §>!+§:Number = 0;
      
      public var §!l§:Number = 0;
      
      public var §do §:Number = 0;
      
      public var §-!l§:Number = 0;
      
      public var §1B§:Boolean = false;
      
      public var §9^§:Boolean = false;
      
      public var §-!7§:MovieClip = null;
      
      public function §31§(param1:XML, param2:§#?§, param3:§4`§, param4:MovieClip = null)
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1317
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      public function §@K§(param1:Array = null, param2:Class = null) : void
      {
         var _loc19_:Boolean = true;
         var _loc20_:Boolean = false;
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§,!5§ = null;
         var _loc8_:§4f§ = null;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:XML = null;
         var _loc13_:§,D§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:* = 0;
         var _loc16_:int = 0;
         var _loc17_:* = 0;
         var _loc18_:* = 0;
         if(_loc19_)
         {
            if(param2 == null)
            {
               if(!(_loc20_ && _loc3_))
               {
                  param2 = §,D§;
                  §§goto(addr69);
               }
               §§goto(addr116);
            }
            addr69:
            this.§-P§ = new Vector.<§4f§>();
            if(!(_loc20_ && this))
            {
               this.§true§();
               if(!(_loc20_ && _loc3_))
               {
                  §§goto(addr91);
               }
            }
            §§goto(addr91);
         }
         addr91:
         §§push(param1);
         if(!(_loc20_ && this))
         {
            if(§§pop() == null)
            {
               if(!(_loc20_ && param1))
               {
                  param1 = getParentView().getRepeaterDataXML(mName);
               }
               §§goto(addr116);
            }
            §§push(param1);
         }
         if(!§§pop())
         {
            addr116:
            param1 = new Array();
            §§goto(addr120);
         }
         addr120:
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
            if(!(_loc20_ && this))
            {
               §§push(§§pop() + _loc3_);
            }
            _loc4_ = §§pop();
            if(!(_loc19_ || param2))
            {
               break;
            }
            _loc5_ = new MovieClip();
            (_loc6_ = <Container/>).@name = _loc4_;
            _loc7_ = new §,!5§(_loc6_,this,null,_loc5_);
            if(_loc19_ || param2)
            {
               §6!§.push(_loc7_);
            }
            _loc8_ = new §4f§(this.§2B§,_loc4_);
            if(!_loc20_)
            {
               this.§-P§.push(_loc8_);
               loop1:
               while(true)
               {
                  §§push(this.§<@§);
                  loop2:
                  while(true)
                  {
                     §§push(int(§§pop()));
                     loop3:
                     while(true)
                     {
                        _loc9_ = §§pop();
                        loop4:
                        while(true)
                        {
                           §§push(this.§6D§);
                           loop5:
                           while(!(_loc20_ && param1))
                           {
                              §§push(int(§§pop()));
                              while(true)
                              {
                                 _loc10_ = §§pop();
                                 if(_loc20_ && param1)
                                 {
                                    break;
                                 }
                                 continue loop1;
                                 addr201:
                                 if(!(_loc19_ || _loc3_))
                                 {
                                    continue;
                                 }
                                 if(§§pop() == §[p§)
                                 {
                                    if(!(_loc19_ || param1))
                                    {
                                       break;
                                    }
                                    if(_loc19_ || _loc3_)
                                    {
                                       §§push(this.§,!P§);
                                       if(_loc19_ || _loc3_)
                                       {
                                          §§push(_loc10_);
                                          if(_loc19_)
                                          {
                                             §§push(§§pop() - 1);
                                             if(_loc19_ || param1)
                                             {
                                                §§push(§§pop() * this.§7q§);
                                             }
                                             §§push(§§pop() - §§pop());
                                             if(!(_loc20_ && param2))
                                             {
                                                continue loop2;
                                             }
                                             addr264:
                                             §§push(int(§§pop()));
                                             if(!_loc20_)
                                             {
                                                if(!_loc19_)
                                                {
                                                   continue loop5;
                                                }
                                                _loc9_ = §§pop();
                                                if(!_loc19_)
                                                {
                                                   break;
                                                }
                                                addr185:
                                                §§push(0);
                                                if(_loc19_)
                                                {
                                                   _loc11_ = §§pop();
                                                   if(!_loc19_)
                                                   {
                                                      break;
                                                   }
                                                   if(false)
                                                   {
                                                      loop7:
                                                      while(true)
                                                      {
                                                         §§push(this.§<!X§);
                                                         if(!_loc20_)
                                                         {
                                                            if(!_loc20_)
                                                            {
                                                               §§goto(addr201);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  _loc10_ = §§pop();
                                                                  addr320:
                                                                  while(true)
                                                                  {
                                                                     if(_loc19_)
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                     continue loop4;
                                                                  }
                                                               }
                                                               addr319:
                                                            }
                                                            §§goto(addr320);
                                                         }
                                                         break;
                                                      }
                                                      addr927:
                                                      if(§§pop() < (param1[_loc3_] as Array).length)
                                                      {
                                                         addr365:
                                                         _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
                                                         if(_loc19_ || this)
                                                         {
                                                            if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
                                                            {
                                                               if(!(_loc20_ && this))
                                                               {
                                                                  addr404:
                                                                  _loc7_.§6!§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
                                                                  if(_loc20_ && param1)
                                                                  {
                                                                  }
                                                               }
                                                               addr443:
                                                               _loc13_ = _loc7_.§6!§[_loc7_.§6!§.length - 1] as §,D§;
                                                               if(!(_loc20_ && _loc3_))
                                                               {
                                                                  §§push(param1);
                                                                  if(!(_loc20_ && param2))
                                                                  {
                                                                     §§push(_loc3_);
                                                                     if(_loc19_ || _loc3_)
                                                                     {
                                                                        if(((§§pop()[§§pop()] as Array)[_loc11_] as Array)[1] != null)
                                                                        {
                                                                           if(_loc19_ || param2)
                                                                           {
                                                                              addr507:
                                                                              _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                                                                              addr506:
                                                                              if(!(_loc20_ && param1))
                                                                              {
                                                                                 _loc13_.setIcon(_loc14_,this.§<!]§);
                                                                                 §§push(this.§<s§);
                                                                                 if(_loc19_)
                                                                                 {
                                                                                    addr593:
                                                                                    if(§§pop() == §#[§)
                                                                                    {
                                                                                       addr584:
                                                                                       §§push(2);
                                                                                    }
                                                                                    §§push(this.§^!B§);
                                                                                    if(_loc19_)
                                                                                    {
                                                                                       §§push(1);
                                                                                       if(!_loc20_)
                                                                                       {
                                                                                          if(§§pop() == §§pop())
                                                                                          {
                                                                                             if(!(_loc20_ && param2))
                                                                                             {
                                                                                                addr608:
                                                                                                _loc13_.x = _loc9_ + _loc11_ * this.§7q§;
                                                                                                if(!_loc20_)
                                                                                                {
                                                                                                   §§push(_loc13_);
                                                                                                   §§push(this.§@D§);
                                                                                                   if(!(_loc20_ && param1))
                                                                                                   {
                                                                                                      §§push(§§pop() + _loc11_ * this.§+!9§);
                                                                                                   }
                                                                                                   §§pop().y = §§pop();
                                                                                                   addr648:
                                                                                                   _loc8_.§>!G§(_loc13_);
                                                                                                   addr925:
                                                                                                   if(_loc19_ || param2)
                                                                                                   {
                                                                                                      _loc11_++;
                                                                                                      if(_loc19_ || this)
                                                                                                      {
                                                                                                         if(_loc19_ || this)
                                                                                                         {
                                                                                                            if(_loc19_)
                                                                                                            {
                                                                                                               if(!(_loc20_ && this))
                                                                                                               {
                                                                                                                  if(!_loc20_)
                                                                                                                  {
                                                                                                                     if(false)
                                                                                                                     {
                                                                                                                        §§goto(addr648);
                                                                                                                     }
                                                                                                                     addr926:
                                                                                                                     §§goto(addr927);
                                                                                                                     §§push(_loc11_);
                                                                                                                  }
                                                                                                                  §§goto(addr925);
                                                                                                               }
                                                                                                               addr860:
                                                                                                               if(this.§<!4§)
                                                                                                               {
                                                                                                                  addr756:
                                                                                                                  §§push(_loc13_);
                                                                                                                  §§push(_loc9_ + _loc18_ * this.§7q§);
                                                                                                                  if(!_loc20_)
                                                                                                                  {
                                                                                                                     §§push(_loc16_ * this.§6D§);
                                                                                                                     if(!_loc20_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * this.§7q§);
                                                                                                                     }
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                  }
                                                                                                                  §§pop().x = §§pop();
                                                                                                                  §§push(_loc13_);
                                                                                                                  §§push(this.§@D§);
                                                                                                                  if(_loc19_ || param1)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + _loc17_ * this.mButtonMarginY2);
                                                                                                                  }
                                                                                                                  §§pop().y = §§pop();
                                                                                                                  addr749:
                                                                                                                  if(!_loc20_)
                                                                                                                  {
                                                                                                                     §§goto(addr648);
                                                                                                                  }
                                                                                                                  addr896:
                                                                                                                  §§push(_loc11_);
                                                                                                                  if(_loc19_ || _loc3_)
                                                                                                                  {
                                                                                                                     if(!_loc20_)
                                                                                                                     {
                                                                                                                        if(!(_loc20_ && param2))
                                                                                                                        {
                                                                                                                           §§push(_loc16_);
                                                                                                                           if(_loc19_)
                                                                                                                           {
                                                                                                                              if(_loc19_)
                                                                                                                              {
                                                                                                                                 §§push(this.§6D§);
                                                                                                                                 if(!_loc20_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    if(!(_loc20_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       if(_loc19_)
                                                                                                                                       {
                                                                                                                                          §§push(this.§^!B§);
                                                                                                                                          if(_loc19_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             addr824:
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(_loc19_ || param1)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                if(!(_loc20_ && param2))
                                                                                                                                                {
                                                                                                                                                   §§push(this.§6D§);
                                                                                                                                                   if(_loc19_ || this)
                                                                                                                                                   {
                                                                                                                                                      addr849:
                                                                                                                                                      §§push(§§pop() % §§pop());
                                                                                                                                                      if(_loc19_)
                                                                                                                                                      {
                                                                                                                                                         addr852:
                                                                                                                                                         §§push(int(§§pop()));
                                                                                                                                                         if(_loc19_ || param2)
                                                                                                                                                         {
                                                                                                                                                            _loc18_ = §§pop();
                                                                                                                                                            §§goto(addr860);
                                                                                                                                                         }
                                                                                                                                                         addr893:
                                                                                                                                                         if(_loc19_)
                                                                                                                                                         {
                                                                                                                                                            _loc17_ = §§pop();
                                                                                                                                                            §§goto(addr896);
                                                                                                                                                         }
                                                                                                                                                         addr907:
                                                                                                                                                         _loc16_ = §§pop() / (this.§6D§ * this.§^!B§);
                                                                                                                                                         addr906:
                                                                                                                                                         addr905:
                                                                                                                                                         §§push(_loc11_);
                                                                                                                                                         §§push(_loc16_);
                                                                                                                                                         §§push(this.§6D§);
                                                                                                                                                         if(!_loc20_)
                                                                                                                                                         {
                                                                                                                                                            addr869:
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(_loc19_ || this)
                                                                                                                                                            {
                                                                                                                                                               addr878:
                                                                                                                                                               §§push(§§pop() - §§pop() * this.§^!B§);
                                                                                                                                                               if(_loc19_)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc20_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     addr892:
                                                                                                                                                                     §§goto(addr893);
                                                                                                                                                                     §§push(int(§§pop() / this.§6D§));
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr906);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr892);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr905);
                                                                                                                                                         }
                                                                                                                                                         addr904:
                                                                                                                                                         §§goto(addr904);
                                                                                                                                                         addr902:
                                                                                                                                                         addr908:
                                                                                                                                                         addr900:
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr892);
                                                                                                                                                }
                                                                                                                                                §§goto(addr849);
                                                                                                                                             }
                                                                                                                                             §§goto(addr869);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr878);
                                                                                                                                    }
                                                                                                                                    §§goto(addr824);
                                                                                                                                 }
                                                                                                                                 §§goto(addr893);
                                                                                                                              }
                                                                                                                              §§goto(addr902);
                                                                                                                           }
                                                                                                                           §§goto(addr893);
                                                                                                                        }
                                                                                                                        §§goto(addr907);
                                                                                                                     }
                                                                                                                     §§goto(addr893);
                                                                                                                  }
                                                                                                                  §§goto(addr852);
                                                                                                                  addr776:
                                                                                                               }
                                                                                                               _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                                                                                                            }
                                                                                                            if(_loc19_)
                                                                                                            {
                                                                                                               if(_loc19_ || this)
                                                                                                               {
                                                                                                                  §§push(_loc13_);
                                                                                                                  §§push(this.§@D§);
                                                                                                                  if(_loc19_)
                                                                                                                  {
                                                                                                                     §§push(_loc18_);
                                                                                                                     if(_loc19_ || param2)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * this.§+!9§);
                                                                                                                        if(_loc19_ || this)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(_loc19_ || param2)
                                                                                                                           {
                                                                                                                              addr702:
                                                                                                                              addr693:
                                                                                                                              §§push(_loc16_ * this.§6D§);
                                                                                                                              if(!_loc20_)
                                                                                                                              {
                                                                                                                                 addr698:
                                                                                                                                 §§push(§§pop() * this.§+!9§);
                                                                                                                              }
                                                                                                                              §§pop().y = §§pop() + §§pop();
                                                                                                                              if(_loc19_ || param2)
                                                                                                                              {
                                                                                                                                 addr710:
                                                                                                                                 §§goto(addr648);
                                                                                                                              }
                                                                                                                              §§goto(addr908);
                                                                                                                           }
                                                                                                                           §§goto(addr702);
                                                                                                                        }
                                                                                                                        §§goto(addr698);
                                                                                                                     }
                                                                                                                     §§goto(addr693);
                                                                                                                  }
                                                                                                                  §§goto(addr702);
                                                                                                               }
                                                                                                               §§goto(addr756);
                                                                                                            }
                                                                                                            §§goto(addr749);
                                                                                                         }
                                                                                                         §§goto(addr702);
                                                                                                      }
                                                                                                      §§goto(addr648);
                                                                                                      addr659:
                                                                                                   }
                                                                                                   §§goto(addr776);
                                                                                                }
                                                                                                §§goto(addr860);
                                                                                             }
                                                                                             §§goto(addr659);
                                                                                          }
                                                                                          §§goto(addr900);
                                                                                          §§push(_loc11_);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr852);
                                                                                 }
                                                                                 _loc15_ = §§pop();
                                                                                 addr566:
                                                                                 _loc14_.y -= _loc14_.height / 2;
                                                                                 addr592:
                                                                                 addr586:
                                                                              }
                                                                              addr576:
                                                                              if(this.§<!]§ == null)
                                                                              {
                                                                                 if(!_loc20_)
                                                                                 {
                                                                                    if(!(_loc20_ && param2))
                                                                                    {
                                                                                       _loc14_.y -= _loc15_;
                                                                                       addr548:
                                                                                       if(_loc19_ || param2)
                                                                                       {
                                                                                          if(!(_loc20_ && param2))
                                                                                          {
                                                                                             if(_loc19_)
                                                                                             {
                                                                                                if(false)
                                                                                                {
                                                                                                   §§goto(addr566);
                                                                                                }
                                                                                                §§goto(addr593);
                                                                                             }
                                                                                             §§goto(addr592);
                                                                                          }
                                                                                          §§goto(addr586);
                                                                                       }
                                                                                       §§goto(addr576);
                                                                                    }
                                                                                    §§goto(addr584);
                                                                                 }
                                                                                 §§goto(addr548);
                                                                              }
                                                                              §§goto(addr593);
                                                                           }
                                                                           §§goto(addr608);
                                                                        }
                                                                        §§goto(addr593);
                                                                     }
                                                                     §§goto(addr507);
                                                                  }
                                                                  §§goto(addr506);
                                                               }
                                                               §§goto(addr710);
                                                            }
                                                            _loc7_.§6!§.push(new param2(_loc12_,_loc7_,new this.§,t§() as MovieClip));
                                                            §§goto(addr443);
                                                         }
                                                         §§goto(addr404);
                                                      }
                                                      if(!(_loc20_ && this))
                                                      {
                                                         _loc8_.§<!_§("");
                                                         if(!_loc19_)
                                                         {
                                                            break;
                                                         }
                                                         _loc7_.§<q§(this.§6D§,this.§&W§,this.§9V§,this.§%!q§ * this.§7q§,this.§%!q§ * this.§+!9§,this.§^!B§,this.§%!q§);
                                                         if(!_loc19_)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      addr980:
                                                      _loc3_++;
                                                      break;
                                                      addr194:
                                                   }
                                                   §§goto(addr926);
                                                }
                                             }
                                             §§goto(addr927);
                                          }
                                          addr263:
                                          §§push(§§pop() / §§pop());
                                       }
                                       §§goto(addr264);
                                    }
                                    §§goto(addr320);
                                 }
                                 §§goto(addr185);
                              }
                              continue loop0;
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
            §§goto(addr980);
         }
      }
      
      public function get §!!#§() : int
      {
         return this.§6D§;
      }
      
      public function get §@?§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§!!#§);
            if(_loc1_ || this)
            {
               if(§§pop() == 0)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr62);
                  }
               }
               §§push(this.§-!3§(this.§!=§).§&%§.length / this.§!!#§);
               if(_loc1_ || _loc1_)
               {
                  return §§pop() + 1;
               }
            }
            §§goto(addr62);
         }
         addr62:
         return 0;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§,!c§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§4f§ = null;
         var _loc4_:§,!5§ = getItemByName(this.§!=§) as §,!5§;
         if(_loc7_ || param2)
         {
            §§push(param2);
            loop0:
            while(true)
            {
               if(§§pop().toUpperCase() != "SCROLL_LEFT")
               {
                  §§push(param2);
                  continue;
               }
               if(_loc7_ || param2)
               {
                  if(_loc4_)
                  {
                     addr201:
                     _loc4_.§8!P§(_loc4_.§2!D§ - 1);
                     while(true)
                     {
                        this.§7!w§();
                        if(!_loc7_)
                        {
                           return;
                        }
                        addr277:
                        if(_loc7_)
                        {
                           addr150:
                           break loop0;
                        }
                     }
                  }
                  §§goto(addr150);
               }
               §§goto(addr201);
            }
            super.containerEventOccured(param1,param2,param3);
            §§goto(addr277);
         }
         §§goto(addr218);
      }
      
      public function §?;§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§,!5§ = getItemByName(param1) as §,!5§;
         if(!(_loc4_ && param1))
         {
            if(_loc3_)
            {
               if(!_loc4_)
               {
                  _loc3_.§8!P§(param2);
                  do
                  {
                     this.§7!w§();
                  }
                  while(!_loc5_);
                  
                  addr59:
               }
               §§goto(addr59);
            }
            return;
         }
         §§goto(addr59);
      }
      
      public function §-!3§(param1:String) : §4f§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = 0;
         do
         {
            if(_loc2_ >= this.§-P§.length)
            {
               if(!(_loc3_ && _loc2_))
               {
                  return null;
               }
               loop1:
               while(_loc3_ && param1)
               {
                  while(true)
                  {
                     _loc2_++;
                     continue loop1;
                  }
               }
               continue;
            }
            if(param1.toUpperCase() == (this.§-P§[_loc2_] as §4f§).mName.toUpperCase())
            {
               break;
            }
            §§goto(addr47);
         }
         while(_loc4_ || _loc3_);
         
         return this.§-P§[_loc2_] as §4f§;
      }
      
      public function §8!R§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§!=§ = param1;
         }
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= §6!§.length)
            {
               if(!_loc4_)
               {
                  if(!_loc4_)
                  {
                     this.§7!w§();
                     addr39:
                     if(!_loc4_)
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           break;
                        }
                        loop10:
                        while(true)
                        {
                           this.§-!7§.y = (§6!§[_loc2_] as §,!5§).y + this.§-!l§;
                           loop5:
                           while(true)
                           {
                              if(!(_loc4_ && _loc3_))
                              {
                                 this.§-!7§.height = (§6!§[_loc2_] as §,!5§).height + this.§!l§;
                                 while(true)
                                 {
                                    if(_loc3_)
                                    {
                                       break loop5;
                                    }
                                    loop3:
                                    while(true)
                                    {
                                       §§push(this.§1B§);
                                       loop4:
                                       while(true)
                                       {
                                          if(!_loc3_)
                                          {
                                             while(§§pop())
                                             {
                                                §§goto(addr193);
                                             }
                                             break;
                                             addr192:
                                          }
                                          if(§§pop())
                                          {
                                             if(!_loc4_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   this.§-!7§.x = (§6!§[_loc2_] as §,!5§).x + this.§do §;
                                                   addr184:
                                                   while(true)
                                                   {
                                                      this.§-!7§.width = (§6!§[_loc2_] as §,!5§).width + this.§>!+§;
                                                   }
                                                   addr184:
                                                }
                                                else
                                                {
                                                   addr193:
                                                   while(true)
                                                   {
                                                      if((§6!§[_loc2_] as §,!5§).mName.toUpperCase() != param1.toUpperCase())
                                                      {
                                                         (§6!§[_loc2_] as §,!5§).setActiveStatus(false);
                                                         while(true)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               continue loop5;
                                                            }
                                                            if(!(_loc4_ && param1))
                                                            {
                                                               break loop4;
                                                            }
                                                            addr151:
                                                            while(true)
                                                            {
                                                               addr112:
                                                               while(true)
                                                               {
                                                                  §§push(this.§9^§);
                                                                  if(_loc4_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(!§§pop())
                                                                  {
                                                                     break loop5;
                                                                  }
                                                                  continue loop10;
                                                               }
                                                               continue loop4;
                                                            }
                                                         }
                                                         addr76:
                                                      }
                                                      addr203:
                                                      while(true)
                                                      {
                                                         (§6!§[_loc2_] as §,!5§).setActiveStatus(true);
                                                         continue loop3;
                                                      }
                                                   }
                                                   addr193:
                                                }
                                                §§goto(addr151);
                                             }
                                             §§goto(addr184);
                                          }
                                          §§goto(addr112);
                                          §§goto(addr193);
                                       }
                                       addr49:
                                       loop13:
                                       while(true)
                                       {
                                          _loc2_++;
                                          addr51:
                                          while(true)
                                          {
                                             if(!(_loc4_ && param1))
                                             {
                                                if(_loc3_ || _loc2_)
                                                {
                                                   break;
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr76);
                                             }
                                             §§goto(addr203);
                                             continue loop13;
                                          }
                                          continue loop0;
                                       }
                                    }
                                 }
                                 addr109:
                              }
                              §§goto(addr184);
                           }
                           while(true)
                           {
                              §§goto(addr49);
                           }
                        }
                     }
                     §§goto(addr109);
                  }
                  §§goto(addr51);
               }
               §§goto(addr39);
            }
            else
            {
               §§push(§6!§[_loc2_] is §,!5§);
            }
            §§goto(addr192);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§4f§ = null;
         if(_loc6_)
         {
            super.setEnabled(param1);
         }
         for each(_loc2_ in this.§-P§)
         {
            if(_loc6_)
            {
               _loc2_.setEnabled(param1);
            }
         }
      }
      
      public function §7!w§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(getItemByName("Button_Scroll1") == null);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc1_)
                  {
                     addr34:
                     §§pop();
                     if(_loc2_ || this)
                     {
                        addr47:
                        if(getItemByName("Button_Scroll2") == null)
                        {
                           if(_loc2_)
                           {
                              §§goto(addr50);
                           }
                        }
                     }
                     var _loc1_:§,!5§ = getItemByName(this.§!=§) as §,!5§;
                     if(_loc2_ || _loc2_)
                     {
                        if(!_loc1_)
                        {
                           (getItemByName("Button_Scroll1") as §==§).setComponentState(§4+§.§ !M§);
                           do
                           {
                              (getItemByName("Button_Scroll2") as §==§).setComponentState(§4+§.§ !M§);
                           }
                           while(!_loc2_);
                           
                           if(_loc2_ || _loc3_)
                           {
                              if(!(_loc3_ && this))
                              {
                                 if(_loc3_ && this)
                                 {
                                    loop1:
                                    while(true)
                                    {
                                       (getItemByName("Button_Scroll1") as §==§).setComponentState(§4+§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                       loop2:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             §§push(_loc1_.§2!D§);
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                §§push(_loc1_.§]!@§);
                                                if(!(_loc3_ && _loc2_))
                                                {
                                                   if(§§pop() >= §§pop() - 1)
                                                   {
                                                      (getItemByName("Button_Scroll2") as §==§).setComponentState(§4+§.§ !M§);
                                                      addr137:
                                                      break;
                                                   }
                                                   if(_loc2_ || _loc3_)
                                                   {
                                                      if(_loc3_ && _loc2_)
                                                      {
                                                         while(true)
                                                         {
                                                            if(!(_loc2_ || this))
                                                            {
                                                               continue loop2;
                                                            }
                                                            if(!_loc3_)
                                                            {
                                                               break;
                                                            }
                                                            addr215:
                                                            while(true)
                                                            {
                                                               §§push(_loc1_.§2!D§);
                                                               addr217:
                                                               while(true)
                                                               {
                                                                  §§push(0);
                                                               }
                                                            }
                                                            addr184:
                                                            (getItemByName("Button_Scroll1") as §==§).setComponentState(§4+§.§ !M§);
                                                         }
                                                         continue;
                                                      }
                                                      (getItemByName("Button_Scroll2") as §==§).setComponentState(§4+§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                      break;
                                                      addr181:
                                                   }
                                                   §§goto(addr181);
                                                }
                                                while(§§pop() <= §§pop())
                                                {
                                                   §§goto(addr184);
                                                }
                                                continue loop1;
                                             }
                                             §§goto(addr217);
                                          }
                                       }
                                    }
                                 }
                                 return;
                              }
                              §§goto(addr181);
                           }
                           §§goto(addr137);
                        }
                        §§goto(addr215);
                     }
                     §§goto(addr212);
                  }
               }
               §§goto(addr47);
            }
            §§goto(addr34);
         }
         addr50:
      }
      
      public function §true§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§,!5§ = null;
         var _loc1_:* = int(§6!§.length - 1);
         loop0:
         for(; _loc1_ >= 0; if(true)
         {
            continue;
         },§§goto(addr76))
         {
            _loc2_ = §6!§[_loc1_] as §,!5§;
            if(!(_loc4_ && this))
            {
               if(_loc2_)
               {
                  if(!_loc4_)
                  {
                     addr88:
                     _loc2_.clear();
                  }
                  loop1:
                  while(true)
                  {
                     addr76:
                     while(true)
                     {
                        §6!§.splice(_loc1_,1);
                        addr81:
                        while(!_loc4_)
                        {
                        }
                        continue loop1;
                     }
                  }
               }
               while(true)
               {
                  §§push(_loc1_);
                  if(!_loc4_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc1_ = §§pop();
                  if(_loc3_ || _loc2_)
                  {
                     continue loop0;
                  }
                  §§goto(addr81);
               }
               continue;
            }
            §§goto(addr88);
         }
         if(!(_loc4_ && _loc2_))
         {
            this.§8!R§("");
         }
      }
      
      public function §9!^§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§4f§ = null;
         for each(_loc1_ in this.§-P§)
         {
            if(!_loc4_)
            {
               _loc1_.§9!^§();
            }
         }
      }
      
      public function §"!y§() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§-!3§(this.§!=§));
            while(§§pop() != null)
            {
               §§push(this.§-!3§(this.§!=§));
               if(_loc1_)
               {
                  return §§pop().§4y§();
               }
            }
            if(!(_loc2_ && _loc2_))
            {
               addr70:
               §-8§.log("ERROR! Tried to get selections for noninited repeater!");
            }
            return new Array();
         }
         §§goto(addr70);
      }
      
      public function §[!W§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§-!3§(this.§!=§).§[!W§(param1);
         }
      }
      
      public function §?!_§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§-!3§(this.§!=§).§?!_§(param1);
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
               this.§,t§ = null;
               loop1:
               while(_loc2_ || this)
               {
                  this.§-P§ = null;
                  while(true)
                  {
                     this.§1O§ = null;
                     if(!(_loc1_ && this))
                     {
                        if(!(_loc1_ && _loc2_))
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr67);
      }
   }
}
