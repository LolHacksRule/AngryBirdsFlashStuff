package §0"$§
{
   import §,L§.§%J§;
   import §,L§.§6!W§;
   import §,L§.§;[§;
   import §,L§.§;k§;
   import §7!§.§2W§;
   import com.rovio.assets.§<V§;
   import each.§!!'§;
   import flash.display.*;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §7!a§ extends §"!a§
   {
      
      public static const §]`§:int = 0;
      
      public static const §5!b§:int = 1;
      
      public static const §7U§:int = 2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §]`§ = 0;
         }
         while(true)
         {
            §5!b§ = 1;
            while(!_loc1_)
            {
               §7U§ = 2;
               if(_loc2_ || _loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public var §^2§:String;
      
      public var §%[§:Class;
      
      public var §^G§:String = null;
      
      public var §2!Y§:Vector.<§;k§>;
      
      public var §9l§:int;
      
      public var §8E§:Number;
      
      public var §`!]§:Number;
      
      public var §%"&§:Number;
      
      public var §]!H§:Number;
      
      public var §];§:Number;
      
      public var §[k§:Number;
      
      public var §`M§:Number;
      
      public var §5"#§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §2!3§:int;
      
      public var §7!m§:Number;
      
      public var §!g§:String = "";
      
      public var §<"-§:int;
      
      public var §05§:int;
      
      public var §[!s§:GlowFilter;
      
      public var §8!f§:Boolean = true;
      
      public var §=6§:int;
      
      public var §^w§:int;
      
      public var §?!S§:Number = 0;
      
      public var §-§:Number = 0;
      
      public var §5j§:Number = 0;
      
      public var §8p§:Number = 0;
      
      public var §1!L§:Boolean = false;
      
      public var §]!$§:Boolean = false;
      
      public var §`q§:MovieClip = null;
      
      public function §7!a§(param1:XML, param2:§"!a§, param3:§2W§, param4:MovieClip = null)
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function §=p§(param1:Array = null, param2:Class = null) : void
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§0U§ = null;
         var _loc8_:§;k§ = null;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:XML = null;
         var _loc13_:§%!M§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:* = 0;
         var _loc16_:* = 0;
         var _loc17_:int = 0;
         var _loc18_:* = 0;
         if(_loc20_ || this)
         {
            if(param2 == null)
            {
               if(!_loc19_)
               {
                  param2 = §%!M§;
               }
               §§goto(addr84);
            }
            this.§2!Y§ = new Vector.<§;k§>();
            if(_loc20_)
            {
               this.§7j§();
               if(!_loc19_)
               {
                  if(!param1)
                  {
                     addr84:
                     param1 = new Array();
                     §§goto(addr88);
                  }
                  addr88:
                  var _loc3_:int = 0;
                  loop0:
                  while(true)
                  {
                     if(_loc3_ >= param1.length)
                     {
                        if(_loc20_ || param1)
                        {
                           break;
                        }
                        §§goto(addr874);
                     }
                     §§push(mName + "_Tab_");
                     if(_loc20_ || param1)
                     {
                        §§push(§§pop() + _loc3_);
                     }
                     _loc4_ = §§pop();
                     if(_loc19_)
                     {
                        break;
                     }
                     _loc5_ = new MovieClip();
                     (_loc6_ = <Container/>).@name = _loc4_;
                     _loc7_ = new §0U§(_loc6_,this,null,_loc5_);
                     if(!_loc19_)
                     {
                        §<C§.push(_loc7_);
                     }
                     _loc8_ = new §;k§(this.§^w§,_loc4_);
                     if(!_loc20_)
                     {
                        continue;
                     }
                     this.§2!Y§.push(_loc8_);
                     loop1:
                     while(true)
                     {
                        §§push(this.§];§);
                        loop2:
                        while(true)
                        {
                           §§push(int(§§pop()));
                           if(!_loc19_)
                           {
                              _loc9_ = §§pop();
                              loop3:
                              while(true)
                              {
                                 §§push(this.§9l§);
                                 loop4:
                                 while(true)
                                 {
                                    §§push(int(§§pop()));
                                    loop5:
                                    while(true)
                                    {
                                       _loc10_ = §§pop();
                                       loop6:
                                       while(true)
                                       {
                                          §§push(param1);
                                          if(_loc20_ || param1)
                                          {
                                             §§push(_loc3_);
                                             if(_loc20_)
                                             {
                                                if((§§pop()[§§pop()] as Array).length < _loc10_)
                                                {
                                                   if(_loc20_ || param2)
                                                   {
                                                      §§push(param1);
                                                      if(!_loc19_)
                                                      {
                                                         addr269:
                                                         §§push(_loc3_);
                                                         if(_loc20_)
                                                         {
                                                            §§push(int((§§pop()[§§pop()] as Array).length));
                                                            if(_loc20_ || this)
                                                            {
                                                               if(_loc19_ && param2)
                                                               {
                                                                  continue loop5;
                                                               }
                                                               _loc10_ = §§pop();
                                                               if(_loc19_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               addr294:
                                                               while(true)
                                                               {
                                                                  §§push(this.§05§);
                                                                  if(_loc20_ || _loc3_)
                                                                  {
                                                                     if(§§pop() == §]`§)
                                                                     {
                                                                        if(_loc20_ || param2)
                                                                        {
                                                                           §§push(this.§%"&§);
                                                                           if(_loc20_ || this)
                                                                           {
                                                                              if(!_loc20_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(_loc10_);
                                                                              if(_loc20_)
                                                                              {
                                                                                 addr227:
                                                                                 §§push(§§pop() - 1);
                                                                                 if(_loc20_ || this)
                                                                                 {
                                                                                    §§push(§§pop() * this.§`M§);
                                                                                 }
                                                                                 §§push(§§pop() - §§pop());
                                                                                 if(!(_loc19_ && param1))
                                                                                 {
                                                                                    §§push(2);
                                                                                 }
                                                                                 §§push(int(§§pop()));
                                                                                 while(_loc20_)
                                                                                 {
                                                                                    _loc9_ = §§pop();
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       continue loop3;
                                                                                    }
                                                                                    addr824:
                                                                                    _loc7_.§<!u§(this.§9l§,this.§8E§,this.§`!]§,this.§=6§ * this.§`M§,this.§=6§ * this.§5"#§,this.§2!3§,this.§=6§);
                                                                                    if(_loc20_)
                                                                                    {
                                                                                       addr848:
                                                                                       _loc3_++;
                                                                                    }
                                                                                    continue loop0;
                                                                                    if(_loc19_ && this)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    _loc11_ = §§pop();
                                                                                    if(_loc20_ || _loc3_)
                                                                                    {
                                                                                       if(!_loc19_)
                                                                                       {
                                                                                          continue loop1;
                                                                                       }
                                                                                       continue loop6;
                                                                                    }
                                                                                    addr819:
                                                                                    _loc8_.§?!Y§("");
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       §§goto(addr824);
                                                                                    }
                                                                                    §§goto(addr848);
                                                                                 }
                                                                                 continue loop4;
                                                                                 addr228:
                                                                              }
                                                                              §§push(§§pop() / §§pop());
                                                                           }
                                                                           §§goto(addr227);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr819);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(0);
                                                                           if(_loc19_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§goto(addr147);
                                                                        }
                                                                        addr810:
                                                                        if(§§pop() < (param1[_loc3_] as Array).length)
                                                                        {
                                                                           addr317:
                                                                           §§push(param1);
                                                                           §§push(_loc3_);
                                                                           break loop6;
                                                                        }
                                                                        if(!_loc20_)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        §§goto(addr819);
                                                                        addr143:
                                                                     }
                                                                     §§goto(addr228);
                                                                  }
                                                                  §§goto(addr810);
                                                               }
                                                               continue loop2;
                                                               addr173:
                                                            }
                                                            §§goto(addr810);
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr317);
                                                   }
                                                   §§goto(addr294);
                                                }
                                                §§goto(addr173);
                                             }
                                             break;
                                          }
                                          §§goto(addr269);
                                       }
                                       _loc12_ = ((§§pop()[§§pop()] as Array)[_loc11_] as Array)[0] as XML;
                                       if(_loc20_)
                                       {
                                          if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
                                          {
                                             if(!_loc19_)
                                             {
                                                addr347:
                                                _loc7_.§<C§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
                                                if(_loc20_ || param1)
                                                {
                                                   addr374:
                                                }
                                                addr386:
                                                _loc13_ = _loc7_.§<C§[_loc7_.§<C§.length - 1] as §%!M§;
                                                if(_loc20_)
                                                {
                                                   §§push(param1);
                                                   if(!(_loc19_ && param1))
                                                   {
                                                      §§push(_loc3_);
                                                      if(_loc20_)
                                                      {
                                                         if(((§§pop()[§§pop()] as Array)[_loc11_] as Array)[1] != null)
                                                         {
                                                            if(_loc20_ || param2)
                                                            {
                                                               addr440:
                                                               _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                                                               if(!(_loc19_ && param2))
                                                               {
                                                                  _loc13_.§ j§(_loc14_,this.§^G§);
                                                                  §§push(this.§<"-§);
                                                                  if(!(_loc19_ && param1))
                                                                  {
                                                                     addr531:
                                                                     if(§§pop() == §5!b§)
                                                                     {
                                                                        addr522:
                                                                        §§push(2);
                                                                     }
                                                                     §§push(this.§2!3§);
                                                                     if(_loc20_ || this)
                                                                     {
                                                                        §§push(1);
                                                                        if(!_loc19_)
                                                                        {
                                                                           if(§§pop() == §§pop())
                                                                           {
                                                                              if(_loc20_)
                                                                              {
                                                                                 _loc13_.x = _loc9_ + _loc11_ * this.§`M§;
                                                                                 if(_loc20_ || param1)
                                                                                 {
                                                                                    §§push(_loc13_);
                                                                                    §§push(this.§[k§);
                                                                                    if(_loc20_)
                                                                                    {
                                                                                       §§push(§§pop() + _loc11_ * this.§5"#§);
                                                                                    }
                                                                                    §§pop().y = §§pop();
                                                                                    addr579:
                                                                                    _loc8_.§7!W§(_loc13_);
                                                                                    _loc11_++;
                                                                                    addr808:
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       if(_loc20_)
                                                                                       {
                                                                                          if(!(_loc19_ && param1))
                                                                                          {
                                                                                             addr796:
                                                                                             if(!_loc19_)
                                                                                             {
                                                                                                if(false)
                                                                                                {
                                                                                                   §§goto(addr579);
                                                                                                }
                                                                                                addr809:
                                                                                                §§goto(addr810);
                                                                                                §§push(_loc11_);
                                                                                             }
                                                                                             §§push(_loc11_);
                                                                                             if(_loc20_ || this)
                                                                                             {
                                                                                                addr773:
                                                                                                §§push(_loc16_ * this.§9l§ * this.§2!3§);
                                                                                                if(!_loc19_)
                                                                                                {
                                                                                                   addr777:
                                                                                                   §§push((§§pop() - §§pop()) / this.§9l§);
                                                                                                   if(!_loc19_)
                                                                                                   {
                                                                                                      addr783:
                                                                                                      _loc17_ = §§pop();
                                                                                                      §§push(_loc11_);
                                                                                                      if(!_loc19_)
                                                                                                      {
                                                                                                         if(!(_loc19_ && param1))
                                                                                                         {
                                                                                                            addr689:
                                                                                                            §§push(_loc16_);
                                                                                                            if(_loc20_ || param2)
                                                                                                            {
                                                                                                               if(_loc20_)
                                                                                                               {
                                                                                                                  §§push(this.§9l§);
                                                                                                                  if(_loc20_)
                                                                                                                  {
                                                                                                                     if(!_loc19_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(_loc20_ || this)
                                                                                                                        {
                                                                                                                           if(!_loc19_)
                                                                                                                           {
                                                                                                                              if(!_loc19_)
                                                                                                                              {
                                                                                                                                 §§push(this.§2!3§);
                                                                                                                                 if(_loc20_)
                                                                                                                                 {
                                                                                                                                    addr722:
                                                                                                                                    §§push(§§pop() - §§pop() * §§pop());
                                                                                                                                    if(_loc20_ || param2)
                                                                                                                                    {
                                                                                                                                       §§push(this.§9l§);
                                                                                                                                       if(!_loc19_)
                                                                                                                                       {
                                                                                                                                          addr735:
                                                                                                                                          §§push(§§pop() % §§pop());
                                                                                                                                          if(!_loc19_)
                                                                                                                                          {
                                                                                                                                             if(_loc20_)
                                                                                                                                             {
                                                                                                                                                addr740:
                                                                                                                                                §§push(int(§§pop()));
                                                                                                                                                if(_loc20_ || param1)
                                                                                                                                                {
                                                                                                                                                   if(!_loc19_)
                                                                                                                                                   {
                                                                                                                                                      _loc18_ = §§pop();
                                                                                                                                                      addr750:
                                                                                                                                                      if(_loc20_ || this)
                                                                                                                                                      {
                                                                                                                                                         if(this.§8!f§)
                                                                                                                                                         {
                                                                                                                                                            addr655:
                                                                                                                                                            §§push(_loc13_);
                                                                                                                                                            §§push(_loc9_ + _loc18_ * this.§`M§);
                                                                                                                                                            if(!_loc19_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc16_ * this.§9l§);
                                                                                                                                                               if(_loc20_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * this.§`M§);
                                                                                                                                                               }
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                            }
                                                                                                                                                            §§pop().x = §§pop();
                                                                                                                                                            if(!_loc19_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc13_);
                                                                                                                                                               §§push(this.§[k§);
                                                                                                                                                               if(_loc20_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() + _loc17_ * this.mButtonMarginY2);
                                                                                                                                                               }
                                                                                                                                                               §§pop().y = §§pop();
                                                                                                                                                               addr650:
                                                                                                                                                               §§goto(addr579);
                                                                                                                                                               addr650:
                                                                                                                                                               addr677:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr750);
                                                                                                                                                         }
                                                                                                                                                         _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                                                                                                                                                         addr630:
                                                                                                                                                         if(_loc20_ || this)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc13_);
                                                                                                                                                            §§push(this.§[k§);
                                                                                                                                                            if(_loc20_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc18_);
                                                                                                                                                               if(!_loc19_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * this.§5"#§);
                                                                                                                                                                  if(_loc20_)
                                                                                                                                                                  {
                                                                                                                                                                     addr611:
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                     if(_loc20_)
                                                                                                                                                                     {
                                                                                                                                                                        addr602:
                                                                                                                                                                        §§push(_loc16_ * this.§9l§);
                                                                                                                                                                        if(_loc20_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * this.§5"#§);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§pop().y = §§pop();
                                                                                                                                                                     if(!_loc19_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc20_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc19_)
                                                                                                                                                                           {
                                                                                                                                                                              addr618:
                                                                                                                                                                              §§goto(addr579);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr655);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr630);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr611);
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr602);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr611);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr650);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr808);
                                                                                                                                                   }
                                                                                                                                                   addr795:
                                                                                                                                                   _loc16_ = §§pop();
                                                                                                                                                   §§goto(addr796);
                                                                                                                                                }
                                                                                                                                                §§goto(addr783);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr777);
                                                                                                                                    }
                                                                                                                                    §§goto(addr735);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr773);
                                                                                                                        }
                                                                                                                        §§goto(addr722);
                                                                                                                     }
                                                                                                                     addr792:
                                                                                                                     §§goto(addr795);
                                                                                                                     §§push(int(§§pop() / (§§pop() * §§pop())));
                                                                                                                  }
                                                                                                                  §§goto(addr773);
                                                                                                               }
                                                                                                               addr790:
                                                                                                               §§goto(addr792);
                                                                                                               §§push(this.§2!3§);
                                                                                                            }
                                                                                                            §§goto(addr773);
                                                                                                         }
                                                                                                         §§goto(addr796);
                                                                                                      }
                                                                                                      §§goto(addr740);
                                                                                                      addr784:
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr792);
                                                                                             }
                                                                                             addr788:
                                                                                             §§goto(addr790);
                                                                                             §§push(this.§9l§);
                                                                                          }
                                                                                          §§goto(addr784);
                                                                                       }
                                                                                       §§goto(addr611);
                                                                                    }
                                                                                    addr583:
                                                                                    §§goto(addr583);
                                                                                 }
                                                                                 §§goto(addr618);
                                                                              }
                                                                              §§goto(addr677);
                                                                           }
                                                                           §§goto(addr788);
                                                                           §§push(_loc11_);
                                                                        }
                                                                        §§goto(addr790);
                                                                     }
                                                                     §§goto(addr689);
                                                                  }
                                                                  _loc15_ = §§pop();
                                                                  addr492:
                                                                  _loc14_.y -= _loc14_.height / 2;
                                                                  addr524:
                                                                  if(!(_loc19_ && this))
                                                                  {
                                                                     if(this.§^G§ == null)
                                                                     {
                                                                        if(!(_loc19_ && param2))
                                                                        {
                                                                           if(!_loc19_)
                                                                           {
                                                                              addr475:
                                                                              _loc14_.y -= _loc15_;
                                                                              addr481:
                                                                              if(!(_loc19_ && param1))
                                                                              {
                                                                                 if(_loc20_)
                                                                                 {
                                                                                    if(false)
                                                                                    {
                                                                                       §§goto(addr492);
                                                                                    }
                                                                                    §§goto(addr531);
                                                                                 }
                                                                                 §§goto(addr522);
                                                                              }
                                                                              §§goto(addr524);
                                                                           }
                                                                           §§goto(addr492);
                                                                        }
                                                                        §§goto(addr481);
                                                                     }
                                                                     §§goto(addr531);
                                                                  }
                                                                  addr530:
                                                                  §§goto(addr530);
                                                               }
                                                               §§goto(addr475);
                                                            }
                                                            §§goto(addr650);
                                                         }
                                                         §§goto(addr531);
                                                      }
                                                   }
                                                }
                                                §§goto(addr440);
                                             }
                                             §§goto(addr374);
                                          }
                                          _loc7_.§<C§.push(new param2(_loc12_,_loc7_,new this.§%[§() as MovieClip));
                                          §§goto(addr386);
                                       }
                                       §§goto(addr347);
                                    }
                                 }
                              }
                           }
                           §§goto(addr810);
                        }
                     }
                  }
                  if(param1.length > 1)
                  {
                  }
                  addr874:
                  return;
               }
            }
         }
         §§goto(addr84);
      }
      
      public function get §'!?§() : int
      {
         return this.§9l§;
      }
      
      public function get §!a§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§'!?§);
            if(!(_loc2_ && this))
            {
               if(§§pop() == 0)
               {
                  if(_loc1_)
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
         §§push(this.§+"&§(this.§!g§).§9t§.length / this.§'!?§);
         if(_loc1_ || _loc2_)
         {
            return §§pop() + 1;
         }
      }
      
      override public function childUIEventOccured(param1:int, param2:String, param3:§6!W§, param4:Event = null) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:§;k§ = null;
         var _loc5_:§0U§ = getItemByName(this.§!g§) as §0U§;
         if(!_loc8_)
         {
            §§push(param2);
            loop0:
            while(true)
            {
               if(§§pop().toUpperCase() == "SCROLL_LEFT")
               {
                  if(!_loc8_)
                  {
                     if(_loc5_)
                     {
                        if(_loc7_)
                        {
                           addr190:
                           _loc5_.§&p§(_loc5_.§6!x§ - 1);
                           this.§@I§();
                           super.childUIEventOccured(param1,param2,param3,param4);
                           break;
                           addr160:
                           addr195:
                           addr179:
                        }
                        break;
                     }
                     §§goto(addr160);
                  }
                  §§goto(addr190);
               }
               else
               {
                  §§push(param2);
                  loop1:
                  while(§§pop().toUpperCase() != "SCROLL_RIGHT")
                  {
                     §§push(param2);
                     if(!(_loc7_ || param1))
                     {
                        continue;
                     }
                     if(!_loc7_)
                     {
                        continue loop0;
                     }
                     §§push(§§pop().length > 0);
                     loop2:
                     while(true)
                     {
                        §§push(§§pop());
                        loop3:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 §§pop();
                                 if(_loc7_)
                                 {
                                    if(_loc7_)
                                    {
                                       if(!(_loc8_ && param3))
                                       {
                                          if(_loc7_ || this)
                                          {
                                             while(true)
                                             {
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   loop7:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() == §6!W§.LISTENER_EVENT_MOUSE_DOWN);
                                                      if(_loc7_)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(§§pop());
                                                         loop9:
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               addr93:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  if(_loc7_ || param1)
                                                                  {
                                                                     if(!_loc8_)
                                                                     {
                                                                        if(_loc8_)
                                                                        {
                                                                           break loop1;
                                                                        }
                                                                        continue loop7;
                                                                     }
                                                                     this.§@I§();
                                                                     addr175:
                                                                     if(!_loc7_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           _loc5_.§&p§(_loc5_.§6!x§ + 1);
                                                                           §§goto(addr175);
                                                                           §§goto(addr175);
                                                                        }
                                                                        addr169:
                                                                     }
                                                                     addr106:
                                                                     §§goto(addr190);
                                                                  }
                                                                  break loop0;
                                                               }
                                                               continue loop7;
                                                               addr93:
                                                            }
                                                            else
                                                            {
                                                               loop5:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc7_)
                                                                  {
                                                                     if(_loc7_ || param3)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(!_loc8_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(_loc8_ && param2)
                                                                                 {
                                                                                    continue loop4;
                                                                                 }
                                                                                 §§pop();
                                                                                 if(!(_loc8_ && param3))
                                                                                 {
                                                                                    if(true)
                                                                                    {
                                                                                       §§push(param3 is §;[§);
                                                                                    }
                                                                                    continue loop12;
                                                                                    break loop5;
                                                                                 }
                                                                                 §§push(Boolean(_loc6_ = this.§+"&§((param3 as §;[§).mParentContainer.mName.toUpperCase())));
                                                                                 if(!(_loc8_ && this))
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc7_ || this)
                                                                                       {
                                                                                          §§pop();
                                                                                          if(!(_loc8_ && param2))
                                                                                          {
                                                                                             addr241:
                                                                                             if(param3 is §%!M§)
                                                                                             {
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr190);
                                                                                          }
                                                                                          _loc6_.§?!Y§((param3 as §;[§).mName.toUpperCase());
                                                                                          §§goto(addr190);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr241);
                                                                                 addr34:
                                                                                 §§push(§§pop() == §6!W§.LISTENER_EVENT_MOUSE_UP);
                                                                                 if(!(_loc7_ || this))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(!(_loc8_ && param2))
                                                                                 {
                                                                                    continue loop5;
                                                                                 }
                                                                                 §§goto(addr93);
                                                                              }
                                                                           }
                                                                           break;
                                                                        }
                                                                        break;
                                                                     }
                                                                     continue loop3;
                                                                  }
                                                                  continue loop9;
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     §§goto(addr202);
                                                                  }
                                                                  break loop0;
                                                               }
                                                               addr51:
                                                            }
                                                            §§goto(addr190);
                                                         }
                                                      }
                                                      §§goto(addr93);
                                                   }
                                                   continue loop2;
                                                }
                                             }
                                             addr153:
                                          }
                                          else
                                          {
                                             §§goto(addr195);
                                          }
                                       }
                                       break;
                                    }
                                    §§goto(addr175);
                                 }
                                 §§goto(addr202);
                              }
                              §§goto(addr179);
                           }
                           §§goto(addr51);
                        }
                     }
                  }
                  if(_loc5_)
                  {
                     §§goto(addr169);
                  }
                  §§goto(addr106);
               }
            }
            return;
         }
         §§goto(addr153);
      }
      
      public function §7§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§0U§ = getItemByName(param1) as §0U§;
         if(!_loc5_)
         {
            if(_loc3_)
            {
               loop0:
               while(true)
               {
                  _loc3_.§&p§(param2);
                  addr68:
                  while(true)
                  {
                     this.§@I§();
                     if(!_loc5_)
                     {
                        if(!(_loc5_ && _loc3_))
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr36);
               }
            }
            addr36:
            return;
         }
         §§goto(addr68);
      }
      
      public function §+"&§(param1:String) : §;k§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= this.§2!Y§.length)
            {
               if(!_loc4_)
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
               addr43:
            }
            else if(param1.toUpperCase() == (this.§2!Y§[_loc2_] as §;k§).mName.toUpperCase())
            {
               if(!(_loc4_ && _loc2_))
               {
                  return this.§2!Y§[_loc2_] as §;k§;
               }
               §§goto(addr83);
            }
            while(true)
            {
               _loc2_++;
               §§goto(addr43);
            }
         }
         return null;
      }
      
      public function §=! §(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§!g§ = param1;
         }
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            if(_loc2_ >= §<C§.length)
            {
               if(_loc4_ || _loc2_)
               {
                  if(_loc3_)
                  {
                     continue;
                  }
                  if(_loc4_)
                  {
                     this.§@I§();
                     addr47:
                     if(!_loc3_)
                     {
                        break;
                     }
                     loop11:
                     while(true)
                     {
                        this.§`q§.x = (§<C§[_loc2_] as §0U§).x + this.§5j§;
                        loop10:
                        while(true)
                        {
                           if(!_loc3_)
                           {
                              this.§`q§.width = (§<C§[_loc2_] as §0U§).width + this.§?!S§;
                              loop3:
                              while(true)
                              {
                                 if(_loc4_ || this)
                                 {
                                    loop4:
                                    while(true)
                                    {
                                       §§push(this.§]!$§);
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          if(_loc4_ || param1)
                                          {
                                             if(§§pop())
                                             {
                                                if(!(_loc3_ && param1))
                                                {
                                                   this.§`q§.y = (§<C§[_loc2_] as §0U§).y + this.§8p§;
                                                }
                                                loop2:
                                                while(true)
                                                {
                                                   if(_loc3_ && _loc3_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   this.§`q§.height = (§<C§[_loc2_] as §0U§).height + this.§-§;
                                                   loop8:
                                                   while(true)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         continue loop10;
                                                      }
                                                      if(_loc3_ && param1)
                                                      {
                                                         while((§<C§[_loc2_] as §0U§).mName.toUpperCase() == param1.toUpperCase())
                                                         {
                                                            while(true)
                                                            {
                                                               (§<C§[_loc2_] as §0U§).setActiveStatus(true);
                                                               addr226:
                                                               while(true)
                                                               {
                                                                  §§push(this.§1!L§);
                                                                  addr175:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        continue loop11;
                                                                     }
                                                                     continue loop4;
                                                                  }
                                                                  continue loop3;
                                                               }
                                                            }
                                                         }
                                                         addr55:
                                                         (§<C§[_loc2_] as §0U§).setActiveStatus(false);
                                                         while(true)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               if(_loc4_ || _loc3_)
                                                               {
                                                                  break loop4;
                                                               }
                                                               continue loop2;
                                                            }
                                                            continue loop8;
                                                            §§goto(addr55);
                                                         }
                                                         addr199:
                                                         addr63:
                                                      }
                                                   }
                                                }
                                             }
                                             break;
                                          }
                                          addr198:
                                          while(§§pop())
                                          {
                                             §§goto(addr199);
                                          }
                                          break;
                                          §§goto(addr55);
                                       }
                                       §§goto(addr175);
                                    }
                                    _loc2_++;
                                    continue loop0;
                                 }
                                 §§goto(addr219);
                              }
                              addr190:
                           }
                           §§goto(addr226);
                        }
                     }
                  }
                  §§goto(addr63);
               }
               §§goto(addr47);
            }
            else
            {
               §§push(§<C§[_loc2_] is §0U§);
            }
            §§goto(addr198);
         }
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§;k§ = null;
         if(!(_loc6_ && param1))
         {
            super.setEnabled(param1,param2);
         }
         for each(_loc3_ in this.§2!Y§)
         {
            if(_loc7_)
            {
               _loc3_.setEnabled(param1,param2);
            }
         }
      }
      
      public function §@I§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(getItemByName("Button_Scroll1") == null);
            if(_loc3_ || _loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     §§pop();
                     if(!(_loc2_ && _loc3_))
                     {
                        addr53:
                        addr48:
                        if(getItemByName("Button_Scroll2") == null)
                        {
                           if(_loc3_)
                           {
                              §§goto(addr56);
                           }
                        }
                        var _loc1_:§0U§ = getItemByName(this.§!g§) as §0U§;
                        if(!(_loc2_ && this))
                        {
                           if(!_loc1_)
                           {
                              (getItemByName("Button_Scroll1") as §;§).setComponentState(§%J§.COMPONENT_STATE_DISABLED);
                              loop0:
                              for(; !(_loc2_ && _loc2_); while(true)
                              {
                                 (getItemByName("Button_Scroll2") as §;§).setComponentState(§%J§.COMPONENT_STATE_DISABLED);
                                 if(!_loc3_)
                                 {
                                    continue loop0;
                                 }
                                 if(!_loc3_)
                                 {
                                    §§goto(addr133);
                                 }
                                 §§goto(addr73);
                              })
                              {
                                 if(_loc3_)
                                 {
                                    continue;
                                 }
                                 addr194:
                                 §§push(_loc1_.§6!x§);
                                 loop1:
                                 while(true)
                                 {
                                    §§push(0);
                                    loop2:
                                    while(true)
                                    {
                                       if(§§pop() > §§pop())
                                       {
                                          if(!(_loc2_ && this))
                                          {
                                             (getItemByName("Button_Scroll1") as §;§).setComponentState(§%J§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                          }
                                          loop3:
                                          while(true)
                                          {
                                             addr133:
                                             while(true)
                                             {
                                                if(_loc3_ || this)
                                                {
                                                   addr73:
                                                   return;
                                                   addr91:
                                                }
                                                continue loop3;
                                             }
                                          }
                                       }
                                       else
                                       {
                                          (getItemByName("Button_Scroll1") as §;§).setComponentState(§%J§.COMPONENT_STATE_DISABLED);
                                          addr191:
                                          while(true)
                                          {
                                          }
                                          addr191:
                                       }
                                       while(true)
                                       {
                                          §§push(_loc1_.§6!x§);
                                          if(!_loc3_)
                                          {
                                             continue loop1;
                                          }
                                          §§push(_loc1_.§`!T§);
                                          if(!(_loc3_ || _loc1_))
                                          {
                                             continue loop2;
                                          }
                                          if(§§pop() < §§pop() - 1)
                                          {
                                             if(!(_loc2_ && _loc2_))
                                             {
                                                (getItemByName("Button_Scroll2") as §;§).setComponentState(§%J§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                break loop0;
                                             }
                                             break loop0;
                                          }
                                          (getItemByName("Button_Scroll2") as §;§).setComponentState(§%J§.COMPONENT_STATE_DISABLED);
                                          §§goto(addr133);
                                          §§goto(addr191);
                                       }
                                       §§goto(addr91);
                                    }
                                 }
                              }
                              while(true)
                              {
                                 if(_loc2_ && _loc1_)
                                 {
                                    §§goto(addr191);
                                 }
                                 §§goto(addr73);
                              }
                           }
                           §§goto(addr194);
                        }
                        §§goto(addr121);
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
      
      public function §7j§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§0U§ = null;
         var _loc1_:* = int(§<C§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = §<C§[_loc1_] as §0U§;
            if(_loc4_ || _loc3_)
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
                           §<C§.splice(_loc1_,1);
                           addr72:
                           while(!_loc3_)
                           {
                              if(_loc3_)
                              {
                                 continue loop1;
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
               }
               while(true)
               {
                  §§push(_loc1_);
                  if(!_loc3_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc1_ = §§pop();
                  if(_loc4_ || _loc1_)
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
         if(_loc4_ || _loc2_)
         {
            this.§=! §("");
         }
      }
      
      public function §+&§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§;k§ = null;
         for each(_loc1_ in this.§2!Y§)
         {
            if(_loc4_)
            {
               _loc1_.§+&§();
            }
         }
      }
      
      public function §!!z§() : Array
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§+"&§(this.§!g§));
            while(§§pop() != null)
            {
               §§push(this.§+"&§(this.§!g§));
               if(!_loc1_)
               {
                  return §§pop().§!!n§();
               }
            }
         }
         §!!'§.log("ERROR! Tried to get selections for noninited repeater!");
         return new Array();
      }
      
      public function §=5§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§+"&§(this.§!g§).§=5§(param1);
         }
      }
      
      public function §4!L§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§+"&§(this.§!g§).§4!L§(param1);
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
               this.§%[§ = null;
               loop2:
               while(!_loc2_)
               {
                  this.§[!s§ = null;
                  if(_loc1_ || _loc1_)
                  {
                     addr44:
                     if(!(_loc1_ || _loc2_))
                     {
                        while(true)
                        {
                           this.§2!Y§ = null;
                           continue loop2;
                           §§goto(addr44);
                        }
                        addr73:
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr73);
      }
   }
}
