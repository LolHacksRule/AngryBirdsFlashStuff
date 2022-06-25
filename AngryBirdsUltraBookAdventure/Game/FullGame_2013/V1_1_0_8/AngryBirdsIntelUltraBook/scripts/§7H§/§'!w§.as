package §7H§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §'!w§
   {
      
      public static const §%I§:int = 4;
      
      public static const §#![§:int = 2;
      
      public static const §9>§:int = 3;
      
      public static const §,!w§:int = 4;
      
      public static const §9!C§:int = 0;
      
      public static const §2Q§:int = 0;
      
      public static const §<h§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §%I§ = 4;
         }
         loop0:
         while(true)
         {
            §#![§ = 2;
            while(true)
            {
               §9>§ = 3;
               loop2:
               while(true)
               {
                  §,!w§ = 4;
                  while(true)
                  {
                     §9!C§ = 0;
                     while(!_loc1_)
                     {
                        continue loop2;
                        §2Q§ = 0;
                        do
                        {
                           §<h§ = 0;
                        }
                        while(!(_loc2_ || §'!w§));
                        
                        if(!_loc1_)
                        {
                           if(!_loc1_)
                           {
                              return;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
               if(!(_loc2_ || _loc1_))
               {
                  continue;
               }
               §§goto(addr85);
            }
         }
      }
      
      private var §"!>§:ByteArray;
      
      private var §@+§:Vector.<Number>;
      
      private var §^!8§:Vector.<Number>;
      
      private var §@!P§:Boolean;
      
      private var §3!>§:int;
      
      private var §2!%§:Vector.<Number>;
      
      public function §'!w§(param1:int, param2:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§2!%§ = new Vector.<Number>(12,true);
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§"!>§ = new ByteArray();
                  loop2:
                  while(true)
                  {
                     addr45:
                     while(true)
                     {
                        this.§"!>§.endian = Endian.LITTLE_ENDIAN;
                        continue loop2;
                     }
                     continue loop1;
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr45);
         }
         var _loc3_:int = 0;
         loop6:
         while(true)
         {
            if(_loc3_ >= param1 * §#![§)
            {
               loop7:
               while(true)
               {
                  this.§@+§ = new Vector.<Number>(param1 * §%I§,true);
                  loop8:
                  while(true)
                  {
                     if(!_loc5_)
                     {
                        break loop7;
                     }
                     this.§^!8§ = new Vector.<Number>(param1 * §9>§,true);
                     loop9:
                     while(!(_loc4_ && _loc3_))
                     {
                        this.§@!P§ = param2;
                        while(!(_loc4_ && _loc3_))
                        {
                           if(_loc5_ || param1)
                           {
                              this.§3!>§ = param1;
                              if(!_loc4_)
                              {
                                 if(_loc5_ || param2)
                                 {
                                    return;
                                 }
                                 continue loop9;
                                 continue loop9;
                              }
                              continue;
                              continue;
                           }
                           continue loop6;
                        }
                        continue loop8;
                     }
                     continue loop7;
                  }
               }
            }
            else
            {
               this.§"!>§.writeFloat(0);
            }
            _loc3_++;
         }
      }
      
      public function clone() : §'!w§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§'!w§ = new §'!w§(0,this.§@!P§);
         if(_loc3_ || _loc1_)
         {
            _loc1_.§"!>§.length = this.§"!>§.length;
         }
         loop0:
         while(true)
         {
            _loc1_.§"!>§.writeBytes(this.§"!>§);
            while(true)
            {
               _loc1_.§@+§ = this.§@+§.concat();
               continue loop0;
               addr81:
               if(_loc3_ || this)
               {
                  _loc1_.§3!>§ = this.§3!>§;
                  addr88:
                  if(!_loc2_)
                  {
                     return _loc1_;
                  }
                  loop5:
                  while(true)
                  {
                     if(_loc3_ || _loc1_)
                     {
                        addr67:
                        if(_loc3_ || _loc1_)
                        {
                           addr74:
                           if(!(_loc3_ || this))
                           {
                              break;
                           }
                           §§goto(addr81);
                        }
                        else
                        {
                           while(true)
                           {
                              _loc1_.§^!8§ = this.§^!8§.concat();
                              §§goto(addr67);
                           }
                           addr111:
                        }
                     }
                     while(true)
                     {
                        _loc1_.§^!8§.fixed = true;
                        continue loop5;
                     }
                  }
                  continue loop0;
               }
            }
         }
      }
      
      public function copyTo(param1:§'!w§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:* = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§^!8§;
         if(!_loc18_)
         {
            §§push(this.§3!>§);
            loop0:
            while(true)
            {
               §§push(§9>§);
               addr117:
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  addr118:
                  while(true)
                  {
                     §§push(int(§§pop()));
                     addr119:
                     while(true)
                     {
                        _loc6_ = §§pop();
                     }
                  }
               }
               loop6:
               while(true)
               {
                  if(_loc18_ && this)
                  {
                     continue loop0;
                  }
                  _loc7_ = §§pop();
                  loop7:
                  while(_loc19_ || this)
                  {
                     while(true)
                     {
                        if(!param5)
                        {
                           §§push(0);
                           if(_loc19_ || param3)
                           {
                              addr176:
                              _loc8_ = §§pop();
                              if(!_loc18_)
                              {
                                 §§goto(addr179);
                              }
                              §§goto(addr201);
                           }
                           break;
                        }
                        while(true)
                        {
                           param5.transformVectors(this.§^!8§,this.§2!%§);
                           continue loop6;
                        }
                        if(_loc18_)
                        {
                           continue loop7;
                        }
                        if(false)
                        {
                           continue;
                        }
                        addr148:
                        §§push(_loc8_);
                        if(!_loc18_)
                        {
                           §§push(_loc6_);
                           if(!(_loc18_ && param1))
                           {
                              if(§§pop() < §§pop())
                              {
                                 var _loc14_:*;
                                 _loc9_[_loc14_ = _loc7_++] = this.§2!%§[_loc8_];
                                 if(_loc19_)
                                 {
                                    if(_loc19_)
                                    {
                                       _loc8_++;
                                       if(_loc19_ || this)
                                       {
                                          §§goto(addr148);
                                       }
                                       addr201:
                                       _loc8_++;
                                       if(_loc19_)
                                       {
                                          addr204:
                                          §§push(_loc8_);
                                          break;
                                       }
                                       var _loc10_:ByteArray = param1.§"!>§;
                                       if(_loc19_ || param3)
                                       {
                                          §§push(this.§3!>§);
                                          if(!(_loc18_ && this))
                                          {
                                             addr364:
                                             §§push(§§pop() * §#![§);
                                             if(!(_loc18_ && param1))
                                             {
                                                §§push(§,!w§);
                                                if(_loc19_ || this)
                                                {
                                                   addr382:
                                                   _loc6_ = int(§§pop() * §§pop());
                                                   addr383:
                                                   addr381:
                                                   §§push(param2);
                                                   if(!(_loc18_ && param3))
                                                   {
                                                      if(!(_loc18_ && this))
                                                      {
                                                         §§push(§#![§);
                                                         if(!(_loc18_ && this))
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc19_ || param3)
                                                            {
                                                               §§push(§,!w§);
                                                               if(_loc19_ || param2)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc18_)
                                                                  {
                                                                  }
                                                               }
                                                               §§goto(addr386);
                                                            }
                                                            if(_loc19_)
                                                            {
                                                               addr352:
                                                               _loc7_ = int(§§pop());
                                                               addr353:
                                                               if(_loc10_.length < _loc7_ + _loc6_)
                                                               {
                                                                  if(_loc19_ || param3)
                                                                  {
                                                                     if(!_loc18_)
                                                                     {
                                                                        _loc10_.length = _loc7_ + _loc6_;
                                                                        addr279:
                                                                        _loc10_.position = _loc7_;
                                                                        addr273:
                                                                        _loc10_.writeBytes(this.§"!>§);
                                                                        addr305:
                                                                        addr283:
                                                                        addr278:
                                                                        §§push(param4);
                                                                        if(_loc19_ || param2)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           if(!(_loc18_ && this))
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 if(_loc19_ || param3)
                                                                                 {
                                                                                    addr245:
                                                                                    §§pop();
                                                                                    if(_loc19_ || param2)
                                                                                    {
                                                                                       if(_loc19_)
                                                                                       {
                                                                                          if(_loc19_)
                                                                                          {
                                                                                             if(_loc19_ || param3)
                                                                                             {
                                                                                                if(!(_loc18_ && this))
                                                                                                {
                                                                                                   if(false)
                                                                                                   {
                                                                                                      §§goto(addr273);
                                                                                                   }
                                                                                                   addr386:
                                                                                                   §§push(§§pop() == 1);
                                                                                                   if(_loc19_ || param3)
                                                                                                   {
                                                                                                      addr394:
                                                                                                      §§push(!§§pop());
                                                                                                   }
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      _loc11_ = param1.§@+§;
                                                                                                      addr396:
                                                                                                      if(!(_loc18_ && param3))
                                                                                                      {
                                                                                                         §§push(this.§3!>§);
                                                                                                         if(!_loc18_)
                                                                                                         {
                                                                                                            addr498:
                                                                                                            §§push(§§pop() * §%I§);
                                                                                                            if(_loc19_)
                                                                                                            {
                                                                                                               §§push(int(§§pop()));
                                                                                                               if(!_loc18_)
                                                                                                               {
                                                                                                                  _loc6_ = §§pop();
                                                                                                                  if(!(_loc18_ && this))
                                                                                                                  {
                                                                                                                     addr456:
                                                                                                                     §§push(param2);
                                                                                                                     if(!(_loc18_ && this))
                                                                                                                     {
                                                                                                                        §§push(§%I§);
                                                                                                                        if(_loc19_ || param2)
                                                                                                                        {
                                                                                                                           if(!(_loc18_ && param1))
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(!_loc18_)
                                                                                                                              {
                                                                                                                                 addr484:
                                                                                                                                 _loc7_ = int(§§pop());
                                                                                                                                 if(_loc19_ || param1)
                                                                                                                                 {
                                                                                                                                    §§push(param3);
                                                                                                                                    if(_loc19_ || param3)
                                                                                                                                    {
                                                                                                                                       if(§§pop() == 1)
                                                                                                                                       {
                                                                                                                                          if(_loc19_ || param3)
                                                                                                                                          {
                                                                                                                                             addr436:
                                                                                                                                             §§push(0);
                                                                                                                                             if(!(_loc18_ && param1))
                                                                                                                                             {
                                                                                                                                                if(_loc19_)
                                                                                                                                                {
                                                                                                                                                   _loc8_ = §§pop();
                                                                                                                                                   if(_loc19_ || this)
                                                                                                                                                   {
                                                                                                                                                      if(false)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr456);
                                                                                                                                                      }
                                                                                                                                                      addr606:
                                                                                                                                                      §§push(_loc8_);
                                                                                                                                                      §§push(_loc6_);
                                                                                                                                                      if(!_loc18_)
                                                                                                                                                      {
                                                                                                                                                         addr610:
                                                                                                                                                         if(§§pop() >= §§pop())
                                                                                                                                                         {
                                                                                                                                                            if(!_loc19_)
                                                                                                                                                            {
                                                                                                                                                               addr810:
                                                                                                                                                               _loc12_++;
                                                                                                                                                               if(_loc19_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr813);
                                                                                                                                                               }
                                                                                                                                                               addr816:
                                                                                                                                                               if(_loc8_ < this.§3!>§)
                                                                                                                                                               {
                                                                                                                                                                  if(this.§@!P§)
                                                                                                                                                                  {
                                                                                                                                                                     addr574:
                                                                                                                                                                     _loc13_ = this.§@+§[_loc12_ + 3];
                                                                                                                                                                     addr567:
                                                                                                                                                                     if(!_loc18_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc19_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(param3);
                                                                                                                                                                           if(_loc19_)
                                                                                                                                                                           {
                                                                                                                                                                              addr537:
                                                                                                                                                                              §§push(§§pop() / _loc13_);
                                                                                                                                                                              if(!(_loc18_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc19_ || param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr554);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr574);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr554:
                                                                                                                                                                           _loc13_ = §§pop();
                                                                                                                                                                           if(!_loc18_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc19_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr559:
                                                                                                                                                                                 if(false)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr561:
                                                                                                                                                                                    §§goto(addr816);
                                                                                                                                                                                 }
                                                                                                                                                                                 _loc11_[_loc14_ = _loc7_++] = this.§@+§[_loc12_++] * _loc13_;
                                                                                                                                                                                 if(!_loc18_)
                                                                                                                                                                                 {
                                                                                                                                                                                    var _loc15_:*;
                                                                                                                                                                                    _loc11_[_loc15_ = _loc7_++] = this.§@+§[_loc12_++] * _loc13_;
                                                                                                                                                                                    if(_loc19_)
                                                                                                                                                                                    {
                                                                                                                                                                                       var _loc16_:*;
                                                                                                                                                                                       _loc11_[_loc16_ = _loc7_++] = this.§@+§[_loc12_++] * _loc13_;
                                                                                                                                                                                       if(!_loc18_)
                                                                                                                                                                                       {
                                                                                                                                                                                          var _loc17_:*;
                                                                                                                                                                                          _loc11_[_loc17_ = _loc7_++] = param3;
                                                                                                                                                                                          if(_loc19_ || param3)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc18_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr709:
                                                                                                                                                                                                if(_loc19_ || param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr717:
                                                                                                                                                                                                   if(_loc19_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc18_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr723:
                                                                                                                                                                                                         §§goto(addr810);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr813);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr807);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr806);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr805);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr804);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr709);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr717);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr741:
                                                                                                                                                                                 _loc11_[_loc15_ = _loc7_++] = this.§@+§[_loc12_++];
                                                                                                                                                                                 if(!(_loc18_ && param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc11_[_loc16_ = _loc7_++] = this.§@+§[_loc12_++];
                                                                                                                                                                                    if(!(_loc18_ && param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc11_[_loc17_ = _loc7_++] = param3;
                                                                                                                                                                                       addr804:
                                                                                                                                                                                       §§goto(addr805);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr805:
                                                                                                                                                                                    addr806:
                                                                                                                                                                                    addr807:
                                                                                                                                                                                    if(!_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr810);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr813);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr709);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr567);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr813);
                                                                                                                                                                        }
                                                                                                                                                                        addr632:
                                                                                                                                                                        §§goto(addr606);
                                                                                                                                                                        addr632:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr723);
                                                                                                                                                                  }
                                                                                                                                                                  _loc11_[_loc14_ = _loc7_++] = this.§@+§[_loc12_++];
                                                                                                                                                                  if(_loc19_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr741);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr717);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr813);
                                                                                                                                                            }
                                                                                                                                                            addr613:
                                                                                                                                                            §§goto(addr813);
                                                                                                                                                         }
                                                                                                                                                         _loc11_[_loc14_ = _loc7_++] = this.§@+§[_loc8_];
                                                                                                                                                         if(!_loc18_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc18_)
                                                                                                                                                            {
                                                                                                                                                               _loc8_++;
                                                                                                                                                               §§goto(addr632);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr559);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr810);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr559);
                                                                                                                                                }
                                                                                                                                                §§goto(addr484);
                                                                                                                                             }
                                                                                                                                             §§goto(addr622);
                                                                                                                                          }
                                                                                                                                          §§goto(addr613);
                                                                                                                                       }
                                                                                                                                       §§push(0);
                                                                                                                                       if(_loc19_ || param3)
                                                                                                                                       {
                                                                                                                                          addr622:
                                                                                                                                          _loc12_ = §§pop();
                                                                                                                                          if(!(_loc18_ && this))
                                                                                                                                          {
                                                                                                                                             §§push(0);
                                                                                                                                             if(_loc19_)
                                                                                                                                             {
                                                                                                                                                if(!(_loc18_ && param2))
                                                                                                                                                {
                                                                                                                                                   addr596:
                                                                                                                                                   _loc8_ = §§pop();
                                                                                                                                                   if(_loc19_ || this)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr561);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr810);
                                                                                                                                                }
                                                                                                                                                §§goto(addr606);
                                                                                                                                             }
                                                                                                                                             §§goto(addr810);
                                                                                                                                          }
                                                                                                                                          §§goto(addr813);
                                                                                                                                       }
                                                                                                                                       §§goto(addr810);
                                                                                                                                    }
                                                                                                                                    §§goto(addr554);
                                                                                                                                 }
                                                                                                                                 §§goto(addr632);
                                                                                                                              }
                                                                                                                              §§goto(addr537);
                                                                                                                           }
                                                                                                                           §§goto(addr498);
                                                                                                                        }
                                                                                                                        §§goto(addr610);
                                                                                                                     }
                                                                                                                     §§goto(addr606);
                                                                                                                  }
                                                                                                                  §§goto(addr810);
                                                                                                               }
                                                                                                               §§goto(addr596);
                                                                                                            }
                                                                                                            §§goto(addr537);
                                                                                                         }
                                                                                                         §§goto(addr596);
                                                                                                      }
                                                                                                      §§goto(addr436);
                                                                                                   }
                                                                                                   addr813:
                                                                                                   _loc8_++;
                                                                                                   if(!_loc19_)
                                                                                                   {
                                                                                                   }
                                                                                                   return;
                                                                                                   §§push(param3);
                                                                                                }
                                                                                                §§goto(addr353);
                                                                                             }
                                                                                             §§goto(addr305);
                                                                                          }
                                                                                          §§goto(addr283);
                                                                                       }
                                                                                       §§goto(addr278);
                                                                                    }
                                                                                    §§goto(addr396);
                                                                                 }
                                                                                 §§goto(addr394);
                                                                              }
                                                                              §§goto(addr386);
                                                                           }
                                                                           §§goto(addr394);
                                                                        }
                                                                        §§goto(addr245);
                                                                     }
                                                                     §§goto(addr383);
                                                                  }
                                                                  §§goto(addr273);
                                                               }
                                                               §§goto(addr279);
                                                            }
                                                            §§goto(addr381);
                                                         }
                                                         §§goto(addr364);
                                                      }
                                                      §§goto(addr382);
                                                   }
                                                   §§goto(addr352);
                                                }
                                             }
                                             §§goto(addr386);
                                          }
                                          §§goto(addr382);
                                       }
                                       §§goto(addr279);
                                    }
                                    addr179:
                                    §§goto(addr204);
                                 }
                                 addr193:
                                 if(_loc18_ && param3)
                                 {
                                 }
                                 §§goto(addr201);
                              }
                              if(_loc19_ || this)
                              {
                              }
                              §§goto(addr201);
                           }
                           addr206:
                           if(§§pop() < §§pop())
                           {
                              _loc9_[_loc14_ = _loc7_++] = this.§^!8§[_loc8_];
                              §§goto(addr193);
                           }
                           §§goto(addr201);
                        }
                        §§goto(addr176);
                     }
                     §§goto(addr206);
                     §§push(_loc6_);
                  }
                  while(true)
                  {
                     §§push(param2);
                     addr81:
                     while(true)
                     {
                        §§push(§9>§);
                        if(!(_loc19_ || this))
                        {
                           break;
                        }
                        §§push(§§pop() * §§pop());
                        if(!(_loc18_ && this))
                        {
                           §§push(int(§§pop()));
                           continue loop6;
                        }
                        §§goto(addr118);
                        addr41:
                        if(_loc18_ && this)
                        {
                           continue;
                        }
                        if(_loc19_)
                        {
                           _loc8_ = §§pop();
                           if(_loc18_ && param1)
                           {
                              continue loop6;
                           }
                           if(_loc19_ || param2)
                           {
                              §§goto(addr65);
                           }
                           §§goto(addr72);
                        }
                        else
                        {
                           §§goto(addr119);
                        }
                     }
                     §§goto(addr117);
                  }
               }
            }
         }
         §§goto(addr120);
      }
      
      public function append(param1:§'!w§) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:int = this.§"!>§.length;
         if(_loc10_)
         {
            this.§"!>§.length += param1.§"!>§.length;
            while(true)
            {
               this.§"!>§.position = _loc2_;
               loop1:
               while(true)
               {
                  addr41:
                  while(true)
                  {
                     this.§"!>§.writeBytes(param1.§"!>§);
                     continue loop1;
                  }
               }
               addr32:
               if(_loc9_ && this)
               {
                  continue;
               }
               if(false)
               {
                  §§goto(addr41);
               }
               addr72:
               var _loc3_:Vector.<Number> = param1.§@+§;
               var _loc4_:int = _loc3_.length;
               var _loc5_:int = 0;
               loop5:
               while(true)
               {
                  if(_loc5_ >= _loc4_)
                  {
                     if(!(_loc9_ && _loc2_))
                     {
                        this.§@+§.fixed = true;
                     }
                     while(_loc10_)
                     {
                        this.§^!8§.fixed = false;
                        if(_loc10_ || param1)
                        {
                           if(true)
                           {
                              break loop5;
                           }
                           continue loop5;
                        }
                     }
                     loop7:
                     while(_loc9_ && _loc2_)
                     {
                        while(true)
                        {
                           _loc5_++;
                           continue loop7;
                        }
                     }
                     continue;
                  }
                  this.§@+§.push(_loc3_[_loc5_]);
                  §§goto(addr143);
               }
               var _loc6_:Vector.<Number>;
               var _loc7_:int = (_loc6_ = param1.§^!8§).length;
               var _loc8_:int = 0;
               if(_loc10_ || _loc3_)
               {
                  while(true)
                  {
                     if(_loc8_ >= _loc7_)
                     {
                        loop10:
                        while(!_loc9_)
                        {
                           while(true)
                           {
                              this.§^!8§.fixed = true;
                              do
                              {
                                 this.§3!>§ += param1.§52§;
                              }
                              while(_loc9_ && _loc3_);
                              
                              if(!(_loc9_ && _loc2_))
                              {
                                 break;
                              }
                              continue loop10;
                           }
                           return;
                        }
                        loop11:
                        while(_loc9_ && this)
                        {
                           while(true)
                           {
                              _loc8_++;
                              continue loop11;
                           }
                        }
                        continue;
                     }
                     this.§^!8§.push(_loc6_[_loc8_]);
                     §§goto(addr228);
                  }
               }
               §§goto(addr205);
            }
         }
         while(true)
         {
            this.§@+§.fixed = false;
            if(_loc10_)
            {
               §§goto(addr32);
            }
            §§goto(addr47);
         }
         §§goto(addr72);
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         §§push(param1);
         if(!_loc8_)
         {
            §§push(int(§§pop() * §9>§));
         }
         var _loc5_:* = §§pop();
         var _loc6_:*;
         this.§^!8§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§^!8§[_loc7_ = _loc5_++] = param3;
         if(_loc9_)
         {
            this.§^!8§[_loc5_] = param4;
         }
      }
      
      public function §6!T§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(param1);
         if(!_loc7_)
         {
            §§push(int(§§pop() * §9>§));
         }
         var _loc4_:* = §§pop();
         var _loc5_:*;
         this.§^!8§[_loc5_ = _loc4_++] = param2;
         if(!_loc7_)
         {
            this.§^!8§[_loc4_] = param3;
         }
      }
      
      public function §+j§(param1:int, param2:Vector3D) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(_loc5_ || this)
         {
            §§push(int(§§pop() * §9>§));
         }
         var _loc3_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            param2.x = this.§^!8§[_loc3_++];
            while(true)
            {
               param2.y = this.§^!8§[_loc3_++];
               loop1:
               while(!_loc4_)
               {
                  while(true)
                  {
                     param2.z = this.§^!8§[_loc3_];
                     if(_loc5_ || this)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr88);
      }
      
      public function §,!7§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!(_loc8_ && param2))
         {
            if(this.§@!P§)
            {
               addr27:
               §§push(param3);
               if(_loc9_)
               {
                  §§push(Number(§§pop()));
                  if(_loc9_ || param2)
                  {
                  }
                  addr43:
                  §§push(Number(§§pop()));
               }
            }
            else
            {
               §§push(Number(1));
               if(_loc9_)
               {
                  §§goto(addr43);
               }
            }
            var _loc4_:*;
            §§push(_loc4_ = §§pop());
            if(_loc9_ || this)
            {
               §§push(§§pop() / 255);
               if(!(_loc8_ && param3))
               {
                  addr72:
                  §§push(Number(§§pop()));
                  if(!_loc8_)
                  {
                     §§goto(addr75);
                  }
                  §§goto(addr88);
               }
               addr75:
               _loc4_ = §§pop();
               §§push(include.§`#§(param2) * _loc4_);
               if(_loc9_ || param3)
               {
                  addr88:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               §§push(include.§^9§(param2) * _loc4_);
               if(!_loc8_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               §§push(include.§]7§(param2) * _loc4_);
               if(!_loc8_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc7_:* = §§pop();
               if(!_loc8_)
               {
                  this.§5! §(param1,1,_loc5_,_loc6_,_loc7_,param3);
               }
               return;
            }
            §§goto(addr72);
         }
         §§goto(addr27);
      }
      
      private function §5! §(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         §§push(param1);
         if(!(_loc13_ && param2))
         {
            §§push(int(§§pop() * §%I§));
         }
         var _loc7_:* = §§pop();
         §§push(param2);
         if(_loc14_)
         {
            §§push(int(§§pop() - 1));
         }
         var _loc8_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc8_);
            while(§§pop() >= 0)
            {
               var _loc9_:*;
               this.§@+§[_loc9_ = _loc7_++] = param3;
               if(!(_loc13_ && this))
               {
                  var _loc10_:*;
                  this.§@+§[_loc10_ = _loc7_++] = param4;
                  if(!_loc13_)
                  {
                     var _loc11_:*;
                     this.§@+§[_loc11_ = _loc7_++] = param5;
                     if(_loc14_)
                     {
                        var _loc12_:*;
                        this.§@+§[_loc12_ = _loc7_++] = param6;
                     }
                  }
               }
               if(!_loc14_)
               {
                  break;
               }
               §§push(_loc8_);
               if(_loc14_)
               {
                  §§push(§§pop() - 1);
                  if(_loc14_ || this)
                  {
                     continue loop0;
                  }
               }
            }
            addr136:
            return;
         }
      }
      
      private function §"!&§(param1:int, param2:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(param1);
         if(!_loc7_)
         {
            §§push(int(§§pop() * §%I§));
         }
         var _loc3_:* = §§pop();
         var _loc4_:*;
         this.§@+§[_loc4_ = _loc3_++] = this.§@+§[_loc4_] * param2;
         var _loc5_:*;
         this.§@+§[_loc5_ = _loc3_++] = this.§@+§[_loc5_] * param2;
         var _loc6_:*;
         this.§@+§[_loc6_ = _loc3_++] = this.§@+§[_loc6_] * param2;
         if(_loc8_ || param1)
         {
            this.§@+§[_loc3_] *= param2;
         }
      }
      
      public function §>!9§(param1:int) : uint
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         §§push(param1);
         if(!(_loc7_ && param1))
         {
            §§push(int(§§pop() * §%I§));
         }
         var _loc2_:* = §§pop();
         if(!(_loc7_ && this))
         {
            if(this.§@!P§)
            {
               addr45:
               §§push(Number(this.§@+§[_loc2_ + 3]));
               if(_loc8_ || param1)
               {
               }
               addr69:
               §§push(Number(§§pop()));
            }
            else
            {
               §§push(Number(1));
               if(_loc8_ || this)
               {
                  §§goto(addr69);
               }
            }
            var _loc3_:* = §§pop();
            if(!(_loc7_ && _loc3_))
            {
               §§push(_loc3_);
               loop0:
               while(true)
               {
                  if(§§pop() == 0)
                  {
                     addr210:
                     §§push(0);
                  }
                  else
                  {
                     while(true)
                     {
                        §§push(255);
                        if(_loc7_)
                        {
                           break;
                        }
                        §§push(§§pop() / _loc3_);
                        if(_loc8_ || this)
                        {
                           §§push(Number(§§pop()));
                        }
                        while(true)
                        {
                           _loc3_ = §§pop();
                           addr206:
                           while(true)
                           {
                              §§push(this.§@+§[_loc2_] * _loc3_);
                              addr167:
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 continue loop0;
                              }
                           }
                        }
                     }
                     addr191:
                  }
                  addr211:
                  return §§pop();
               }
            }
            §§goto(addr212);
         }
         §§goto(addr45);
      }
      
      public function §!0§(param1:int, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:int = 0;
         if(!_loc5_)
         {
            §§push(param2);
            loop0:
            while(true)
            {
               if(§§pop() < 0.001)
               {
                  while(true)
                  {
                     §§push(0.001);
                     addr119:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        addr120:
                        while(true)
                        {
                           param2 = §§pop();
                           addr121:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr118:
               }
               loop4:
               while(!this.§@!P§)
               {
                  §§push(param1);
                  if(_loc4_)
                  {
                     §§push(§§pop() * §%I§);
                     if(!_loc5_)
                     {
                        if(!(_loc5_ && param1))
                        {
                           if(!_loc4_)
                           {
                              continue loop0;
                           }
                           addr79:
                           §§push(§§pop() + 3);
                           if(_loc4_)
                           {
                              addr92:
                              _loc3_ = §§pop();
                              for(; _loc4_; this.§@+§[_loc3_] = param2,if(!_loc5_)
                              {
                                 if(_loc4_ || param2)
                                 {
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       §§goto(addr21);
                                    }
                                    break loop4;
                                 }
                                 addr21:
                              },continue,return)
                              {
                                 if(!(_loc5_ && this))
                                 {
                                    continue;
                                 }
                                 §§goto(addr118);
                              }
                              §§goto(addr121);
                           }
                           §§goto(addr120);
                        }
                        §§goto(addr119);
                     }
                     §§goto(addr79);
                  }
                  §§goto(addr92);
               }
               this.§,!7§(param1,this.§>!9§(param1),param2);
               §§goto(addr114);
            }
         }
         §§goto(addr121);
      }
      
      public function §5!&§(param1:int) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(!_loc3_)
         {
            §§push(§§pop() * §%I§);
            if(!(_loc3_ && param1))
            {
               §§push(§§pop() + 3);
            }
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         return this.§@+§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1);
         if(!_loc6_)
         {
            §§push(int(§§pop() * §#![§));
         }
         var _loc4_:* = §§pop();
         if(!_loc6_)
         {
            this.§"!>§.position = _loc4_ * §,!w§;
         }
         do
         {
            this.§"!>§.writeFloat(param2);
            do
            {
               this.§"!>§.writeFloat(param3);
            }
            while(_loc6_);
            
         }
         while(!_loc5_);
         
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(_loc5_ || param1)
         {
            §§push(int(§§pop() * §#![§));
         }
         var _loc3_:* = §§pop();
         if(!_loc4_)
         {
            this.§"!>§.position = _loc3_ * §,!w§;
         }
         while(true)
         {
            param2.x = this.§"!>§.readFloat();
            while(!(_loc4_ && this))
            {
               param2.y = this.§"!>§.readFloat();
               if(_loc5_)
               {
                  return;
               }
            }
         }
      }
      
      public function §&M§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         §§push(param1);
         if(!_loc8_)
         {
            §§push(int(§§pop() * §9>§));
         }
         var _loc5_:* = §§pop();
         var _loc6_:*;
         this.§^!8§[_loc6_ = _loc5_++] = this.§^!8§[_loc6_] + param2;
         var _loc7_:*;
         this.§^!8§[_loc7_ = _loc5_++] = this.§^!8§[_loc7_] + param3;
         if(_loc9_)
         {
            this.§^!8§[_loc5_] += param4;
         }
      }
      
      public function §">§(param1:int, param2:Matrix3D) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(_loc4_)
         {
            §§push(int(§§pop() * §9>§));
         }
         var _loc3_:* = §§pop();
         if(!(_loc5_ && param1))
         {
            this.§2!%§[0] = this.§^!8§[_loc3_];
            loop0:
            while(true)
            {
               this.§2!%§[1] = this.§^!8§[_loc3_ + 1];
               loop1:
               while(true)
               {
                  this.§2!%§[2] = this.§^!8§[_loc3_ + 2];
                  loop2:
                  for(; _loc4_; if(_loc5_ && param2)
                  {
                     continue;
                  },this.§^!8§[_loc3_ + 1] = this.§2!%§[1])
                  {
                     param2.transformVectors(this.§2!%§,this.§2!%§);
                     while(true)
                     {
                        this.§^!8§[_loc3_] = this.§2!%§[0];
                        loop4:
                        while(!_loc5_)
                        {
                           continue loop2;
                           while(true)
                           {
                              this.§^!8§[_loc3_ + 2] = this.§2!%§[2];
                              if(!_loc5_)
                              {
                                 if(_loc4_)
                                 {
                                    continue loop1;
                                 }
                                 continue loop4;
                              }
                           }
                           return;
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr79);
      }
      
      public function §]!P§(param1:uint, param2:Number = 1.0) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && param1))
         {
            §§push(param2);
            if(!(_loc7_ && param1))
            {
               if(§§pop() < 0.001)
               {
                  if(!(_loc7_ && param1))
                  {
                     addr41:
                     §§push(0.001);
                     if(!(_loc7_ && param2))
                     {
                        §§push(Number(§§pop()));
                        if(!(_loc7_ && param2))
                        {
                           addr57:
                           param2 = §§pop();
                           if(!_loc7_)
                           {
                              addr60:
                              if(this.§@!P§)
                              {
                                 addr63:
                                 §§push(param2);
                                 if(_loc8_ || _loc3_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc8_)
                                    {
                                       addr89:
                                       §§push(Number(§§pop()));
                                       addr84:
                                    }
                                 }
                                 §§goto(addr89);
                              }
                              else
                              {
                                 §§push(Number(1));
                                 if(_loc8_)
                                 {
                                    §§goto(addr89);
                                 }
                              }
                              var _loc3_:* = §§pop();
                              if(!_loc7_)
                              {
                                 §§push(_loc3_);
                                 if(_loc8_)
                                 {
                                    §§push(§§pop() / 255);
                                    if(_loc8_ || _loc3_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(!_loc7_)
                                       {
                                          addr108:
                                          _loc3_ = §§pop();
                                          §§push(include.§`#§(param1) * _loc3_);
                                          if(!(_loc7_ && this))
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       var _loc4_:* = §§pop();
                                       §§push(include.§^9§(param1) * _loc3_);
                                       if(!(_loc7_ && this))
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc5_:* = §§pop();
                                       §§push(include.§]7§(param1) * _loc3_);
                                       if(_loc8_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc6_:* = §§pop();
                                       if(_loc8_ || param1)
                                       {
                                          this.§5! §(0,this.§3!>§,_loc4_,_loc5_,_loc6_,param2);
                                       }
                                       return;
                                    }
                                 }
                              }
                              §§goto(addr108);
                           }
                           §§goto(addr63);
                        }
                        §§goto(addr84);
                     }
                     §§goto(addr89);
                  }
               }
               §§goto(addr60);
            }
            §§goto(addr57);
         }
         §§goto(addr41);
      }
      
      public function §#!s§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         if(!_loc14_)
         {
            §§push(param6);
            if(_loc13_ || this)
            {
               if(§§pop() < 0.001)
               {
                  if(!_loc14_)
                  {
                     addr30:
                     §§push(0.001);
                     if(!_loc14_)
                     {
                        addr33:
                        §§push(Number(§§pop()));
                        if(!_loc14_)
                        {
                           param6 = §§pop();
                           §§goto(addr37);
                        }
                     }
                     §§goto(addr42);
                  }
               }
               addr37:
               §§push(param1);
               if(!_loc14_)
               {
                  addr42:
                  §§push(int(§§pop() * §%I§));
               }
               var _loc7_:* = §§pop();
               var _loc8_:int = 0;
               while(_loc8_ < param2)
               {
                  var _loc9_:*;
                  this.§@+§[_loc9_ = _loc7_++] = param3;
                  if(_loc13_)
                  {
                     var _loc10_:*;
                     this.§@+§[_loc10_ = _loc7_++] = param4;
                     if(!_loc14_)
                     {
                        var _loc11_:*;
                        this.§@+§[_loc11_ = _loc7_++] = param5;
                        if(_loc13_)
                        {
                           var _loc12_:*;
                           this.§@+§[_loc12_ = _loc7_++] = param6;
                        }
                     }
                  }
                  if(!(_loc14_ && param1))
                  {
                     _loc8_++;
                     if(!(_loc13_ || param2))
                     {
                        break;
                     }
                  }
               }
               return;
            }
            §§goto(addr33);
         }
         §§goto(addr30);
      }
      
      public function §[!m§(param1:int, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = NaN;
         if(!_loc5_)
         {
            §§push(param2);
            if(_loc6_ || param1)
            {
               if(§§pop() < 0.001)
               {
                  if(_loc6_)
                  {
                     §§push(0.001);
                     if(_loc6_ || param1)
                     {
                        addr41:
                        §§push(Number(§§pop()));
                        if(!_loc5_)
                        {
                           param2 = §§pop();
                           if(!(_loc5_ && param2))
                           {
                              addr52:
                              §§push(param2);
                              if(_loc6_ || _loc3_)
                              {
                                 addr60:
                                 if(§§pop() == 1)
                                 {
                                    if(!(_loc6_ || this))
                                    {
                                       addr70:
                                       §§push(param1);
                                       if(_loc6_)
                                       {
                                          addr75:
                                          §§push(int(§§pop() * §%I§));
                                       }
                                       var _loc3_:* = §§pop();
                                       if(!_loc5_)
                                       {
                                          if(!this.§@!P§)
                                          {
                                             this.§@+§[_loc3_ + 3] *= param2;
                                             if(_loc6_ || param1)
                                             {
                                                if(!_loc6_)
                                                {
                                                   while(true)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         this.§@+§[_loc3_] *= _loc4_;
                                                         loop1:
                                                         while(true)
                                                         {
                                                            this.§@+§[_loc3_ + 1] *= _loc4_;
                                                            addr174:
                                                            while(true)
                                                            {
                                                               this.§@+§[_loc3_ + 2] *= _loc4_;
                                                               continue loop1;
                                                            }
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(param2);
                                                         if(!_loc5_)
                                                         {
                                                            §§push(§§pop() / _loc4_);
                                                            if(_loc6_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                         }
                                                         if(!(_loc5_ && param1))
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr227);
                                                      }
                                                      _loc4_ = §§pop();
                                                   }
                                                }
                                                §§goto(addr80);
                                             }
                                             §§goto(addr129);
                                          }
                                          §§goto(addr220);
                                       }
                                       §§goto(addr133);
                                    }
                                 }
                                 §§goto(addr70);
                              }
                              §§goto(addr75);
                           }
                           return;
                        }
                        §§goto(addr75);
                     }
                     §§goto(addr60);
                  }
                  §§goto(addr70);
               }
               §§goto(addr52);
            }
            §§goto(addr41);
         }
         §§goto(addr70);
      }
      
      public function §&!O§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         if(!_loc8_)
         {
            §§push(param1);
            while(true)
            {
               if(§§pop() == this.§@!P§)
               {
                  §§goto(addr268);
               }
               loop1:
               while(true)
               {
                  §§push(param2);
                  if(_loc8_ && param1)
                  {
                     break;
                  }
                  if(§§pop())
                  {
                     if(_loc9_ || this)
                     {
                        if(!_loc9_)
                        {
                           addr268:
                           return;
                        }
                        §§push(this.§3!>§);
                        while(true)
                        {
                           §§push(int(§§pop() * §%I§));
                           addr262:
                           while(true)
                           {
                              _loc3_ = §§pop();
                           }
                           addr210:
                           if(!(_loc8_ && param2))
                           {
                              _loc4_ = §§pop();
                              if(!(_loc9_ || param2))
                              {
                                 addr263:
                                 while(true)
                                 {
                                    §§push(0);
                                    if(!_loc8_)
                                    {
                                       §§goto(addr210);
                                    }
                                    else
                                    {
                                       §§goto(addr262);
                                    }
                                 }
                                 addr263:
                              }
                              if(_loc9_)
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §§push(_loc4_);
                                    if(!_loc8_)
                                    {
                                       if(§§pop() >= _loc3_)
                                       {
                                          if(!(_loc8_ && param2))
                                          {
                                             if(_loc9_)
                                             {
                                                if(!_loc8_)
                                                {
                                                   if(!(_loc8_ && param1))
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         addr60:
                                                         this.§@!P§ = param1;
                                                         break;
                                                      }
                                                      loop6:
                                                      while(true)
                                                      {
                                                         §§push(_loc6_);
                                                         if(_loc9_)
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               if(!_loc8_)
                                                               {
                                                                  if(§§pop() != 0)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc7_);
                                                                        if(!(_loc8_ && param1))
                                                                        {
                                                                           if(_loc9_ || _loc3_)
                                                                           {
                                                                              §§push(§§pop() / _loc6_);
                                                                              if(!_loc8_)
                                                                              {
                                                                                 addr119:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 addr119:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(_loc9_ || this)
                                                                                 {
                                                                                    _loc7_ = §§pop();
                                                                                    loop18:
                                                                                    while(!_loc8_)
                                                                                    {
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          this.§"!&§(_loc4_,_loc7_);
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc8_ && this))
                                                                                             {
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   addr89:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc4_++;
                                                                                                      addr67:
                                                                                                      while(_loc8_ && this)
                                                                                                      {
                                                                                                         continue loop18;
                                                                                                      }
                                                                                                      continue loop5;
                                                                                                      §§goto(addr89);
                                                                                                   }
                                                                                                   addr65:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc5_);
                                                                                                      addr190:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         loop11:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            addr194:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               addr195:
                                                                                                               addr180:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc6_ = §§pop();
                                                                                                                  break loop18;
                                                                                                               }
                                                                                                               addr180:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  addr181:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc9_)
                                                                                                                     {
                                                                                                                        break loop11;
                                                                                                                     }
                                                                                                                     continue loop11;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop6;
                                                                                                      }
                                                                                                   }
                                                                                                   addr189:
                                                                                                }
                                                                                             }
                                                                                             addr153:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc5_);
                                                                                                if(_loc9_ || param2)
                                                                                                {
                                                                                                   if(_loc9_ || param2)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc8_)
                                                                                                         {
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               §§goto(addr180);
                                                                                                            }
                                                                                                            §§goto(addr190);
                                                                                                         }
                                                                                                         §§goto(addr194);
                                                                                                      }
                                                                                                      addr169:
                                                                                                   }
                                                                                                   §§goto(addr195);
                                                                                                }
                                                                                                §§goto(addr181);
                                                                                             }
                                                                                          }
                                                                                          addr80:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§@!P§);
                                                                                          addr188:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                §§goto(addr189);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(1);
                                                                                                while(true)
                                                                                                {
                                                                                                }
                                                                                                addr193:
                                                                                             }
                                                                                             §§goto(addr194);
                                                                                             break loop18;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(param1);
                                                                                       if(_loc9_ || this)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             §§goto(addr153);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(1);
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         §§goto(addr180);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         loop29:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            addr204:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc5_ = §§pop();
                                                                                                               §§goto(addr205);
                                                                                                               continue loop29;
                                                                                                            }
                                                                                                         }
                                                                                                         addr203:
                                                                                                      }
                                                                                                      §§goto(addr194);
                                                                                                   }
                                                                                                   addr178:
                                                                                                }
                                                                                                §§goto(addr193);
                                                                                             }
                                                                                             addr175:
                                                                                          }
                                                                                          §§goto(addr194);
                                                                                       }
                                                                                       §§goto(addr188);
                                                                                       §§goto(addr195);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr181);
                                                                              }
                                                                           }
                                                                           §§goto(addr169);
                                                                        }
                                                                        §§goto(addr119);
                                                                     }
                                                                     addr100:
                                                                  }
                                                                  §§goto(addr65);
                                                               }
                                                               §§goto(addr204);
                                                            }
                                                            §§goto(addr178);
                                                         }
                                                         §§goto(addr119);
                                                      }
                                                   }
                                                   §§goto(addr100);
                                                }
                                                §§goto(addr80);
                                             }
                                             §§goto(addr67);
                                          }
                                          break;
                                       }
                                       §§push(this.§5!&§(0));
                                       §§goto(addr203);
                                    }
                                    §§goto(addr175);
                                 }
                                 return;
                              }
                              continue loop1;
                           }
                        }
                     }
                     §§goto(addr263);
                  }
                  §§goto(addr60);
               }
            }
         }
         §§goto(addr263);
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§@!P§;
      }
      
      public function get §52§() : int
      {
         return this.§3!>§;
      }
      
      public function set §52§(param1:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(_loc5_ || _loc2_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§#![§);
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc6_ && this))
                  {
                     §§push(§§pop() * §,!w§);
                     if(!_loc6_)
                     {
                        addr499:
                        §§push(§§pop() - this.§"!>§.length);
                     }
                     §§push(int(§§pop()));
                     loop2:
                     while(true)
                     {
                        _loc2_ = §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(int(this.§"!>§.length));
                           loop4:
                           while(true)
                           {
                              _loc4_ = §§pop();
                              addr484:
                              loop5:
                              while(true)
                              {
                                 this.§"!>§.length += _loc2_;
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    while(!_loc6_)
                                    {
                                       continue loop2;
                                       if(_loc5_)
                                       {
                                          continue loop0;
                                       }
                                    }
                                    continue loop4;
                                    addr437:
                                    if(_loc5_ || _loc2_)
                                    {
                                       this.§"!>§.position = _loc4_;
                                       while(true)
                                       {
                                          if(_loc6_)
                                          {
                                             continue loop5;
                                          }
                                          if(_loc6_ && _loc3_)
                                          {
                                             break;
                                          }
                                          §§goto(addr457);
                                          addr401:
                                          _loc3_ = §§pop();
                                          if(!(_loc5_ || this))
                                          {
                                             continue;
                                          }
                                          addr367:
                                          if(_loc3_ >= _loc2_ / §,!w§)
                                          {
                                             addr374:
                                             this.§@+§.fixed = false;
                                             addr365:
                                             _loc2_ = int(param1 * §%I§ - this.§@+§.length);
                                             addr354:
                                             _loc3_ = 0;
                                             addr324:
                                             addr355:
                                             addr366:
                                             addr359:
                                             addr378:
                                             addr360:
                                             addr364:
                                             addr358:
                                             if(_loc3_ >= _loc2_)
                                             {
                                                addr328:
                                                §§push(int(_loc2_));
                                                if(!(_loc6_ && param1))
                                                {
                                                   _loc3_ = §§pop();
                                                   addr338:
                                                   if(_loc5_)
                                                   {
                                                      addr297:
                                                      §§push(_loc3_);
                                                      §§push(0);
                                                      if(!_loc6_)
                                                      {
                                                         if(§§pop() >= §§pop())
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               this.§@+§.fixed = true;
                                                            }
                                                            this.§^!8§.fixed = false;
                                                            addr296:
                                                            addr309:
                                                            §§push(param1);
                                                            if(!(_loc6_ && param1))
                                                            {
                                                               addr234:
                                                               §§push(§§pop() * §9>§);
                                                               if(_loc5_ || this)
                                                               {
                                                                  §§push(§§pop() - this.§^!8§.length);
                                                               }
                                                               if(!(_loc6_ && param1))
                                                               {
                                                                  if(!(_loc6_ && _loc3_))
                                                                  {
                                                                     addr271:
                                                                     §§push(int(§§pop()));
                                                                     if(!_loc6_)
                                                                     {
                                                                        if(_loc5_ || _loc2_)
                                                                        {
                                                                           _loc2_ = §§pop();
                                                                           addr281:
                                                                           if(!_loc6_)
                                                                           {
                                                                              if(_loc5_ || _loc2_)
                                                                              {
                                                                                 addr222:
                                                                                 _loc3_ = 0;
                                                                                 addr223:
                                                                                 §§push(_loc3_);
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       addr148:
                                                                                       §§push(_loc2_);
                                                                                       if(_loc5_ || _loc2_)
                                                                                       {
                                                                                          if(_loc5_ || _loc2_)
                                                                                          {
                                                                                             if(§§pop() >= §§pop())
                                                                                             {
                                                                                                addr163:
                                                                                                if(_loc5_ || _loc3_)
                                                                                                {
                                                                                                   addr179:
                                                                                                   §§push(_loc2_);
                                                                                                   if(!(_loc6_ && _loc3_))
                                                                                                   {
                                                                                                      addr178:
                                                                                                      §§push(int(§§pop()));
                                                                                                   }
                                                                                                   if(!(_loc6_ && this))
                                                                                                   {
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            if(_loc5_ || _loc3_)
                                                                                                            {
                                                                                                               _loc3_ = §§pop();
                                                                                                               addr198:
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  addr62:
                                                                                                                  §§push(_loc3_);
                                                                                                                  if(!(_loc6_ && _loc2_))
                                                                                                                  {
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        if(!_loc6_)
                                                                                                                        {
                                                                                                                           §§push(0);
                                                                                                                           if(!(_loc6_ && param1))
                                                                                                                           {
                                                                                                                              if(!(_loc6_ && _loc2_))
                                                                                                                              {
                                                                                                                                 if(_loc5_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    if(§§pop() >= §§pop())
                                                                                                                                    {
                                                                                                                                       addr98:
                                                                                                                                       if(_loc5_)
                                                                                                                                       {
                                                                                                                                          this.§^!8§.fixed = true;
                                                                                                                                          addr104:
                                                                                                                                          if(_loc5_)
                                                                                                                                          {
                                                                                                                                             if(!(_loc6_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                this.§3!>§ = param1;
                                                                                                                                                if(!_loc6_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc6_ && param1))
                                                                                                                                                   {
                                                                                                                                                      if(_loc5_ || param1)
                                                                                                                                                      {
                                                                                                                                                         if(_loc6_ && param1)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr296);
                                                                                                                                                         }
                                                                                                                                                         return;
                                                                                                                                                      }
                                                                                                                                                      addr116:
                                                                                                                                                      if(!_loc6_)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr62);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr338);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr98);
                                                                                                                                                }
                                                                                                                                                §§goto(addr104);
                                                                                                                                             }
                                                                                                                                             addr343:
                                                                                                                                             §§goto(addr324);
                                                                                                                                          }
                                                                                                                                          addr125:
                                                                                                                                          if(_loc5_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             if(_loc5_)
                                                                                                                                             {
                                                                                                                                                if(!_loc6_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc6_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc5_)
                                                                                                                                                      {
                                                                                                                                                         _loc3_++;
                                                                                                                                                         §§goto(addr116);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr328);
                                                                                                                                                   }
                                                                                                                                                   addr312:
                                                                                                                                                   if(_loc5_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc6_)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr297);
                                                                                                                                                      }
                                                                                                                                                      _loc3_++;
                                                                                                                                                      addr381:
                                                                                                                                                      §§goto(addr367);
                                                                                                                                                      addr389:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr355);
                                                                                                                                                }
                                                                                                                                                §§goto(addr223);
                                                                                                                                             }
                                                                                                                                             addr203:
                                                                                                                                             if(_loc5_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr223);
                                                                                                                                             }
                                                                                                                                             if(!_loc6_)
                                                                                                                                             {
                                                                                                                                                if(!_loc6_)
                                                                                                                                                {
                                                                                                                                                   if(_loc5_)
                                                                                                                                                   {
                                                                                                                                                      _loc3_++;
                                                                                                                                                      §§goto(addr203);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr366);
                                                                                                                                                }
                                                                                                                                                _loc3_++;
                                                                                                                                                §§goto(addr312);
                                                                                                                                                addr323:
                                                                                                                                             }
                                                                                                                                             §§goto(addr309);
                                                                                                                                          }
                                                                                                                                          §§goto(addr163);
                                                                                                                                       }
                                                                                                                                       §§goto(addr198);
                                                                                                                                    }
                                                                                                                                    this.§^!8§.pop();
                                                                                                                                    §§goto(addr125);
                                                                                                                                 }
                                                                                                                                 §§goto(addr359);
                                                                                                                              }
                                                                                                                              §§goto(addr234);
                                                                                                                           }
                                                                                                                           §§goto(addr148);
                                                                                                                        }
                                                                                                                        §§goto(addr324);
                                                                                                                     }
                                                                                                                     §§goto(addr296);
                                                                                                                  }
                                                                                                                  §§goto(addr179);
                                                                                                               }
                                                                                                               §§goto(addr281);
                                                                                                            }
                                                                                                            §§goto(addr367);
                                                                                                         }
                                                                                                         §§goto(addr365);
                                                                                                      }
                                                                                                      §§goto(addr328);
                                                                                                   }
                                                                                                   §§goto(addr271);
                                                                                                }
                                                                                                §§goto(addr381);
                                                                                             }
                                                                                             this.§^!8§.push(0);
                                                                                             §§goto(addr203);
                                                                                          }
                                                                                          §§goto(addr367);
                                                                                       }
                                                                                       §§goto(addr297);
                                                                                    }
                                                                                    §§goto(addr222);
                                                                                 }
                                                                                 §§goto(addr178);
                                                                              }
                                                                              §§goto(addr374);
                                                                           }
                                                                           §§goto(addr378);
                                                                        }
                                                                        §§goto(addr354);
                                                                     }
                                                                     §§goto(addr328);
                                                                  }
                                                                  §§goto(addr360);
                                                               }
                                                               §§goto(addr364);
                                                            }
                                                            §§goto(addr297);
                                                         }
                                                         this.§@+§.pop();
                                                         §§goto(addr323);
                                                      }
                                                      §§goto(addr374);
                                                   }
                                                   _loc3_++;
                                                   §§goto(addr343);
                                                   addr351:
                                                }
                                                §§goto(addr358);
                                             }
                                             this.§@+§.push(0);
                                             §§goto(addr351);
                                             addr373:
                                          }
                                          this.§"!>§.writeFloat(0);
                                          §§goto(addr389);
                                       }
                                       continue loop3;
                                       addr448:
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr499);
               }
            }
         }
         §§goto(addr484);
      }
      
      public function get §%r§() : ByteArray
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§"!>§.position = 0;
         }
         return this.§"!>§;
      }
      
      public function get §<`§() : Vector.<Number>
      {
         return this.§@+§;
      }
      
      public function get §1'§() : Vector.<Number>
      {
         return this.§^!8§;
      }
   }
}
