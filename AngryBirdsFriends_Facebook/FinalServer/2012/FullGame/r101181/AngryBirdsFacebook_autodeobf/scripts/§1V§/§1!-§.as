package §1V§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §1!-§
   {
      
      public static const §!!J§:int = 4;
      
      public static const §%0§:int = 2;
      
      public static const §6V§:int = 3;
      
      public static const §]t§:int = 4;
      
      public static const §9"6§:int = 0;
      
      public static const §#Y§:int = 0;
      
      public static const §,N§:int = 0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §!!J§ = 4;
            loop0:
            while(true)
            {
               §%0§ = 2;
               while(true)
               {
                  §6V§ = 3;
                  loop2:
                  for(; _loc1_ || §1!-§; loop4:
                  for(; _loc1_ || _loc2_; §§goto(addr39))
                  {
                     while(true)
                     {
                        §#Y§ = 0;
                        continue loop4;
                     }
                  })
                  {
                     §]t§ = 4;
                     while(true)
                     {
                        §9"6§ = 0;
                        continue loop2;
                        addr56:
                        if(!(_loc2_ && _loc1_))
                        {
                           if(_loc1_)
                           {
                              §,N§ = 0;
                              addr65:
                              if(!_loc2_)
                              {
                                 return;
                                 addr39:
                              }
                              while(!(_loc2_ && _loc1_))
                              {
                                 §§goto(addr56);
                                 §§goto(addr65);
                              }
                              continue loop2;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr87);
      }
      
      private var §29§:ByteArray;
      
      private var §;-§:Vector.<Number>;
      
      private var §=+§:Vector.<Number>;
      
      private var §;!n§:Boolean;
      
      private var §-!3§:int;
      
      private var §6!P§:Vector.<Number>;
      
      public function §1!-§(param1:int, param2:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            this.§6!P§ = new Vector.<Number>(12,true);
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  this.§29§ = new ByteArray();
                  addr40:
                  if(!(_loc4_ || this))
                  {
                     continue;
                  }
                  if(_loc5_)
                  {
                     continue loop0;
                  }
                  if(false)
                  {
                     loop3:
                     while(true)
                     {
                        this.§29§.endian = Endian.LITTLE_ENDIAN;
                        while(_loc4_)
                        {
                           this.§29§.length = param1 * §%0§ * §]t§;
                           if(!(_loc4_ || param1))
                           {
                              continue;
                           }
                           §§goto(addr40);
                        }
                        addr65:
                        while(true)
                        {
                           continue loop3;
                        }
                     }
                  }
                  var _loc3_:int = 0;
                  loop5:
                  while(true)
                  {
                     if(_loc3_ >= param1 * §%0§)
                     {
                        loop6:
                        do
                        {
                           if(_loc4_)
                           {
                              this.§;-§ = new Vector.<Number>(param1 * §!!J§,true);
                              while(_loc4_ || param1)
                              {
                                 this.§=+§ = new Vector.<Number>(param1 * §6V§,true);
                                 while(!(_loc5_ && param2))
                                 {
                                    this.§;!n§ = param2;
                                    while(_loc4_ || param1)
                                    {
                                       this.§-!3§ = param1;
                                       if(_loc4_ || this)
                                       {
                                          continue loop6;
                                       }
                                    }
                                 }
                              }
                              continue loop5;
                           }
                        }
                        while(!_loc4_);
                        
                        return;
                     }
                     this.§29§.writeFloat(0);
                     _loc3_++;
                  }
               }
            }
         }
         §§goto(addr65);
      }
      
      public function clone() : §1!-§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§1!-§ = new §1!-§(0,this.§;!n§);
         if(_loc2_ || _loc2_)
         {
            _loc1_.§29§.length = this.§29§.length;
            while(true)
            {
               _loc1_.§29§.writeBytes(this.§29§);
               loop1:
               for(; !_loc3_; while(!(_loc3_ && _loc3_))
               {
                  _loc1_.§=+§ = this.§=+§.concat();
                  addr68:
                  if(_loc3_ && _loc2_)
                  {
                     continue;
                  }
                  _loc1_.§-!3§ = this.§-!3§;
                  addr75:
                  if(_loc3_)
                  {
                     loop5:
                     while(true)
                     {
                        if(!_loc3_)
                        {
                           §§goto(addr68);
                        }
                        else
                        {
                           while(true)
                           {
                              _loc1_.§=+§.fixed = true;
                              continue loop5;
                           }
                           §§goto(addr60);
                           addr82:
                        }
                     }
                     continue;
                  }
                  §§goto(addr43);
               })
               {
                  _loc1_.§;-§ = this.§;-§.concat();
                  while(true)
                  {
                     _loc1_.§;-§.fixed = true;
                     continue loop1;
                     addr43:
                     if(!(_loc3_ && _loc1_))
                     {
                        return _loc1_;
                        addr60:
                     }
                  }
               }
            }
         }
         §§goto(addr82);
      }
      
      public function copyTo(param1:§1!-§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:* = 0;
         var _loc13_:* = NaN;
         var _loc9_:Vector.<Number> = param1.§=+§;
         if(!_loc18_)
         {
            §§push(this.§-!3§);
            loop0:
            while(true)
            {
               §§push(§6V§);
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
                        loop4:
                        while(true)
                        {
                           §§push(param2);
                           if(!(_loc18_ && param3))
                           {
                              if(_loc18_ && param1)
                              {
                                 break;
                              }
                              if(!_loc19_)
                              {
                                 continue loop0;
                              }
                              §§push(§6V§);
                              if(!_loc19_)
                              {
                                 continue loop1;
                              }
                              §§push(§§pop() * §§pop());
                              if(!_loc19_)
                              {
                                 continue loop2;
                              }
                              §§push(int(§§pop()));
                           }
                           addr102:
                           loop5:
                           while(true)
                           {
                              _loc7_ = §§pop();
                              loop6:
                              while(true)
                              {
                                 addr51:
                                 loop7:
                                 while(true)
                                 {
                                    if(!param5)
                                    {
                                       §§push(0);
                                       if(_loc19_)
                                       {
                                          addr156:
                                          _loc8_ = §§pop();
                                          addr181:
                                          if(!(_loc18_ && param2))
                                          {
                                             addr164:
                                             while(true)
                                             {
                                                break loop7;
                                             }
                                             addr192:
                                             var _loc10_:ByteArray = param1.§29§;
                                             if(!_loc18_)
                                             {
                                                §§push(this.§-!3§);
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(§%0§);
                                                   addr314:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc18_)
                                                      {
                                                         §§push(§]t§);
                                                         if(_loc19_)
                                                         {
                                                            addr321:
                                                            §§push(§§pop() * §§pop());
                                                            while(true)
                                                            {
                                                               §§push(int(§§pop()));
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  _loc6_ = §§pop();
                                                                  loop15:
                                                                  while(true)
                                                                  {
                                                                     §§push(param2);
                                                                     if(!_loc18_)
                                                                     {
                                                                        continue loop11;
                                                                     }
                                                                     addr302:
                                                                     if(_loc18_ && param2)
                                                                     {
                                                                        continue loop14;
                                                                     }
                                                                     _loc7_ = §§pop();
                                                                     while(_loc10_.length < _loc7_ + _loc6_)
                                                                     {
                                                                        if(!(_loc18_ && param3))
                                                                        {
                                                                           _loc10_.length = _loc7_ + _loc6_;
                                                                           if(!(_loc18_ && param1))
                                                                           {
                                                                              if(_loc19_)
                                                                              {
                                                                                 if(_loc19_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 continue loop15;
                                                                              }
                                                                              continue;
                                                                           }
                                                                        }
                                                                        _loc11_ = param1.§;-§;
                                                                        if(!_loc18_)
                                                                        {
                                                                           §§push(this.§-!3§);
                                                                           if(!(_loc18_ && param2))
                                                                           {
                                                                              §§push(§!!J§);
                                                                              loop19:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    §§push(int(§§pop()));
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       _loc6_ = §§pop();
                                                                                       if(_loc19_)
                                                                                       {
                                                                                          loop20:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(param2);
                                                                                             if(!(_loc18_ && this))
                                                                                             {
                                                                                                §§push(§!!J§);
                                                                                                if(_loc19_ || this)
                                                                                                {
                                                                                                   if(_loc18_)
                                                                                                   {
                                                                                                      continue loop19;
                                                                                                   }
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(!_loc18_)
                                                                                                   {
                                                                                                      §§push(int(§§pop()));
                                                                                                      loop21:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc7_ = §§pop();
                                                                                                         if(_loc19_)
                                                                                                         {
                                                                                                            §§push(param3);
                                                                                                            if(_loc19_ || param1)
                                                                                                            {
                                                                                                               if(§§pop() == 1)
                                                                                                               {
                                                                                                                  if(_loc19_)
                                                                                                                  {
                                                                                                                     §§push(0);
                                                                                                                     if(!_loc18_)
                                                                                                                     {
                                                                                                                        if(!_loc18_)
                                                                                                                        {
                                                                                                                           _loc8_ = §§pop();
                                                                                                                           if(_loc19_)
                                                                                                                           {
                                                                                                                              if(false)
                                                                                                                              {
                                                                                                                                 continue loop20;
                                                                                                                              }
                                                                                                                              loop34:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc8_);
                                                                                                                                 if(!_loc18_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc6_);
                                                                                                                                    if(!(_loc18_ && this))
                                                                                                                                    {
                                                                                                                                       loop31:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(§§pop() < §§pop())
                                                                                                                                          {
                                                                                                                                             var _loc14_:*;
                                                                                                                                             _loc11_[_loc14_ = _loc7_++] = this.§;-§[_loc8_];
                                                                                                                                             if(_loc19_ || param3)
                                                                                                                                             {
                                                                                                                                                if(!(_loc18_ && this))
                                                                                                                                                {
                                                                                                                                                   _loc8_++;
                                                                                                                                                   addr447:
                                                                                                                                                   if(!_loc18_)
                                                                                                                                                   {
                                                                                                                                                      addr532:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         continue loop34;
                                                                                                                                                         §§goto(addr447);
                                                                                                                                                      }
                                                                                                                                                      loop43:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         _loc12_ = §§pop();
                                                                                                                                                         addr533:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(0);
                                                                                                                                                            if(_loc18_ && param2)
                                                                                                                                                            {
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            if(!(_loc18_ && this))
                                                                                                                                                            {
                                                                                                                                                               break loop20;
                                                                                                                                                            }
                                                                                                                                                            continue loop43;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr737);
                                                                                                                                                      }
                                                                                                                                                      addr532:
                                                                                                                                                      addr537:
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr728);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr735);
                                                                                                                                                }
                                                                                                                                                §§goto(addr533);
                                                                                                                                             }
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          if(_loc18_)
                                                                                                                                          {
                                                                                                                                             addr725:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc12_++;
                                                                                                                                                if(_loc19_)
                                                                                                                                                {
                                                                                                                                                   addr728:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      _loc8_++;
                                                                                                                                                      addr735:
                                                                                                                                                      §§goto(addr740);
                                                                                                                                                   }
                                                                                                                                                   addr728:
                                                                                                                                                }
                                                                                                                                                addr736:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc8_);
                                                                                                                                                   addr737:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§-!3§);
                                                                                                                                                      addr739:
                                                                                                                                                      while(§§pop() < §§pop())
                                                                                                                                                      {
                                                                                                                                                         if(!this.§;!n§)
                                                                                                                                                         {
                                                                                                                                                            _loc11_[_loc14_ = _loc7_++] = this.§;-§[_loc12_++];
                                                                                                                                                            if(_loc19_ || this)
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  var _loc15_:*;
                                                                                                                                                                  _loc11_[_loc15_ = _loc7_++] = this.§;-§[_loc12_++];
                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     var _loc16_:*;
                                                                                                                                                                     _loc11_[_loc16_ = _loc7_++] = this.§;-§[_loc12_++];
                                                                                                                                                                     if(!_loc18_)
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           var _loc17_:*;
                                                                                                                                                                           _loc11_[_loc17_ = _loc7_++] = param3;
                                                                                                                                                                           addr719:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        addr700:
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                     }
                                                                                                                                                                     addr720:
                                                                                                                                                                  }
                                                                                                                                                                  addr721:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     break loop31;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr666:
                                                                                                                                                            }
                                                                                                                                                            break loop31;
                                                                                                                                                         }
                                                                                                                                                         if(_loc19_ || param3)
                                                                                                                                                         {
                                                                                                                                                            break loop21;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr728);
                                                                                                                                                      }
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr725:
                                                                                                                                          }
                                                                                                                                          addr740:
                                                                                                                                          if(_loc19_ || param2)
                                                                                                                                          {
                                                                                                                                          }
                                                                                                                                          addr740:
                                                                                                                                          return;
                                                                                                                                          §§goto(addr737);
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc19_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr725);
                                                                                                                                          }
                                                                                                                                          §§goto(addr740);
                                                                                                                                       }
                                                                                                                                       addr527:
                                                                                                                                    }
                                                                                                                                    §§goto(addr739);
                                                                                                                                 }
                                                                                                                                 §§goto(addr532);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     §§goto(addr532);
                                                                                                                  }
                                                                                                                  §§goto(addr537);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr532);
                                                                                                                  §§push(0);
                                                                                                               }
                                                                                                               §§goto(addr532);
                                                                                                            }
                                                                                                            loop26:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc13_ = §§pop();
                                                                                                               addr492:
                                                                                                               addr643:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc18_)
                                                                                                                  {
                                                                                                                     §§push(param3);
                                                                                                                     if(_loc18_ && param3)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        break loop19;
                                                                                                                     }
                                                                                                                     if(!_loc18_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() / _loc13_);
                                                                                                                        if(_loc18_)
                                                                                                                        {
                                                                                                                        }
                                                                                                                        break loop19;
                                                                                                                     }
                                                                                                                     continue loop26;
                                                                                                                  }
                                                                                                                  §§goto(addr533);
                                                                                                               }
                                                                                                               addr643:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr725);
                                                                                                               }
                                                                                                            }
                                                                                                            addr491:
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr491);
                                                                                                }
                                                                                                §§goto(addr527);
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             _loc8_ = §§pop();
                                                                                             if(_loc19_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§goto(addr736);
                                                                                                }
                                                                                                addr471:
                                                                                             }
                                                                                             §§goto(addr728);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr643);
                                                                                    }
                                                                                    §§goto(addr737);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 _loc13_ = §§pop();
                                                                                 if(_loc19_)
                                                                                 {
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       if(true)
                                                                                       {
                                                                                          _loc11_[_loc14_ = _loc7_++] = this.§;-§[_loc12_++] * _loc13_;
                                                                                          if(_loc19_ || this)
                                                                                          {
                                                                                             _loc11_[_loc15_ = _loc7_++] = this.§;-§[_loc12_++] * _loc13_;
                                                                                             if(!(_loc18_ && this))
                                                                                             {
                                                                                                _loc11_[_loc16_ = _loc7_++] = this.§;-§[_loc12_++] * _loc13_;
                                                                                                if(_loc19_)
                                                                                                {
                                                                                                   _loc11_[_loc17_ = _loc7_++] = param3;
                                                                                                   if(!(_loc18_ && this))
                                                                                                   {
                                                                                                      if(!_loc18_)
                                                                                                      {
                                                                                                         if(_loc19_ || param3)
                                                                                                         {
                                                                                                            if(!(_loc18_ && param2))
                                                                                                            {
                                                                                                               addr640:
                                                                                                               if(!_loc18_)
                                                                                                               {
                                                                                                                  §§goto(addr643);
                                                                                                               }
                                                                                                               §§goto(addr725);
                                                                                                            }
                                                                                                            §§goto(addr666);
                                                                                                         }
                                                                                                         §§goto(addr721);
                                                                                                      }
                                                                                                      §§goto(addr700);
                                                                                                   }
                                                                                                   §§goto(addr719);
                                                                                                }
                                                                                                §§goto(addr720);
                                                                                             }
                                                                                             §§goto(addr721);
                                                                                          }
                                                                                          §§goto(addr640);
                                                                                       }
                                                                                       §§goto(addr471);
                                                                                    }
                                                                                    §§goto(addr492);
                                                                                 }
                                                                                 §§goto(addr643);
                                                                              }
                                                                           }
                                                                           §§goto(addr532);
                                                                        }
                                                                        §§goto(addr728);
                                                                     }
                                                                     _loc10_.position = _loc7_;
                                                                     if(!(_loc18_ && param3))
                                                                     {
                                                                        addr227:
                                                                        _loc10_.writeBytes(this.§29§);
                                                                        loop18:
                                                                        while(true)
                                                                        {
                                                                           §§push(param4);
                                                                           if(!_loc18_)
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                              if(_loc19_)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    if(_loc19_ || param1)
                                                                                    {
                                                                                       §§pop();
                                                                                       if(_loc19_ || param2)
                                                                                       {
                                                                                          if(_loc18_)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(true)
                                                                                             {
                                                                                                addr326:
                                                                                                §§push(param3 == 1);
                                                                                                if(_loc19_)
                                                                                                {
                                                                                                   §§push(!§§pop());
                                                                                                   break loop18;
                                                                                                }
                                                                                                break loop18;
                                                                                             }
                                                                                             §§goto(addr227);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr331);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              break;
                                                                           }
                                                                           break;
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           §§goto(addr331);
                                                                        }
                                                                        §§goto(addr740);
                                                                     }
                                                                     §§goto(addr331);
                                                                  }
                                                                  continue loop11;
                                                               }
                                                            }
                                                            addr321:
                                                         }
                                                         §§goto(addr326);
                                                      }
                                                      §§goto(addr321);
                                                   }
                                                }
                                             }
                                             §§goto(addr225);
                                             addr189:
                                          }
                                          while(true)
                                          {
                                             _loc8_++;
                                             if(_loc19_ || param2)
                                             {
                                                §§goto(addr189);
                                             }
                                             §§goto(addr192);
                                          }
                                          addr181:
                                       }
                                    }
                                    if(!_loc19_)
                                    {
                                       continue loop5;
                                       break;
                                    }
                                    if(_loc19_ || param2)
                                    {
                                       if(_loc19_ || param1)
                                       {
                                          param5.transformVectors(this.§=+§,this.§6!P§);
                                          continue loop5;
                                       }
                                       continue loop4;
                                    }
                                    continue loop6;
                                 }
                                 addr191:
                                 §§push(_loc6_);
                                 while(true)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       _loc9_[_loc14_ = _loc7_++] = this.§=+§[_loc8_];
                                       while(true)
                                       {
                                          if(_loc19_)
                                          {
                                             §§goto(addr181);
                                          }
                                          §§goto(addr192);
                                       }
                                       addr178:
                                    }
                                    §§goto(addr192);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         loop8:
         while(true)
         {
            §§push(0);
            if(!(_loc18_ && this))
            {
               _loc8_ = §§pop();
               if(_loc18_)
               {
                  continue;
               }
               if(false)
               {
                  §§goto(addr51);
               }
               else
               {
                  while(true)
                  {
                     §§push(_loc8_);
                     if(_loc18_ && this)
                     {
                        break loop8;
                     }
                     §§push(_loc6_);
                     if(_loc19_)
                     {
                        if(§§pop() >= §§pop())
                        {
                           if(_loc18_)
                           {
                              break;
                           }
                        }
                        else
                        {
                           _loc9_[_loc14_ = _loc7_++] = this.§6!P§[_loc8_];
                           if(_loc19_ || param3)
                           {
                              if(!_loc18_)
                              {
                                 _loc8_++;
                                 if(_loc19_)
                                 {
                                    continue;
                                 }
                              }
                              else
                              {
                                 §§goto(addr164);
                              }
                              §§goto(addr164);
                           }
                           §§goto(addr178);
                        }
                        §§goto(addr164);
                     }
                  }
                  §§goto(addr181);
               }
            }
            §§goto(addr102);
         }
         §§goto(addr156);
      }
      
      public function append(param1:§1!-§) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:int = this.§29§.length;
         if(!_loc9_)
         {
            this.§29§.length += param1.§29§.length;
            while(true)
            {
               this.§29§.position = _loc2_;
               addr55:
               loop1:
               while(true)
               {
                  addr43:
                  while(true)
                  {
                     this.§29§.writeBytes(param1.§29§);
                     continue loop1;
                  }
               }
            }
            addr66:
         }
         while(true)
         {
            this.§;-§.fixed = false;
            if(_loc9_)
            {
               continue;
            }
            if(!(_loc9_ && _loc2_))
            {
               if(!_loc9_)
               {
                  if(true)
                  {
                     break;
                  }
               }
               else
               {
                  §§goto(addr66);
               }
               §§goto(addr43);
            }
            §§goto(addr55);
         }
         var _loc3_:Vector.<Number> = param1.§;-§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(true)
         {
            if(_loc5_ >= _loc4_)
            {
               if(_loc10_ || this)
               {
                  this.§;-§.fixed = true;
               }
               while(true)
               {
                  if(_loc10_)
                  {
                     continue;
                  }
               }
               addr129:
               continue;
            }
            this.§;-§.push(_loc3_[_loc5_]);
            _loc5_++;
            §§goto(addr129);
         }
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§=+§).length;
         var _loc8_:int = 0;
         if(!(_loc9_ && this))
         {
            while(true)
            {
               if(_loc8_ >= _loc7_)
               {
                  if(!_loc9_)
                  {
                     this.§=+§.fixed = true;
                  }
                  while(true)
                  {
                     if(_loc10_ || _loc2_)
                     {
                        continue;
                     }
                  }
                  continue;
               }
               this.§=+§.push(_loc6_[_loc8_]);
               _loc8_++;
            }
         }
         §§goto(addr206);
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         §§push(param1);
         if(_loc8_ || this)
         {
            §§push(int(§§pop() * §6V§));
         }
         var _loc5_:* = §§pop();
         var _loc6_:*;
         this.§=+§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§=+§[_loc7_ = _loc5_++] = param3;
         if(_loc8_ || param1)
         {
            this.§=+§[_loc5_] = param4;
         }
      }
      
      public function §?Y§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(param1);
         if(_loc6_ || param3)
         {
            §§push(int(§§pop() * §6V§));
         }
         var _loc4_:* = §§pop();
         var _loc5_:*;
         this.§=+§[_loc5_ = _loc4_++] = param2;
         if(!(_loc7_ && param2))
         {
            this.§=+§[_loc4_] = param3;
         }
      }
      
      public function §<!x§(param1:int, param2:Vector3D) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(!_loc5_)
         {
            §§push(int(§§pop() * §6V§));
         }
         var _loc3_:* = §§pop();
         if(!_loc5_)
         {
            param2.x = this.§=+§[_loc3_++];
            while(true)
            {
               param2.y = this.§=+§[_loc3_++];
               §§goto(addr77);
            }
         }
         addr77:
         while(true)
         {
            param2.z = this.§=+§[_loc3_];
            if(!(_loc5_ && param2))
            {
               if(!_loc5_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §3I§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_ || this)
         {
            if(this.§;!n§)
            {
               addr26:
               §§push(param3);
               if(!_loc9_)
               {
                  §§push(Number(§§pop()));
                  if(_loc9_ && param3)
                  {
                  }
                  addr42:
                  §§push(Number(§§pop()));
               }
            }
            else
            {
               §§push(Number(1));
               if(!_loc9_)
               {
                  §§goto(addr42);
               }
            }
            var _loc4_:*;
            §§push(_loc4_ = §§pop());
            if(!(_loc9_ && param2))
            {
               §§push(§§pop() / 255);
               if(_loc8_)
               {
                  §§push(Number(§§pop()));
                  if(!(_loc9_ && this))
                  {
                     addr74:
                     _loc4_ = §§pop();
                     §§push(§-G§.§7_§(param2) * _loc4_);
                     if(_loc8_ || this)
                     {
                     }
                     §§goto(addr88);
                  }
                  addr88:
                  var _loc5_:* = §§pop();
                  §§push(§-G§.§9"<§(param2) * _loc4_);
                  if(_loc8_ || param3)
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc6_:* = §§pop();
                  §§push(§-G§.§8t§(param2) * _loc4_);
                  if(_loc8_ || this)
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc7_:* = §§pop();
                  if(!(_loc9_ && this))
                  {
                     this.§^f§(param1,1,_loc5_,_loc6_,_loc7_,param3);
                  }
                  return;
                  §§push(Number(§§pop()));
               }
            }
            §§goto(addr74);
         }
         §§goto(addr26);
      }
      
      private function §^f§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         §§push(param1);
         if(!(_loc14_ && param1))
         {
            §§push(int(§§pop() * §!!J§));
         }
         var _loc7_:* = §§pop();
         §§push(param2);
         if(!_loc14_)
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
               this.§;-§[_loc9_ = _loc7_++] = param3;
               if(_loc13_)
               {
                  var _loc10_:*;
                  this.§;-§[_loc10_ = _loc7_++] = param4;
                  if(_loc13_ || param3)
                  {
                     var _loc11_:*;
                     this.§;-§[_loc11_ = _loc7_++] = param5;
                     if(!(_loc14_ && this))
                     {
                        var _loc12_:*;
                        this.§;-§[_loc12_ = _loc7_++] = param6;
                     }
                  }
               }
               if(!_loc13_)
               {
                  break;
               }
               §§push(_loc8_);
               if(!(_loc14_ && param3))
               {
                  §§push(§§pop() - 1);
                  if(_loc13_ || param2)
                  {
                     continue loop0;
                  }
                  continue;
               }
               continue loop0;
            }
            addr145:
            return;
         }
      }
      
      private function §^!o§(param1:int, param2:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         §§push(param1);
         if(_loc7_ || param2)
         {
            §§push(int(§§pop() * §!!J§));
         }
         var _loc3_:* = §§pop();
         var _loc4_:*;
         this.§;-§[_loc4_ = _loc3_++] = this.§;-§[_loc4_] * param2;
         var _loc5_:*;
         this.§;-§[_loc5_ = _loc3_++] = this.§;-§[_loc5_] * param2;
         var _loc6_:*;
         this.§;-§[_loc6_ = _loc3_++] = this.§;-§[_loc6_] * param2;
         if(_loc7_ || param1)
         {
            this.§;-§[_loc3_] *= param2;
         }
      }
      
      public function §5"<§(param1:int) : uint
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         §§push(param1);
         if(!(_loc8_ && _loc3_))
         {
            §§push(int(§§pop() * §!!J§));
         }
         var _loc2_:* = §§pop();
         if(_loc7_)
         {
            if(this.§;!n§)
            {
               addr39:
               §§push(Number(this.§;-§[_loc2_ + 3]));
               if(!_loc8_)
               {
                  addr53:
                  §§push(Number(§§pop()));
               }
            }
            else
            {
               §§push(Number(1));
               if(_loc7_)
               {
                  §§goto(addr53);
               }
            }
            var _loc3_:* = §§pop();
            if(_loc7_ || this)
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
                        if(_loc7_)
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
                                 while(!_loc8_)
                                 {
                                    §§push(this.§;-§[_loc2_] * _loc3_);
                                    loop5:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       loop6:
                                       while(_loc7_)
                                       {
                                          _loc4_ = §§pop();
                                          loop7:
                                          while(_loc7_)
                                          {
                                             loop8:
                                             while(true)
                                             {
                                                §§push(this.§;-§[_loc2_ + 1] * _loc3_);
                                                loop9:
                                                while(_loc7_ || param1)
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      loop10:
                                                      while(true)
                                                      {
                                                         if(!_loc8_)
                                                         {
                                                            _loc5_ = §§pop();
                                                            while(true)
                                                            {
                                                               §§push(this.§;-§[_loc2_ + 2] * _loc3_);
                                                               if(!_loc8_)
                                                               {
                                                                  if(!_loc8_)
                                                                  {
                                                                     if(_loc8_ && _loc2_)
                                                                     {
                                                                        continue loop9;
                                                                     }
                                                                     §§goto(addr103);
                                                                     §§push(Number(§§pop()));
                                                                     continue loop9;
                                                                  }
                                                                  continue loop10;
                                                               }
                                                               addr103:
                                                               if(_loc8_ && this)
                                                               {
                                                                  break;
                                                               }
                                                               _loc6_ = §§pop();
                                                               if(_loc7_)
                                                               {
                                                                  if(!_loc8_)
                                                                  {
                                                                     if(!_loc8_)
                                                                     {
                                                                        break loop8;
                                                                     }
                                                                     continue loop4;
                                                                  }
                                                                  continue loop7;
                                                               }
                                                            }
                                                            continue loop3;
                                                         }
                                                         continue loop0;
                                                      }
                                                      continue loop1;
                                                   }
                                                   continue loop5;
                                                }
                                                continue loop6;
                                             }
                                             return §-G§.§?!T§(_loc4_,_loc5_,_loc6_);
                                          }
                                          break loop1;
                                       }
                                       continue loop2;
                                    }
                                 }
                                 continue loop1;
                              }
                           }
                        }
                        break;
                     }
                     return §§pop();
                  }
                  §§goto(addr179);
               }
            }
            §§goto(addr164);
         }
         §§goto(addr39);
      }
      
      public function §6!8§(param1:int, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = 0;
         if(_loc5_ || this)
         {
            §§push(param2);
            if(!(_loc4_ && param1))
            {
               if(§§pop() < 0.001)
               {
                  while(true)
                  {
                     §§push(0.001);
                     addr140:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        addr141:
                        while(true)
                        {
                           param2 = §§pop();
                           addr142:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr139:
               }
               loop2:
               while(true)
               {
                  if(this.§;!n§)
                  {
                     if(_loc4_ && param2)
                     {
                        break;
                     }
                     if(!(_loc4_ && param1))
                     {
                        this.§3I§(param1,this.§5"<§(param1),param2);
                        break;
                     }
                     continue;
                  }
                  §§push(param1);
                  if(!(_loc4_ && param1))
                  {
                     §§push(§§pop() * §!!J§);
                     if(!(_loc4_ && param2))
                     {
                        if(_loc5_)
                        {
                           if(_loc5_)
                           {
                              addr82:
                              _loc3_ = §§pop() + 3;
                              §§goto(addr81);
                           }
                           §§goto(addr140);
                        }
                        §§goto(addr141);
                     }
                     addr81:
                     do
                     {
                        if(_loc4_ && param1)
                        {
                           break loop2;
                        }
                        if(!_loc4_)
                        {
                           continue;
                        }
                        §§goto(addr139);
                     }
                     while(this.§;-§[_loc3_] = param2, _loc4_ && param2);
                     
                     return;
                  }
                  §§goto(addr82);
               }
               §§goto(addr82);
            }
            §§goto(addr141);
         }
         §§goto(addr142);
      }
      
      public function § !n§(param1:int) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(_loc4_)
         {
            §§push(§§pop() * §!!J§);
            if(_loc4_ || param1)
            {
               §§push(§§pop() + 3);
            }
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         return this.§;-§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1);
         if(!_loc5_)
         {
            §§push(int(§§pop() * §%0§));
         }
         var _loc4_:* = §§pop();
         if(_loc6_)
         {
            this.§29§.position = _loc4_ * §]t§;
         }
         do
         {
            this.§29§.writeFloat(param2);
            do
            {
               this.§29§.writeFloat(param3);
            }
            while(!_loc6_);
            
         }
         while(_loc5_);
         
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(_loc5_ || param1)
         {
            §§push(int(§§pop() * §%0§));
         }
         var _loc3_:* = §§pop();
         if(!_loc4_)
         {
            this.§29§.position = _loc3_ * §]t§;
         }
         while(true)
         {
            param2.x = this.§29§.readFloat();
            while(_loc5_)
            {
               param2.y = this.§29§.readFloat();
               if(_loc5_)
               {
                  return;
               }
            }
         }
      }
      
      public function §7"%§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         §§push(param1);
         if(!(_loc8_ && param1))
         {
            §§push(int(§§pop() * §6V§));
         }
         var _loc5_:* = §§pop();
         var _loc6_:*;
         this.§=+§[_loc6_ = _loc5_++] = this.§=+§[_loc6_] + param2;
         var _loc7_:*;
         this.§=+§[_loc7_ = _loc5_++] = this.§=+§[_loc7_] + param3;
         if(!_loc8_)
         {
            this.§=+§[_loc5_] += param4;
         }
      }
      
      public function §-! §(param1:int, param2:Matrix3D) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(!_loc5_)
         {
            §§push(int(§§pop() * §6V§));
         }
         var _loc3_:* = §§pop();
         if(_loc4_)
         {
            this.§6!P§[0] = this.§=+§[_loc3_];
            while(true)
            {
               this.§6!P§[1] = this.§=+§[_loc3_ + 1];
               while(true)
               {
                  this.§6!P§[2] = this.§=+§[_loc3_ + 2];
                  while(!_loc5_)
                  {
                     if(_loc4_ || param2)
                     {
                        return;
                     }
                  }
               }
            }
            addr146:
         }
         while(true)
         {
            param2.transformVectors(this.§6!P§,this.§6!P§);
            loop4:
            while(true)
            {
               this.§=+§[_loc3_] = this.§6!P§[0];
               loop5:
               while(true)
               {
                  if(_loc4_)
                  {
                     this.§=+§[_loc3_ + 1] = this.§6!P§[1];
                     while(!_loc5_)
                     {
                        this.§=+§[_loc3_ + 2] = this.§6!P§[2];
                        if(!_loc5_)
                        {
                           continue loop5;
                        }
                     }
                     continue loop4;
                  }
                  §§goto(addr146);
               }
            }
         }
      }
      
      public function §+"0§(param1:uint, param2:Number = 1.0) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || param1)
         {
            §§push(param2);
            if(!(_loc7_ && param1))
            {
               if(§§pop() < 0.001)
               {
                  if(_loc8_)
                  {
                     addr36:
                     §§push(0.001);
                     if(_loc8_ || _loc3_)
                     {
                        addr44:
                        §§push(Number(§§pop()));
                        if(!(_loc7_ && param2))
                        {
                           addr52:
                           param2 = §§pop();
                           if(_loc8_ || _loc3_)
                           {
                              addr60:
                              if(this.§;!n§)
                              {
                                 addr63:
                                 §§push(param2);
                                 if(!(_loc7_ && param2))
                                 {
                                    addr71:
                                    §§push(Number(§§pop()));
                                    if(_loc8_)
                                    {
                                       addr94:
                                       §§push(Number(§§pop()));
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(Number(1));
                                 if(!(_loc7_ && _loc3_))
                                 {
                                    §§goto(addr94);
                                 }
                              }
                              var _loc3_:* = §§pop();
                              if(!(_loc7_ && param1))
                              {
                                 §§push(_loc3_);
                                 if(!_loc7_)
                                 {
                                    §§push(§§pop() / 255);
                                    if(!(_loc7_ && param1))
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc8_)
                                       {
                                          _loc3_ = §§pop();
                                          addr119:
                                          §§push(§-G§.§7_§(param1) * _loc3_);
                                          if(!_loc7_)
                                          {
                                             addr126:
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       var _loc4_:* = §§pop();
                                       §§push(§-G§.§9"<§(param1) * _loc3_);
                                       if(_loc8_ || this)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc5_:* = §§pop();
                                       §§push(§-G§.§8t§(param1) * _loc3_);
                                       if(_loc8_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc6_:* = §§pop();
                                       if(!(_loc7_ && param1))
                                       {
                                          this.§^f§(0,this.§-!3§,_loc4_,_loc5_,_loc6_,param2);
                                       }
                                       return;
                                    }
                                 }
                                 §§goto(addr126);
                              }
                              §§goto(addr119);
                           }
                           §§goto(addr63);
                        }
                        §§goto(addr71);
                     }
                     §§goto(addr52);
                  }
               }
               §§goto(addr60);
            }
            §§goto(addr44);
         }
         §§goto(addr36);
      }
      
      public function § "@§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         if(!(_loc14_ && this))
         {
            §§push(param6);
            if(_loc13_ || param2)
            {
               if(§§pop() < 0.001)
               {
                  if(_loc13_ || this)
                  {
                     §§push(0.001);
                     if(_loc13_)
                     {
                        §§push(Number(§§pop()));
                        if(!(_loc14_ && param3))
                        {
                           addr51:
                           param6 = §§pop();
                           §§goto(addr52);
                        }
                        §§goto(addr57);
                     }
                  }
                  §§goto(addr52);
               }
               addr52:
               §§push(param1);
               if(!_loc14_)
               {
                  addr57:
                  §§push(int(§§pop() * §!!J§));
               }
               var _loc7_:* = §§pop();
               var _loc8_:int = 0;
               while(_loc8_ < param2)
               {
                  var _loc9_:*;
                  this.§;-§[_loc9_ = _loc7_++] = param3;
                  if(!_loc14_)
                  {
                     var _loc10_:*;
                     this.§;-§[_loc10_ = _loc7_++] = param4;
                     if(!(_loc14_ && this))
                     {
                        var _loc11_:*;
                        this.§;-§[_loc11_ = _loc7_++] = param5;
                        if(_loc13_)
                        {
                           var _loc12_:*;
                           this.§;-§[_loc12_ = _loc7_++] = param6;
                        }
                     }
                  }
                  if(_loc14_ && this)
                  {
                     break;
                  }
                  _loc8_++;
                  if(!_loc13_)
                  {
                     break;
                  }
               }
               return;
            }
         }
         §§goto(addr51);
      }
      
      public function §81§(param1:int, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = NaN;
         if(_loc5_ || _loc3_)
         {
            §§push(param2);
            if(!_loc6_)
            {
               if(§§pop() < 0.001)
               {
                  if(_loc5_ || param2)
                  {
                     §§push(0.001);
                     if(_loc5_)
                     {
                        §§push(Number(§§pop()));
                        if(!(_loc6_ && this))
                        {
                           param2 = §§pop();
                           if(!(_loc6_ && this))
                           {
                              addr56:
                              §§push(param2);
                              if(!_loc6_)
                              {
                                 addr59:
                                 if(§§pop() == 1)
                                 {
                                    if(_loc5_)
                                    {
                                       §§goto(addr63);
                                    }
                                    else
                                    {
                                       addr64:
                                       §§push(param1);
                                       if(_loc5_ || param1)
                                       {
                                          addr74:
                                          §§push(int(§§pop() * §!!J§));
                                       }
                                       var _loc3_:* = §§pop();
                                       if(!_loc6_)
                                       {
                                          if(!this.§;!n§)
                                          {
                                             this.§;-§[_loc3_ + 3] *= param2;
                                             if(!_loc6_)
                                             {
                                                if(_loc6_)
                                                {
                                                   loop0:
                                                   while(true)
                                                   {
                                                      if(!(_loc6_ && param2))
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            break;
                                                         }
                                                         loop1:
                                                         while(true)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               this.§;-§[_loc3_] *= _loc4_;
                                                               while(!_loc5_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(this.§;-§[_loc3_ + 3]));
                                                                     addr231:
                                                                     while(true)
                                                                     {
                                                                        _loc4_ = §§pop();
                                                                     }
                                                                  }
                                                               }
                                                               continue loop0;
                                                               addr178:
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(param2);
                                                               if(_loc5_ || this)
                                                               {
                                                                  §§push(§§pop() / _loc4_);
                                                                  if(_loc6_ && param1)
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                               }
                                                               if(_loc5_ || _loc3_)
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr231);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr178);
                                                   }
                                                   this.§;-§[_loc3_ + 2] *= _loc4_;
                                                   loop4:
                                                   while(true)
                                                   {
                                                      this.§;-§[_loc3_ + 3] = param2;
                                                      addr123:
                                                      while(!_loc5_)
                                                      {
                                                         continue loop4;
                                                      }
                                                   }
                                                }
                                                return;
                                             }
                                             §§goto(addr123);
                                          }
                                       }
                                       §§goto(addr224);
                                    }
                                 }
                                 §§goto(addr64);
                              }
                           }
                           §§goto(addr64);
                        }
                        §§goto(addr74);
                     }
                     §§goto(addr59);
                  }
                  §§goto(addr64);
               }
               §§goto(addr56);
            }
            §§goto(addr59);
         }
         addr63:
      }
      
      public function §"!W§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:int = 0;
         var _loc4_:* = 0;
         var _loc5_:* = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         if(!_loc8_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop() == this.§;!n§)
               {
                  if(_loc9_ || param2)
                  {
                     break;
                  }
                  while(true)
                  {
                     addr248:
                     if(_loc8_ && param1)
                     {
                        continue;
                     }
                     addr260:
                     _loc3_ = this.§-!3§ * §!!J§;
                     addr261:
                     addr257:
                     §§push(0);
                     if(_loc9_)
                     {
                        if(_loc9_ || this)
                        {
                           _loc4_ = §§pop();
                           if(!(_loc9_ || this))
                           {
                              §§goto(addr261);
                           }
                           addr34:
                           §§push(_loc4_);
                           if(_loc9_)
                           {
                              if(§§pop() >= _loc3_)
                              {
                                 if(_loc9_ || this)
                                 {
                                    if(!(_loc8_ && param2))
                                    {
                                       addr54:
                                       this.§;!n§ = param1;
                                       addr58:
                                       if(_loc9_)
                                       {
                                          if(!_loc8_)
                                          {
                                             if(!_loc9_)
                                             {
                                                addr183:
                                                if(_loc9_)
                                                {
                                                   §§push(_loc5_);
                                                   if(!_loc8_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(!(_loc8_ && param2))
                                                      {
                                                         addr196:
                                                      }
                                                      addr200:
                                                      _loc6_ = §§pop();
                                                      addr201:
                                                      addr199:
                                                      §§push(param1);
                                                      if(!_loc8_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            addr151:
                                                            §§push(_loc5_);
                                                            if(!_loc8_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(_loc9_)
                                                               {
                                                                  addr169:
                                                                  §§push(Number(§§pop()));
                                                                  if(!(_loc8_ && this))
                                                                  {
                                                                     _loc7_ = §§pop();
                                                                     §§push(_loc6_);
                                                                     if(!_loc8_)
                                                                     {
                                                                        if(!(_loc8_ && this))
                                                                        {
                                                                           if(_loc9_ || param1)
                                                                           {
                                                                              if(§§pop() != 0)
                                                                              {
                                                                                 addr162:
                                                                                 addr105:
                                                                                 §§push(_loc7_);
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    §§push(§§pop() / _loc6_);
                                                                                    if(_loc9_ || _loc3_)
                                                                                    {
                                                                                    }
                                                                                    addr135:
                                                                                    if(_loc9_ || param2)
                                                                                    {
                                                                                       _loc7_ = §§pop();
                                                                                       addr143:
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          this.§^!o§(_loc4_,_loc7_);
                                                                                          addr75:
                                                                                          if(!(_loc8_ && param2))
                                                                                          {
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                addr65:
                                                                                                _loc4_++;
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   §§goto(addr34);
                                                                                                }
                                                                                                §§goto(addr75);
                                                                                             }
                                                                                             §§goto(addr201);
                                                                                          }
                                                                                          §§goto(addr143);
                                                                                       }
                                                                                       §§goto(addr151);
                                                                                    }
                                                                                    addr209:
                                                                                    _loc5_ = §§pop();
                                                                                    addr182:
                                                                                    if(this.§;!n§)
                                                                                    {
                                                                                       §§goto(addr183);
                                                                                    }
                                                                                    §§goto(addr199);
                                                                                    §§push(Number(1));
                                                                                    addr210:
                                                                                 }
                                                                                 if(!(_loc8_ && param2))
                                                                                 {
                                                                                    §§goto(addr135);
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 if(!(_loc8_ && param2))
                                                                                 {
                                                                                    §§goto(addr169);
                                                                                 }
                                                                                 §§goto(addr209);
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              §§goto(addr65);
                                                                           }
                                                                           §§goto(addr201);
                                                                        }
                                                                        §§goto(addr169);
                                                                     }
                                                                     §§goto(addr135);
                                                                     addr178:
                                                                  }
                                                                  §§goto(addr200);
                                                               }
                                                            }
                                                            §§goto(addr162);
                                                         }
                                                         addr159:
                                                         §§push(1);
                                                         if(_loc9_)
                                                         {
                                                            §§goto(addr162);
                                                            §§push(Number(§§pop()));
                                                         }
                                                         §§goto(addr135);
                                                      }
                                                      §§goto(addr182);
                                                   }
                                                   §§goto(addr196);
                                                }
                                                §§goto(addr210);
                                             }
                                             return;
                                          }
                                          §§goto(addr105);
                                       }
                                       §§goto(addr65);
                                    }
                                    §§goto(addr178);
                                 }
                                 §§goto(addr58);
                              }
                              §§goto(addr162);
                              §§push(this.§ !n§(0));
                           }
                           §§goto(addr159);
                        }
                        §§goto(addr257);
                     }
                     §§goto(addr260);
                  }
               }
               while(true)
               {
                  §§push(param2);
                  if(!_loc8_)
                  {
                     if(§§pop())
                     {
                        if(!_loc8_)
                        {
                           §§goto(addr248);
                        }
                        §§goto(addr260);
                     }
                     break;
                  }
                  continue loop0;
               }
               §§goto(addr54);
            }
         }
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§;!n§;
      }
      
      public function get §8=§() : int
      {
         return this.§-!3§;
      }
      
      public function set §8=§(param1:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(!_loc5_)
         {
            §§push(param1);
            while(true)
            {
               §§push(§%0§);
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc5_ && _loc3_))
                  {
                     §§push(§§pop() * §]t§);
                     if(!_loc5_)
                     {
                        §§push(§§pop() - this.§29§.length);
                     }
                  }
                  §§push(int(§§pop()));
                  loop2:
                  while(true)
                  {
                     _loc2_ = §§pop();
                     addr481:
                     while(true)
                     {
                        §§push(int(this.§29§.length));
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr385);
      }
      
      public function get §`I§() : ByteArray
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§29§.position = 0;
         }
         return this.§29§;
      }
      
      public function get §%3§() : Vector.<Number>
      {
         return this.§;-§;
      }
      
      public function get §%!8§() : Vector.<Number>
      {
         return this.§=+§;
      }
   }
}
