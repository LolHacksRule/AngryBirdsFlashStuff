package §4!e§
{
   import §#^§.§7!A§;
   import §2!i§.§'M§;
   import §2!i§.§0-§;
   import §2!i§.§7'§;
   import §2!i§.§=!&§;
   import §6o§.§+!k§;
   import com.rovio.assets.§8B§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §5!a§ extends §08§
   {
      
      public static const §"$§:int = 0;
      
      public static const §3!0§:int = 1;
      
      public static const §0Z§:int = 2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §"$§ = 0;
            while(true)
            {
               §3!0§ = 1;
               §§goto(addr57);
            }
         }
         addr57:
         while(true)
         {
            §0Z§ = 2;
            if(_loc2_)
            {
               if(!(_loc1_ && §5!a§))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public var §%"§:String;
      
      public var §#!>§:Class;
      
      public var §1!f§:String = null;
      
      public var §,9§:Vector.<§0-§>;
      
      public var §&!B§:int;
      
      public var §;r§:Number;
      
      public var §=!R§:Number;
      
      public var §7P§:Number;
      
      public var §>I§:Number;
      
      public var §<"%§:Number;
      
      public var §^q§:Number;
      
      public var §;`§:Number;
      
      public var §"^§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §'^§:int;
      
      public var §!<§:Number;
      
      public var §,"1§:String = "";
      
      public var § !w§:int;
      
      public var §"v§:int;
      
      public var §[y§:GlowFilter;
      
      public var §4+§:Boolean = true;
      
      public var §;!U§:int;
      
      public var §[T§:int;
      
      public var §5F§:Number = 0;
      
      public var §3!F§:Number = 0;
      
      public var §,!#§:Number = 0;
      
      public var §2>§:Number = 0;
      
      public var §5!T§:Boolean = false;
      
      public var §#!n§:Boolean = false;
      
      public var §]!,§:MovieClip = null;
      
      public function §5!a§(param1:XML, param2:§08§, param3:§7!A§, param4:MovieClip = null)
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1311
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      public function §^,§(param1:Array = null, param2:Class = null) : void
      {
         var _loc19_:Boolean = true;
         var _loc20_:Boolean = false;
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§=" § = null;
         var _loc8_:§0-§ = null;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:XML = null;
         var _loc13_:§+w§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:* = 0;
         var _loc16_:int = 0;
         var _loc17_:* = 0;
         var _loc18_:* = 0;
         if(_loc19_ || this)
         {
            if(param2 == null)
            {
               if(!(_loc20_ && _loc3_))
               {
                  param2 = §+w§;
                  addr74:
                  this.§,9§ = new Vector.<§0-§>();
                  if(_loc19_)
                  {
                     addr82:
                     this.§@!r§();
                     if(!(_loc20_ && _loc3_))
                     {
                        §§goto(addr91);
                     }
                  }
                  §§goto(addr108);
               }
               §§goto(addr82);
            }
            §§goto(addr74);
         }
         addr91:
         §§push(param1);
         if(_loc19_ || _loc3_)
         {
            if(§§pop() == null)
            {
               if(_loc19_ || this)
               {
                  addr108:
                  param1 = getParentView().getRepeaterDataXML(mName);
                  §§goto(addr114);
               }
               §§goto(addr116);
            }
            addr114:
            §§goto(addr115);
         }
         addr115:
         if(!param1)
         {
            addr116:
            param1 = new Array();
         }
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
            if(_loc19_)
            {
               §§push(§§pop() + _loc3_);
            }
            _loc4_ = §§pop();
            if(!(_loc19_ || this))
            {
               break;
            }
            _loc5_ = new MovieClip();
            (_loc6_ = <Container/>).@name = _loc4_;
            _loc7_ = new §=" §(_loc6_,this,null,_loc5_);
            if(!(_loc20_ && _loc3_))
            {
               §&!Z§.push(_loc7_);
            }
            _loc8_ = new §0-§(this.§[T§,_loc4_);
            if(_loc20_ && this)
            {
               continue;
            }
            this.§,9§.push(_loc8_);
            if(_loc19_ || param1)
            {
               §§push(this.§<"%§);
               loop1:
               while(true)
               {
                  §§push(int(§§pop()));
                  loop2:
                  while(true)
                  {
                     _loc9_ = §§pop();
                     loop3:
                     while(true)
                     {
                        §§push(this.§&!B§);
                        loop4:
                        while(true)
                        {
                           §§push(int(§§pop()));
                           loop5:
                           while(true)
                           {
                              _loc10_ = §§pop();
                              if(!(_loc19_ || param1))
                              {
                                 continue loop0;
                              }
                              §§push(param1);
                              if(_loc19_)
                              {
                                 §§push(_loc3_);
                                 if(_loc19_)
                                 {
                                    if((§§pop()[§§pop()] as Array).length < _loc10_)
                                    {
                                       if(_loc19_)
                                       {
                                          if(_loc20_ && _loc3_)
                                          {
                                             continue loop3;
                                          }
                                          §§push(param1);
                                          if(!_loc20_)
                                          {
                                             addr298:
                                             §§push(_loc3_);
                                             if(_loc19_ || _loc3_)
                                             {
                                                §§push(int((§§pop()[§§pop()] as Array).length));
                                                loop9:
                                                while(true)
                                                {
                                                   _loc10_ = §§pop();
                                                   if(_loc19_)
                                                   {
                                                      loop6:
                                                      while(true)
                                                      {
                                                         §§push(this.§"v§);
                                                         if(_loc19_ || param2)
                                                         {
                                                            if(_loc19_ || param1)
                                                            {
                                                               if(!_loc19_)
                                                               {
                                                                  break;
                                                               }
                                                               if(§§pop() == §"$§)
                                                               {
                                                                  if(_loc19_ || param2)
                                                                  {
                                                                     §§push(this.§7P§);
                                                                     if(_loc19_)
                                                                     {
                                                                        §§push(_loc10_);
                                                                        if(!(_loc20_ && param1))
                                                                        {
                                                                           §§push(§§pop() - 1);
                                                                           if(_loc19_)
                                                                           {
                                                                              §§push(§§pop() * this.§;`§);
                                                                           }
                                                                           §§push(§§pop() - §§pop());
                                                                           if(_loc20_)
                                                                           {
                                                                              continue loop1;
                                                                           }
                                                                           §§push(2);
                                                                        }
                                                                        §§push(§§pop() / §§pop());
                                                                     }
                                                                     continue loop1;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  loop8:
                                                                  while(true)
                                                                  {
                                                                     §§push(0);
                                                                     if(!_loc20_)
                                                                     {
                                                                        if(_loc20_)
                                                                        {
                                                                           while(!_loc20_)
                                                                           {
                                                                              _loc9_ = §§pop();
                                                                              if(!(_loc20_ && this))
                                                                              {
                                                                                 continue loop8;
                                                                              }
                                                                              §§goto(addr921);
                                                                           }
                                                                           continue loop5;
                                                                           addr262:
                                                                        }
                                                                        if(!_loc19_)
                                                                        {
                                                                           continue loop2;
                                                                        }
                                                                        _loc11_ = §§pop();
                                                                        if(_loc19_ || param2)
                                                                        {
                                                                           if(true)
                                                                           {
                                                                              §§push(_loc11_);
                                                                              break;
                                                                           }
                                                                           addr896:
                                                                           continue loop6;
                                                                        }
                                                                        _loc7_.§4!v§(this.§&!B§,this.§;r§,this.§=!R§,this.§;!U§ * this.§;`§,this.§;!U§ * this.§"^§,this.§'^§,this.§;!U§);
                                                                        addr921:
                                                                        if(_loc20_ && this)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        §§goto(addr921);
                                                                     }
                                                                     break;
                                                                  }
                                                                  addr897:
                                                                  if(§§pop() < (param1[_loc3_] as Array).length)
                                                                  {
                                                                     addr349:
                                                                     §§push(param1);
                                                                     §§push(_loc3_);
                                                                     break loop5;
                                                                  }
                                                                  if(!(_loc19_ || param2))
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  _loc8_.§;!v§("");
                                                                  if(!(_loc20_ && _loc3_))
                                                                  {
                                                                     §§goto(addr921);
                                                                  }
                                                               }
                                                               _loc3_++;
                                                               continue loop0;
                                                            }
                                                            continue loop9;
                                                         }
                                                         §§goto(addr897);
                                                      }
                                                      continue loop4;
                                                      addr203:
                                                   }
                                                   continue loop0;
                                                }
                                             }
                                             break;
                                          }
                                          §§goto(addr349);
                                       }
                                       §§goto(addr911);
                                    }
                                    §§goto(addr203);
                                 }
                                 break;
                              }
                              §§goto(addr298);
                           }
                           _loc12_ = ((§§pop()[§§pop()] as Array)[_loc11_] as Array)[0] as XML;
                           if(!_loc20_)
                           {
                              if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
                              {
                                 if(_loc19_)
                                 {
                                    _loc7_.§&!Z§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
                                    if(_loc19_ || this)
                                    {
                                       addr418:
                                       _loc13_ = _loc7_.§&!Z§[_loc7_.§&!Z§.length - 1] as §+w§;
                                       if(_loc19_)
                                       {
                                          §§push(param1);
                                          if(!_loc20_)
                                          {
                                             §§push(_loc3_);
                                             if(!(_loc20_ && param2))
                                             {
                                                if(((§§pop()[§§pop()] as Array)[_loc11_] as Array)[1] != null)
                                                {
                                                   if(_loc19_ || param2)
                                                   {
                                                      _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                                                      addr462:
                                                      if(_loc19_ || param1)
                                                      {
                                                         _loc13_.setIcon(_loc14_,this.§1!f§);
                                                         §§push(this.§ !w§);
                                                         if(_loc19_)
                                                         {
                                                            addr558:
                                                            if(§§pop() == §3!0§)
                                                            {
                                                               addr542:
                                                               §§push(2);
                                                            }
                                                            §§push(this.§'^§);
                                                            if(_loc19_ || _loc3_)
                                                            {
                                                               §§push(1);
                                                               if(!(_loc20_ && _loc3_))
                                                               {
                                                                  if(§§pop() == §§pop())
                                                                  {
                                                                     if(_loc19_ || param1)
                                                                     {
                                                                        _loc13_.x = _loc9_ + _loc11_ * this.§;`§;
                                                                        if(!_loc20_)
                                                                        {
                                                                           §§push(_loc13_);
                                                                           §§push(this.§^q§);
                                                                           if(_loc19_ || this)
                                                                           {
                                                                              §§push(§§pop() + _loc11_ * this.§"^§);
                                                                           }
                                                                           §§pop().y = §§pop();
                                                                           addr612:
                                                                           _loc8_.§6f§(_loc13_);
                                                                           addr895:
                                                                           if(!_loc20_)
                                                                           {
                                                                              if(_loc19_)
                                                                              {
                                                                                 _loc11_++;
                                                                                 if(_loc19_ || _loc3_)
                                                                                 {
                                                                                    if(!(_loc20_ && _loc3_))
                                                                                    {
                                                                                       addr610:
                                                                                       if(false)
                                                                                       {
                                                                                          §§goto(addr612);
                                                                                       }
                                                                                       §§goto(addr896);
                                                                                    }
                                                                                    addr878:
                                                                                    §§push(_loc11_);
                                                                                    if(_loc19_ || param2)
                                                                                    {
                                                                                       addr870:
                                                                                       if(!(_loc20_ && param1))
                                                                                       {
                                                                                          addr836:
                                                                                          §§push(_loc16_);
                                                                                          if(!_loc20_)
                                                                                          {
                                                                                             addr841:
                                                                                             §§push(§§pop() * this.§&!B§ * this.§'^§);
                                                                                             if(_loc19_)
                                                                                             {
                                                                                                addr847:
                                                                                                §§push(§§pop() - §§pop());
                                                                                                if(_loc19_ || this)
                                                                                                {
                                                                                                   addr858:
                                                                                                   §§push(int(§§pop() / this.§&!B§));
                                                                                                   if(!(_loc20_ && param2))
                                                                                                   {
                                                                                                      _loc17_ = §§pop();
                                                                                                      addr866:
                                                                                                      §§push(_loc11_);
                                                                                                      if(_loc19_)
                                                                                                      {
                                                                                                         §§push(_loc16_);
                                                                                                         if(!(_loc20_ && this))
                                                                                                         {
                                                                                                            §§push(this.§&!B§);
                                                                                                            if(_loc19_ || _loc3_)
                                                                                                            {
                                                                                                               if(_loc19_ || _loc3_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(!(_loc20_ && this))
                                                                                                                  {
                                                                                                                     §§push(this.§'^§);
                                                                                                                     if(_loc19_ || param2)
                                                                                                                     {
                                                                                                                        addr788:
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(_loc19_)
                                                                                                                        {
                                                                                                                           if(!(_loc20_ && param1))
                                                                                                                           {
                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                              if(!_loc20_)
                                                                                                                              {
                                                                                                                                 if(!_loc20_)
                                                                                                                                 {
                                                                                                                                    §§push(this.§&!B§);
                                                                                                                                    if(_loc19_)
                                                                                                                                    {
                                                                                                                                       addr807:
                                                                                                                                       §§push(§§pop() % §§pop());
                                                                                                                                       if(_loc19_ || param1)
                                                                                                                                       {
                                                                                                                                          addr815:
                                                                                                                                          §§push(int(§§pop()));
                                                                                                                                          if(!_loc20_)
                                                                                                                                          {
                                                                                                                                             addr817:
                                                                                                                                             _loc18_ = §§pop();
                                                                                                                                             if(this.§4+§)
                                                                                                                                             {
                                                                                                                                                addr712:
                                                                                                                                                §§push(_loc13_);
                                                                                                                                                §§push(_loc9_ + _loc18_ * this.§;`§);
                                                                                                                                                if(!_loc20_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc16_ * this.§&!B§);
                                                                                                                                                   if(_loc19_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * this.§;`§);
                                                                                                                                                   }
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                }
                                                                                                                                                §§pop().x = §§pop();
                                                                                                                                                if(_loc19_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc20_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc13_);
                                                                                                                                                      §§push(this.§^q§);
                                                                                                                                                      if(_loc19_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + _loc17_ * this.mButtonMarginY2);
                                                                                                                                                      }
                                                                                                                                                      §§pop().y = §§pop();
                                                                                                                                                      §§goto(addr612);
                                                                                                                                                      addr707:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr895);
                                                                                                                                                }
                                                                                                                                                §§goto(addr866);
                                                                                                                                             }
                                                                                                                                             _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                                                                                                                                             addr683:
                                                                                                                                             addr818:
                                                                                                                                             if(_loc19_)
                                                                                                                                             {
                                                                                                                                                if(!_loc20_)
                                                                                                                                                {
                                                                                                                                                   if(_loc19_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc13_);
                                                                                                                                                      §§push(this.§^q§);
                                                                                                                                                      if(_loc19_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc18_);
                                                                                                                                                         if(_loc19_ || param1)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * this.§"^§);
                                                                                                                                                            if(!(_loc20_ && param2))
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               if(_loc19_ || this)
                                                                                                                                                               {
                                                                                                                                                                  addr663:
                                                                                                                                                                  addr654:
                                                                                                                                                                  §§push(_loc16_ * this.§&!B§);
                                                                                                                                                                  if(_loc19_)
                                                                                                                                                                  {
                                                                                                                                                                     addr659:
                                                                                                                                                                     §§push(§§pop() * this.§"^§);
                                                                                                                                                                  }
                                                                                                                                                                  §§pop().y = §§pop() + §§pop();
                                                                                                                                                                  if(_loc19_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     addr671:
                                                                                                                                                                     §§goto(addr612);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr683);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr663);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr659);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr654);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr663);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr818);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr712);
                                                                                                                                          }
                                                                                                                                          §§goto(addr858);
                                                                                                                                       }
                                                                                                                                       §§goto(addr847);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr858);
                                                                                                                              }
                                                                                                                              §§goto(addr807);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr841);
                                                                                                                  }
                                                                                                                  §§goto(addr788);
                                                                                                               }
                                                                                                               addr877:
                                                                                                               _loc16_ = §§pop() / (§§pop() * §§pop());
                                                                                                               §§goto(addr878);
                                                                                                            }
                                                                                                            §§goto(addr841);
                                                                                                         }
                                                                                                         §§goto(addr836);
                                                                                                      }
                                                                                                      §§goto(addr815);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr877);
                                                                                          }
                                                                                          addr872:
                                                                                          §§goto(addr877);
                                                                                          §§push(this.§'^§);
                                                                                       }
                                                                                       §§goto(addr872);
                                                                                       §§push(this.§&!B§);
                                                                                    }
                                                                                    §§goto(addr858);
                                                                                 }
                                                                                 §§goto(addr612);
                                                                              }
                                                                              §§goto(addr707);
                                                                           }
                                                                           §§goto(addr663);
                                                                           addr593:
                                                                        }
                                                                        §§goto(addr712);
                                                                     }
                                                                     §§goto(addr671);
                                                                  }
                                                                  §§goto(addr870);
                                                                  §§push(_loc11_);
                                                               }
                                                               §§goto(addr841);
                                                            }
                                                            §§goto(addr817);
                                                         }
                                                         _loc15_ = §§pop();
                                                         addr544:
                                                         if(_loc19_ || param2)
                                                         {
                                                            addr524:
                                                            _loc14_.y -= _loc14_.height / 2;
                                                            addr534:
                                                            if(this.§1!f§ == null)
                                                            {
                                                               if(!_loc20_)
                                                               {
                                                                  if(_loc19_ || this)
                                                                  {
                                                                     if(!(_loc20_ && this))
                                                                     {
                                                                        _loc14_.y -= _loc15_;
                                                                        addr520:
                                                                        if(_loc19_)
                                                                        {
                                                                           if(false)
                                                                           {
                                                                              §§goto(addr524);
                                                                           }
                                                                           §§goto(addr558);
                                                                        }
                                                                        §§goto(addr544);
                                                                     }
                                                                     §§goto(addr542);
                                                                  }
                                                                  §§goto(addr534);
                                                               }
                                                               §§goto(addr520);
                                                            }
                                                            §§goto(addr558);
                                                         }
                                                         addr557:
                                                         §§goto(addr557);
                                                      }
                                                      §§goto(addr542);
                                                   }
                                                   §§goto(addr610);
                                                }
                                                §§goto(addr558);
                                             }
                                          }
                                          §§goto(addr462);
                                       }
                                       §§goto(addr593);
                                    }
                                 }
                                 §§goto(addr418);
                              }
                              _loc7_.§&!Z§.push(new param2(_loc12_,_loc7_,new this.§#!>§() as MovieClip));
                           }
                           §§goto(addr418);
                        }
                     }
                  }
               }
            }
            §§goto(addr921);
         }
      }
      
      public function get §"!y§() : int
      {
         return this.§&!B§;
      }
      
      public function get §?0§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§"!y§);
            if(_loc1_ || _loc1_)
            {
               if(§§pop() == 0)
               {
                  if(_loc1_ || this)
                  {
                     §§push(0);
                  }
                  else
                  {
                     §§goto(addr58);
                  }
               }
               §§goto(addr58);
            }
            return §§pop();
         }
         addr58:
         §§push(this.§@"-§(this.§,"1§).§]!x§.length / this.§"!y§);
         if(_loc1_ || _loc1_)
         {
            return §§pop() + 1;
         }
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§'M§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§0-§ = null;
         var _loc4_:§=" § = getItemByName(this.§,"1§) as §=" §;
         if(!_loc6_)
         {
            §§push(param2);
            loop0:
            while(true)
            {
               if(§§pop().toUpperCase() == "SCROLL_LEFT")
               {
                  if(_loc7_ || param2)
                  {
                     if(_loc4_)
                     {
                        if(_loc7_ || param3)
                        {
                           _loc4_.§0A§(_loc4_.§`&§ - 1);
                        }
                        this.§83§();
                        addr216:
                     }
                     addr282:
                     super.containerEventOccured(param1,param2,param3);
                  }
                  addr287:
                  return;
               }
               §§push(param2);
               while(true)
               {
                  if(_loc6_)
                  {
                     continue loop0;
                  }
                  if(§§pop().toUpperCase() != "SCROLL_RIGHT")
                  {
                     continue;
                  }
                  if(!(_loc6_ && param2))
                  {
                     if(_loc7_ || this)
                     {
                        if(_loc4_)
                        {
                           addr180:
                           _loc4_.§0A§(_loc4_.§`&§ + 1);
                           do
                           {
                              this.§83§();
                           }
                           while(!(_loc7_ || param1));
                           
                           addr186:
                        }
                        break;
                     }
                     §§goto(addr216);
                  }
                  §§goto(addr186);
               }
               §§goto(addr282);
            }
         }
         §§goto(addr180);
      }
      
      public function §>!6§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§=" § = getItemByName(param1) as §=" §;
         if(_loc4_)
         {
            if(_loc3_)
            {
               if(!_loc5_)
               {
                  _loc3_.§0A§(param2);
               }
               do
               {
                  this.§83§();
               }
               while(_loc5_ && param1);
               
               addr50:
            }
            return;
         }
         §§goto(addr50);
      }
      
      public function §@"-§(param1:String) : §0-§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§,9§.length)
            {
               if(!(_loc4_ && _loc2_))
               {
                  break;
               }
               loop1:
               while(_loc4_)
               {
                  while(true)
                  {
                     _loc2_++;
                     continue loop1;
                  }
               }
               continue;
            }
            if(param1.toUpperCase() == (this.§,9§[_loc2_] as §0-§).mName.toUpperCase())
            {
               §§goto(addr76);
            }
            §§goto(addr58);
         }
         if(!_loc4_)
         {
            return null;
         }
         addr76:
         return this.§,9§[_loc2_] as §0-§;
      }
      
      public function §5"?§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§,"1§ = param1;
         }
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= §&!Z§.length)
            {
               if(_loc4_ || this)
               {
                  if(!_loc3_)
                  {
                     this.§83§();
                     addr45:
                     if(!(_loc3_ && this))
                     {
                        if(!_loc3_)
                        {
                           break;
                        }
                        loop13:
                        while(true)
                        {
                           if(!_loc3_)
                           {
                              if(_loc4_ || _loc2_)
                              {
                                 if(_loc4_)
                                 {
                                    loop2:
                                    while(true)
                                    {
                                       loop3:
                                       while(true)
                                       {
                                          _loc2_++;
                                          addr57:
                                          while(true)
                                          {
                                             if(!_loc3_)
                                             {
                                                if(!(_loc3_ && _loc2_))
                                                {
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      break loop3;
                                                   }
                                                   loop4:
                                                   while(true)
                                                   {
                                                      if((§&!Z§[_loc2_] as §=" §).mName.toUpperCase() != param1.toUpperCase())
                                                      {
                                                         (§&!Z§[_loc2_] as §=" §).setActiveStatus(false);
                                                         while(!(_loc4_ || _loc3_))
                                                         {
                                                         }
                                                         continue loop3;
                                                         addr84:
                                                      }
                                                      while(true)
                                                      {
                                                         (§&!Z§[_loc2_] as §=" §).setActiveStatus(true);
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(this.§5!T§);
                                                         loop5:
                                                         while(_loc4_ || this)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               loop6:
                                                               while(true)
                                                               {
                                                                  this.§]!,§.x = (§&!Z§[_loc2_] as §=" §).x + this.§,!#§;
                                                                  addr200:
                                                                  while(true)
                                                                  {
                                                                     this.§]!,§.width = (§&!Z§[_loc2_] as §=" §).width + this.§5F§;
                                                                     continue loop6;
                                                                  }
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(this.§#!n§);
                                                               if(_loc3_)
                                                               {
                                                                  continue loop5;
                                                               }
                                                               if(!§§pop())
                                                               {
                                                                  continue loop2;
                                                               }
                                                               addr133:
                                                               this.§]!,§.y = (§&!Z§[_loc2_] as §=" §).y + this.§2>§;
                                                               while(true)
                                                               {
                                                                  this.§]!,§.height = (§&!Z§[_loc2_] as §=" §).height + this.§3!F§;
                                                                  continue loop13;
                                                                  §§goto(addr133);
                                                               }
                                                            }
                                                         }
                                                         addr208:
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               continue loop4;
                                                            }
                                                            continue loop3;
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr159);
                                             }
                                             §§goto(addr84);
                                          }
                                       }
                                       continue loop0;
                                    }
                                 }
                                 §§goto(addr219);
                              }
                              §§goto(addr200);
                           }
                           §§goto(addr133);
                        }
                     }
                     §§goto(addr57);
                  }
                  §§goto(addr145);
               }
               §§goto(addr45);
            }
            else
            {
               §§push(§&!Z§[_loc2_] is §=" §);
            }
            §§goto(addr208);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§0-§ = null;
         if(_loc5_)
         {
            super.setEnabled(param1);
         }
         for each(_loc2_ in this.§,9§)
         {
            if(!(_loc6_ && param1))
            {
               _loc2_.setEnabled(param1);
            }
         }
      }
      
      public function §83§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc1_))
         {
            §§push(getItemByName("Button_Scroll1") == null);
            if(_loc3_ || _loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     §§pop();
                     if(_loc3_ || _loc3_)
                     {
                        addr53:
                        addr48:
                        if(getItemByName("Button_Scroll2") == null)
                        {
                           if(!(_loc2_ && this))
                           {
                              §§goto(addr61);
                           }
                        }
                        var _loc1_:§=" § = getItemByName(this.§,"1§) as §=" §;
                        if(!_loc2_)
                        {
                           if(!_loc1_)
                           {
                              (getItemByName("Button_Scroll1") as §^!D§).setComponentState(§=!&§.§-N§);
                              do
                              {
                                 (getItemByName("Button_Scroll2") as §^!D§).setComponentState(§=!&§.§-N§);
                              }
                              while(_loc2_);
                              
                              if(_loc3_)
                              {
                                 if(_loc2_)
                                 {
                                    loop1:
                                    for(; _loc2_ && this; while(true)
                                    {
                                       (getItemByName("Button_Scroll2") as §^!D§).setComponentState(§=!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                       continue loop1;
                                    })
                                    {
                                       while(true)
                                       {
                                          §§push(_loc1_.§`&§);
                                          loop8:
                                          while(true)
                                          {
                                             §§push(0);
                                             loop9:
                                             while(true)
                                             {
                                                if(§§pop() > §§pop())
                                                {
                                                   addr203:
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      (getItemByName("Button_Scroll1") as §^!D§).setComponentState(§=!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                   }
                                                   loop3:
                                                   while(true)
                                                   {
                                                      addr136:
                                                      loop4:
                                                      while(true)
                                                      {
                                                         §§push(_loc1_.§`&§);
                                                         if(_loc2_ && _loc3_)
                                                         {
                                                            continue loop8;
                                                         }
                                                         §§push(_loc1_.§`!7§);
                                                         if(!_loc3_)
                                                         {
                                                            continue loop9;
                                                         }
                                                         if(§§pop() >= §§pop() - 1)
                                                         {
                                                            addr117:
                                                            (getItemByName("Button_Scroll2") as §^!D§).setComponentState(§=!&§.§-N§);
                                                            while(true)
                                                            {
                                                               if(!(_loc2_ && _loc1_))
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     break loop1;
                                                                  }
                                                                  continue loop3;
                                                               }
                                                               §§goto(addr117);
                                                            }
                                                            addr126:
                                                         }
                                                         while(true)
                                                         {
                                                            if(!(_loc2_ && this))
                                                            {
                                                               continue loop1;
                                                            }
                                                            continue loop4;
                                                         }
                                                      }
                                                      §§goto(addr203);
                                                   }
                                                }
                                                else
                                                {
                                                   (getItemByName("Button_Scroll1") as §^!D§).setComponentState(§=!&§.§-N§);
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr136);
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 return;
                              }
                              §§goto(addr126);
                           }
                           §§goto(addr199);
                        }
                        §§goto(addr159);
                     }
                     addr61:
                     return;
                  }
               }
            }
            §§goto(addr53);
         }
         §§goto(addr48);
      }
      
      public function §@!r§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§=" § = null;
         var _loc1_:* = int(§&!Z§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = §&!Z§[_loc1_] as §=" §;
            if(!_loc4_)
            {
               if(_loc2_)
               {
                  while(true)
                  {
                     _loc2_.clear();
                     addr90:
                     while(true)
                     {
                        addr80:
                        while(true)
                        {
                           §&!Z§.splice(_loc1_,1);
                           addr85:
                           while(true)
                           {
                           }
                        }
                     }
                     addr71:
                     if(!(_loc3_ || _loc3_))
                     {
                        continue;
                     }
                     while(false)
                     {
                        §§goto(addr80);
                     }
                     continue loop0;
                     addr78:
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
                  if(!(_loc3_ || _loc2_))
                  {
                     continue;
                  }
                  if(!_loc4_)
                  {
                     §§goto(addr71);
                  }
                  §§goto(addr90);
               }
            }
            §§goto(addr78);
         }
         if(!_loc4_)
         {
            this.§5"?§("");
         }
      }
      
      public function §""E§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§0-§ = null;
         for each(_loc1_ in this.§,9§)
         {
            if(_loc5_ || this)
            {
               _loc1_.§""E§();
            }
         }
      }
      
      public function §1v§() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§@"-§(this.§,"1§));
            while(§§pop() != null)
            {
               §§push(this.§@"-§(this.§,"1§));
               if(!_loc2_)
               {
                  return §§pop().§^0§();
               }
            }
            if(!(_loc2_ && this))
            {
               addr80:
               §+!k§.log("ERROR! Tried to get selections for noninited repeater!");
            }
            return new Array();
         }
         §§goto(addr80);
      }
      
      public function §4"§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§@"-§(this.§,"1§).§4"§(param1);
         }
      }
      
      public function §1!N§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§@"-§(this.§,"1§).§1!N§(param1);
         }
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super.clear();
            while(true)
            {
               this.§#!>§ = null;
               while(true)
               {
                  this.§,9§ = null;
                  §§goto(addr74);
               }
            }
         }
         addr74:
         while(true)
         {
            this.§[y§ = null;
            if(_loc2_)
            {
               if(_loc2_ || _loc2_)
               {
                  continue loop0;
               }
               continue loop1;
            }
         }
         addr69:
      }
   }
}
