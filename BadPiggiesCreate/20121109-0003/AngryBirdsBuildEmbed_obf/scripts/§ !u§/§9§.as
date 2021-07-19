package § !u§
{
   import § !r§.§3!X§;
   import §!y§.§2U§;
   import §"!E§.§#!'§;
   import §"!E§.§[!s§;
   import §@!i§.StateLevelEditor;
   import com.rovio.assets.§1F§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §9§
   {
      
      protected static var §'M§:Class;
      
      public static const §8!,§:String = "Button_TabBirds";
      
      public static const §1!v§:String = "Button_TabPigs";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §9§)
         {
            §'M§ = §8!e§;
            if(!_loc1_)
            {
               §8!,§ = "Button_TabBirds";
               if(!(_loc1_ && §9§))
               {
                  addr49:
                  §1!v§ = "Button_TabPigs";
               }
               return;
            }
         }
         §§goto(addr49);
      }
      
      private var §3'§:§<k§;
      
      private var §<!D§:Vector.<§9y§>;
      
      private var §6!_§:int = 2;
      
      private var §<!^§:Vector.<MovieClip>;
      
      private var §+!$§:§2U§;
      
      private var §`!f§:Rectangle;
      
      private var §6y§:int = 0;
      
      public function §9§(param1:§2U§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
            if(_loc3_ || param1)
            {
               this.§+!$§ = param1;
               if(_loc3_ || _loc3_)
               {
                  addr58:
                  this.§3'§ = new §<k§(param1.getItemByName("Container_EditorMenu") as §[!s§);
                  if(!(_loc2_ && _loc3_))
                  {
                     addr74:
                     this.§7!M§(§3!X§.§3<§(§'M§));
                  }
               }
               return;
            }
            §§goto(addr74);
         }
         §§goto(addr58);
      }
      
      private function §7!M§(param1:XML) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc2_:XML = null;
         var _loc3_:§<k§ = null;
         var _loc4_:XML = null;
         var _loc5_:XML = null;
         var _loc6_:XML = null;
         var _loc7_:XML = null;
         loop0:
         for each(_loc2_ in param1.category)
         {
            _loc3_ = this.§ case§(_loc2_.@button,param1.@button);
            if(_loc12_ || _loc2_)
            {
               §§push(0);
               if(!_loc13_)
               {
                  var _loc10_:* = §§pop();
                  if(_loc12_)
                  {
                     var _loc11_:* = _loc2_.include_category;
                     loop1:
                     while(true)
                     {
                        §§push(§§hasnext(_loc11_,_loc10_));
                        if(_loc12_ || param1)
                        {
                           if(§§pop())
                           {
                              _loc4_ = §§nextvalue(_loc10_,_loc11_);
                              if(_loc12_ || param1)
                              {
                                 _loc3_.§=!^§(_loc4_.toString());
                              }
                              continue;
                           }
                           if(_loc12_ || this)
                           {
                              addr107:
                              §§push(0);
                              if(_loc12_ || this)
                              {
                                 _loc10_ = §§pop();
                                 _loc11_ = _loc2_.component;
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc11_,_loc10_));
                                    if(_loc12_)
                                    {
                                       if(§§pop())
                                       {
                                          _loc5_ = §§nextvalue(_loc10_,_loc11_);
                                          if(!(_loc13_ && _loc3_))
                                          {
                                             _loc3_.§9!k§(this.§+!$§.getItemByName(_loc5_.toString()));
                                          }
                                          continue;
                                       }
                                       if(!_loc13_)
                                       {
                                          addr158:
                                          if(_loc12_)
                                          {
                                             §§push(0);
                                             if(_loc12_ || _loc2_)
                                             {
                                                _loc10_ = §§pop();
                                                _loc11_ = _loc2_.item;
                                                addr252:
                                                while(true)
                                                {
                                                   §§push(§§hasnext(_loc11_,_loc10_));
                                                   if(!(_loc13_ && _loc2_))
                                                   {
                                                      break loop1;
                                                   }
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      _loc7_ = §§nextvalue(_loc10_,_loc11_);
                                                      if(!_loc13_)
                                                      {
                                                         _loc3_.§catch§(_loc7_.toString());
                                                      }
                                                      continue;
                                                   }
                                                   if(!(_loc12_ || param1))
                                                   {
                                                      continue loop0;
                                                   }
                                                }
                                                addr252:
                                                addr193:
                                             }
                                             addr221:
                                             _loc10_ = §§pop();
                                             if(_loc12_)
                                             {
                                                addr224:
                                                _loc11_ = _loc2_.exclude;
                                                §§goto(addr251);
                                             }
                                             §§goto(addr254);
                                          }
                                          if(_loc2_.@highlight == "true")
                                          {
                                             _loc3_.§+!D§(new §&^§());
                                             addr270:
                                             this.§7!M§(_loc2_);
                                             continue loop0;
                                          }
                                          §§goto(addr270);
                                       }
                                       §§goto(addr254);
                                    }
                                    §§goto(addr252);
                                 }
                              }
                              §§goto(addr221);
                           }
                           §§goto(addr158);
                        }
                        break;
                     }
                     while(true)
                     {
                        if(!§§pop())
                        {
                           if(!_loc13_)
                           {
                              if(_loc12_ || _loc2_)
                              {
                                 if(_loc12_ || param1)
                                 {
                                    §§goto(addr221);
                                    §§push(0);
                                 }
                                 §§goto(addr270);
                              }
                              §§goto(addr224);
                           }
                           §§goto(addr254);
                        }
                        else
                        {
                           _loc6_ = §§nextvalue(_loc10_,_loc11_);
                           if(!(_loc13_ && _loc2_))
                           {
                              _loc3_.addItem(_loc6_.toString());
                           }
                           §§goto(addr193);
                        }
                     }
                  }
                  §§goto(addr107);
               }
               §§goto(addr221);
            }
            §§goto(addr270);
         }
      }
      
      private function § case§(param1:String, param2:String = null) : §<k§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§#!'§ = this.§+!$§.getItemByName(param1) as §#!'§;
         var _loc4_:§#!'§ = null;
         if(!(_loc7_ && _loc3_))
         {
            if(param2)
            {
               addr56:
               _loc4_ = this.§+!$§.getItemByName(param2) as §#!'§;
            }
            var _loc5_:§<k§;
            if(_loc5_ = this.§3'§.§]!E§(_loc4_))
            {
               if(_loc6_ || param2)
               {
                  return _loc5_.§=_§(_loc3_);
               }
            }
            return null;
         }
         §§goto(addr56);
      }
      
      public function §''§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            if(_loc3_)
            {
               §§push(0);
               if(!(_loc2_ && _loc2_))
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc3_ || this)
                  {
                     if(§§pop())
                     {
                        if(_loc3_ || this)
                        {
                           §§goto(addr67);
                        }
                     }
                     §§goto(addr79);
                  }
                  addr67:
                  §§pop();
                  if(_loc3_ || param1)
                  {
                     addr79:
                     if(param1 < this.§6y§)
                     {
                        if(_loc2_)
                        {
                        }
                     }
                     §§goto(addr95);
                  }
                  this.§3'§.§''§(param1);
                  if(!(_loc2_ && this))
                  {
                     this.§>!E§();
                  }
                  §§goto(addr95);
               }
            }
            §§goto(addr79);
         }
         addr95:
      }
      
      public function §%8§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§''§(this.§3'§.§`!G§() + param1);
         }
      }
      
      public function §?!#§(param1:§#!'§, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(param1 == null)
            {
               if(!_loc4_)
               {
                  §§push(this.§3'§);
                  if(_loc3_)
                  {
                     §§pop().§#!q§();
                     if(!(_loc3_ || param2))
                     {
                        addr68:
                        this.§>!E§();
                        §§goto(addr70);
                     }
                     addr70:
                     return;
                  }
                  addr58:
                  §§pop().§;?§(param1,param2);
                  if(_loc3_ || param2)
                  {
                  }
                  §§goto(addr68);
               }
               §§goto(addr68);
            }
            else
            {
               §§push(this.§3'§);
            }
            §§goto(addr58);
         }
         §§goto(addr68);
      }
      
      public function §]B§(param1:Boolean = true, param2:int = 1) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            this.§3'§.§]B§(param2,param1);
            if(!(_loc3_ && param2))
            {
               this.§>!E§();
            }
         }
      }
      
      public function §-!#§(param1:§#!'§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§3'§.§]!E§(param1).§#!q§();
         }
      }
      
      public function §#!%§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§3'§.§>!X§();
            if(!(_loc3_ && this))
            {
               this.§`!f§ = param1;
               if(_loc2_)
               {
                  addr48:
                  this.§''§(Math.min(this.§6y§ - 1,this.§3'§.§`!G§()));
               }
            }
            return;
         }
         §§goto(addr48);
      }
      
      public function §>!E§() : void
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         var _loc7_:§9y§ = null;
         var _loc11_:* = 0;
         var _loc12_:int = 0;
         var _loc13_:DisplayObject = null;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc1_:Vector.<§9y§> = this.§3'§.§8a§();
         if(!_loc19_)
         {
            if(_loc1_ == null)
            {
               if(!(_loc19_ && _loc3_))
               {
                  return;
               }
            }
         }
         §§push(this.§`!f§.width / this.§6!_§);
         if(_loc20_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:int = Math.max(1,this.§`!f§.height / _loc2_);
         §§push(this.§`!f§.height / _loc3_);
         if(_loc20_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(_loc3_);
         if(_loc20_)
         {
            §§push(int(§§pop() * this.§6!_§));
         }
         var _loc5_:* = §§pop();
         var _loc6_:Vector.<Vector.<Vector.<§9y§>>> = new Vector.<Vector.<Vector.<§9y§>>>();
         for each(_loc7_ in _loc1_)
         {
            if(_loc20_ || this)
            {
               this.§?H§(_loc6_,_loc7_,_loc3_,this.§6!_§,_loc2_,_loc2_);
            }
         }
         this.§6y§ = _loc6_.length;
         §§push(this.§6y§);
         if(!(_loc19_ && this))
         {
            §§push(0);
            if(!(_loc19_ && _loc3_))
            {
               if(§§pop() == §§pop())
               {
                  this.§"H§(0);
                  return;
               }
               §§push(this.§3'§);
               if(_loc20_)
               {
                  §§push(§§pop().§`!G§());
                  if(!(_loc19_ && _loc2_))
                  {
                     addr175:
                     addr173:
                     if(§§pop() >= this.§6y§)
                     {
                        if(_loc20_)
                        {
                           §§push(this.§3'§);
                           if(!_loc19_)
                           {
                              §§pop().§''§(this.§6y§ - 1);
                           }
                           addr188:
                           §§push(§§pop().§`!G§());
                           if(_loc20_)
                           {
                              addr191:
                              §§push(int(§§pop()));
                           }
                           var _loc8_:* = §§pop();
                           var _loc9_:Vector.<§9y§> = new Vector.<§9y§>();
                           var _loc10_:int = 0;
                           if(_loc20_ || _loc2_)
                           {
                              loop1:
                              while(true)
                              {
                                 §§push(_loc10_);
                                 if(!(_loc19_ && _loc3_))
                                 {
                                    loop2:
                                    while(true)
                                    {
                                       §§push(this.§6!_§);
                                       addr434:
                                       while(true)
                                       {
                                          if(§§pop() >= §§pop())
                                          {
                                             break;
                                          }
                                          §§push(0);
                                          if(_loc19_ && _loc2_)
                                          {
                                             break;
                                          }
                                          _loc11_ = §§pop();
                                          continue loop2;
                                       }
                                    }
                                 }
                                 var _loc17_:* = §§pop();
                                 if(_loc20_)
                                 {
                                    var _loc18_:* = _loc9_;
                                    addr536:
                                    for each(_loc7_ in _loc18_)
                                    {
                                       _loc13_ = _loc7_.§[!?§();
                                       if(_loc20_ || _loc2_)
                                       {
                                          §§push(Number(Math.min(1,_loc7_.width * (0.7 + this.§%m§(_loc7_,_loc2_) * 0.1) / _loc7_.§2!`§())));
                                          if(_loc20_)
                                          {
                                             _loc14_ = §§pop();
                                             if(_loc20_)
                                             {
                                                §§push(Number(Math.min(1,_loc7_.height * 0.8 / _loc7_.§ H§())));
                                                if(_loc20_)
                                                {
                                                   addr496:
                                                   _loc15_ = §§pop();
                                                   if(_loc20_ || this)
                                                   {
                                                      §§push(Number(Math.min(_loc14_,_loc15_)));
                                                      if(_loc20_ || _loc2_)
                                                      {
                                                         addr526:
                                                         §§push(_loc16_ = §§pop());
                                                      }
                                                      if(§§pop() < 1)
                                                      {
                                                         if(!_loc19_)
                                                         {
                                                            addr532:
                                                            _loc7_.§+w§(_loc16_,_loc16_);
                                                         }
                                                         §§goto(addr536);
                                                      }
                                                      §§goto(addr532);
                                                   }
                                                   §§goto(addr536);
                                                }
                                                §§goto(addr526);
                                             }
                                             §§goto(addr532);
                                          }
                                          §§goto(addr496);
                                       }
                                       §§goto(addr536);
                                    }
                                 }
                                 this.§"H§(_loc6_.length);
                                 §§goto(addr544);
                                 addr423:
                                 while(true)
                                 {
                                    _loc10_++;
                                    continue loop1;
                                 }
                              }
                           }
                           §§goto(addr423);
                        }
                     }
                     §§goto(addr188);
                     §§push(this.§3'§);
                  }
                  §§goto(addr191);
               }
               §§goto(addr188);
            }
            §§goto(addr175);
         }
         §§goto(addr173);
      }
      
      private function §%m§(param1:§9y§, param2:int) : int
      {
         return Math.min(this.§6!_§,Math.max(1,Math.ceil(param1.§2!`§() * 0.7 / param2)));
      }
      
      private function §&!A§(param1:§9y§, param2:int) : int
      {
         return Math.max(1,Math.ceil(param1.§ H§() * 0.7 / param2));
      }
      
      private function §?H§(param1:Vector.<Vector.<Vector.<§9y§>>>, param2:§9y§, param3:int, param4:int, param5:int, param6:int) : void
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc14_:* = 0;
         var _loc7_:* = false;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:int = 0;
         §§push(this.§%m§(param2,param5));
         if(!(_loc15_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc11_:* = §§pop();
         §§push(this.§&!A§(param2,param6));
         if(!(_loc15_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc12_:* = §§pop();
         if(_loc16_)
         {
            §§push(_loc11_);
            if(!(_loc15_ && param2))
            {
               §§push(param4);
               if(!_loc15_)
               {
                  §§push(§§pop() > §§pop());
                  if(!_loc15_)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc15_ && param3))
                        {
                           §§pop();
                           addr98:
                           if(!(_loc15_ && param1))
                           {
                              addr88:
                              §§push(_loc12_ > param3);
                           }
                           loop0:
                           while(true)
                           {
                              §§push(_loc7_);
                              if(!(_loc15_ && this))
                              {
                                 while(true)
                                 {
                                    §§push(!§§pop());
                                 }
                                 addr205:
                              }
                              while(§§pop())
                              {
                                 if(_loc10_ == param1.length)
                                 {
                                    if(_loc16_)
                                    {
                                       param1.push(this.§4S§(param3,param4));
                                       if(!_loc15_)
                                       {
                                          addr114:
                                          §§push(this.§]!^§(param1[_loc10_],param2,_loc8_,_loc9_,_loc11_,_loc12_));
                                          if(!_loc15_)
                                          {
                                             if(§§pop())
                                             {
                                                §§push(true);
                                                if(_loc16_)
                                                {
                                                   _loc7_ = §§pop();
                                                   continue loop0;
                                                }
                                                continue;
                                             }
                                             §§push(_loc8_);
                                             if(!_loc15_)
                                             {
                                                §§push(param1[_loc10_].length - 1);
                                                if(!_loc15_)
                                                {
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      addr165:
                                                      if(_loc9_ < param1[_loc10_][_loc8_].length - 1)
                                                      {
                                                         addr166:
                                                         _loc9_++;
                                                         if(_loc15_)
                                                         {
                                                            continue loop0;
                                                         }
                                                         §§push(0);
                                                         if(_loc16_)
                                                         {
                                                            addr172:
                                                            _loc8_ = §§pop();
                                                            if(!_loc16_)
                                                            {
                                                               break;
                                                            }
                                                            addr175:
                                                            continue loop0;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         _loc10_++;
                                                         if(!(_loc16_ || param1))
                                                         {
                                                            continue loop0;
                                                         }
                                                         §§push(0);
                                                         if(_loc16_)
                                                         {
                                                            _loc8_ = §§pop();
                                                            §§push(0);
                                                            if(_loc15_ && param2)
                                                            {
                                                               addr209:
                                                               var _loc13_:* = §§pop();
                                                               if(!_loc16_)
                                                               {
                                                               }
                                                               addr287:
                                                               if(_loc13_ < _loc8_ + _loc11_)
                                                               {
                                                                  §§push(_loc9_);
                                                                  if(!_loc15_)
                                                                  {
                                                                     §§push(int(§§pop()));
                                                                     if(!(_loc15_ && param2))
                                                                     {
                                                                        _loc14_ = §§pop();
                                                                        addr244:
                                                                        §§push(_loc14_);
                                                                        if(!(_loc15_ && param3))
                                                                        {
                                                                           addr252:
                                                                           §§push(_loc9_);
                                                                           if(!(_loc15_ && param2))
                                                                           {
                                                                              §§push(_loc12_);
                                                                              if(_loc16_)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!_loc15_)
                                                                                 {
                                                                                    if(§§pop() >= §§pop())
                                                                                    {
                                                                                       if(_loc16_)
                                                                                       {
                                                                                          addr279:
                                                                                          _loc13_++;
                                                                                          if(!(_loc15_ && param3))
                                                                                          {
                                                                                             §§goto(addr287);
                                                                                          }
                                                                                          §§goto(addr292);
                                                                                       }
                                                                                       addr292:
                                                                                       return;
                                                                                    }
                                                                                    param1[_loc10_][_loc13_][_loc14_] = param2;
                                                                                    _loc14_++;
                                                                                    if(_loc16_ || param2)
                                                                                    {
                                                                                       §§goto(addr244);
                                                                                    }
                                                                                    §§goto(addr279);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr287);
                                                                     }
                                                                  }
                                                                  §§goto(addr252);
                                                               }
                                                               §§goto(addr279);
                                                            }
                                                         }
                                                      }
                                                      _loc9_ = §§pop();
                                                      continue loop0;
                                                   }
                                                   _loc8_++;
                                                   if(!_loc15_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   §§goto(addr175);
                                                }
                                                §§goto(addr165);
                                             }
                                             §§goto(addr172);
                                          }
                                          else
                                          {
                                             §§goto(addr205);
                                          }
                                       }
                                       §§goto(addr166);
                                    }
                                    break;
                                 }
                                 §§goto(addr114);
                              }
                              §§goto(addr209);
                           }
                        }
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc16_ || param3)
                     {
                        return;
                     }
                     §§goto(addr98);
                  }
                  §§goto(addr98);
               }
            }
            §§goto(addr88);
         }
         §§goto(addr98);
      }
      
      private function §4S§(param1:int, param2:int) : Vector.<Vector.<§9y§>>
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Vector.<Vector.<§9y§>> = new Vector.<Vector.<§9y§>>(param2);
         var _loc4_:int = 0;
         while(_loc4_ < param2)
         {
            _loc3_[_loc4_] = new Vector.<§9y§>(param1);
            if(!(_loc6_ || param2))
            {
               break;
            }
            _loc4_++;
            if(!_loc6_)
            {
               break;
            }
         }
         return _loc3_;
      }
      
      private function §]!^§(param1:Vector.<Vector.<§9y§>>, param2:§9y§, param3:int, param4:int, param5:int, param6:int) : Boolean
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_)
         {
            §§push(param3);
            if(_loc9_)
            {
               §§push(§§pop() >= param1.length);
               if(!(§§pop() >= param1.length))
               {
                  if(_loc9_ || param3)
                  {
                     §§pop();
                     addr41:
                     if(param4 >= param1[param3].length)
                     {
                        return false;
                     }
                     else
                     {
                        if(param1[param3][param4] == param2)
                        {
                           if(!_loc8_)
                           {
                              §§goto(addr53);
                           }
                        }
                        else
                        {
                           if(param1[param3][param4] != null)
                           {
                              §§push(false);
                              if(_loc9_)
                              {
                                 return §§pop();
                              }
                           }
                           else
                           {
                              param1[param3][param4] = param2;
                              addr79:
                              §§push(true);
                           }
                           var _loc7_:* = §§pop();
                           if(!(_loc8_ && param3))
                           {
                              §§push(param5);
                              if(!(_loc8_ && param3))
                              {
                                 §§push(1);
                                 if(_loc9_ || param2)
                                 {
                                    if(§§pop() > §§pop())
                                    {
                                       if(!_loc8_)
                                       {
                                          §§push(_loc7_);
                                          if(_loc9_)
                                          {
                                             §§push(Boolean(§§pop()));
                                             §§push(Boolean(§§pop()));
                                             if(!(_loc8_ && param1))
                                             {
                                                if(§§pop())
                                                {
                                                   addr130:
                                                   §§pop();
                                                   §§push(this.§]!^§(param1,param2,param3 + 1,param4,param5 - 1,param6));
                                                   if(_loc9_ || param1)
                                                   {
                                                      addr150:
                                                      §§push(Boolean(Boolean(§§pop())));
                                                      if(!_loc8_)
                                                      {
                                                         _loc7_ = §§pop();
                                                         addr154:
                                                         if(param6 > 1)
                                                         {
                                                            addr160:
                                                            §§push(Boolean(_loc7_));
                                                            if(Boolean(_loc7_))
                                                            {
                                                               §§pop();
                                                               §§push(this.§]!^§(param1,param2,param3,param4 + 1,param5,param6 - 1));
                                                               if(!_loc8_)
                                                               {
                                                                  addr185:
                                                                  §§push(Boolean(§§pop()));
                                                                  if(!(_loc8_ && param1))
                                                                  {
                                                                     addr193:
                                                                     §§push(Boolean(§§pop()));
                                                                     if(!_loc9_)
                                                                     {
                                                                     }
                                                                     §§goto(addr204);
                                                                  }
                                                                  _loc7_ = §§pop();
                                                                  addr197:
                                                                  param1[param3][param4] = null;
                                                                  addr204:
                                                                  return §§pop();
                                                                  §§push(_loc7_);
                                                               }
                                                               §§goto(addr204);
                                                            }
                                                            §§goto(addr193);
                                                         }
                                                         §§goto(addr197);
                                                      }
                                                      §§goto(addr185);
                                                   }
                                                   §§goto(addr193);
                                                }
                                                §§goto(addr150);
                                             }
                                             §§goto(addr160);
                                          }
                                          §§goto(addr130);
                                       }
                                       §§goto(addr160);
                                    }
                                 }
                              }
                           }
                           §§goto(addr154);
                        }
                        §§goto(addr79);
                     }
                  }
                  return §§pop();
               }
            }
            §§goto(addr41);
         }
         addr53:
         return true;
      }
      
      public function isOpen() : Boolean
      {
         return this.§3'§.§8!9§();
      }
      
      protected function §3!M§(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         do
         {
            if(this.§<!^§[_loc2_] == param1.currentTarget)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this.§''§(_loc2_);
                  break;
               }
               break;
            }
            _loc2_++;
         }
         while(!(_loc4_ && _loc3_));
         
      }
      
      private function §"H§(param1:int) : void
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc2_:Class = null;
         var _loc11_:MovieClip = null;
         var _loc12_:MovieClip = null;
         if(_loc16_)
         {
            if(this.§<!^§)
            {
               addr31:
               for each(_loc11_ in this.§<!^§)
               {
                  _loc11_.parent.removeChild(_loc11_);
                  if(_loc16_ || _loc3_)
                  {
                     _loc11_.removeEventListener(MouseEvent.MOUSE_DOWN,this.§3!M§);
                  }
               }
            }
            var _loc3_:§#!'§ = this.§+!$§.getItemByName("Button_PrevPage") as §#!'§;
            var _loc4_:§#!'§ = this.§+!$§.getItemByName("Button_NextPage") as §#!'§;
            var _loc5_:§[!s§ = this.§+!$§.getItemByName("Container_PageButtons") as §[!s§;
            if(!_loc15_)
            {
               this.§<!^§ = new Vector.<MovieClip>();
            }
            _loc2_ = §1F§.§"!_§("Button_Dot_Inventory");
            var _loc6_:int = _loc3_.x + _loc3_.width / 2;
            var _loc7_:int;
            §§push((_loc7_ = _loc4_.x - _loc4_.width / 2) - _loc6_);
            if(!(_loc15_ && _loc2_))
            {
               §§push(Number(§§pop()));
            }
            var _loc8_:* = §§pop();
            §§push(this.§3'§.§`!G§());
            if(_loc16_ || _loc3_)
            {
               §§push(int(§§pop()));
            }
            var _loc9_:* = §§pop();
            var _loc10_:int = 0;
            while(true)
            {
               §§push(_loc10_);
               if(!(_loc15_ && _loc3_))
               {
                  §§push(param1);
                  if(_loc16_ || this)
                  {
                     if(§§pop() >= §§pop())
                     {
                        if(!(_loc15_ && this))
                        {
                           _loc3_.setVisibility(param1 > 0);
                           _loc4_.setVisibility(param1 > 0);
                        }
                        §§push(_loc9_);
                        if(_loc16_ || this)
                        {
                           §§push(0);
                           if(!(_loc15_ && _loc3_))
                           {
                              if(§§pop() > §§pop())
                              {
                                 _loc3_.setEnabled(true);
                                 §§goto(addr349);
                              }
                              _loc3_.setEnabled(false);
                              _loc3_.mClip.filters = [StateLevelEditor.§finally§()];
                              §§goto(addr336);
                           }
                        }
                        break;
                     }
                     (_loc12_ = new _loc2_()).tabEnabled = false;
                     if(!(_loc15_ && _loc3_))
                     {
                        §§push(_loc10_);
                        if(!_loc15_)
                        {
                           §§push(_loc9_);
                           if(!_loc15_)
                           {
                              if(§§pop() == §§pop())
                              {
                                 _loc12_.gotoAndStop("Selected");
                                 if(!(_loc15_ && this))
                                 {
                                    addr195:
                                    _loc12_.x = _loc6_ + _loc8_ / (param1 + 1) * (_loc10_ + 1);
                                    _loc12_.y = _loc3_.y;
                                    _loc5_.mClip.addChild(_loc12_);
                                    if(!_loc16_)
                                    {
                                       continue;
                                    }
                                    addr220:
                                    if(_loc10_ != _loc9_)
                                    {
                                       if(!_loc15_)
                                       {
                                          addr223:
                                          _loc12_.buttonMode = true;
                                          _loc12_.addEventListener(MouseEvent.MOUSE_DOWN,this.§3!M§);
                                          addr249:
                                          this.§<!^§.push(_loc12_);
                                       }
                                       §§goto(addr249);
                                    }
                                    else
                                    {
                                       _loc12_.buttonMode = false;
                                       if(!(_loc15_ && param1))
                                       {
                                          _loc12_.removeEventListener(MouseEvent.MOUSE_DOWN,this.§3!M§);
                                          §§goto(addr249);
                                       }
                                    }
                                 }
                                 _loc10_++;
                                 continue;
                              }
                              _loc12_.gotoAndStop("UnSelected");
                              if(!_loc15_)
                              {
                                 §§goto(addr195);
                              }
                              §§goto(addr249);
                           }
                        }
                        §§goto(addr220);
                     }
                     §§goto(addr223);
                  }
                  addr338:
                  if(§§pop() < §§pop() - 1)
                  {
                     _loc4_.setEnabled(true);
                     if(!_loc15_)
                     {
                        _loc4_.mClip.filters = [];
                        §§goto(addr349);
                     }
                     else
                     {
                        addr353:
                        _loc4_.mClip.filters = [StateLevelEditor.§finally§()];
                     }
                     addr349:
                     if(!_loc15_)
                     {
                        _loc3_.mClip.filters = [];
                        if(_loc16_)
                        {
                           addr336:
                           §§push(_loc9_);
                           break;
                        }
                     }
                     return;
                  }
                  _loc4_.setEnabled(false);
                  §§goto(addr353);
               }
               break;
            }
            §§goto(addr338);
            §§push(param1);
         }
         §§goto(addr31);
      }
   }
}
