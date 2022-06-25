package §`s§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §0p§
   {
      
      public static const §0!Q§:int = 4;
      
      public static const §1!0§:int = 2;
      
      public static const §<h§:int = 3;
      
      public static const §?c§:int = 4;
      
      public static const §[!w§:int = 0;
      
      public static const §"!<§:int = 0;
      
      public static const §;Z§:int = 0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §0p§))
         {
            §0!Q§ = 4;
            loop0:
            while(true)
            {
               §1!0§ = 2;
               while(true)
               {
                  §<h§ = 3;
                  addr56:
                  if(_loc1_ || _loc2_)
                  {
                     if(!_loc2_)
                     {
                        §;Z§ = 0;
                        addr65:
                        if(!(_loc2_ && _loc2_))
                        {
                           return;
                        }
                        loop5:
                        while(true)
                        {
                           if(_loc1_)
                           {
                              §§goto(addr56);
                           }
                           else
                           {
                              while(_loc1_ || _loc1_)
                              {
                                 §"!<§ = 0;
                                 continue loop5;
                              }
                              while(!_loc2_)
                              {
                                 §[!w§ = 0;
                                 §§goto(addr80);
                              }
                              addr80:
                              while(true)
                              {
                                 §?c§ = 4;
                                 §§goto(addr92);
                              }
                              addr92:
                              addr99:
                           }
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr99);
      }
      
      private var §+!F§:ByteArray;
      
      private var §=!2§:Vector.<Number>;
      
      private var § !U§:Vector.<Number>;
      
      private var §<!h§:Boolean;
      
      private var § !l§:int;
      
      private var §"!y§:Vector.<Number>;
      
      public function §0p§(param1:int, param2:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§"!y§ = new Vector.<Number>(12,true);
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  this.§+!F§ = new ByteArray();
                  addr63:
                  loop2:
                  while(_loc4_)
                  {
                     while(true)
                     {
                        this.§+!F§.endian = Endian.LITTLE_ENDIAN;
                        continue loop2;
                     }
                  }
                  continue loop0;
                  addr42:
                  if(_loc5_ && param2)
                  {
                     continue;
                  }
                  if(false)
                  {
                     §§goto(addr51);
                  }
                  var _loc3_:int = 0;
                  loop5:
                  while(true)
                  {
                     if(_loc3_ >= param1 * §1!0§)
                     {
                        loop6:
                        while(true)
                        {
                           this.§=!2§ = new Vector.<Number>(param1 * §0!Q§,true);
                           loop7:
                           while(true)
                           {
                              this.§ !U§ = new Vector.<Number>(param1 * §<h§,true);
                              loop8:
                              while(true)
                              {
                                 if(!(_loc5_ && param2))
                                 {
                                    this.§<!h§ = param2;
                                    while(_loc4_)
                                    {
                                       this.§ !l§ = param1;
                                       if(!(_loc5_ && param1))
                                       {
                                          if(!_loc5_)
                                          {
                                             if(_loc4_ || this)
                                             {
                                                if(_loc4_ || param1)
                                                {
                                                   return;
                                                }
                                                break loop8;
                                             }
                                             continue loop6;
                                          }
                                          continue loop7;
                                       }
                                    }
                                    continue;
                                 }
                              }
                              continue loop5;
                           }
                        }
                     }
                     else
                     {
                        this.§+!F§.writeFloat(0);
                     }
                     _loc3_++;
                  }
               }
            }
         }
         while(true)
         {
            this.§+!F§.length = param1 * §1!0§ * §?c§;
            if(!(_loc4_ || param2))
            {
               continue;
            }
            if(_loc4_ || _loc3_)
            {
               §§goto(addr42);
            }
            §§goto(addr63);
         }
         §§goto(addr89);
      }
      
      public function clone() : §0p§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§0p§ = new §0p§(0,this.§<!h§);
         if(_loc3_)
         {
            _loc1_.§+!F§.length = this.§+!F§.length;
         }
         loop0:
         while(true)
         {
            _loc1_.§+!F§.writeBytes(this.§+!F§);
            loop1:
            while(true)
            {
               _loc1_.§=!2§ = this.§=!2§.concat();
               loop2:
               while(_loc3_)
               {
                  _loc1_.§=!2§.fixed = true;
                  do
                  {
                     _loc1_.§ !U§ = this.§ !U§.concat();
                     loop4:
                     do
                     {
                        _loc1_.§ !U§.fixed = true;
                        while(!_loc2_)
                        {
                           continue loop1;
                           _loc1_.§ !l§ = this.§ !l§;
                           if(_loc3_ || _loc2_)
                           {
                              continue loop4;
                           }
                        }
                        continue loop2;
                     }
                     while(!_loc3_);
                     
                  }
                  while(!_loc3_);
                  
                  return _loc1_;
               }
               continue loop0;
            }
         }
      }
      
      public function copyTo(param1:§0p§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:* = 0;
         var _loc13_:* = NaN;
         var _loc9_:Vector.<Number> = param1.§ !U§;
         if(_loc19_ || param2)
         {
            §§push(this.§ !l§);
            loop0:
            while(true)
            {
               §§push(§<h§);
               loop1:
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(int(§§pop()));
                     loop3:
                     while(true)
                     {
                        _loc6_ = §§pop();
                        loop4:
                        while(true)
                        {
                           §§push(param2);
                           while(_loc19_ || param1)
                           {
                              §§push(§<h§);
                              if(!_loc18_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!_loc18_)
                                 {
                                    §§push(int(§§pop()));
                                    loop6:
                                    while(!_loc18_)
                                    {
                                       _loc7_ = §§pop();
                                       while(true)
                                       {
                                          addr72:
                                          addr195:
                                          loop8:
                                          while(true)
                                          {
                                             if(!param5)
                                             {
                                                §§push(0);
                                                if(!_loc18_)
                                                {
                                                   _loc8_ = §§pop();
                                                   if(_loc18_ && param2)
                                                   {
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(_loc8_);
                                                      break loop8;
                                                   }
                                                   addr194:
                                                }
                                                break;
                                             }
                                             while(true)
                                             {
                                                param5.transformVectors(this.§ !U§,this.§"!y§);
                                                addr81:
                                                while(_loc19_)
                                                {
                                                   continue loop6;
                                                }
                                                continue loop4;
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(_loc6_);
                                             addr196:
                                             loop55:
                                             while(true)
                                             {
                                                if(§§pop() < §§pop())
                                                {
                                                   var _loc14_:*;
                                                   _loc9_[_loc14_ = _loc7_++] = this.§ !U§[_loc8_];
                                                   loop13:
                                                   while(true)
                                                   {
                                                      if(_loc19_ || param1)
                                                      {
                                                         while(true)
                                                         {
                                                            _loc8_++;
                                                            if(_loc18_)
                                                            {
                                                               break loop13;
                                                            }
                                                         }
                                                         addr191:
                                                      }
                                                      §§goto(addr194);
                                                      continue loop55;
                                                   }
                                                   addr183:
                                                }
                                                addr197:
                                                var _loc10_:ByteArray = param1.§+!F§;
                                                if(!(_loc18_ && param2))
                                                {
                                                   §§push(this.§ !l§);
                                                   loop14:
                                                   while(true)
                                                   {
                                                      §§push(§1!0§);
                                                      loop15:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!_loc18_)
                                                         {
                                                            §§push(§?c§);
                                                            while(true)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                            }
                                                            addr370:
                                                         }
                                                         loop17:
                                                         while(true)
                                                         {
                                                            §§push(int(§§pop()));
                                                            loop18:
                                                            while(true)
                                                            {
                                                               _loc6_ = §§pop();
                                                               loop19:
                                                               while(true)
                                                               {
                                                                  §§push(param2);
                                                                  if(!(_loc18_ && param3))
                                                                  {
                                                                     §§push(§1!0§);
                                                                     if(_loc19_ || param1)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!(_loc18_ && this))
                                                                        {
                                                                           §§push(§?c§);
                                                                           if(_loc19_ || param3)
                                                                           {
                                                                              if(_loc19_)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!(_loc18_ && this))
                                                                                 {
                                                                                    if(_loc18_ && param2)
                                                                                    {
                                                                                       continue loop17;
                                                                                    }
                                                                                    addr352:
                                                                                    §§push(int(§§pop()));
                                                                                    if(!(_loc19_ || this))
                                                                                    {
                                                                                       continue loop18;
                                                                                    }
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       continue loop14;
                                                                                    }
                                                                                    _loc7_ = §§pop();
                                                                                    loop20:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc10_.length < _loc7_ + _loc6_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             _loc10_.length = _loc7_ + _loc6_;
                                                                                             addr300:
                                                                                             addr245:
                                                                                             while(true)
                                                                                             {
                                                                                             }
                                                                                             if(!(_loc18_ && param1))
                                                                                             {
                                                                                                if(true)
                                                                                                {
                                                                                                   §§push(param3);
                                                                                                   break loop19;
                                                                                                }
                                                                                                loop25:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc10_.writeBytes(this.§+!F§);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc19_ || param3)
                                                                                                      {
                                                                                                         if(_loc18_ && param1)
                                                                                                         {
                                                                                                            continue loop19;
                                                                                                         }
                                                                                                         §§push(param4);
                                                                                                         if(_loc19_ || param2)
                                                                                                         {
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                            if(_loc19_ || param2)
                                                                                                            {
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  if(!(_loc18_ && this))
                                                                                                                  {
                                                                                                                     addr235:
                                                                                                                     §§pop();
                                                                                                                     if(_loc18_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     if(!(_loc18_ && param1))
                                                                                                                     {
                                                                                                                        continue loop25;
                                                                                                                     }
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  addr384:
                                                                                                                  §§push(!§§pop());
                                                                                                               }
                                                                                                               addr385:
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§goto(addr855);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr235);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(!(_loc18_ && param1))
                                                                                                         {
                                                                                                            if(!_loc18_)
                                                                                                            {
                                                                                                               continue loop25;
                                                                                                            }
                                                                                                            continue loop20;
                                                                                                         }
                                                                                                         §§goto(addr300);
                                                                                                         addr278:
                                                                                                      }
                                                                                                   }
                                                                                                   addr386:
                                                                                                   _loc11_ = param1.§=!2§;
                                                                                                   if(!_loc18_)
                                                                                                   {
                                                                                                      §§push(this.§ !l§);
                                                                                                      loop27:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§0!Q§);
                                                                                                         if(_loc19_ || param3)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(_loc19_ || param3)
                                                                                                            {
                                                                                                               §§push(int(§§pop()));
                                                                                                               if(_loc19_)
                                                                                                               {
                                                                                                                  _loc6_ = §§pop();
                                                                                                                  if(_loc19_)
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(param2);
                                                                                                                        if(!(_loc19_ || param2))
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        continue loop27;
                                                                                                                     }
                                                                                                                     addr608:
                                                                                                                     _loc8_ = §§pop();
                                                                                                                     addr843:
                                                                                                                     if(_loc19_ || this)
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           addr851:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc8_);
                                                                                                                              addr852:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.§ !l§);
                                                                                                                                 break loop27;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr559:
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc8_++;
                                                                                                                        if(!(_loc18_ && this))
                                                                                                                        {
                                                                                                                           §§goto(addr851);
                                                                                                                        }
                                                                                                                        §§goto(addr855);
                                                                                                                     }
                                                                                                                     addr843:
                                                                                                                     addr414:
                                                                                                                  }
                                                                                                                  loop48:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(param3);
                                                                                                                     if(_loc19_ || param3)
                                                                                                                     {
                                                                                                                        addr532:
                                                                                                                        if(_loc19_ || param3)
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() / _loc13_);
                                                                                                                              if(!(_loc18_ && param2))
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr539:
                                                                                                                        }
                                                                                                                        loop32:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc13_ = §§pop();
                                                                                                                           if(!_loc18_)
                                                                                                                           {
                                                                                                                              addr582:
                                                                                                                              if(_loc19_ || param1)
                                                                                                                              {
                                                                                                                                 if(!_loc18_)
                                                                                                                                 {
                                                                                                                                    continue loop48;
                                                                                                                                 }
                                                                                                                                 loop30:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    addr618:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc8_);
                                                                                                                                       if(_loc19_ || param1)
                                                                                                                                       {
                                                                                                                                          addr626:
                                                                                                                                          §§push(_loc6_);
                                                                                                                                          if(_loc19_ || this)
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(§§pop() >= §§pop())
                                                                                                                                                {
                                                                                                                                                   break loop30;
                                                                                                                                                }
                                                                                                                                                _loc11_[_loc14_ = _loc7_++] = this.§=!2§[_loc8_];
                                                                                                                                                if(_loc19_ || param1)
                                                                                                                                                {
                                                                                                                                                   if(!_loc19_)
                                                                                                                                                   {
                                                                                                                                                      break loop32;
                                                                                                                                                   }
                                                                                                                                                   _loc8_++;
                                                                                                                                                   continue loop30;
                                                                                                                                                }
                                                                                                                                                addr771:
                                                                                                                                                addr771:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   var _loc15_:*;
                                                                                                                                                   _loc11_[_loc15_ = _loc7_++] = this.§=!2§[_loc12_++];
                                                                                                                                                   if(_loc19_ || param3)
                                                                                                                                                   {
                                                                                                                                                      var _loc16_:*;
                                                                                                                                                      _loc11_[_loc16_ = _loc7_++] = this.§=!2§[_loc12_++];
                                                                                                                                                      if(!_loc18_)
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            var _loc17_:*;
                                                                                                                                                            _loc11_[_loc17_ = _loc7_++] = param3;
                                                                                                                                                            addr829:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr810:
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                      }
                                                                                                                                                      addr830:
                                                                                                                                                   }
                                                                                                                                                   addr831:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      addr832:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc19_)
                                                                                                                                                         {
                                                                                                                                                            addr835:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               _loc12_++;
                                                                                                                                                               if(!(_loc18_ && param3))
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr843);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr851);
                                                                                                                                                            }
                                                                                                                                                            addr835:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr843);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr626);
                                                                                                                                             }
                                                                                                                                             addr634:
                                                                                                                                          }
                                                                                                                                          break loop27;
                                                                                                                                       }
                                                                                                                                       §§goto(addr852);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           break;
                                                                                                                           §§goto(addr532);
                                                                                                                        }
                                                                                                                        addr855:
                                                                                                                        return;
                                                                                                                        addr579:
                                                                                                                     }
                                                                                                                     addr549:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc13_ = §§pop();
                                                                                                                        if(_loc19_ || this)
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(false)
                                                                                                                              {
                                                                                                                                 §§goto(addr559);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 _loc11_[_loc14_ = _loc7_++] = this.§=!2§[_loc12_++] * _loc13_;
                                                                                                                                 if(_loc19_ || this)
                                                                                                                                 {
                                                                                                                                    _loc11_[_loc15_ = _loc7_++] = this.§=!2§[_loc12_++] * _loc13_;
                                                                                                                                    if(_loc19_ || param1)
                                                                                                                                    {
                                                                                                                                       _loc11_[_loc16_ = _loc7_++] = this.§=!2§[_loc12_++] * _loc13_;
                                                                                                                                       if(_loc19_)
                                                                                                                                       {
                                                                                                                                          _loc11_[_loc17_ = _loc7_++] = param3;
                                                                                                                                          if(!(_loc18_ && param3))
                                                                                                                                          {
                                                                                                                                             if(!(_loc18_ && param2))
                                                                                                                                             {
                                                                                                                                                if(!_loc18_)
                                                                                                                                                {
                                                                                                                                                   addr737:
                                                                                                                                                   if(_loc19_ || param3)
                                                                                                                                                   {
                                                                                                                                                      if(_loc19_ || this)
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                         }
                                                                                                                                                         addr753:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr835);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr771);
                                                                                                                                                }
                                                                                                                                                §§goto(addr831);
                                                                                                                                             }
                                                                                                                                             §§goto(addr810);
                                                                                                                                          }
                                                                                                                                          §§goto(addr829);
                                                                                                                                       }
                                                                                                                                       §§goto(addr830);
                                                                                                                                    }
                                                                                                                                    §§goto(addr737);
                                                                                                                                 }
                                                                                                                                 §§goto(addr771);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr557:
                                                                                                                        }
                                                                                                                        §§goto(addr851);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr591:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc12_ = §§pop();
                                                                                                                     if(_loc19_)
                                                                                                                     {
                                                                                                                        §§push(0);
                                                                                                                        if(_loc19_ || param1)
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        §§goto(addr852);
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§goto(addr608);
                                                                                                                  addr637:
                                                                                                               }
                                                                                                               §§goto(addr852);
                                                                                                            }
                                                                                                            §§goto(addr579);
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop() < §§pop())
                                                                                                         {
                                                                                                            if(this.§<!h§)
                                                                                                            {
                                                                                                               if(!(_loc18_ && param3))
                                                                                                               {
                                                                                                                  §§goto(addr532);
                                                                                                                  §§push(Number(this.§=!2§[_loc12_ + 3]));
                                                                                                               }
                                                                                                               §§goto(addr753);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               _loc11_[_loc14_ = _loc7_++] = this.§=!2§[_loc12_++];
                                                                                                               if(!_loc18_)
                                                                                                               {
                                                                                                                  §§goto(addr771);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr832);
                                                                                                         }
                                                                                                         §§goto(addr855);
                                                                                                         §§goto(addr852);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr472);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          _loc10_.position = _loc7_;
                                                                                          §§goto(addr278);
                                                                                          §§goto(addr300);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr370);
                                                                           }
                                                                           addr376:
                                                                           §§push(§§pop() == §§pop());
                                                                           if(!(_loc18_ && param1))
                                                                           {
                                                                              §§goto(addr384);
                                                                           }
                                                                           §§goto(addr385);
                                                                        }
                                                                        break;
                                                                     }
                                                                     continue loop15;
                                                                  }
                                                                  §§goto(addr352);
                                                               }
                                                               §§goto(addr376);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr386);
                                             }
                                          }
                                       }
                                    }
                                    continue loop0;
                                    addr100:
                                 }
                                 continue loop2;
                              }
                              continue loop1;
                              if(_loc18_ && param1)
                              {
                                 continue;
                              }
                              _loc8_ = §§pop();
                              if(_loc19_ || param1)
                              {
                                 if(!(_loc18_ && this))
                                 {
                                    if(!_loc18_)
                                    {
                                       if(false)
                                       {
                                          §§goto(addr72);
                                       }
                                       while(true)
                                       {
                                          §§push(_loc8_);
                                          if(_loc19_ || this)
                                          {
                                             §§push(_loc6_);
                                             if(_loc19_)
                                             {
                                                if(§§pop() >= §§pop())
                                                {
                                                   if(_loc18_)
                                                   {
                                                   }
                                                }
                                                else
                                                {
                                                   _loc9_[_loc14_ = _loc7_++] = this.§"!y§[_loc8_];
                                                   if(_loc19_)
                                                   {
                                                      if(!(_loc18_ && param1))
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr191);
                                                   }
                                                   §§goto(addr183);
                                                }
                                                §§goto(addr197);
                                             }
                                             §§goto(addr196);
                                          }
                                          §§goto(addr195);
                                       }
                                    }
                                    §§goto(addr103);
                                 }
                                 §§goto(addr75);
                              }
                              §§goto(addr81);
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§push(0);
            if(_loc19_)
            {
               §§goto(addr46);
            }
            §§goto(addr100);
         }
      }
      
      public function append(param1:§0p§) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:int = this.§+!F§.length;
         if(_loc10_)
         {
            this.§+!F§.length += param1.§+!F§.length;
            while(true)
            {
               this.§+!F§.position = _loc2_;
               loop1:
               while(_loc10_ || _loc3_)
               {
                  loop2:
                  while(true)
                  {
                     this.§+!F§.writeBytes(param1.§+!F§);
                     while(true)
                     {
                        if(!_loc9_)
                        {
                           this.§=!2§.fixed = false;
                           if(_loc10_)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop1;
                     }
                     addr32:
                     while(false)
                     {
                        continue loop2;
                     }
                     var _loc3_:Vector.<Number> = param1.§=!2§;
                     var _loc4_:int = _loc3_.length;
                     var _loc5_:int = 0;
                     loop5:
                     while(true)
                     {
                        if(_loc5_ >= _loc4_)
                        {
                           if(_loc10_)
                           {
                              if(_loc10_ || _loc2_)
                              {
                                 this.§=!2§.fixed = true;
                                 while(!(_loc9_ && param1))
                                 {
                                    this.§ !U§.fixed = false;
                                    if(!_loc9_)
                                    {
                                       if(true)
                                       {
                                          break loop5;
                                       }
                                       continue loop5;
                                    }
                                 }
                                 addr114:
                              }
                              else
                              {
                                 _loc5_++;
                                 addr133:
                              }
                              continue;
                           }
                           §§goto(addr114);
                        }
                        else
                        {
                           this.§=!2§.push(_loc3_[_loc5_]);
                        }
                        §§goto(addr133);
                     }
                     var _loc6_:Vector.<Number>;
                     var _loc7_:int = (_loc6_ = param1.§ !U§).length;
                     var _loc8_:int = 0;
                     if(_loc10_)
                     {
                        loop7:
                        while(true)
                        {
                           if(_loc8_ >= _loc7_)
                           {
                              do
                              {
                                 this.§ !U§.fixed = true;
                                 do
                                 {
                                    this.§ !l§ += param1.§<`§;
                                 }
                                 while(_loc9_);
                                 
                                 if(_loc9_ && this)
                                 {
                                    continue;
                                 }
                                 if(_loc9_)
                                 {
                                    continue loop7;
                                 }
                              }
                              while(_loc9_ && _loc3_);
                              
                              return;
                              addr192:
                           }
                           this.§ !U§.push(_loc6_[_loc8_]);
                           while(true)
                           {
                              _loc8_++;
                              continue loop7;
                           }
                        }
                     }
                     §§goto(addr192);
                  }
               }
            }
         }
         §§goto(addr32);
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         §§push(param1);
         if(_loc9_ || param1)
         {
            §§push(int(§§pop() * §<h§));
         }
         var _loc5_:* = §§pop();
         var _loc6_:*;
         this.§ !U§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§ !U§[_loc7_ = _loc5_++] = param3;
         if(_loc9_ || this)
         {
            this.§ !U§[_loc5_] = param4;
         }
      }
      
      public function §^L§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(param1);
         if(!(_loc7_ && param3))
         {
            §§push(int(§§pop() * §<h§));
         }
         var _loc4_:* = §§pop();
         var _loc5_:*;
         this.§ !U§[_loc5_ = _loc4_++] = param2;
         if(!_loc7_)
         {
            this.§ !U§[_loc4_] = param3;
         }
      }
      
      public function §"!S§(param1:int, param2:Vector3D) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(!_loc5_)
         {
            §§push(int(§§pop() * §<h§));
         }
         var _loc3_:* = §§pop();
         if(_loc4_ || _loc3_)
         {
            param2.x = this.§ !U§[_loc3_++];
            do
            {
               param2.y = this.§ !U§[_loc3_++];
               do
               {
                  param2.z = this.§ !U§[_loc3_];
               }
               while(!(_loc4_ || param2));
               
            }
            while(_loc5_ && param2);
            
         }
      }
      
      public function §1f§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_ || this)
         {
            if(this.§<!h§)
            {
               addr27:
               §§push(param3);
               if(_loc9_)
               {
                  §§push(Number(§§pop()));
                  if(!_loc9_)
                  {
                  }
                  addr39:
                  var _loc4_:*;
                  §§push(_loc4_ = §§pop());
                  if(_loc9_ || param3)
                  {
                     §§push(§§pop() / 255);
                     if(!(_loc8_ && param1))
                     {
                        §§push(Number(§§pop()));
                        if(_loc9_)
                        {
                           _loc4_ = §§pop();
                           §§push(§ z§.§6!q§(param2) * _loc4_);
                           if(!_loc8_)
                           {
                              addr78:
                              §§push(Number(§§pop()));
                           }
                        }
                     }
                     var _loc5_:* = §§pop();
                     §§push(§ z§.§"5§(param2) * _loc4_);
                     if(_loc9_ || param1)
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc6_:* = §§pop();
                     §§push(§ z§.§9!,§(param2) * _loc4_);
                     if(!(_loc8_ && param2))
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc7_:* = §§pop();
                     if(!_loc8_)
                     {
                        this.§<!$§(param1,1,_loc5_,_loc6_,_loc7_,param3);
                     }
                     return;
                  }
                  §§goto(addr78);
               }
               addr38:
               §§push(Number(§§pop()));
            }
            else
            {
               §§push(Number(1));
               if(_loc9_)
               {
                  §§goto(addr38);
               }
            }
            §§goto(addr39);
         }
         §§goto(addr27);
      }
      
      private function §<!$§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         §§push(param1);
         if(_loc14_)
         {
            §§push(int(§§pop() * §0!Q§));
         }
         var _loc7_:* = §§pop();
         §§push(param2);
         if(!_loc13_)
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
               this.§=!2§[_loc9_ = _loc7_++] = param3;
               if(!(_loc13_ && param1))
               {
                  var _loc10_:*;
                  this.§=!2§[_loc10_ = _loc7_++] = param4;
                  if(_loc14_)
                  {
                     var _loc11_:*;
                     this.§=!2§[_loc11_ = _loc7_++] = param5;
                     if(_loc14_)
                     {
                        var _loc12_:*;
                        this.§=!2§[_loc12_ = _loc7_++] = param6;
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
                  if(!(_loc13_ && param1))
                  {
                     continue loop0;
                  }
                  continue;
               }
               continue loop0;
            }
            addr131:
            return;
         }
      }
      
      private function §+<§(param1:int, param2:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(param1);
         if(!(_loc7_ && this))
         {
            §§push(int(§§pop() * §0!Q§));
         }
         var _loc3_:* = §§pop();
         var _loc4_:*;
         this.§=!2§[_loc4_ = _loc3_++] = this.§=!2§[_loc4_] * param2;
         var _loc5_:*;
         this.§=!2§[_loc5_ = _loc3_++] = this.§=!2§[_loc5_] * param2;
         var _loc6_:*;
         this.§=!2§[_loc6_ = _loc3_++] = this.§=!2§[_loc6_] * param2;
         if(_loc8_)
         {
            this.§=!2§[_loc3_] *= param2;
         }
      }
      
      public function §6!b§(param1:int) : uint
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:Number = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         §§push(param1);
         if(!_loc8_)
         {
            §§push(int(§§pop() * §0!Q§));
         }
         var _loc2_:* = §§pop();
         if(!(_loc8_ && _loc3_))
         {
            if(this.§<!h§)
            {
               addr39:
               §§push(Number(this.§=!2§[_loc2_ + 3]));
               if(_loc7_ || _loc3_)
               {
                  addr58:
                  §§push(Number(§§pop()));
               }
            }
            else
            {
               §§push(Number(1));
               if(!_loc8_)
               {
                  §§goto(addr58);
               }
            }
            var _loc3_:* = §§pop();
            if(!_loc8_)
            {
               §§push(_loc3_);
               while(true)
               {
                  if(§§pop() != 0)
                  {
                     while(true)
                     {
                        §§push(255);
                        if(!_loc8_)
                        {
                           §§push(§§pop() / _loc3_);
                           loop2:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              addr189:
                              while(true)
                              {
                                 _loc3_ = §§pop();
                                 addr190:
                                 while(true)
                                 {
                                    §§push(this.§=!2§[_loc2_] * _loc3_);
                                    if(_loc7_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                        }
                        break;
                     }
                     return §§pop();
                     addr182:
                  }
                  §§goto(addr194);
                  loop7:
                  for(; !(_loc8_ && _loc2_); if(!(_loc7_ || this))
                  {
                     continue;
                  },_loc6_ = §§pop(),if(!_loc7_)
                  {
                     §§goto(addr136);
                  },if(_loc7_)
                  {
                     return § z§.§0d§(_loc4_,_loc5_,_loc6_);
                  },§§goto(addr167))
                  {
                     _loc5_ = §§pop();
                     while(_loc7_)
                     {
                        §§push(this.§=!2§[_loc2_ + 2] * _loc3_);
                        if(!(_loc7_ || _loc3_))
                        {
                           continue loop7;
                        }
                        if(!_loc8_)
                        {
                           §§push(Number(§§pop()));
                           continue loop7;
                        }
                        §§goto(addr189);
                     }
                     while(true)
                     {
                        §§goto(addr182);
                     }
                  }
               }
            }
            §§goto(addr196);
         }
         §§goto(addr39);
      }
      
      public function §]f§(param1:int, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:int = 0;
         if(_loc4_ || param1)
         {
            §§push(param2);
            if(!_loc5_)
            {
               if(§§pop() < 0.001)
               {
                  while(true)
                  {
                     §§push(0.001);
                     addr139:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        addr140:
                        while(true)
                        {
                           param2 = §§pop();
                           addr141:
                           while(true)
                           {
                           }
                        }
                     }
                     addr67:
                     if(!(_loc4_ || param2))
                     {
                        continue;
                     }
                     addr26:
                     return;
                     addr74:
                  }
               }
               loop1:
               for(; !this.§<!h§; §§goto(addr141))
               {
                  §§push(param1);
                  if(_loc4_)
                  {
                     §§push(§§pop() * §0!Q§);
                     if(_loc4_ || param1)
                     {
                        if(!(_loc5_ && this))
                        {
                           addr99:
                           §§push(§§pop() + 3);
                           if(!(_loc5_ && this))
                           {
                              addr117:
                              _loc3_ = §§pop();
                              while(_loc4_)
                              {
                                 this.§=!2§[_loc3_] = param2;
                                 if(_loc5_ && this)
                                 {
                                    continue;
                                 }
                                 if(!(_loc4_ || this))
                                 {
                                    break loop1;
                                 }
                                 if(_loc5_ && this)
                                 {
                                    continue loop1;
                                 }
                                 §§goto(addr67);
                              }
                              §§goto(addr26);
                              addr132:
                           }
                           §§goto(addr139);
                        }
                        §§goto(addr140);
                     }
                     §§goto(addr99);
                  }
                  §§goto(addr117);
               }
               this.§1f§(param1,this.§6!b§(param1),param2);
               §§goto(addr132);
            }
            §§goto(addr139);
         }
         §§goto(addr74);
      }
      
      public function §<^§(param1:int) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(_loc4_)
         {
            §§push(§§pop() * §0!Q§);
            if(!(_loc3_ && this))
            {
               §§push(§§pop() + 3);
            }
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         return this.§=!2§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1);
         if(_loc5_ || param1)
         {
            §§push(int(§§pop() * §1!0§));
         }
         var _loc4_:* = §§pop();
         if(_loc5_)
         {
            this.§+!F§.position = _loc4_ * §?c§;
         }
         while(true)
         {
            this.§+!F§.writeFloat(param2);
            while(_loc5_ || param2)
            {
               this.§+!F§.writeFloat(param3);
               if(_loc5_)
               {
                  return;
               }
            }
         }
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(_loc4_ || param2)
         {
            §§push(int(§§pop() * §1!0§));
         }
         var _loc3_:* = §§pop();
         if(_loc4_)
         {
            this.§+!F§.position = _loc3_ * §?c§;
            while(true)
            {
               param2.x = this.§+!F§.readFloat();
               loop1:
               while(_loc4_)
               {
                  while(true)
                  {
                     param2.y = this.§+!F§.readFloat();
                     if(_loc4_)
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
      
      public function §=c§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         §§push(param1);
         if(!_loc8_)
         {
            §§push(int(§§pop() * §<h§));
         }
         var _loc5_:* = §§pop();
         var _loc6_:*;
         this.§ !U§[_loc6_ = _loc5_++] = this.§ !U§[_loc6_] + param2;
         var _loc7_:*;
         this.§ !U§[_loc7_ = _loc5_++] = this.§ !U§[_loc7_] + param3;
         if(!(_loc8_ && param2))
         {
            this.§ !U§[_loc5_] += param4;
         }
      }
      
      public function §-!N§(param1:int, param2:Matrix3D) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(!_loc4_)
         {
            §§push(int(§§pop() * §<h§));
         }
         var _loc3_:* = §§pop();
         if(_loc5_ || param1)
         {
            this.§"!y§[0] = this.§ !U§[_loc3_];
            loop0:
            while(true)
            {
               this.§"!y§[1] = this.§ !U§[_loc3_ + 1];
               addr143:
               while(true)
               {
                  this.§"!y§[2] = this.§ !U§[_loc3_ + 2];
                  addr131:
                  while(true)
                  {
                     param2.transformVectors(this.§"!y§,this.§"!y§);
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            this.§ !U§[_loc3_ + 2] = this.§"!y§[2];
            if(_loc4_ && _loc3_)
            {
               continue;
            }
            if(_loc5_)
            {
               if(_loc5_)
               {
                  break;
               }
               §§goto(addr131);
            }
            §§goto(addr90);
         }
      }
      
      public function §4!^§(param1:uint, param2:Number = 1.0) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && this))
         {
            §§push(param2);
            if(_loc8_)
            {
               if(§§pop() < 0.001)
               {
                  if(_loc8_)
                  {
                     addr31:
                     §§push(0.001);
                     if(!_loc7_)
                     {
                        addr34:
                        §§push(Number(§§pop()));
                        if(!(_loc7_ && param2))
                        {
                           param2 = §§pop();
                           if(_loc8_)
                           {
                              addr45:
                              if(this.§<!h§)
                              {
                                 addr48:
                                 §§push(param2);
                                 if(!_loc7_)
                                 {
                                    addr51:
                                    §§push(Number(§§pop()));
                                    if(_loc8_ || param2)
                                    {
                                       addr79:
                                       §§push(Number(§§pop()));
                                    }
                                    §§goto(addr79);
                                 }
                              }
                              else
                              {
                                 §§push(Number(1));
                                 if(!(_loc7_ && param2))
                                 {
                                    §§goto(addr79);
                                 }
                              }
                              var _loc3_:* = §§pop();
                              if(_loc8_)
                              {
                                 §§push(_loc3_);
                                 if(_loc8_)
                                 {
                                    §§push(§§pop() / 255);
                                    if(!_loc7_)
                                    {
                                       addr90:
                                       §§push(Number(§§pop()));
                                       if(!_loc7_)
                                       {
                                          _loc3_ = §§pop();
                                          addr94:
                                          §§push(§ z§.§6!q§(param1) * _loc3_);
                                          if(_loc8_ || _loc3_)
                                          {
                                          }
                                          §§goto(addr107);
                                       }
                                       §§push(Number(§§pop()));
                                    }
                                    addr107:
                                    var _loc4_:* = §§pop();
                                    §§push(§ z§.§"5§(param1) * _loc3_);
                                    if(!(_loc7_ && this))
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc5_:* = §§pop();
                                    §§push(§ z§.§9!,§(param1) * _loc3_);
                                    if(_loc8_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc6_:* = §§pop();
                                    if(_loc8_ || param2)
                                    {
                                       this.§<!$§(0,this.§ !l§,_loc4_,_loc5_,_loc6_,param2);
                                    }
                                    return;
                                 }
                                 §§goto(addr90);
                              }
                              §§goto(addr94);
                           }
                           §§goto(addr48);
                        }
                        §§goto(addr51);
                     }
                     §§goto(addr79);
                  }
                  §§goto(addr48);
               }
               §§goto(addr45);
            }
            §§goto(addr34);
         }
         §§goto(addr31);
      }
      
      public function §5c§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         if(!_loc14_)
         {
            §§push(param6);
            if(!_loc14_)
            {
               if(§§pop() < 0.001)
               {
                  if(_loc13_)
                  {
                     §§push(0.001);
                     if(!_loc14_)
                     {
                        addr28:
                        §§push(Number(§§pop()));
                        if(_loc13_ || param2)
                        {
                           §§goto(addr36);
                        }
                        §§goto(addr42);
                     }
                     addr36:
                     param6 = §§pop();
                     §§goto(addr37);
                  }
                  addr37:
                  §§push(param1);
                  if(_loc13_)
                  {
                     addr42:
                     §§push(int(§§pop() * §0!Q§));
                  }
                  var _loc7_:* = §§pop();
                  var _loc8_:int = 0;
                  while(_loc8_ < param2)
                  {
                     var _loc9_:*;
                     this.§=!2§[_loc9_ = _loc7_++] = param3;
                     if(!_loc14_)
                     {
                        var _loc10_:*;
                        this.§=!2§[_loc10_ = _loc7_++] = param4;
                        if(!_loc14_)
                        {
                           var _loc11_:*;
                           this.§=!2§[_loc11_ = _loc7_++] = param5;
                           if(_loc13_ || this)
                           {
                              var _loc12_:*;
                              this.§=!2§[_loc12_ = _loc7_++] = param6;
                           }
                        }
                     }
                     if(!(_loc13_ || param1))
                     {
                        break;
                     }
                     _loc8_++;
                     if(_loc14_)
                     {
                        break;
                     }
                  }
                  return;
               }
               §§goto(addr36);
            }
            §§goto(addr28);
         }
         §§goto(addr36);
      }
      
      public function §;Q§(param1:int, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = NaN;
         if(!(_loc6_ && param2))
         {
            §§push(param2);
            if(!(_loc6_ && _loc3_))
            {
               if(§§pop() < 0.001)
               {
                  if(!(_loc6_ && param2))
                  {
                     §§push(0.001);
                     if(_loc5_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc6_)
                        {
                        }
                        addr64:
                        if(§§pop() == 1)
                        {
                           if(!_loc6_)
                           {
                              §§goto(addr68);
                           }
                           else
                           {
                              addr69:
                              §§push(param1);
                              if(_loc5_ || param2)
                              {
                                 addr79:
                                 §§push(int(§§pop() * §0!Q§));
                              }
                              var _loc3_:* = §§pop();
                              if(!(_loc6_ && _loc3_))
                              {
                                 if(!this.§<!h§)
                                 {
                                    this.§=!2§[_loc3_ + 3] *= param2;
                                    if(_loc5_ || this)
                                    {
                                       if(!(_loc6_ && param2))
                                       {
                                          if(_loc6_ && param1)
                                          {
                                             loop0:
                                             while(true)
                                             {
                                                §§push(param2);
                                                if(!_loc6_)
                                                {
                                                   §§push(§§pop() / _loc4_);
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         continue;
                                                      }
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                _loc4_ = §§pop();
                                                loop1:
                                                while(true)
                                                {
                                                   this.§=!2§[_loc3_] *= _loc4_;
                                                   addr212:
                                                   while(true)
                                                   {
                                                      this.§=!2§[_loc3_ + 1] *= _loc4_;
                                                      loop3:
                                                      while(true)
                                                      {
                                                         if(_loc5_ || param1)
                                                         {
                                                            this.§=!2§[_loc3_ + 2] *= _loc4_;
                                                            loop4:
                                                            while(_loc5_)
                                                            {
                                                               this.§=!2§[_loc3_ + 3] = param2;
                                                               while(true)
                                                               {
                                                                  if(_loc5_ || _loc3_)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop3;
                                                                  }
                                                                  continue loop4;
                                                               }
                                                               return;
                                                            }
                                                            continue loop1;
                                                         }
                                                         addr244:
                                                         while(true)
                                                         {
                                                            §§push(Number(this.§=!2§[_loc3_ + 3]));
                                                            continue loop0;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr89);
                                       }
                                       §§goto(addr212);
                                    }
                                    §§goto(addr150);
                                 }
                              }
                              §§goto(addr244);
                           }
                        }
                        §§goto(addr69);
                     }
                     param2 = §§pop();
                     if(_loc5_ || param1)
                     {
                        addr56:
                        §§push(param2);
                        if(_loc5_ || param1)
                        {
                           §§goto(addr64);
                        }
                        §§goto(addr79);
                     }
                     addr68:
                     return;
                  }
                  §§goto(addr69);
               }
               §§goto(addr56);
            }
            §§goto(addr64);
         }
         §§goto(addr69);
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(!(_loc9_ && this))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop() != this.§<!h§)
               {
                  continue;
               }
               if(!(_loc9_ && this))
               {
                  break;
               }
               addr293:
               while(true)
               {
                  continue loop0;
               }
            }
            return;
         }
         §§goto(addr274);
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§<!h§;
      }
      
      public function get §<`§() : int
      {
         return this.§ !l§;
      }
      
      public function set §<`§(param1:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(_loc5_)
         {
            §§push(param1);
            if(_loc5_ || _loc3_)
            {
               §§push(§1!0§);
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc5_ || _loc3_)
                  {
                     §§push(§§pop() * §?c§);
                     if(_loc5_)
                     {
                        §§push(§§pop() - this.§+!F§.length);
                     }
                  }
                  §§push(int(§§pop()));
               }
               addr492:
            }
            loop1:
            while(true)
            {
               _loc2_ = §§pop();
               addr510:
               while(true)
               {
                  §§push(int(this.§+!F§.length));
                  continue loop1;
               }
            }
         }
         §§goto(addr458);
      }
      
      public function get §2!e§() : ByteArray
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§+!F§.position = 0;
         }
         return this.§+!F§;
      }
      
      public function get §-=§() : Vector.<Number>
      {
         return this.§=!2§;
      }
      
      public function get §!!=§() : Vector.<Number>
      {
         return this.§ !U§;
      }
   }
}
