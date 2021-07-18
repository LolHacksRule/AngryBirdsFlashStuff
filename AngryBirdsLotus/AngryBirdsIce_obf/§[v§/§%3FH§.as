package §[v§
{
   import §2]§.§#H§;
   import §;8§.§3f§;
   import §`W§.§-[§;
   import §`W§.§<r§;
   import §`W§.§]g§;
   import §`W§.§`H§;
   import com.rovio.assets.§>D§;
   import flash.display.*;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §?H§ extends §&F§
   {
      
      public static const §?[§:int = 0;
      
      public static const § !+§:int = 1;
      
      public static const §[!'§:int = 2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §?[§ = 0;
         }
         while(true)
         {
            § !+§ = 1;
            while(_loc1_)
            {
               §[!'§ = 2;
               if(!_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public var §99§:String;
      
      public var §=!+§:Class;
      
      public var § !$§:String = null;
      
      public var §]l§:Vector.<§]g§>;
      
      public var §],§:int;
      
      public var §2u§:Number;
      
      public var §4!9§:Number;
      
      public var §?K§:Number;
      
      public var §3L§:Number;
      
      public var §;k§:Number;
      
      public var §3K§:Number;
      
      public var §+o§:Number;
      
      public var §;!!§:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var §%-§:int;
      
      public var §%!9§:Number;
      
      public var §&5§:String = "";
      
      public var §+r§:int;
      
      public var §1L§:int;
      
      public var §<o§:GlowFilter;
      
      public var §7!-§:Boolean = true;
      
      public var §@n§:int;
      
      public var §<2§:int;
      
      public var §4^§:Number = 0;
      
      public var §[;§:Number = 0;
      
      public var §0H§:Number = 0;
      
      public var §%!7§:Number = 0;
      
      public var §,!9§:Boolean = false;
      
      public var §^B§:Boolean = false;
      
      public var §>!4§:MovieClip = null;
      
      public function §?H§(param1:XML, param2:§&F§, param3:§#H§, param4:MovieClip = null)
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1187
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      public function §+!+§(param1:Array = null, param2:Class = null) : void
      {
         var _loc19_:Boolean = true;
         var _loc20_:Boolean = false;
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:§4H§ = null;
         var _loc8_:§]g§ = null;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:§[!#§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:* = 0;
         var _loc16_:int = 0;
         var _loc17_:* = 0;
         var _loc18_:int = 0;
         if(!(_loc20_ && this))
         {
            if(param2 == null)
            {
               if(!_loc20_)
               {
                  addr66:
                  param2 = §[!#§;
                  addr69:
                  this.§]l§ = new Vector.<§]g§>();
                  if(!_loc20_)
                  {
                     this.§#`§();
                     if(!(_loc20_ && _loc3_))
                     {
                        §§goto(addr86);
                     }
                  }
                  §§goto(addr98);
               }
               addr86:
               §§push(param1);
               if(_loc19_ || this)
               {
                  if(§§pop() == null)
                  {
                     if(_loc19_)
                     {
                        addr98:
                        param1 = getParentView().getRepeaterDataXML(mName);
                        §§goto(addr104);
                     }
                     §§goto(addr106);
                  }
                  addr104:
                  §§goto(addr105);
               }
               addr105:
               if(!param1)
               {
                  addr106:
                  param1 = new Array();
               }
               var _loc3_:int = 0;
               loop0:
               while(true)
               {
                  if(_loc3_ >= param1.length)
                  {
                     if(_loc19_ || param2)
                     {
                        break;
                     }
                     §§goto(addr861);
                  }
                  §§push(mName + "_Tab_");
                  if(!_loc20_)
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
                  _loc7_ = new §4H§(_loc6_,this,null,_loc5_);
                  if(_loc19_)
                  {
                     §1I§.push(_loc7_);
                  }
                  _loc8_ = new §]g§(this.§<2§,_loc4_);
                  if(_loc19_ || _loc3_)
                  {
                     this.§]l§.push(_loc8_);
                     if(!_loc20_)
                     {
                        §§push(this.§;k§);
                        loop1:
                        while(true)
                        {
                           §§push(int(§§pop()));
                           loop2:
                           while(true)
                           {
                              _loc9_ = §§pop();
                              if(!_loc19_)
                              {
                                 break;
                              }
                              §§push(this.§],§);
                              loop3:
                              while(true)
                              {
                                 §§push(int(§§pop()));
                                 if(!_loc19_)
                                 {
                                    break;
                                 }
                                 _loc10_ = §§pop();
                                 loop4:
                                 while(true)
                                 {
                                    §§push(param1);
                                    if(!_loc20_)
                                    {
                                       §§push(_loc3_);
                                       if(_loc19_ || param1)
                                       {
                                          if((§§pop()[§§pop()] as Array).length < _loc10_)
                                          {
                                             if(_loc19_)
                                             {
                                                §§push(param1);
                                                if(!(_loc20_ && param1))
                                                {
                                                   addr265:
                                                   §§push(_loc3_);
                                                   if(_loc19_)
                                                   {
                                                      addr268:
                                                      _loc10_ = int((§§pop()[§§pop()] as Array).length);
                                                      loop8:
                                                      while(true)
                                                      {
                                                         addr188:
                                                         while(true)
                                                         {
                                                            if(this.§1L§ == §?[§)
                                                            {
                                                               if(_loc20_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               §§push(this.§?K§);
                                                               if(!(_loc20_ && this))
                                                               {
                                                                  §§push(_loc10_);
                                                                  if(_loc19_ || param1)
                                                                  {
                                                                     §§push(§§pop() - 1);
                                                                     if(_loc19_)
                                                                     {
                                                                        §§push(§§pop() * this.§+o§);
                                                                     }
                                                                     §§push(§§pop() - §§pop());
                                                                     if(_loc19_ || this)
                                                                     {
                                                                        addr226:
                                                                        if(!_loc19_)
                                                                        {
                                                                           continue loop1;
                                                                        }
                                                                        addr229:
                                                                        §§push(§§pop() / 2);
                                                                     }
                                                                     §§push(int(§§pop()));
                                                                     loop6:
                                                                     while(true)
                                                                     {
                                                                        _loc9_ = §§pop();
                                                                        if(!_loc19_)
                                                                        {
                                                                           break loop2;
                                                                        }
                                                                        if(!_loc20_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(0);
                                                                              if(!(_loc19_ || this))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(!_loc20_)
                                                                              {
                                                                                 continue loop3;
                                                                              }
                                                                              continue loop6;
                                                                           }
                                                                           addr801:
                                                                           if(§§pop() < (param1[_loc3_] as Array).length)
                                                                           {
                                                                              addr301:
                                                                              §§push(param1);
                                                                              §§push(_loc3_);
                                                                              break loop4;
                                                                           }
                                                                           _loc8_.§9?§("");
                                                                           if(!_loc20_)
                                                                           {
                                                                              break loop2;
                                                                           }
                                                                           continue loop0;
                                                                           addr165:
                                                                        }
                                                                        continue loop8;
                                                                     }
                                                                     continue loop8;
                                                                  }
                                                                  §§goto(addr229);
                                                               }
                                                               §§goto(addr226);
                                                            }
                                                            §§goto(addr165);
                                                         }
                                                      }
                                                   }
                                                   break;
                                                }
                                                §§goto(addr301);
                                             }
                                             §§goto(addr801);
                                          }
                                          §§goto(addr188);
                                       }
                                       §§goto(addr268);
                                    }
                                    §§goto(addr265);
                                 }
                                 while(true)
                                 {
                                    _loc12_ = ((§§pop()[§§pop()] as Array)[_loc11_] as Array)[0] as XML;
                                    if(_loc19_ || param1)
                                    {
                                       if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
                                       {
                                          if(_loc19_ || _loc3_)
                                          {
                                             addr341:
                                             _loc7_.§1I§.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
                                             if(_loc19_ || param1)
                                             {
                                             }
                                             addr380:
                                             _loc13_ = _loc7_.§1I§[_loc7_.§1I§.length - 1] as §[!#§;
                                             if(!_loc20_)
                                             {
                                                §§push(param1);
                                                if(_loc19_)
                                                {
                                                   §§push(_loc3_);
                                                   if(!(_loc20_ && param2))
                                                   {
                                                      if(((§§pop()[§§pop()] as Array)[_loc11_] as Array)[1] != null)
                                                      {
                                                         if(!(_loc20_ && param1))
                                                         {
                                                            addr434:
                                                            _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                                                            _loc13_.§;f§(_loc14_,this.§ !$§);
                                                            §§push(this.§+r§);
                                                            if(!(_loc20_ && param2))
                                                            {
                                                               addr500:
                                                               if(§§pop() == § !+§)
                                                               {
                                                                  §§push(2);
                                                               }
                                                               §§push(this.§%-§);
                                                               §§push(1);
                                                               if(_loc19_)
                                                               {
                                                                  if(§§pop() == §§pop())
                                                                  {
                                                                     if(_loc19_)
                                                                     {
                                                                        _loc13_.x = _loc9_ + _loc11_ * this.§+o§;
                                                                        if(!(_loc20_ && this))
                                                                        {
                                                                           §§push(_loc13_);
                                                                           §§push(this.§3K§);
                                                                           if(!(_loc20_ && param2))
                                                                           {
                                                                              §§push(§§pop() + _loc11_ * this.§;!!§);
                                                                           }
                                                                           §§pop().y = §§pop();
                                                                           addr523:
                                                                        }
                                                                        loop12:
                                                                        while(true)
                                                                        {
                                                                           addr530:
                                                                           loop11:
                                                                           while(true)
                                                                           {
                                                                              _loc8_.§&Y§(_loc13_);
                                                                              if(!(_loc19_ || this))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(!_loc19_)
                                                                              {
                                                                                 continue loop12;
                                                                              }
                                                                              _loc11_++;
                                                                              if(_loc19_)
                                                                              {
                                                                                 if(false)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 addr793:
                                                                                 §§goto(addr801);
                                                                                 §§push(_loc11_);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr614:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc13_);
                                                                                    §§push(_loc9_ + _loc18_ * this.§+o§);
                                                                                    if(!(_loc20_ && _loc3_))
                                                                                    {
                                                                                       §§push(_loc16_ * this.§],§);
                                                                                       if(!(_loc20_ && param2))
                                                                                       {
                                                                                          §§push(§§pop() * this.§+o§);
                                                                                       }
                                                                                       §§push(§§pop() + §§pop());
                                                                                    }
                                                                                    §§pop().x = §§pop();
                                                                                    addr644:
                                                                                    §§push(_loc13_);
                                                                                    §§push(this.§3K§);
                                                                                    if(!_loc20_)
                                                                                    {
                                                                                       §§push(§§pop() + _loc17_ * this.mButtonMarginY2);
                                                                                    }
                                                                                    §§pop().y = §§pop();
                                                                                    continue loop11;
                                                                                 }
                                                                                 addr614:
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr530);
                                                                     }
                                                                     addr582:
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(_loc11_);
                                                                     §§push(this.§],§);
                                                                     loop14:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§%-§);
                                                                        addr771:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           loop16:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() / §§pop());
                                                                              loop17:
                                                                              while(true)
                                                                              {
                                                                                 _loc16_ = §§pop();
                                                                                 §§push(_loc11_);
                                                                                 if(!(_loc20_ && this))
                                                                                 {
                                                                                    §§push(_loc16_);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§],§);
                                                                                       addr739:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          addr740:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§%-§);
                                                                                             addr742:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                addr743:
                                                                                                while(!(_loc20_ && param1))
                                                                                                {
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   loop23:
                                                                                                   while(!(_loc20_ && this))
                                                                                                   {
                                                                                                      §§push(this.§],§);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() / §§pop());
                                                                                                         addr761:
                                                                                                         addr712:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(int(§§pop()));
                                                                                                         }
                                                                                                         §§push(this.§],§);
                                                                                                         if(_loc20_ && param2)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         §§push(§§pop() % §§pop());
                                                                                                         if(_loc20_)
                                                                                                         {
                                                                                                            continue loop23;
                                                                                                         }
                                                                                                         _loc18_ = §§pop();
                                                                                                         if(!this.§7!-§)
                                                                                                         {
                                                                                                            _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                                                                                                            if(_loc19_)
                                                                                                            {
                                                                                                               §§push(_loc13_);
                                                                                                               §§push(this.§3K§);
                                                                                                               if(!(_loc20_ && _loc3_))
                                                                                                               {
                                                                                                                  §§push(_loc18_);
                                                                                                                  if(!_loc20_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * this.§;!!§);
                                                                                                                     if(!_loc20_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(_loc19_ || param2)
                                                                                                                        {
                                                                                                                           addr572:
                                                                                                                           §§push(_loc16_ * this.§],§);
                                                                                                                           if(_loc19_)
                                                                                                                           {
                                                                                                                              addr580:
                                                                                                                              §§push(§§pop() + §§pop() * this.§;!!§);
                                                                                                                           }
                                                                                                                           §§goto(addr580);
                                                                                                                        }
                                                                                                                        §§pop().y = §§pop();
                                                                                                                        §§goto(addr582);
                                                                                                                     }
                                                                                                                     §§goto(addr580);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr572);
                                                                                                               addr596:
                                                                                                            }
                                                                                                            §§goto(addr644);
                                                                                                         }
                                                                                                         §§goto(addr614);
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop17;
                                                                                                }
                                                                                                continue loop16;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr649:
                                                                                       §§push(_loc16_);
                                                                                       if(_loc19_ || param1)
                                                                                       {
                                                                                          continue loop14;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    _loc17_ = §§pop();
                                                                                    §§push(_loc11_);
                                                                                    if(_loc20_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr649);
                                                                                    §§goto(addr761);
                                                                                 }
                                                                                 §§goto(addr725);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     addr769:
                                                                  }
                                                                  §§goto(addr614);
                                                               }
                                                               §§goto(addr769);
                                                            }
                                                            _loc15_ = §§pop();
                                                            do
                                                            {
                                                               _loc14_.y -= _loc14_.height / 2;
                                                               if(this.§ !$§ != null)
                                                               {
                                                                  break;
                                                               }
                                                               if(!(_loc20_ && this))
                                                               {
                                                                  _loc14_.y -= _loc15_;
                                                               }
                                                            }
                                                            while(false);
                                                            
                                                            §§goto(addr500);
                                                            addr433:
                                                         }
                                                         §§goto(addr596);
                                                      }
                                                      §§goto(addr500);
                                                   }
                                                   §§goto(addr434);
                                                }
                                                §§goto(addr433);
                                             }
                                             §§goto(addr523);
                                          }
                                       }
                                       else
                                       {
                                          _loc7_.§1I§.push(new param2(_loc12_,_loc7_,new this.§=!+§() as MovieClip));
                                       }
                                       §§goto(addr380);
                                    }
                                    §§goto(addr341);
                                    §§goto(addr301);
                                 }
                              }
                           }
                           _loc7_.§+!5§(this.§],§,this.§2u§,this.§4!9§,this.§@n§ * this.§+o§,this.§@n§ * this.§;!!§,this.§%-§,this.§@n§);
                           if(_loc20_ && _loc3_)
                           {
                              continue loop0;
                           }
                        }
                     }
                     _loc3_++;
                     continue;
                  }
                  §§goto(addr282);
               }
               if(param1.length > 1)
               {
               }
               addr861:
               return;
            }
            §§goto(addr69);
         }
         §§goto(addr66);
      }
      
      public function get §#!"§() : int
      {
         return this.§],§;
      }
      
      public function get §8!%§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§#!"§);
            if(!_loc2_)
            {
               if(§§pop() == 0)
               {
                  if(!_loc2_)
                  {
                     §§goto(addr42);
                  }
               }
               §§push(this.§'R§(this.§&5§).§;t§.length / this.§#!"§);
               if(_loc1_)
               {
                  return §§pop() + 1;
               }
            }
            §§goto(addr42);
         }
         addr42:
         return 0;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§-[§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§]g§ = null;
         var _loc4_:§4H§ = getItemByName(this.§&5§) as §4H§;
         §§push(param2);
         loop0:
         while(§§pop().toUpperCase() != "SCROLL_LEFT")
         {
            §§push(param2);
            loop1:
            while(§§pop().toUpperCase() != "SCROLL_RIGHT")
            {
               §§push(param2);
               if(!(_loc6_ || param1))
               {
                  continue;
               }
               if(_loc7_)
               {
                  continue loop0;
               }
               §§push(§§pop().length > 0);
               loop3:
               while(true)
               {
                  §§push(§§pop());
                  loop4:
                  while(true)
                  {
                     if(§§pop())
                     {
                        §§pop();
                        while(true)
                        {
                           addr63:
                           addr111:
                           loop6:
                           while(true)
                           {
                              §§push(param1);
                              loop7:
                              while(true)
                              {
                                 §§push(§§pop() == §-[§.LISTENER_EVENT_MOUSE_DOWN);
                                 §§push(§§pop() == §-[§.LISTENER_EVENT_MOUSE_DOWN);
                                 loop8:
                                 while(true)
                                 {
                                    if(!(_loc6_ || this))
                                    {
                                       continue loop4;
                                    }
                                    if(!§§pop())
                                    {
                                       §§pop();
                                       if(_loc7_ && param3)
                                       {
                                          break;
                                       }
                                       if(_loc7_)
                                       {
                                          break loop6;
                                       }
                                       §§push(param1);
                                       if(!_loc7_)
                                       {
                                          §§push(§§pop() == §-[§.LISTENER_EVENT_MOUSE_UP);
                                          if(!_loc6_)
                                          {
                                             if(§§pop())
                                             {
                                                break;
                                             }
                                             super.containerEventOccured(param1,param2,param3);
                                             addr37:
                                          }
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(!(_loc6_ || param2))
                                             {
                                                continue loop8;
                                             }
                                             if(§§pop())
                                             {
                                                if(_loc6_)
                                                {
                                                   continue loop3;
                                                }
                                             }
                                          }
                                          continue loop3;
                                          addr252:
                                          return;
                                          addr247:
                                          addr187:
                                       }
                                       continue loop7;
                                    }
                                 }
                                 addr188:
                                 §§push(Boolean(_loc5_ = this.§'R§((param3 as §`H§).mParentContainer.mName.toUpperCase())));
                                 if(_loc6_ || param2)
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc7_)
                                       {
                                          addr211:
                                          §§pop();
                                          if(_loc6_ || param2)
                                          {
                                             addr232:
                                             if(param3 is §[!#§)
                                             {
                                                if(!(_loc7_ && param3))
                                                {
                                                   _loc5_.§9?§((param3 as §`H§).mName.toUpperCase());
                                                }
                                             }
                                          }
                                          §§goto(addr247);
                                       }
                                    }
                                    §§goto(addr232);
                                 }
                                 §§goto(addr211);
                              }
                           }
                           addr183:
                           addr138:
                           if(!(_loc6_ || this))
                           {
                              break loop1;
                           }
                           if(_loc6_ || this)
                           {
                              if(!_loc6_)
                              {
                                 break loop0;
                              }
                              §§goto(addr247);
                           }
                           this.§ o§();
                           §§goto(addr247);
                        }
                        addr107:
                     }
                     §§goto(addr37);
                  }
               }
            }
            while(_loc4_)
            {
               if(_loc6_ || param3)
               {
                  _loc4_.§ T§(_loc4_.§!O§ + 1);
                  if(_loc7_ && param2)
                  {
                     §§goto(addr252);
                  }
               }
               this.§ o§();
               §§goto(addr111);
            }
            §§goto(addr88);
         }
         if(_loc4_)
         {
            _loc4_.§ T§(_loc4_.§!O§ - 1);
            §§goto(addr183);
         }
         §§goto(addr138);
      }
      
      public function §18§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§4H§ = getItemByName(param1) as §4H§;
         if(!(_loc5_ && param2))
         {
            if(_loc3_)
            {
               do
               {
                  _loc3_.§ T§(param2);
                  do
                  {
                     this.§ o§();
                  }
                  while(!(_loc4_ || param2));
                  
               }
               while(!(_loc4_ || param2));
               
               addr72:
            }
            return;
         }
         §§goto(addr72);
      }
      
      public function §'R§(param1:String) : §]g§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         do
         {
            if(_loc2_ >= this.§]l§.length)
            {
               if(_loc4_)
               {
                  continue;
               }
               if(!_loc4_)
               {
                  return null;
               }
            }
            else if(param1.toUpperCase() == (this.§]l§[_loc2_] as §]g§).mName.toUpperCase())
            {
               break;
            }
            _loc2_++;
         }
         while(_loc3_);
         
         return this.§]l§[_loc2_] as §]g§;
      }
      
      public function §!! §(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§&5§ = param1;
         }
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ < §1I§.length)
            {
               §§push(§1I§[_loc2_] is §4H§);
               while(§§pop())
               {
                  if((§1I§[_loc2_] as §4H§).mName.toUpperCase() != param1.toUpperCase())
                  {
                     (§1I§[_loc2_] as §4H§).setActiveStatus(false);
                  }
                  (§1I§[_loc2_] as §4H§).setActiveStatus(true);
                  §§push(this.§,!9§);
                  while(!(_loc3_ && _loc2_))
                  {
                     if(§§pop())
                     {
                        this.§>!4§.x = (§1I§[_loc2_] as §4H§).x + this.§0H§;
                        this.§>!4§.width = (§1I§[_loc2_] as §4H§).width + this.§4^§;
                     }
                     §§push(this.§^B§);
                     if(_loc3_)
                     {
                        continue;
                     }
                     if(§§pop())
                     {
                        §§goto(addr104);
                     }
                     §§goto(addr45);
                  }
               }
               continue;
            }
            if(!_loc3_)
            {
               if(!(_loc3_ && this))
               {
                  this.§ o§();
                  addr45:
                  if(_loc4_ || _loc3_)
                  {
                     if(_loc4_ || this)
                     {
                        break;
                     }
                     this.§>!4§.height = (§1I§[_loc2_] as §4H§).height + this.§[;§;
                     addr116:
                  }
                  continue;
               }
               addr104:
               this.§>!4§.y = (§1I§[_loc2_] as §4H§).y + this.§%!7§;
               §§goto(addr116);
            }
            §§goto(addr45);
            §§goto(addr45);
         }
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§]g§ = null;
         if(!(_loc6_ && _loc2_))
         {
            super.setEnabled(param1);
         }
         for each(_loc2_ in this.§]l§)
         {
            if(!_loc6_)
            {
               _loc2_.setEnabled(param1);
            }
         }
      }
      
      public function § o§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(getItemByName("Button_Scroll1") == null);
            if(!(_loc2_ && _loc3_))
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     §§pop();
                     if(_loc3_)
                     {
                        addr43:
                        if(getItemByName("Button_Scroll2") == null)
                        {
                           if(_loc3_ || this)
                           {
                              §§goto(addr51);
                           }
                        }
                     }
                     var _loc1_:§4H§ = getItemByName(this.§&5§) as §4H§;
                     if(_loc1_)
                     {
                        §§push(_loc1_.§!O§);
                        loop3:
                        while(true)
                        {
                           §§push(0);
                           loop4:
                           while(true)
                           {
                              if(§§pop() > §§pop())
                              {
                                 addr170:
                                 (getItemByName("Button_Scroll1") as §^P§).setComponentState(§<r§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                 while(true)
                                 {
                                    §§goto(addr170);
                                 }
                                 addr178:
                              }
                              else
                              {
                                 addr154:
                                 (getItemByName("Button_Scroll1") as §^P§).setComponentState(§<r§.§?!B§);
                              }
                              while(true)
                              {
                                 §§push(_loc1_.§!O§);
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    §§push(_loc1_.§>§);
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
                                 (getItemByName("Button_Scroll2") as §^P§).setComponentState(§<r§.§?!B§);
                                 addr114:
                                 if(_loc2_)
                                 {
                                    addr151:
                                 }
                                 §§goto(addr61);
                              }
                              (getItemByName("Button_Scroll2") as §^P§).setComponentState(§<r§.COMPONENT_STATE_ACTIVE_DEFAULT);
                              §§goto(addr151);
                           }
                        }
                     }
                     else
                     {
                        (getItemByName("Button_Scroll1") as §^P§).setComponentState(§<r§.§?!B§);
                        do
                        {
                           (getItemByName("Button_Scroll2") as §^P§).setComponentState(§<r§.§?!B§);
                        }
                        while(!_loc3_);
                        
                        if(_loc3_)
                        {
                           if(!_loc3_)
                           {
                              §§goto(addr178);
                           }
                           addr61:
                           return;
                        }
                     }
                     §§goto(addr114);
                  }
               }
            }
            §§goto(addr43);
         }
         addr51:
      }
      
      public function §#`§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§4H§ = null;
         var _loc1_:* = int(§1I§.length - 1);
         while(_loc1_ >= 0)
         {
            _loc2_ = §1I§[_loc1_] as §4H§;
            if(!(_loc4_ && _loc1_))
            {
               if(_loc2_)
               {
                  loop1:
                  while(true)
                  {
                     _loc2_.clear();
                     addr85:
                     while(true)
                     {
                        addr73:
                        while(true)
                        {
                           §1I§.splice(_loc1_,1);
                           addr78:
                           addr80:
                           while(_loc4_)
                           {
                              continue loop1;
                           }
                        }
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
                  if(!_loc4_)
                  {
                     if(_loc3_)
                     {
                        if(true)
                        {
                           break;
                        }
                        §§goto(addr73);
                     }
                     §§goto(addr85);
                  }
                  §§goto(addr78);
                  §§goto(addr80);
               }
               continue;
            }
            §§goto(addr85);
         }
         if(!_loc4_)
         {
            this.§!! §("");
         }
      }
      
      public function §7n§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§]g§ = null;
         for each(_loc1_ in this.§]l§)
         {
            if(_loc5_ || _loc1_)
            {
               _loc1_.§7n§();
            }
         }
      }
      
      public function §;2§() : Array
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§'R§(this.§&5§));
            while(§§pop() != null)
            {
               §§push(this.§'R§(this.§&5§));
               if(!(_loc1_ && _loc2_))
               {
                  return §§pop().§=%§();
               }
            }
         }
         §3f§.log("ERROR! Tried to get selections for noninited repeater!");
         return new Array();
      }
      
      public function §;X§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§'R§(this.§&5§).§;X§(param1);
         }
      }
      
      public function §`!1§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§'R§(this.§&5§).§`!1§(param1);
         }
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.clear();
            while(true)
            {
               this.§=!+§ = null;
               addr55:
               if(!(_loc2_ || _loc1_))
               {
                  continue;
               }
               return;
               addr62:
            }
         }
         while(true)
         {
            this.§]l§ = null;
            while(!(_loc1_ && this))
            {
               this.§<o§ = null;
               if(!(_loc2_ || this))
               {
                  continue;
               }
               §§goto(addr55);
            }
         }
         §§goto(addr62);
      }
   }
}
