package §&!Z§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §6!r§
   {
      
      public static const §5m§:int = 4;
      
      public static const §""A§:int = 2;
      
      public static const §%d§:int = 3;
      
      public static const § !L§:int = 4;
      
      public static const §^A§:int = 0;
      
      public static const §%§:int = 0;
      
      public static const §8!d§:int = 0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §5m§ = 4;
            loop0:
            while(true)
            {
               §""A§ = 2;
               addr104:
               while(true)
               {
                  §%d§ = 3;
                  continue loop0;
               }
            }
         }
         while(true)
         {
            § !L§ = 4;
            §§goto(addr77);
         }
      }
      
      private var §#+§:ByteArray;
      
      private var §[!C§:Vector.<Number>;
      
      private var §!s§:Vector.<Number>;
      
      private var §<!l§:Boolean;
      
      private var §0",§:int;
      
      private var §9!j§:Vector.<Number>;
      
      public function §6!r§(param1:int, param2:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            this.§9!j§ = new Vector.<Number>(12,true);
            while(true)
            {
               super();
               loop1:
               for(; !(_loc4_ && _loc3_); while(_loc5_ || param1)
               {
                  while(true)
                  {
                     this.§#+§.endian = Endian.LITTLE_ENDIAN;
                     do
                     {
                        this.§#+§.length = param1 * §""A§ * § !L§;
                     }
                     while(!(_loc5_ || param1));
                     
                     if(!_loc4_)
                     {
                        if(true)
                        {
                           var _loc3_:int = 0;
                           loop6:
                           while(true)
                           {
                              if(_loc3_ >= param1 * §""A§)
                              {
                                 loop7:
                                 while(true)
                                 {
                                    this.§[!C§ = new Vector.<Number>(param1 * §5m§,true);
                                    loop8:
                                    while(true)
                                    {
                                       if(_loc5_ || _loc3_)
                                       {
                                          this.§!s§ = new Vector.<Number>(param1 * §%d§,true);
                                          loop9:
                                          while(_loc5_ || this)
                                          {
                                             this.§<!l§ = param2;
                                             while(!(_loc4_ && param1))
                                             {
                                                this.§0",§ = param1;
                                                if(_loc5_ || this)
                                                {
                                                   if(!(_loc4_ && this))
                                                   {
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         break loop6;
                                                      }
                                                      break loop8;
                                                   }
                                                   continue loop9;
                                                   continue loop9;
                                                }
                                             }
                                             continue loop8;
                                          }
                                          continue loop7;
                                       }
                                    }
                                    continue loop6;
                                 }
                              }
                              else
                              {
                                 this.§#+§.writeFloat(0);
                              }
                              _loc3_++;
                           }
                        }
                        continue;
                        return;
                     }
                     break;
                  }
               })
               {
                  while(true)
                  {
                     this.§#+§ = new ByteArray();
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr75);
      }
      
      public function clone() : §6!r§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§6!r§ = new §6!r§(0,this.§<!l§);
         if(_loc3_ || _loc1_)
         {
            _loc1_.§#+§.length = this.§#+§.length;
            while(true)
            {
               _loc1_.§#+§.writeBytes(this.§#+§);
               loop1:
               while(true)
               {
                  _loc1_.§[!C§ = this.§[!C§.concat();
                  while(true)
                  {
                     _loc1_.§[!C§.fixed = true;
                     continue loop1;
                     addr51:
                     if(!(_loc2_ && this))
                     {
                        return _loc1_;
                     }
                  }
               }
            }
         }
         while(true)
         {
            _loc1_.§!s§ = this.§!s§.concat();
            §§goto(addr83);
         }
      }
      
      public function copyTo(param1:§6!r§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:* = 0;
         var _loc13_:* = NaN;
         var _loc9_:Vector.<Number> = param1.§!s§;
         if(!(_loc19_ && this))
         {
            §§push(this.§0",§);
            while(true)
            {
               §§push(§%d§);
               loop1:
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(int(§§pop()));
                     while(true)
                     {
                        _loc6_ = §§pop();
                        addr114:
                        while(true)
                        {
                           §§push(param2);
                           while(true)
                           {
                              §§push(§%d§);
                              if(_loc19_ && param3)
                              {
                                 break;
                              }
                              §§push(§§pop() * §§pop());
                              if(_loc19_)
                              {
                                 continue loop2;
                              }
                              §§push(int(§§pop()));
                              loop6:
                              while(true)
                              {
                                 _loc7_ = §§pop();
                                 loop7:
                                 while(true)
                                 {
                                    addr80:
                                    loop8:
                                    while(true)
                                    {
                                       if(!param5)
                                       {
                                          §§push(0);
                                          if(_loc18_)
                                          {
                                             addr160:
                                             _loc8_ = §§pop();
                                             if(_loc19_)
                                             {
                                             }
                                             while(true)
                                             {
                                                break loop8;
                                             }
                                             addr196:
                                             var _loc10_:ByteArray = param1.§#+§;
                                             if(_loc18_ || this)
                                             {
                                                §§push(this.§0",§);
                                                while(true)
                                                {
                                                   §§push(§""A§);
                                                   addr360:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      addr361:
                                                      while(true)
                                                      {
                                                         §§push(§ !L§);
                                                         addr362:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!_loc19_)
                                                            {
                                                               §§push(int(§§pop()));
                                                               loop17:
                                                               while(true)
                                                               {
                                                                  _loc6_ = §§pop();
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     §§push(param2);
                                                                     if(_loc18_ || param1)
                                                                     {
                                                                        continue loop17;
                                                                     }
                                                                     addr355:
                                                                     _loc7_ = §§pop();
                                                                     loop19:
                                                                     while(true)
                                                                     {
                                                                        if(_loc10_.length >= _loc7_ + _loc6_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              _loc10_.position = _loc7_;
                                                                              loop23:
                                                                              while(true)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    _loc10_.writeBytes(this.§#+§);
                                                                                    if(!(_loc19_ && param3))
                                                                                    {
                                                                                       if(_loc19_)
                                                                                       {
                                                                                          break loop23;
                                                                                       }
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                          continue loop18;
                                                                                       }
                                                                                       §§push(param4);
                                                                                       if(_loc18_)
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                          if(!(_loc19_ && param1))
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                if(!(_loc19_ && param2))
                                                                                                {
                                                                                                   addr229:
                                                                                                   §§pop();
                                                                                                   if(_loc19_ && param3)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   if(_loc18_)
                                                                                                   {
                                                                                                      if(!(_loc19_ && this))
                                                                                                      {
                                                                                                         if(true)
                                                                                                         {
                                                                                                            §§push(param3);
                                                                                                            §§push(1);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr369:
                                                                                                         }
                                                                                                         continue;
                                                                                                         break loop18;
                                                                                                      }
                                                                                                      continue loop19;
                                                                                                   }
                                                                                                   continue loop23;
                                                                                                }
                                                                                             }
                                                                                             addr374:
                                                                                             if(§§pop())
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr814);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr229);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 _loc11_ = param1.§[!C§;
                                                                                 if(_loc18_ || param1)
                                                                                 {
                                                                                    §§push(this.§0",§);
                                                                                    if(_loc18_ || param3)
                                                                                    {
                                                                                       addr475:
                                                                                       §§push(int(§§pop() * §5m§));
                                                                                       if(!_loc19_)
                                                                                       {
                                                                                          _loc6_ = §§pop();
                                                                                          if(!(_loc19_ && param3))
                                                                                          {
                                                                                             addr425:
                                                                                             §§push(param2);
                                                                                             if(_loc18_)
                                                                                             {
                                                                                                §§push(§5m§);
                                                                                                if(_loc18_ || this)
                                                                                                {
                                                                                                   if(_loc18_ || this)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(!(_loc19_ && param3))
                                                                                                      {
                                                                                                         §§push(int(§§pop()));
                                                                                                         if(_loc18_ || param2)
                                                                                                         {
                                                                                                            _loc7_ = §§pop();
                                                                                                            if(!_loc19_)
                                                                                                            {
                                                                                                               §§push(param3);
                                                                                                               if(_loc18_)
                                                                                                               {
                                                                                                                  if(_loc18_)
                                                                                                                  {
                                                                                                                     if(§§pop() == 1)
                                                                                                                     {
                                                                                                                        if(!(_loc19_ && param1))
                                                                                                                        {
                                                                                                                           §§push(0);
                                                                                                                           if(!(_loc19_ && param2))
                                                                                                                           {
                                                                                                                              _loc8_ = §§pop();
                                                                                                                              if(!_loc19_)
                                                                                                                              {
                                                                                                                                 if(false)
                                                                                                                                 {
                                                                                                                                    §§goto(addr425);
                                                                                                                                 }
                                                                                                                                 addr580:
                                                                                                                                 §§push(_loc8_);
                                                                                                                                 if(!_loc19_)
                                                                                                                                 {
                                                                                                                                    addr583:
                                                                                                                                    §§push(_loc6_);
                                                                                                                                    if(!_loc19_)
                                                                                                                                    {
                                                                                                                                       addr586:
                                                                                                                                       if(§§pop() < §§pop())
                                                                                                                                       {
                                                                                                                                          var _loc14_:*;
                                                                                                                                          _loc11_[_loc14_ = _loc7_++] = this.§[!C§[_loc8_];
                                                                                                                                          if(!_loc19_)
                                                                                                                                          {
                                                                                                                                             if(_loc18_)
                                                                                                                                             {
                                                                                                                                                _loc8_++;
                                                                                                                                                if(_loc18_ || param3)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr580);
                                                                                                                                                }
                                                                                                                                                addr810:
                                                                                                                                                if(_loc8_ < this.§0",§)
                                                                                                                                                {
                                                                                                                                                   if(this.§<!l§)
                                                                                                                                                   {
                                                                                                                                                      if(_loc18_)
                                                                                                                                                      {
                                                                                                                                                         addr557:
                                                                                                                                                         _loc13_ = Number(this.§[!C§[_loc12_ + 3]);
                                                                                                                                                         addr558:
                                                                                                                                                         §§push(param3);
                                                                                                                                                         if(_loc18_)
                                                                                                                                                         {
                                                                                                                                                            addr511:
                                                                                                                                                            §§push(§§pop() / _loc13_);
                                                                                                                                                            if(!_loc19_)
                                                                                                                                                            {
                                                                                                                                                               addr515:
                                                                                                                                                               if(!(_loc19_ && param2))
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr557);
                                                                                                                                                            }
                                                                                                                                                            _loc13_ = §§pop();
                                                                                                                                                            if(_loc18_ || this)
                                                                                                                                                            {
                                                                                                                                                               if(_loc18_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc19_)
                                                                                                                                                                  {
                                                                                                                                                                     addr540:
                                                                                                                                                                     if(false)
                                                                                                                                                                     {
                                                                                                                                                                        addr542:
                                                                                                                                                                        §§goto(addr810);
                                                                                                                                                                     }
                                                                                                                                                                     _loc11_[_loc14_ = _loc7_++] = this.§[!C§[_loc12_++] * _loc13_;
                                                                                                                                                                     if(!_loc19_)
                                                                                                                                                                     {
                                                                                                                                                                        addr626:
                                                                                                                                                                        var _loc15_:*;
                                                                                                                                                                        _loc11_[_loc15_ = _loc7_++] = this.§[!C§[_loc12_++] * _loc13_;
                                                                                                                                                                        if(_loc18_ || param3)
                                                                                                                                                                        {
                                                                                                                                                                           var _loc16_:*;
                                                                                                                                                                           _loc11_[_loc16_ = _loc7_++] = this.§[!C§[_loc12_++] * _loc13_;
                                                                                                                                                                           if(!(_loc19_ && this))
                                                                                                                                                                           {
                                                                                                                                                                              var _loc17_:*;
                                                                                                                                                                              _loc11_[_loc17_ = _loc7_++] = param3;
                                                                                                                                                                              if(!(_loc19_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc18_ || param3)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc19_ && param2))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc19_ && param2))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc18_ || param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr789:
                                                                                                                                                                                             _loc12_++;
                                                                                                                                                                                             if(_loc19_)
                                                                                                                                                                                             {
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr810);
                                                                                                                                                                                          }
                                                                                                                                                                                          _loc8_++;
                                                                                                                                                                                          if(_loc18_ || param3)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr810);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr814);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr786:
                                                                                                                                                                                       if(_loc18_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr789);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr810);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr785:
                                                                                                                                                                                    §§goto(addr786);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr784:
                                                                                                                                                                                 §§goto(addr785);
                                                                                                                                                                              }
                                                                                                                                                                              addr783:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr784);
                                                                                                                                                                        }
                                                                                                                                                                        addr757:
                                                                                                                                                                        _loc11_[_loc16_ = _loc7_++] = this.§[!C§[_loc12_++];
                                                                                                                                                                        if(_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           _loc11_[_loc17_ = _loc7_++] = param3;
                                                                                                                                                                           §§goto(addr783);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr784);
                                                                                                                                                                     }
                                                                                                                                                                     addr740:
                                                                                                                                                                     _loc11_[_loc15_ = _loc7_++] = this.§[!C§[_loc12_++];
                                                                                                                                                                     if(!_loc19_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr757);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr785);
                                                                                                                                                                  }
                                                                                                                                                                  addr587:
                                                                                                                                                                  §§goto(addr814);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr558);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr810);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr515);
                                                                                                                                                         addr550:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr789);
                                                                                                                                                   }
                                                                                                                                                   _loc11_[_loc14_ = _loc7_++] = this.§[!C§[_loc12_++];
                                                                                                                                                   if(_loc18_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr740);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr786);
                                                                                                                                                }
                                                                                                                                                addr506:
                                                                                                                                             }
                                                                                                                                             addr814:
                                                                                                                                             return;
                                                                                                                                          }
                                                                                                                                          §§goto(addr626);
                                                                                                                                       }
                                                                                                                                       §§goto(addr587);
                                                                                                                                    }
                                                                                                                                    §§goto(addr810);
                                                                                                                                 }
                                                                                                                                 addr589:
                                                                                                                                 _loc12_ = §§pop();
                                                                                                                                 if(_loc18_ || param2)
                                                                                                                                 {
                                                                                                                                    §§push(0);
                                                                                                                                    if(!(_loc19_ && param2))
                                                                                                                                    {
                                                                                                                                       if(!_loc18_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr589);
                                                                                                                                       }
                                                                                                                                       addr570:
                                                                                                                                       _loc8_ = §§pop();
                                                                                                                                       if(!(_loc19_ && param1))
                                                                                                                                       {
                                                                                                                                          §§goto(addr542);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr810);
                                                                                                                                 }
                                                                                                                                 §§goto(addr789);
                                                                                                                              }
                                                                                                                              §§goto(addr550);
                                                                                                                           }
                                                                                                                           §§goto(addr583);
                                                                                                                        }
                                                                                                                        §§goto(addr506);
                                                                                                                     }
                                                                                                                     §§goto(addr589);
                                                                                                                     §§push(0);
                                                                                                                  }
                                                                                                                  §§goto(addr475);
                                                                                                               }
                                                                                                               §§goto(addr511);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr810);
                                                                                                      }
                                                                                                      §§goto(addr557);
                                                                                                   }
                                                                                                   §§goto(addr475);
                                                                                                }
                                                                                                §§goto(addr586);
                                                                                             }
                                                                                             §§goto(addr570);
                                                                                          }
                                                                                          §§goto(addr540);
                                                                                       }
                                                                                       §§goto(addr589);
                                                                                    }
                                                                                    §§goto(addr583);
                                                                                 }
                                                                                 §§goto(addr540);
                                                                              }
                                                                           }
                                                                           addr265:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           _loc10_.length = _loc7_ + _loc6_;
                                                                           continue loop19;
                                                                        }
                                                                     }
                                                                  }
                                                                  addr370:
                                                                  §§push(§§pop() == §§pop());
                                                                  if(_loc18_)
                                                                  {
                                                                     §§push(!§§pop());
                                                                  }
                                                                  §§goto(addr374);
                                                               }
                                                            }
                                                            §§goto(addr369);
                                                         }
                                                      }
                                                   }
                                                   if(_loc19_ && this)
                                                   {
                                                      continue;
                                                   }
                                                   §§push(§""A§);
                                                   if(!(_loc19_ && param1))
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc18_ || param1)
                                                      {
                                                         §§push(§ !L§);
                                                         if(!_loc19_)
                                                         {
                                                            if(!(_loc19_ && param2))
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!(_loc19_ && param2))
                                                               {
                                                                  addr347:
                                                                  if(!(_loc19_ && param1))
                                                                  {
                                                                     §§goto(addr355);
                                                                     §§push(int(§§pop()));
                                                                  }
                                                                  §§goto(addr361);
                                                               }
                                                               §§goto(addr369);
                                                            }
                                                            §§goto(addr362);
                                                         }
                                                         §§goto(addr370);
                                                      }
                                                      §§goto(addr347);
                                                   }
                                                   §§goto(addr360);
                                                }
                                             }
                                             §§goto(addr289);
                                             addr193:
                                          }
                                          addr83:
                                       }
                                       while(!_loc19_)
                                       {
                                          param5.transformVectors(this.§!s§,this.§9!j§);
                                          continue loop6;
                                       }
                                       continue loop7;
                                    }
                                    addr195:
                                    §§push(_loc6_);
                                    while(true)
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          _loc9_[_loc14_ = _loc7_++] = this.§!s§[_loc8_];
                                          while(true)
                                          {
                                             if(_loc18_ || param1)
                                             {
                                                addr185:
                                                while(true)
                                                {
                                                   _loc8_++;
                                                   if(!(_loc19_ && param1))
                                                   {
                                                      §§goto(addr193);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr196);
                                                   }
                                                }
                                                addr185:
                                             }
                                             §§goto(addr196);
                                          }
                                          addr177:
                                       }
                                       §§goto(addr196);
                                    }
                                 }
                              }
                           }
                           continue loop1;
                        }
                     }
                  }
               }
               if(_loc19_ && param3)
               {
                  continue;
               }
               _loc8_ = §§pop();
               if(!_loc19_)
               {
                  if(_loc18_ || param2)
                  {
                     if(_loc18_)
                     {
                        loop11:
                        while(true)
                        {
                           if(false)
                           {
                              §§goto(addr80);
                           }
                           else
                           {
                              while(true)
                              {
                                 §§push(_loc8_);
                                 if(!_loc18_)
                                 {
                                    break loop11;
                                 }
                                 §§push(_loc6_);
                                 if(_loc18_)
                                 {
                                    if(§§pop() >= §§pop())
                                    {
                                       if(_loc19_ && param3)
                                       {
                                          §§goto(addr185);
                                       }
                                       else
                                       {
                                          addr156:
                                       }
                                    }
                                    else
                                    {
                                       _loc9_[_loc14_ = _loc7_++] = this.§9!j§[_loc8_];
                                       if(_loc18_ || this)
                                       {
                                          if(_loc18_)
                                          {
                                             _loc8_++;
                                             if(!_loc19_)
                                             {
                                                continue;
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr156);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr177);
                                       }
                                    }
                                    §§goto(addr196);
                                 }
                              }
                              §§goto(addr196);
                           }
                        }
                        §§goto(addr160);
                        addr78:
                     }
                     §§goto(addr114);
                  }
                  §§goto(addr83);
               }
               §§goto(addr91);
            }
         }
         §§goto(addr78);
      }
      
      public function append(param1:§6!r§) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:int = this.§#+§.length;
         if(_loc9_)
         {
            this.§#+§.length += param1.§#+§.length;
         }
         loop0:
         while(true)
         {
            this.§#+§.position = _loc2_;
            loop1:
            while(true)
            {
               addr40:
               while(true)
               {
                  this.§#+§.writeBytes(param1.§#+§);
                  continue loop1;
               }
               continue loop0;
            }
         }
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         §§push(param1);
         if(_loc8_)
         {
            §§push(int(§§pop() * §%d§));
         }
         var _loc5_:* = §§pop();
         var _loc6_:*;
         this.§!s§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§!s§[_loc7_ = _loc5_++] = param3;
         if(_loc8_)
         {
            this.§!s§[_loc5_] = param4;
         }
      }
      
      public function §'&§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param1);
         if(_loc7_)
         {
            §§push(int(§§pop() * §%d§));
         }
         var _loc4_:* = §§pop();
         var _loc5_:*;
         this.§!s§[_loc5_ = _loc4_++] = param2;
         if(!(_loc6_ && param1))
         {
            this.§!s§[_loc4_] = param3;
         }
      }
      
      public function getPosition(param1:int, param2:Vector3D) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(_loc4_)
         {
            §§push(int(§§pop() * §%d§));
         }
         var _loc3_:* = §§pop();
         if(!(_loc5_ && param2))
         {
            param2.x = this.§!s§[_loc3_++];
            while(true)
            {
               param2.y = this.§!s§[_loc3_++];
               loop1:
               while(_loc4_ || param1)
               {
                  while(true)
                  {
                     param2.z = this.§!s§[_loc3_];
                     if(!_loc5_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr72);
      }
      
      public function §%k§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!(_loc9_ && this))
         {
            if(this.§<!l§)
            {
               addr26:
               §§push(param3);
               if(!_loc9_)
               {
                  §§push(Number(§§pop()));
                  if(!_loc9_)
                  {
                     addr42:
                     §§push(Number(§§pop()));
                  }
               }
            }
            else
            {
               §§push(Number(1));
               if(!(_loc9_ && param3))
               {
                  §§goto(addr42);
               }
            }
            var _loc4_:*;
            §§push(_loc4_ = §§pop());
            if(!_loc9_)
            {
               §§push(§§pop() / 255);
               if(_loc8_ || this)
               {
                  §§push(Number(§§pop()));
                  if(_loc8_ || param1)
                  {
                     addr74:
                     _loc4_ = §§pop();
                     §§push(§@!a§.§4N§(param2) * _loc4_);
                     if(_loc8_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
               }
               var _loc5_:* = §§pop();
               §§push(§@!a§.§"g§(param2) * _loc4_);
               if(!(_loc9_ && param1))
               {
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               §§push(§@!a§.§?"7§(param2) * _loc4_);
               if(!(_loc9_ && param2))
               {
                  §§push(Number(§§pop()));
               }
               var _loc7_:* = §§pop();
               if(_loc8_)
               {
                  this.§;"5§(param1,1,_loc5_,_loc6_,_loc7_,param3);
               }
               return;
            }
            §§goto(addr74);
         }
         §§goto(addr26);
      }
      
      private function §;"5§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         §§push(param1);
         if(!_loc13_)
         {
            §§push(int(§§pop() * §5m§));
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
               this.§[!C§[_loc9_ = _loc7_++] = param3;
               if(!(_loc13_ && this))
               {
                  var _loc10_:*;
                  this.§[!C§[_loc10_ = _loc7_++] = param4;
                  if(_loc14_ || param1)
                  {
                     var _loc11_:*;
                     this.§[!C§[_loc11_ = _loc7_++] = param5;
                     if(_loc14_)
                     {
                        var _loc12_:*;
                        this.§[!C§[_loc12_ = _loc7_++] = param6;
                     }
                  }
               }
               if(!(_loc14_ || this))
               {
                  break;
               }
               §§push(_loc8_);
               if(_loc14_ || param2)
               {
                  §§push(§§pop() - 1);
                  if(_loc14_)
                  {
                     continue loop0;
                  }
                  continue;
               }
               continue loop0;
            }
            addr141:
            return;
         }
      }
      
      private function §4"E§(param1:int, param2:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(param1);
         if(!_loc7_)
         {
            §§push(int(§§pop() * §5m§));
         }
         var _loc3_:* = §§pop();
         var _loc4_:*;
         this.§[!C§[_loc4_ = _loc3_++] = this.§[!C§[_loc4_] * param2;
         var _loc5_:*;
         this.§[!C§[_loc5_ = _loc3_++] = this.§[!C§[_loc5_] * param2;
         var _loc6_:*;
         this.§[!C§[_loc6_ = _loc3_++] = this.§[!C§[_loc6_] * param2;
         if(!_loc7_)
         {
            this.§[!C§[_loc3_] *= param2;
         }
      }
      
      public function §[w§(param1:int) : uint
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:* = NaN;
         §§push(param1);
         if(!(_loc8_ && _loc3_))
         {
            §§push(int(§§pop() * §5m§));
         }
         var _loc2_:* = §§pop();
         if(_loc7_ || _loc2_)
         {
            if(this.§<!l§)
            {
               addr44:
               §§push(Number(this.§[!C§[_loc2_ + 3]));
               if(_loc7_)
               {
                  addr58:
                  §§push(Number(§§pop()));
               }
            }
            else
            {
               §§push(Number(1));
               if(_loc7_)
               {
                  §§goto(addr58);
               }
            }
            var _loc3_:* = §§pop();
            if(_loc7_ || _loc3_)
            {
               §§push(_loc3_);
               loop0:
               while(true)
               {
                  if(§§pop() != 0)
                  {
                     loop1:
                     while(true)
                     {
                        §§push(255);
                        if(!(_loc8_ && param1))
                        {
                           §§push(§§pop() / _loc3_);
                           loop2:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              loop3:
                              while(true)
                              {
                                 _loc3_ = §§pop();
                                 loop4:
                                 while(!(_loc8_ && _loc3_))
                                 {
                                    §§push(this.§[!C§[_loc2_] * _loc3_);
                                    if(!_loc8_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    while(true)
                                    {
                                       _loc4_ = §§pop();
                                       addr174:
                                       while(true)
                                       {
                                          §§push(this.§[!C§[_loc2_ + 1] * _loc3_);
                                          continue loop2;
                                       }
                                       addr115:
                                       if(!(_loc8_ && param1))
                                       {
                                          addr122:
                                          _loc6_ = §§pop();
                                          if(_loc8_ && _loc2_)
                                          {
                                             while(true)
                                             {
                                                if(_loc7_)
                                                {
                                                   if(_loc8_)
                                                   {
                                                      continue loop4;
                                                   }
                                                   if(_loc8_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(this.§[!C§[_loc2_ + 2] * _loc3_);
                                                   if(!(_loc8_ && this))
                                                   {
                                                      if(_loc8_ && this)
                                                      {
                                                         continue loop3;
                                                      }
                                                      §§push(Number(§§pop()));
                                                   }
                                                   if(_loc8_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   if(_loc8_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   §§goto(addr115);
                                                }
                                                else
                                                {
                                                   §§goto(addr174);
                                                }
                                             }
                                             while(true)
                                             {
                                                continue loop1;
                                             }
                                             addr156:
                                             addr211:
                                          }
                                          return §@!a§.§,!a§(_loc4_,_loc5_,_loc6_);
                                       }
                                    }
                                 }
                                 addr209:
                                 break loop1;
                              }
                           }
                        }
                        break;
                     }
                     return §§pop();
                  }
                  §§goto(addr209);
               }
            }
            §§goto(addr211);
         }
         §§goto(addr44);
      }
      
      public function §24§(param1:int, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:int = 0;
         if(!_loc5_)
         {
            §§push(param2);
            if(!(_loc5_ && _loc3_))
            {
               if(§§pop() < 0.001)
               {
                  while(true)
                  {
                     §§push(0.001);
                     if(!(_loc5_ && param1))
                     {
                        while(true)
                        {
                           §§push(Number(§§pop()));
                        }
                        addr124:
                     }
                     addr125:
                     while(true)
                     {
                        param2 = §§pop();
                        addr126:
                        while(true)
                        {
                        }
                     }
                     addr33:
                     if(_loc5_ && param2)
                     {
                        continue;
                     }
                     §§goto(addr21);
                  }
               }
               loop3:
               while(true)
               {
                  if(this.§<!l§)
                  {
                     if(_loc4_)
                     {
                        this.§%k§(param1,this.§[w§(param1),param2);
                        break;
                     }
                     break;
                  }
                  §§push(param1);
                  if(!_loc5_)
                  {
                     §§push(§§pop() * §5m§);
                     if(_loc4_ || _loc3_)
                     {
                        if(!_loc5_)
                        {
                           addr71:
                           _loc3_ = §§pop() + 3;
                           §§goto(addr70);
                        }
                        §§goto(addr125);
                     }
                     addr70:
                     while(true)
                     {
                        if(_loc5_ && this)
                        {
                           break loop3;
                        }
                        if(_loc4_)
                        {
                           continue;
                        }
                        continue loop3;
                     }
                     §§goto(addr21);
                  }
                  §§goto(addr71);
               }
               addr21:
               return;
            }
            §§goto(addr124);
         }
         §§goto(addr81);
      }
      
      public function §&!5§(param1:int) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         if(!(_loc4_ && param1))
         {
            §§push(§§pop() * §5m§);
            if(_loc3_)
            {
               §§push(§§pop() + 3);
            }
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         return this.§[!C§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1);
         if(!_loc5_)
         {
            §§push(int(§§pop() * §""A§));
         }
         var _loc4_:* = §§pop();
         if(!_loc5_)
         {
            this.§#+§.position = _loc4_ * § !L§;
            do
            {
               this.§#+§.writeFloat(param2);
               do
               {
                  this.§#+§.writeFloat(param3);
               }
               while(_loc5_);
               
            }
            while(!_loc6_);
            
         }
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(!_loc5_)
         {
            §§push(int(§§pop() * §""A§));
         }
         var _loc3_:* = §§pop();
         if(_loc4_)
         {
            this.§#+§.position = _loc3_ * § !L§;
         }
         do
         {
            param2.x = this.§#+§.readFloat();
            do
            {
               param2.y = this.§#+§.readFloat();
            }
            while(_loc5_ && param2);
            
         }
         while(!(_loc4_ || this));
         
      }
      
      public function §<">§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         §§push(param1);
         if(_loc8_)
         {
            §§push(int(§§pop() * §%d§));
         }
         var _loc5_:* = §§pop();
         var _loc6_:*;
         this.§!s§[_loc6_ = _loc5_++] = this.§!s§[_loc6_] + param2;
         var _loc7_:*;
         this.§!s§[_loc7_ = _loc5_++] = this.§!s§[_loc7_] + param3;
         if(!(_loc9_ && this))
         {
            this.§!s§[_loc5_] += param4;
         }
      }
      
      public function §?"%§(param1:int, param2:Matrix3D) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(_loc5_ || this)
         {
            §§push(int(§§pop() * §%d§));
         }
         var _loc3_:* = §§pop();
         if(!_loc4_)
         {
            this.§9!j§[0] = this.§!s§[_loc3_];
            loop0:
            while(true)
            {
               this.§9!j§[1] = this.§!s§[_loc3_ + 1];
               while(true)
               {
                  this.§9!j§[2] = this.§!s§[_loc3_ + 2];
                  addr126:
                  addr92:
                  while(true)
                  {
                     param2.transformVectors(this.§9!j§,this.§9!j§);
                     continue loop0;
                  }
                  loop4:
                  for(; _loc5_ || param2; if(!(_loc4_ && param2))
                  {
                     if(_loc5_)
                     {
                        return;
                        addr58:
                     }
                     continue loop0;
                  })
                  {
                     this.§!s§[_loc3_ + 1] = this.§9!j§[1];
                     while(_loc5_)
                     {
                        this.§!s§[_loc3_ + 2] = this.§9!j§[2];
                        if(_loc5_)
                        {
                           continue loop4;
                        }
                     }
                     §§goto(addr126);
                  }
               }
            }
         }
         §§goto(addr58);
      }
      
      public function §7x§(param1:uint, param2:Number = 1.0) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            §§push(param2);
            if(!(_loc7_ && param2))
            {
               if(§§pop() < 0.001)
               {
                  if(_loc8_ || param2)
                  {
                     §§push(0.001);
                     if(_loc8_ || this)
                     {
                        addr44:
                        §§push(Number(§§pop()));
                        if(_loc8_)
                        {
                           addr47:
                           param2 = §§pop();
                           if(!_loc7_)
                           {
                              addr50:
                              if(this.§<!l§)
                              {
                                 addr53:
                                 §§push(param2);
                                 if(!_loc7_)
                                 {
                                    addr56:
                                    §§push(Number(§§pop()));
                                    if(_loc8_)
                                    {
                                       addr59:
                                    }
                                    addr65:
                                    var _loc3_:* = Number(§§pop());
                                    addr64:
                                    if(_loc8_ || this)
                                    {
                                       §§push(_loc3_);
                                       if(_loc8_)
                                       {
                                          §§push(§§pop() / 255);
                                          if(_loc8_)
                                          {
                                             §§push(Number(§§pop()));
                                             if(!(_loc7_ && param2))
                                             {
                                                addr98:
                                                _loc3_ = §§pop();
                                                §§push(§@!a§.§4N§(param1) * _loc3_);
                                                if(!_loc7_)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                          }
                                          var _loc4_:* = §§pop();
                                          §§push(§@!a§.§"g§(param1) * _loc3_);
                                          if(_loc8_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc5_:* = §§pop();
                                          §§push(§@!a§.§?"7§(param1) * _loc3_);
                                          if(!_loc7_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc6_:* = §§pop();
                                          if(!(_loc7_ && this))
                                          {
                                             this.§;"5§(0,this.§0",§,_loc4_,_loc5_,_loc6_,param2);
                                          }
                                          return;
                                       }
                                    }
                                    §§goto(addr98);
                                 }
                                 §§goto(addr59);
                              }
                              else
                              {
                                 §§push(Number(1));
                                 if(_loc8_)
                                 {
                                    §§goto(addr64);
                                 }
                              }
                              §§goto(addr65);
                           }
                           §§goto(addr53);
                        }
                        §§goto(addr56);
                     }
                     §§goto(addr47);
                  }
               }
               §§goto(addr50);
            }
            §§goto(addr44);
         }
         §§goto(addr50);
      }
      
      public function §9!9§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         if(!_loc13_)
         {
            §§push(param6);
            if(!(_loc13_ && param3))
            {
               if(§§pop() < 0.001)
               {
                  if(!_loc13_)
                  {
                     §§push(0.001);
                     if(!(_loc13_ && param1))
                     {
                        §§push(Number(§§pop()));
                        if(_loc14_ || this)
                        {
                           addr47:
                           param6 = §§pop();
                           §§goto(addr48);
                        }
                        §§goto(addr53);
                     }
                  }
                  §§goto(addr48);
               }
               addr48:
               §§push(param1);
               if(_loc14_)
               {
                  addr53:
                  §§push(int(§§pop() * §5m§));
               }
               var _loc7_:* = §§pop();
               var _loc8_:int = 0;
               while(_loc8_ < param2)
               {
                  var _loc9_:*;
                  this.§[!C§[_loc9_ = _loc7_++] = param3;
                  if(_loc14_ || param1)
                  {
                     var _loc10_:*;
                     this.§[!C§[_loc10_ = _loc7_++] = param4;
                     if(!(_loc13_ && param3))
                     {
                        var _loc11_:*;
                        this.§[!C§[_loc11_ = _loc7_++] = param5;
                        if(!(_loc13_ && param1))
                        {
                           var _loc12_:*;
                           this.§[!C§[_loc12_ = _loc7_++] = param6;
                        }
                     }
                  }
                  if(_loc14_ || param3)
                  {
                     _loc8_++;
                     if(!_loc14_)
                     {
                        break;
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr47);
      }
      
      public function §5!w§(param1:int, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = NaN;
         if(_loc6_)
         {
            §§push(param2);
            if(!_loc5_)
            {
               if(§§pop() < 0.001)
               {
                  if(_loc6_)
                  {
                     addr28:
                     §§push(0.001);
                     if(_loc6_ || _loc3_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc6_ || _loc3_)
                        {
                           param2 = §§pop();
                           if(_loc6_)
                           {
                              addr47:
                              §§push(param2);
                              if(_loc6_ || _loc3_)
                              {
                              }
                              addr71:
                              var _loc3_:int = §§pop();
                              addr70:
                              if(!_loc5_)
                              {
                                 if(this.§<!l§)
                                 {
                                    loop3:
                                    while(true)
                                    {
                                       §§push(Number(this.§[!C§[_loc3_ + 3]));
                                       loop1:
                                       while(true)
                                       {
                                          _loc4_ = §§pop();
                                          loop2:
                                          while(true)
                                          {
                                             §§push(param2);
                                             if(!_loc6_)
                                             {
                                                continue loop1;
                                             }
                                             §§push(§§pop() / _loc4_);
                                             if(!_loc5_)
                                             {
                                                continue loop1;
                                             }
                                             addr209:
                                             addr208:
                                             _loc4_ = §§pop();
                                             while(true)
                                             {
                                                if(!(_loc5_ && param1))
                                                {
                                                   break loop2;
                                                }
                                                continue loop2;
                                             }
                                          }
                                          addr216:
                                          while(true)
                                          {
                                             this.§[!C§[_loc3_] *= _loc4_;
                                             addr191:
                                             while(true)
                                             {
                                                this.§[!C§[_loc3_ + 1] *= _loc4_;
                                                addr179:
                                                loop7:
                                                while(true)
                                                {
                                                   this.§[!C§[_loc3_ + 2] *= _loc4_;
                                                   addr161:
                                                   while(true)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         continue loop3;
                                                      }
                                                      this.§[!C§[_loc3_ + 3] = param2;
                                                      continue loop7;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 else
                                 {
                                    this.§[!C§[_loc3_ + 3] *= param2;
                                    if(!(_loc5_ && this))
                                    {
                                       if(!_loc6_)
                                       {
                                          §§goto(addr161);
                                       }
                                       §§goto(addr75);
                                    }
                                 }
                                 while(true)
                                 {
                                    if(_loc6_ || _loc3_)
                                    {
                                       if(_loc6_ || this)
                                       {
                                          if(_loc6_ || param2)
                                          {
                                             break;
                                          }
                                          §§goto(addr209);
                                       }
                                       §§goto(addr191);
                                    }
                                    §§goto(addr179);
                                 }
                                 addr75:
                                 return;
                              }
                              §§goto(addr216);
                           }
                           addr65:
                           §§push(param1);
                           if(_loc6_)
                           {
                              §§goto(addr70);
                              §§push(§§pop() * §5m§);
                           }
                           §§goto(addr71);
                        }
                        if(§§pop() == 1)
                        {
                           if(_loc6_ || param2)
                           {
                              return;
                           }
                        }
                     }
                     §§goto(addr71);
                  }
                  §§goto(addr65);
               }
            }
            §§goto(addr47);
         }
         §§goto(addr28);
      }
      
      public function §1?§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(!_loc8_)
         {
            §§push(param1);
            while(true)
            {
               if(§§pop() != this.§<!l§)
               {
                  loop1:
                  while(true)
                  {
                     §§push(param2);
                     if(_loc8_)
                     {
                        break;
                     }
                     if(§§pop())
                     {
                        while(_loc9_)
                        {
                           §§push(this.§0",§);
                           if(_loc9_ || param2)
                           {
                              §§push(int(§§pop() * §5m§));
                           }
                           loop3:
                           while(true)
                           {
                              _loc3_ = §§pop();
                              addr266:
                              while(true)
                              {
                                 if(_loc9_)
                                 {
                                    continue loop3;
                                 }
                                 continue loop1;
                              }
                           }
                        }
                        §§goto(addr273);
                     }
                     §§goto(addr56);
                  }
                  continue;
               }
            }
         }
         addr273:
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§<!l§;
      }
      
      public function get §[">§() : int
      {
         return this.§0",§;
      }
      
      public function set §[">§(param1:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(!(_loc6_ && this))
         {
            §§push(param1);
            if(!(_loc6_ && this))
            {
               §§push(§""A§);
               loop0:
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc6_)
                  {
                     addr509:
                     §§push(§§pop() * § !L§);
                     if(!(_loc6_ && _loc2_))
                     {
                        addr504:
                        §§push(§§pop() - this.§#+§.length);
                     }
                     §§push(int(§§pop()));
                     while(true)
                     {
                        _loc2_ = §§pop();
                        addr510:
                        while(true)
                        {
                           §§push(int(this.§#+§.length));
                           addr471:
                           while(true)
                           {
                              _loc4_ = §§pop();
                              addr472:
                              loop4:
                              while(true)
                              {
                                 this.§#+§.length += _loc2_;
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    continue loop0;
                                    addr426:
                                    if(!(_loc5_ || _loc2_))
                                    {
                                       continue;
                                    }
                                    if(_loc6_)
                                    {
                                       continue loop4;
                                    }
                                    loop45:
                                    while(true)
                                    {
                                       §§push(_loc3_);
                                       loop46:
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          loop47:
                                          while(true)
                                          {
                                             if(§§pop() >= §§pop() / § !L§)
                                             {
                                                while(true)
                                                {
                                                   loop9:
                                                   while(true)
                                                   {
                                                      this.§[!C§.fixed = false;
                                                      loop10:
                                                      while(true)
                                                      {
                                                         §§push(param1);
                                                         if(!(_loc6_ && param1))
                                                         {
                                                            §§push(§5m§);
                                                            while(true)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               addr373:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() - this.§[!C§.length);
                                                                  addr377:
                                                                  while(true)
                                                                  {
                                                                     §§push(int(§§pop()));
                                                                  }
                                                               }
                                                            }
                                                            addr372:
                                                         }
                                                         loop14:
                                                         while(true)
                                                         {
                                                            _loc2_ = §§pop();
                                                            loop15:
                                                            while(_loc5_ || _loc3_)
                                                            {
                                                               §§push(0);
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  _loc3_ = §§pop();
                                                                  loop17:
                                                                  while(true)
                                                                  {
                                                                     loop18:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc3_);
                                                                        loop19:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc2_);
                                                                           loop20:
                                                                           while(true)
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 if(§§pop() >= §§pop())
                                                                                 {
                                                                                    loop21:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc2_);
                                                                                       loop22:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(int(§§pop()));
                                                                                          loop23:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc3_ = §§pop();
                                                                                             loop24:
                                                                                             while(_loc5_)
                                                                                             {
                                                                                                loop25:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc3_);
                                                                                                   loop26:
                                                                                                   while(!(_loc6_ && param1))
                                                                                                   {
                                                                                                      §§push(0);
                                                                                                      loop27:
                                                                                                      for(; !_loc6_; while(true)
                                                                                                      {
                                                                                                         if(_loc6_ && this)
                                                                                                         {
                                                                                                            continue loop27;
                                                                                                         }
                                                                                                         if(_loc6_ && _loc3_)
                                                                                                         {
                                                                                                            continue loop47;
                                                                                                         }
                                                                                                         if(§§pop() >= §§pop())
                                                                                                         {
                                                                                                            if(!(_loc6_ && _loc2_))
                                                                                                            {
                                                                                                               if(_loc6_ && this)
                                                                                                               {
                                                                                                                  continue loop9;
                                                                                                               }
                                                                                                               §§push(_loc2_);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr209);
                                                                                                            }
                                                                                                            §§goto(addr191);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            this.§!s§.push(0);
                                                                                                            §§goto(addr229);
                                                                                                         }
                                                                                                         §§goto(addr76);
                                                                                                      },continue loop47)
                                                                                                      {
                                                                                                         if(§§pop() >= §§pop())
                                                                                                         {
                                                                                                            loop28:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               this.§[!C§.fixed = true;
                                                                                                               while(_loc5_ || this)
                                                                                                               {
                                                                                                                  this.§!s§.fixed = false;
                                                                                                                  loop30:
                                                                                                                  for(; !_loc6_; if(_loc6_ && param1)
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  },this.§!s§.fixed = true,§§goto(addr114))
                                                                                                                  {
                                                                                                                     §§push(param1);
                                                                                                                     loop31:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§%d§);
                                                                                                                        loop32:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(_loc5_ || param1)
                                                                                                                           {
                                                                                                                              if(_loc5_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() - this.§!s§.length);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr373);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           if(!(_loc5_ || _loc2_))
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§push(int(§§pop()));
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc2_ = §§pop();
                                                                                                                              addr284:
                                                                                                                              while(!(_loc6_ && _loc2_))
                                                                                                                              {
                                                                                                                                 §§push(0);
                                                                                                                                 loop35:
                                                                                                                                 while(_loc5_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    _loc3_ = §§pop();
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       addr149:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc3_);
                                                                                                                                          addr151:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc5_)
                                                                                                                                             {
                                                                                                                                                if(_loc6_ && param1)
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                §§push(_loc2_);
                                                                                                                                                continue loop27;
                                                                                                                                             }
                                                                                                                                             continue loop35;
                                                                                                                                          }
                                                                                                                                          continue loop22;
                                                                                                                                          addr221:
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 continue loop14;
                                                                                                                              }
                                                                                                                              addr201:
                                                                                                                              continue loop24;
                                                                                                                              loop41:
                                                                                                                              while(_loc5_ || _loc2_)
                                                                                                                              {
                                                                                                                                 _loc3_ = §§pop();
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    addr62:
                                                                                                                                    loop43:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc3_);
                                                                                                                                       if(_loc6_)
                                                                                                                                       {
                                                                                                                                          continue loop41;
                                                                                                                                       }
                                                                                                                                       if(_loc6_)
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!_loc6_)
                                                                                                                                             {
                                                                                                                                                continue loop16;
                                                                                                                                             }
                                                                                                                                             continue loop23;
                                                                                                                                          }
                                                                                                                                          continue loop16;
                                                                                                                                          addr191:
                                                                                                                                       }
                                                                                                                                       if(_loc5_)
                                                                                                                                       {
                                                                                                                                          if(!_loc5_)
                                                                                                                                          {
                                                                                                                                             continue loop31;
                                                                                                                                          }
                                                                                                                                          if(!_loc5_)
                                                                                                                                          {
                                                                                                                                             continue loop26;
                                                                                                                                          }
                                                                                                                                          if(_loc6_)
                                                                                                                                          {
                                                                                                                                             continue loop46;
                                                                                                                                          }
                                                                                                                                          §§push(0);
                                                                                                                                          if(_loc6_ && _loc3_)
                                                                                                                                          {
                                                                                                                                             continue loop27;
                                                                                                                                          }
                                                                                                                                          if(!(_loc5_ || _loc3_))
                                                                                                                                          {
                                                                                                                                             continue loop32;
                                                                                                                                          }
                                                                                                                                          if(§§pop() >= §§pop())
                                                                                                                                          {
                                                                                                                                             if(_loc6_)
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc6_)
                                                                                                                                                   {
                                                                                                                                                      continue loop43;
                                                                                                                                                   }
                                                                                                                                                   if(!_loc6_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc5_)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc5_ || _loc2_))
                                                                                                                                                         {
                                                                                                                                                            _loc3_++;
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            addr357:
                                                                                                                                                         }
                                                                                                                                                         if(!_loc5_)
                                                                                                                                                         {
                                                                                                                                                            addr409:
                                                                                                                                                            _loc3_++;
                                                                                                                                                         }
                                                                                                                                                         continue;
                                                                                                                                                         continue loop45;
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      addr334:
                                                                                                                                                      _loc3_++;
                                                                                                                                                      continue loop25;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr284);
                                                                                                                                                }
                                                                                                                                                continue loop18;
                                                                                                                                                addr114:
                                                                                                                                             }
                                                                                                                                             if(_loc5_)
                                                                                                                                             {
                                                                                                                                                if(_loc5_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   continue loop30;
                                                                                                                                                }
                                                                                                                                                addr212:
                                                                                                                                                if(_loc6_)
                                                                                                                                                {
                                                                                                                                                   continue loop21;
                                                                                                                                                }
                                                                                                                                                if(!(_loc5_ || this))
                                                                                                                                                {
                                                                                                                                                   continue loop18;
                                                                                                                                                }
                                                                                                                                                §§goto(addr221);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                addr146:
                                                                                                                                                if(!_loc6_)
                                                                                                                                                {
                                                                                                                                                   _loc3_++;
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr257);
                                                                                                                                             §§goto(addr239);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             this.§!s§.pop();
                                                                                                                                          }
                                                                                                                                          §§goto(addr146);
                                                                                                                                       }
                                                                                                                                       §§goto(addr151);
                                                                                                                                    }
                                                                                                                                    continue loop28;
                                                                                                                                    if(!(_loc5_ || _loc3_))
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    if(_loc5_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       if(_loc5_)
                                                                                                                                       {
                                                                                                                                          return;
                                                                                                                                       }
                                                                                                                                       continue loop45;
                                                                                                                                    }
                                                                                                                                    addr229:
                                                                                                                                    if(_loc6_ && _loc2_)
                                                                                                                                    {
                                                                                                                                       continue loop25;
                                                                                                                                    }
                                                                                                                                    _loc3_++;
                                                                                                                                    §§goto(addr212);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr377);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop15;
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            this.§[!C§.pop();
                                                                                                            §§goto(addr334);
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop20;
                                                                                                   }
                                                                                                   continue loop19;
                                                                                                }
                                                                                             }
                                                                                             continue loop17;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    this.§[!C§.push(0);
                                                                                 }
                                                                                 §§goto(addr357);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr372);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            continue loop10;
                                                         }
                                                      }
                                                   }
                                                }
                                                addr393:
                                             }
                                             else
                                             {
                                                this.§#+§.writeFloat(0);
                                             }
                                             §§goto(addr409);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     addr509:
                  }
                  §§goto(addr504);
               }
            }
            §§goto(addr509);
         }
         §§goto(addr455);
      }
      
      public function get §3"8§() : ByteArray
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§#+§.position = 0;
         }
         return this.§#+§;
      }
      
      public function get §2!l§() : Vector.<Number>
      {
         return this.§[!C§;
      }
      
      public function get §7'§() : Vector.<Number>
      {
         return this.§!s§;
      }
   }
}
