package §'!N§
{
   import §8P§.§&-§;
   import §8P§.§1A§;
   import §8P§.§4!Y§;
   import §8P§.§=1§;
   import §<u§.§]!Q§;
   import §@R§.§4,§;
   import §]!6§.§false§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §,2§ extends §2O§
   {
      
      public static const §@y§:int = 0;
      
      public static const §3#§:int = 1;
      
      public static const §30§:int = 2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §@y§ = 0;
            while(true)
            {
               §3#§ = 1;
               while(!(_loc1_ && §,2§))
               {
                  §30§ = 2;
                  if(!_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr40:
               }
            }
         }
         §§goto(addr40);
      }
      
      public var § !0§:String;
      
      public var §1d§:Class;
      
      public var §1!^§:String = null;
      
      public var §1!0§:Vector.<§=1§>;
      
      public var §0!H§:int;
      
      public var §#!I§:Number;
      
      public var §,Q§:Number;
      
      public var §[!c§:Number;
      
      public var §[!@§:Number;
      
      public var §"!$§:Number;
      
      public var §,!J§:Number;
      
      public var §6z§:Number;
      
      public var §?! §:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §!!`§:int;
      
      public var §'o§:Number;
      
      public var §]!c§:String = "";
      
      public var §-v§:int;
      
      public var § 8§:int;
      
      public var § ! §:GlowFilter;
      
      public var §7u§:Boolean = true;
      
      public var §&J§:int;
      
      public var §!-§:int;
      
      public var §6R§:Number = 0;
      
      public var §5S§:Number = 0;
      
      public var §8!c§:Number = 0;
      
      public var §`!f§:Number = 0;
      
      public var §'!D§:Boolean = false;
      
      public var §@V§:Boolean = false;
      
      public var §,d§:MovieClip = null;
      
      public function §,2§(param1:XML, param2:§2O§, param3:§]!Q§, param4:MovieClip = null)
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function §3!8§(param1:Array = null, param2:Class = null) : void
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§#v§ = null;
         var _loc8_:§=1§ = null;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:XML = null;
         var _loc13_:§`!M§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:* = 0;
         var _loc17_:int = 0;
         var _loc18_:* = 0;
         if(!_loc19_)
         {
            if(param2 == null)
            {
               if(_loc20_ || param1)
               {
                  param2 = §`!M§;
                  addr70:
                  this.§1!0§ = new Vector.<§=1§>();
                  if(_loc20_ || this)
                  {
                     addr83:
                     this.§&a§();
                     if(!(_loc19_ && param2))
                     {
                        §§goto(addr92);
                     }
                     §§goto(addr109);
                  }
                  §§goto(addr117);
               }
               addr92:
               §§push(param1);
               if(!(_loc19_ && this))
               {
                  if(§§pop() == null)
                  {
                     if(_loc20_ || param2)
                     {
                        addr109:
                        param1 = getParentView().getRepeaterDataXML(mName);
                     }
                     §§goto(addr117);
                  }
                  §§push(param1);
               }
               if(!§§pop())
               {
                  addr117:
                  param1 = new Array();
                  §§goto(addr121);
               }
               addr121:
               var _loc3_:int = 0;
               loop0:
               while(true)
               {
                  if(_loc3_ >= param1.length)
                  {
                     if(!(_loc19_ && param1))
                     {
                        break;
                     }
                     §§goto(addr997);
                  }
                  §§push(mName + "_Tab_");
                  if(_loc20_ || param1)
                  {
                     §§push(§§pop() + _loc3_);
                  }
                  _loc4_ = §§pop();
                  if(_loc19_ && param1)
                  {
                     break;
                  }
                  _loc5_ = new MovieClip();
                  (_loc6_ = <Container/>).@name = _loc4_;
                  _loc7_ = new §#v§(_loc6_,this,null,_loc5_);
                  if(_loc20_ || _loc3_)
                  {
                     §],§.push(_loc7_);
                  }
                  _loc8_ = new §=1§(this.§!-§,_loc4_);
                  if(_loc20_ || param1)
                  {
                     this.§1!0§.push(_loc8_);
                     loop1:
                     while(true)
                     {
                        §§push(this.§"!$§);
                        loop2:
                        while(true)
                        {
                           §§push(int(§§pop()));
                           addr353:
                           while(true)
                           {
                              _loc9_ = §§pop();
                              if(_loc20_)
                              {
                                 §§push(this.§0!H§);
                                 loop4:
                                 while(true)
                                 {
                                    §§push(int(§§pop()));
                                    if(_loc20_ || param1)
                                    {
                                       _loc10_ = §§pop();
                                       loop5:
                                       while(true)
                                       {
                                          §§push(param1);
                                          if(!(_loc19_ && param2))
                                          {
                                             §§push(_loc3_);
                                             if(_loc20_)
                                             {
                                                if((§§pop()[§§pop()] as Array).length < _loc10_)
                                                {
                                                   if(!(_loc19_ && this))
                                                   {
                                                      if(!_loc20_)
                                                      {
                                                         continue loop1;
                                                      }
                                                      §§push(param1);
                                                      if(!_loc19_)
                                                      {
                                                         addr324:
                                                         §§push(_loc3_);
                                                         if(_loc20_)
                                                         {
                                                            §§push(int((§§pop()[§§pop()] as Array).length));
                                                            while(true)
                                                            {
                                                               _loc10_ = §§pop();
                                                               if(!_loc19_)
                                                               {
                                                                  addr219:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§ 8§);
                                                                     while(true)
                                                                     {
                                                                        if(_loc19_)
                                                                        {
                                                                           continue loop4;
                                                                        }
                                                                        if(§§pop() == §@y§)
                                                                        {
                                                                           if(!(_loc20_ || this))
                                                                           {
                                                                              addr971:
                                                                              _loc3_++;
                                                                              continue loop0;
                                                                           }
                                                                           §§push(this.§[!c§);
                                                                           if(!(_loc19_ && this))
                                                                           {
                                                                              §§push(_loc10_);
                                                                              if(!(_loc19_ && _loc3_))
                                                                              {
                                                                                 §§push(§§pop() - 1);
                                                                                 if(!(_loc19_ && param1))
                                                                                 {
                                                                                    §§push(§§pop() * this.§6z§);
                                                                                 }
                                                                                 §§push(§§pop() - §§pop());
                                                                                 if(_loc19_)
                                                                                 {
                                                                                    continue loop2;
                                                                                 }
                                                                                 addr264:
                                                                                 §§push(2);
                                                                              }
                                                                              §§push(§§pop() / §§pop());
                                                                              continue loop2;
                                                                           }
                                                                           §§goto(addr264);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr191:
                                                                           §§push(0);
                                                                           if(_loc19_ && param2)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(!_loc20_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           _loc11_ = §§pop();
                                                                           if(_loc20_ || this)
                                                                           {
                                                                              continue loop5;
                                                                           }
                                                                           §§goto(addr971);
                                                                        }
                                                                     }
                                                                     addr923:
                                                                     if(§§pop() < (param1[_loc3_] as Array).length)
                                                                     {
                                                                        addr365:
                                                                        §§push(param1);
                                                                        §§push(_loc3_);
                                                                        break loop5;
                                                                     }
                                                                     if(_loc19_ && this)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     _loc8_.§;!O§("");
                                                                     if(_loc19_)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     _loc7_.§;!H§(this.§0!H§,this.§#!I§,this.§,Q§,this.§&J§ * this.§6z§,this.§&J§ * this.§?! §,this.§!!`§,this.§&J§);
                                                                     if(!(_loc20_ || param2))
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     §§goto(addr971);
                                                                  }
                                                                  continue loop5;
                                                                  addr219:
                                                               }
                                                               §§goto(addr942);
                                                            }
                                                            addr332:
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr365);
                                                   }
                                                   §§goto(addr942);
                                                }
                                                §§goto(addr219);
                                             }
                                             break;
                                          }
                                          §§goto(addr324);
                                       }
                                       _loc12_ = ((§§pop()[§§pop()] as Array)[_loc11_] as Array)[0] as XML;
                                       if(!(_loc19_ && param1))
                                       {
                                          if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
                                          {
                                             if(!(_loc19_ && this))
                                             {
                                                _loc7_.§],§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
                                                if(!_loc19_)
                                                {
                                                   addr439:
                                                   _loc13_ = _loc7_.§],§[_loc7_.§],§.length - 1] as §`!M§;
                                                   if(!_loc19_)
                                                   {
                                                      §§push(param1);
                                                      if(_loc20_ || param2)
                                                      {
                                                         §§push(_loc3_);
                                                         if(_loc20_)
                                                         {
                                                            if(((§§pop()[§§pop()] as Array)[_loc11_] as Array)[1] != null)
                                                            {
                                                               if(_loc20_ || param1)
                                                               {
                                                                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                                                                  addr483:
                                                                  if(!_loc19_)
                                                                  {
                                                                     _loc13_.§1o§(_loc14_,this.§1!^§);
                                                                     addr563:
                                                                     §§push(this.§-v§);
                                                                     if(!(_loc19_ && param2))
                                                                     {
                                                                        if(§§pop() == §3#§)
                                                                        {
                                                                           if(!_loc19_)
                                                                           {
                                                                              addr556:
                                                                              _loc15_ = 2;
                                                                           }
                                                                           addr526:
                                                                           _loc14_.y -= _loc14_.height / 2;
                                                                           if(!_loc19_)
                                                                           {
                                                                              if(_loc20_)
                                                                              {
                                                                                 if(this.§1!^§ == null)
                                                                                 {
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       addr516:
                                                                                       _loc14_.y -= _loc15_;
                                                                                    }
                                                                                    if(_loc20_)
                                                                                    {
                                                                                       if(false)
                                                                                       {
                                                                                          §§goto(addr526);
                                                                                       }
                                                                                       addr564:
                                                                                       §§push(this.§!!`§);
                                                                                       if(!(_loc19_ && param2))
                                                                                       {
                                                                                          §§push(1);
                                                                                          if(_loc20_)
                                                                                          {
                                                                                             if(§§pop() == §§pop())
                                                                                             {
                                                                                                if(!(_loc19_ && this))
                                                                                                {
                                                                                                   _loc13_.x = _loc9_ + _loc11_ * this.§6z§;
                                                                                                   if(!_loc19_)
                                                                                                   {
                                                                                                      §§push(_loc13_);
                                                                                                      §§push(this.§,!J§);
                                                                                                      if(!(_loc19_ && param2))
                                                                                                      {
                                                                                                         §§push(§§pop() + _loc11_ * this.§?! §);
                                                                                                      }
                                                                                                      §§pop().y = §§pop();
                                                                                                      addr615:
                                                                                                      _loc8_.§^!U§(_loc13_);
                                                                                                      addr921:
                                                                                                      if(!(_loc19_ && param2))
                                                                                                      {
                                                                                                         if(!(_loc19_ && this))
                                                                                                         {
                                                                                                            _loc11_++;
                                                                                                            if(_loc20_ || this)
                                                                                                            {
                                                                                                               if(!(_loc19_ && param1))
                                                                                                               {
                                                                                                                  if(_loc20_)
                                                                                                                  {
                                                                                                                     if(false)
                                                                                                                     {
                                                                                                                        §§goto(addr615);
                                                                                                                     }
                                                                                                                     §§goto(addr922);
                                                                                                                  }
                                                                                                                  addr703:
                                                                                                                  if(!(_loc19_ && param1))
                                                                                                                  {
                                                                                                                     §§push(_loc13_);
                                                                                                                     §§push(this.§,!J§);
                                                                                                                     if(_loc20_ || this)
                                                                                                                     {
                                                                                                                        §§push(_loc18_);
                                                                                                                        if(!_loc19_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * this.§?! §);
                                                                                                                           if(!(_loc19_ && this))
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(!(_loc19_ && _loc3_))
                                                                                                                              {
                                                                                                                                 addr667:
                                                                                                                                 §§push(_loc16_ * this.§0!H§);
                                                                                                                                 if(!(_loc19_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    addr677:
                                                                                                                                    §§push(§§pop() * this.§?! §);
                                                                                                                                 }
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                              }
                                                                                                                              §§pop().y = §§pop();
                                                                                                                              addr682:
                                                                                                                              if(_loc20_ || this)
                                                                                                                              {
                                                                                                                                 if(_loc20_)
                                                                                                                                 {
                                                                                                                                    addr691:
                                                                                                                                    §§goto(addr615);
                                                                                                                                 }
                                                                                                                                 addr904:
                                                                                                                                 §§push(_loc11_);
                                                                                                                                 §§push(_loc16_);
                                                                                                                                 §§push(this.§0!H§);
                                                                                                                                 if(_loc20_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    addr876:
                                                                                                                                    §§push((§§pop() - §§pop() * §§pop() * this.§!!`§) / this.§0!H§);
                                                                                                                                    if(!(_loc19_ && this))
                                                                                                                                    {
                                                                                                                                       addr884:
                                                                                                                                       _loc17_ = §§pop();
                                                                                                                                       addr885:
                                                                                                                                       §§push(_loc11_);
                                                                                                                                       if(_loc20_ || param1)
                                                                                                                                       {
                                                                                                                                          if(!(_loc19_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             if(!_loc19_)
                                                                                                                                             {
                                                                                                                                                addr781:
                                                                                                                                                §§push(_loc16_);
                                                                                                                                                if(_loc20_)
                                                                                                                                                {
                                                                                                                                                   if(_loc20_)
                                                                                                                                                   {
                                                                                                                                                      addr786:
                                                                                                                                                      §§push(this.§0!H§);
                                                                                                                                                      if(_loc20_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(!(_loc19_ && this))
                                                                                                                                                         {
                                                                                                                                                            if(_loc20_)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc19_ && this))
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§!!`§);
                                                                                                                                                                  if(!(_loc19_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     addr822:
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     if(!(_loc19_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                        if(!_loc19_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc19_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§0!H§);
                                                                                                                                                                              if(!(_loc19_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 addr849:
                                                                                                                                                                                 §§push(§§pop() % §§pop());
                                                                                                                                                                                 if(!_loc19_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr852:
                                                                                                                                                                                    §§push(int(§§pop()));
                                                                                                                                                                                    if(!_loc19_)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc18_ = §§pop();
                                                                                                                                                                                       addr855:
                                                                                                                                                                                       if(this.§7u§)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr730:
                                                                                                                                                                                          §§push(_loc13_);
                                                                                                                                                                                          §§push(_loc9_ + _loc18_ * this.§6z§);
                                                                                                                                                                                          if(_loc20_ || _loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc16_ * this.§0!H§);
                                                                                                                                                                                             if(!_loc19_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() * this.§6z§);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                          }
                                                                                                                                                                                          §§pop().x = §§pop();
                                                                                                                                                                                          if(_loc20_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc13_);
                                                                                                                                                                                             §§push(this.§,!J§);
                                                                                                                                                                                             if(_loc20_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() + _loc17_ * this.mButtonMarginY2);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§pop().y = §§pop();
                                                                                                                                                                                             addr723:
                                                                                                                                                                                             if(!_loc19_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr615);
                                                                                                                                                                                                addr725:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr885);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr855);
                                                                                                                                                                                       }
                                                                                                                                                                                       _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                                                                                                                                                                                       §§goto(addr703);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr903:
                                                                                                                                                                                    _loc16_ = §§pop();
                                                                                                                                                                                    §§goto(addr904);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr876);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr849);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr903);
                                                                                                                                                                     §§push(int(§§pop() / §§pop()));
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr876);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr822);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr904);
                                                                                                                                                   }
                                                                                                                                                   addr900:
                                                                                                                                                   §§goto(addr822);
                                                                                                                                                   §§push(§§pop() * this.§!!`§);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr904);
                                                                                                                                          }
                                                                                                                                          §§goto(addr884);
                                                                                                                                       }
                                                                                                                                       §§goto(addr852);
                                                                                                                                    }
                                                                                                                                    §§goto(addr822);
                                                                                                                                 }
                                                                                                                                 §§goto(addr900);
                                                                                                                              }
                                                                                                                              §§goto(addr730);
                                                                                                                           }
                                                                                                                           §§goto(addr677);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr667);
                                                                                                                     addr710:
                                                                                                                  }
                                                                                                                  §§goto(addr723);
                                                                                                               }
                                                                                                               §§goto(addr682);
                                                                                                            }
                                                                                                            §§goto(addr615);
                                                                                                         }
                                                                                                         §§goto(addr921);
                                                                                                      }
                                                                                                      §§goto(addr730);
                                                                                                   }
                                                                                                   §§goto(addr691);
                                                                                                }
                                                                                                §§goto(addr710);
                                                                                             }
                                                                                             §§push(_loc11_);
                                                                                             if(_loc20_ || param1)
                                                                                             {
                                                                                                §§goto(addr900);
                                                                                                §§push(this.§0!H§);
                                                                                             }
                                                                                             §§goto(addr852);
                                                                                          }
                                                                                          §§goto(addr786);
                                                                                       }
                                                                                       §§goto(addr781);
                                                                                    }
                                                                                    §§goto(addr526);
                                                                                 }
                                                                                 §§goto(addr564);
                                                                              }
                                                                              §§goto(addr563);
                                                                           }
                                                                           addr557:
                                                                           §§goto(addr557);
                                                                        }
                                                                        §§goto(addr564);
                                                                     }
                                                                     §§goto(addr556);
                                                                  }
                                                                  §§goto(addr516);
                                                               }
                                                               §§goto(addr691);
                                                            }
                                                            §§goto(addr564);
                                                         }
                                                      }
                                                      §§goto(addr483);
                                                   }
                                                   §§goto(addr725);
                                                }
                                             }
                                             §§goto(addr439);
                                          }
                                          _loc7_.§],§.push(new param2(_loc12_,_loc7_,new this.§1d§() as MovieClip));
                                       }
                                       §§goto(addr439);
                                    }
                                    §§goto(addr923);
                                 }
                              }
                              §§goto(addr937);
                           }
                        }
                     }
                  }
                  §§goto(addr971);
               }
               if(param1.length > 1)
               {
               }
               addr997:
               return;
            }
            §§goto(addr70);
         }
         §§goto(addr83);
      }
      
      public function get §;p§() : int
      {
         return this.§0!H§;
      }
      
      public function get §]!Y§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§;p§);
            if(_loc2_)
            {
               if(§§pop() == 0)
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     §§push(0);
                  }
                  else
                  {
                     §§goto(addr44);
                  }
               }
               §§goto(addr44);
            }
            return §§pop();
         }
         addr44:
         §§push(this.§4!X§(this.§]!c§).§2!G§.length / this.§;p§);
         if(_loc2_ || _loc1_)
         {
            return §§pop() + 1;
         }
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§1A§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§=1§ = null;
         var _loc4_:§#v§ = getItemByName(this.§]!c§) as §#v§;
         if(_loc7_ || param2)
         {
            §§push(param2);
            loop0:
            while(§§pop().toUpperCase() != "SCROLL_LEFT")
            {
               §§push(param2);
               loop1:
               while(true)
               {
                  if(_loc7_)
                  {
                     if(§§pop().toUpperCase() == "SCROLL_RIGHT")
                     {
                        if(!(_loc6_ && param3))
                        {
                           if(!_loc6_)
                           {
                              if(_loc4_)
                              {
                                 if(!(_loc6_ && param3))
                                 {
                                    if(!_loc6_)
                                    {
                                       _loc4_.§%<§(_loc4_.§2!T§ + 1);
                                       if(!_loc6_)
                                       {
                                          addr176:
                                          if(_loc7_ || param2)
                                          {
                                             this.§!`§();
                                             addr103:
                                             break;
                                             addr128:
                                          }
                                          break loop0;
                                       }
                                       addr218:
                                       §§push(Boolean(_loc5_ = this.§4!X§((param3 as §&-§).mParentContainer.mName.toUpperCase())));
                                       if(!_loc6_)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc7_ || this)
                                             {
                                                §§pop();
                                                if(_loc7_ || param3)
                                                {
                                                   addr252:
                                                   if(param3 is §`!M§)
                                                   {
                                                      if(_loc7_)
                                                      {
                                                         _loc5_.§;!O§((param3 as §&-§).mName.toUpperCase());
                                                         break;
                                                      }
                                                      break;
                                                   }
                                                   break;
                                                }
                                                break;
                                             }
                                          }
                                       }
                                       §§goto(addr252);
                                    }
                                    loop11:
                                    while(true)
                                    {
                                       this.§!`§();
                                       addr187:
                                       addr129:
                                       while(!(_loc7_ || param2))
                                       {
                                          continue loop11;
                                       }
                                       break loop1;
                                    }
                                 }
                                 §§goto(addr176);
                              }
                              §§goto(addr103);
                           }
                           §§goto(addr187);
                        }
                        §§goto(addr277);
                     }
                     continue;
                  }
                  continue loop0;
               }
               super.containerEventOccured(param1,param2,param3);
               addr277:
               return;
            }
            if(_loc4_)
            {
               §§goto(addr201);
            }
         }
         §§goto(addr129);
      }
      
      public function §>H§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§#v§ = getItemByName(param1) as §#v§;
         if(!(_loc5_ && param1))
         {
            if(_loc3_)
            {
               if(_loc4_ || param2)
               {
                  _loc3_.§%<§(param2);
               }
               do
               {
                  this.§!`§();
               }
               while(_loc5_ && this);
               
               addr55:
            }
            return;
         }
         §§goto(addr55);
      }
      
      public function §4!X§(param1:String) : §=1§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§1!0§.length)
            {
               if(_loc3_ || param1)
               {
                  break;
               }
               while(_loc4_)
               {
                  while(true)
                  {
                  }
               }
               continue;
               addr48:
            }
            else if(param1.toUpperCase() == (this.§1!0§[_loc2_] as §=1§).mName.toUpperCase())
            {
               if(_loc3_ || param1)
               {
                  return this.§1!0§[_loc2_] as §=1§;
               }
               §§goto(addr88);
            }
            while(true)
            {
               _loc2_++;
               §§goto(addr48);
            }
         }
         return null;
      }
      
      public function §%v§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            this.§]!c§ = param1;
         }
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= §],§.length)
            {
               if(_loc3_ || param1)
               {
                  if(_loc3_ || _loc3_)
                  {
                     if(_loc3_)
                     {
                        this.§!`§();
                        addr56:
                        if(_loc3_)
                        {
                           break;
                        }
                        loop14:
                        while(true)
                        {
                           loop8:
                           while(true)
                           {
                              §§push(this.§@V§);
                              if(_loc3_ || _loc2_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc3_)
                                    {
                                       if(_loc3_)
                                       {
                                          if(!_loc4_)
                                          {
                                             this.§,d§.y = (§],§[_loc2_] as §#v§).y + this.§`!f§;
                                             break;
                                          }
                                          loop9:
                                          while(true)
                                          {
                                             if((§],§[_loc2_] as §#v§).mName.toUpperCase() != param1.toUpperCase())
                                             {
                                                (§],§[_loc2_] as §#v§).setActiveStatus(false);
                                                loop12:
                                                while(true)
                                                {
                                                   if(!(_loc3_ || param1))
                                                   {
                                                      while(true)
                                                      {
                                                         (§],§[_loc2_] as §#v§).setActiveStatus(true);
                                                         addr230:
                                                         while(true)
                                                         {
                                                            §§push(this.§'!D§);
                                                            addr174:
                                                            while(_loc4_ && this)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                               }
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               continue loop8;
                                                            }
                                                            while(true)
                                                            {
                                                               this.§,d§.x = (§],§[_loc2_] as §#v§).x + this.§8!c§;
                                                               addr194:
                                                               while(true)
                                                               {
                                                                  this.§,d§.width = (§],§[_loc2_] as §#v§).width + this.§6R§;
                                                                  continue loop14;
                                                               }
                                                            }
                                                         }
                                                      }
                                                      addr223:
                                                   }
                                                   addr59:
                                                   while(true)
                                                   {
                                                      _loc2_++;
                                                      addr61:
                                                      while(true)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            if(!(_loc4_ && param1))
                                                            {
                                                               break;
                                                            }
                                                            break loop8;
                                                         }
                                                         continue loop12;
                                                      }
                                                      continue loop0;
                                                   }
                                                }
                                             }
                                             §§goto(addr223);
                                          }
                                       }
                                       §§goto(addr230);
                                    }
                                    break;
                                 }
                                 while(true)
                                 {
                                    §§goto(addr59);
                                 }
                                 addr71:
                              }
                              §§goto(addr174);
                           }
                           while(true)
                           {
                              if(_loc3_ || _loc2_)
                              {
                                 if(_loc3_ || _loc2_)
                                 {
                                    this.§,d§.height = (§],§[_loc2_] as §#v§).height + this.§5S§;
                                    while(true)
                                    {
                                       §§goto(addr71);
                                       §§goto(addr156);
                                    }
                                    addr156:
                                    addr102:
                                 }
                                 §§goto(addr182);
                              }
                              §§goto(addr194);
                           }
                        }
                     }
                     §§goto(addr102);
                  }
                  §§goto(addr61);
               }
               §§goto(addr56);
            }
            else
            {
               §§push(§],§[_loc2_] is §#v§);
            }
            §§goto(addr202);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§=1§ = null;
         if(_loc5_ || _loc3_)
         {
            super.setEnabled(param1);
         }
         for each(_loc2_ in this.§1!0§)
         {
            if(!_loc6_)
            {
               _loc2_.setEnabled(param1);
            }
         }
      }
      
      public function §!`§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(getItemByName("Button_Scroll1") == null);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     §§goto(addr35);
                  }
               }
               §§goto(addr48);
            }
            addr35:
            §§pop();
            if(_loc3_ || _loc1_)
            {
               addr48:
               addr43:
               if(getItemByName("Button_Scroll2") == null)
               {
                  if(_loc3_)
                  {
                     §§goto(addr51);
                  }
               }
               var _loc1_:§#v§ = getItemByName(this.§]!c§) as §#v§;
               if(_loc3_ || _loc1_)
               {
                  if(!_loc1_)
                  {
                     (getItemByName("Button_Scroll1") as §<i§).setComponentState(§4!Y§.§[&§);
                     loop0:
                     for(; _loc3_; (getItemByName("Button_Scroll2") as §<i§).setComponentState(§4!Y§.§[&§),if(!_loc3_)
                     {
                        continue;
                     },if(_loc3_)
                     {
                        if(_loc2_ && _loc3_)
                        {
                           §§goto(addr152);
                        }
                        §§goto(addr68);
                     },§§goto(addr169))
                     {
                        if(_loc3_ || _loc1_)
                        {
                           continue;
                        }
                        loop8:
                        while(true)
                        {
                           loop5:
                           while(true)
                           {
                              §§push(_loc1_.§2!T§);
                              if(!_loc2_)
                              {
                                 §§push(_loc1_.§@"§);
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    addr150:
                                    if(§§pop() < §§pop() - 1)
                                    {
                                       while(true)
                                       {
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             if(!_loc2_)
                                             {
                                                (getItemByName("Button_Scroll2") as §<i§).setComponentState(§4!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                while(_loc2_ && this)
                                                {
                                                }
                                                addr68:
                                                return;
                                                addr169:
                                                addr93:
                                             }
                                             else
                                             {
                                                addr191:
                                             }
                                             while(true)
                                             {
                                                §§push(_loc1_.§2!T§);
                                                addr193:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   addr194:
                                                   while(true)
                                                   {
                                                      if(§§pop() <= §§pop())
                                                      {
                                                         (getItemByName("Button_Scroll1") as §<i§).setComponentState(§4!Y§.§[&§);
                                                         while(true)
                                                         {
                                                            continue loop5;
                                                         }
                                                         addr188:
                                                      }
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                (getItemByName("Button_Scroll1") as §<i§).setComponentState(§4!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                continue loop8;
                                             }
                                          }
                                          §§goto(addr188);
                                          §§goto(addr150);
                                       }
                                       addr152:
                                    }
                                    (getItemByName("Button_Scroll2") as §<i§).setComponentState(§4!Y§.§[&§);
                                    break loop0;
                                 }
                                 §§goto(addr194);
                              }
                              §§goto(addr193);
                           }
                        }
                     }
                     addr135:
                     §§goto(addr93);
                  }
                  §§goto(addr191);
               }
               §§goto(addr135);
            }
            addr51:
            return;
         }
         §§goto(addr43);
      }
      
      public function §&a§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§#v§ = null;
         var _loc1_:* = int(§],§.length - 1);
         while(_loc1_ >= 0)
         {
            _loc2_ = §],§[_loc1_] as §#v§;
            if(!_loc3_)
            {
               if(_loc2_)
               {
                  while(true)
                  {
                     _loc2_.clear();
                     addr81:
                     loop2:
                     while(true)
                     {
                        addr64:
                        while(true)
                        {
                           §],§.splice(_loc1_,1);
                           addr69:
                           while(!(_loc3_ && _loc3_))
                           {
                              while(true)
                              {
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
                  addr79:
               }
               while(true)
               {
                  §§push(_loc1_);
                  if(_loc4_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc1_ = §§pop();
                  if(!(_loc3_ && _loc1_))
                  {
                     if(_loc4_)
                     {
                        if(true)
                        {
                           break;
                        }
                        §§goto(addr64);
                     }
                     else
                     {
                        §§goto(addr79);
                     }
                  }
                  §§goto(addr69);
               }
               continue;
            }
            §§goto(addr76);
         }
         if(_loc4_ || this)
         {
            this.§%v§("");
         }
      }
      
      public function §=!f§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§=1§ = null;
         for each(_loc1_ in this.§1!0§)
         {
            if(_loc5_)
            {
               _loc1_.§=!f§();
            }
         }
      }
      
      public function §5!V§() : Array
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§4!X§(this.§]!c§));
         }
         else
         {
            do
            {
               §§push(this.§4!X§(this.§]!c§));
            }
            while(_loc1_);
            
            return §§pop().§!_§();
            addr25:
         }
         while(§§pop() != null)
         {
            §§goto(addr25);
         }
         §4,§.log("ERROR! Tried to get selections for noninited repeater!");
         return new Array();
      }
      
      public function §=!>§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§4!X§(this.§]!c§).§=!>§(param1);
         }
      }
      
      public function §9f§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§4!X§(this.§]!c§).§9f§(param1);
         }
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.clear();
            while(true)
            {
               this.§1d§ = null;
               while(!(_loc2_ && this))
               {
                  this.§1!0§ = null;
                  loop2:
                  while(_loc1_ || this)
                  {
                     while(true)
                     {
                        this.§ ! § = null;
                        if(!(_loc2_ && this))
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr56);
      }
   }
}
