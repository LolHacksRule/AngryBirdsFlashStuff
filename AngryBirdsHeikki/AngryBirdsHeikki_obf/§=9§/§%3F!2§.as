package §=9§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §?!2§
   {
      
      public static const §1!R§:int = 4;
      
      public static const §6?§:int = 2;
      
      public static const §#!Q§:int = 3;
      
      public static const §-w§:int = 4;
      
      public static const §3A§:int = 0;
      
      public static const §'"§:int = 0;
      
      public static const §1!,§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §1!R§ = 4;
            loop0:
            while(true)
            {
               §6?§ = 2;
               loop1:
               while(true)
               {
                  §#!Q§ = 3;
                  loop2:
                  while(true)
                  {
                     §-w§ = 4;
                     while(true)
                     {
                        §3A§ = 0;
                        while(_loc2_)
                        {
                           if(!_loc1_)
                           {
                              if(!_loc1_)
                              {
                                 §'"§ = 0;
                                 while(_loc2_ || _loc2_)
                                 {
                                    continue loop0;
                                    §1!,§ = 0;
                                    if(!(_loc1_ && _loc1_))
                                    {
                                       return;
                                       addr35:
                                    }
                                 }
                                 continue;
                              }
                              continue loop1;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr35);
      }
      
      private var §+V§:ByteArray;
      
      private var §3@§:Vector.<Number>;
      
      private var §-!E§:Vector.<Number>;
      
      private var §][§:Boolean;
      
      private var §'!b§:int;
      
      private var §]N§:Vector.<Number>;
      
      public function §?!2§(param1:int, param2:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || _loc3_)
         {
            this.§]N§ = new Vector.<Number>(12,true);
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§+V§ = new ByteArray();
                  loop2:
                  while(true)
                  {
                     addr51:
                     while(true)
                     {
                        this.§+V§.endian = Endian.LITTLE_ENDIAN;
                        while(_loc4_)
                        {
                           this.§+V§.length = param1 * §6?§ * §-w§;
                           if(_loc4_ || param1)
                           {
                              continue loop2;
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr51);
         }
         var _loc3_:int = 0;
         loop6:
         while(true)
         {
            if(_loc3_ >= param1 * §6?§)
            {
               loop7:
               while(true)
               {
                  this.§3@§ = new Vector.<Number>(param1 * §1!R§,true);
                  loop8:
                  while(true)
                  {
                     if(_loc5_)
                     {
                        break loop7;
                     }
                     this.§-!E§ = new Vector.<Number>(param1 * §#!Q§,true);
                     loop9:
                     while(_loc4_ || this)
                     {
                        if(!_loc5_)
                        {
                           this.§][§ = param2;
                           while(!(_loc5_ && param1))
                           {
                              this.§'!b§ = param1;
                              if(!_loc5_)
                              {
                                 if(_loc4_)
                                 {
                                    return;
                                 }
                                 continue loop9;
                              }
                           }
                           continue loop8;
                        }
                        continue loop6;
                     }
                     continue loop7;
                  }
               }
            }
            else
            {
               this.§+V§.writeFloat(0);
            }
            _loc3_++;
         }
      }
      
      public function clone() : §?!2§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§?!2§ = new §?!2§(0,this.§][§);
         if(!_loc2_)
         {
            _loc1_.§+V§.length = this.§+V§.length;
            loop0:
            while(true)
            {
               _loc1_.§+V§.writeBytes(this.§+V§);
               loop1:
               while(true)
               {
                  _loc1_.§3@§ = this.§3@§.concat();
                  loop2:
                  while(true)
                  {
                     _loc1_.§3@§.fixed = true;
                     while(!_loc2_)
                     {
                        while(_loc3_ || _loc1_)
                        {
                           if(!_loc2_)
                           {
                              _loc1_.§-!E§.fixed = true;
                              do
                              {
                                 _loc1_.§'!b§ = this.§'!b§;
                              }
                              while(!(_loc3_ || _loc2_));
                              
                              if(_loc3_ || _loc3_)
                              {
                                 continue loop0;
                              }
                              continue;
                              continue;
                           }
                           continue loop2;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         while(true)
         {
            _loc1_.§-!E§ = this.§-!E§.concat();
            §§goto(addr76);
         }
         §§goto(addr63);
      }
      
      public function copyTo(param1:§?!2§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:* = NaN;
         var _loc9_:Vector.<Number> = param1.§-!E§;
         if(_loc18_ || this)
         {
            §§push(this.§'!b§);
            if(!(_loc19_ && param2))
            {
               §§push(§#!Q§);
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  addr117:
                  while(true)
                  {
                     §§push(int(§§pop()));
                  }
               }
               addr116:
            }
            loop2:
            while(true)
            {
               _loc6_ = §§pop();
               loop3:
               while(true)
               {
                  §§push(param2);
                  if(_loc18_)
                  {
                     §§push(§#!Q§);
                     if(!_loc19_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc18_ || this)
                        {
                           §§push(int(§§pop()));
                           loop4:
                           while(!(_loc19_ && param3))
                           {
                              _loc7_ = §§pop();
                              while(!(_loc19_ && param3))
                              {
                                 while(true)
                                 {
                                    addr57:
                                    loop7:
                                    while(true)
                                    {
                                       if(!param5)
                                       {
                                          §§push(0);
                                          if(_loc18_)
                                          {
                                             addr175:
                                             _loc8_ = §§pop();
                                             if(_loc18_)
                                             {
                                                addr178:
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(_loc8_);
                                                   break loop7;
                                                   addr195:
                                                   while(true)
                                                   {
                                                      _loc8_++;
                                                      if(!(_loc18_ || this))
                                                      {
                                                         break loop10;
                                                      }
                                                      continue loop10;
                                                   }
                                                }
                                                addr206:
                                                var _loc10_:ByteArray = param1.§+V§;
                                                if(!(_loc19_ && param3))
                                                {
                                                   §§push(this.§'!b§);
                                                   if(_loc18_)
                                                   {
                                                      §§push(§6?§);
                                                      while(true)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         addr343:
                                                         while(true)
                                                         {
                                                            §§push(§-w§);
                                                            addr344:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               addr345:
                                                               while(true)
                                                               {
                                                                  §§push(int(§§pop()));
                                                               }
                                                            }
                                                         }
                                                      }
                                                      addr342:
                                                   }
                                                   loop15:
                                                   while(true)
                                                   {
                                                      _loc6_ = §§pop();
                                                      while(true)
                                                      {
                                                         §§push(param2);
                                                         if(!(_loc19_ && param2))
                                                         {
                                                            §§push(§6?§);
                                                            if(!_loc19_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!(_loc19_ && param1))
                                                               {
                                                                  if(_loc19_ && param1)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(§-w§);
                                                                  if(!_loc19_)
                                                                  {
                                                                     if(_loc18_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!_loc19_)
                                                                        {
                                                                           if(_loc18_ || param1)
                                                                           {
                                                                              addr326:
                                                                              §§push(int(§§pop()));
                                                                              if(_loc19_ && param2)
                                                                              {
                                                                                 continue loop15;
                                                                              }
                                                                              _loc7_ = §§pop();
                                                                              if(!_loc19_)
                                                                              {
                                                                                 if(_loc10_.length < _loc7_ + _loc6_)
                                                                                 {
                                                                                    while(!_loc19_)
                                                                                    {
                                                                                       _loc10_.length = _loc7_ + _loc6_;
                                                                                       while(true)
                                                                                       {
                                                                                       }
                                                                                       addr255:
                                                                                       if(!(_loc18_ || param2))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       §§push(param4);
                                                                                       if(!_loc19_)
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                          if(_loc18_ || param3)
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                if(_loc18_)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   if(_loc18_ || this)
                                                                                                   {
                                                                                                      if(false)
                                                                                                      {
                                                                                                         loop20:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc10_.writeBytes(this.§+V§);
                                                                                                            if(!_loc19_)
                                                                                                            {
                                                                                                               if(_loc18_)
                                                                                                               {
                                                                                                                  if(!_loc19_)
                                                                                                                  {
                                                                                                                     §§goto(addr255);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr282);
                                                                                                                  }
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  continue loop20;
                                                                                                               }
                                                                                                               addr267:
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         addr355:
                                                                                                         _loc11_ = param1.§3@§;
                                                                                                         if(!(_loc19_ && param1))
                                                                                                         {
                                                                                                            §§push(this.§'!b§);
                                                                                                            if(_loc18_)
                                                                                                            {
                                                                                                               addr429:
                                                                                                               §§push(§§pop() * §1!R§);
                                                                                                               if(_loc18_)
                                                                                                               {
                                                                                                                  addr433:
                                                                                                                  _loc6_ = int(§§pop());
                                                                                                                  if(!_loc19_)
                                                                                                                  {
                                                                                                                     addr398:
                                                                                                                     §§push(param2);
                                                                                                                     if(!_loc19_)
                                                                                                                     {
                                                                                                                        if(!_loc19_)
                                                                                                                        {
                                                                                                                           §§push(§1!R§);
                                                                                                                           if(!_loc19_)
                                                                                                                           {
                                                                                                                              if(!(_loc19_ && param2))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(!_loc19_)
                                                                                                                                 {
                                                                                                                                    §§push(int(§§pop()));
                                                                                                                                    if(_loc18_)
                                                                                                                                    {
                                                                                                                                       _loc7_ = §§pop();
                                                                                                                                       if(_loc18_)
                                                                                                                                       {
                                                                                                                                          §§push(param3);
                                                                                                                                          if(_loc18_)
                                                                                                                                          {
                                                                                                                                             if(§§pop() == 1)
                                                                                                                                             {
                                                                                                                                                if(!(_loc19_ && param3))
                                                                                                                                                {
                                                                                                                                                   §§push(0);
                                                                                                                                                   if(!_loc19_)
                                                                                                                                                   {
                                                                                                                                                      _loc8_ = §§pop();
                                                                                                                                                      if(!_loc19_)
                                                                                                                                                      {
                                                                                                                                                         if(false)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr398);
                                                                                                                                                         }
                                                                                                                                                         addr542:
                                                                                                                                                         §§push(_loc8_);
                                                                                                                                                         §§push(_loc6_);
                                                                                                                                                         if(_loc18_)
                                                                                                                                                         {
                                                                                                                                                            addr546:
                                                                                                                                                            if(§§pop() >= §§pop())
                                                                                                                                                            {
                                                                                                                                                               addr547:
                                                                                                                                                               if(_loc19_ && param2)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr542);
                                                                                                                                                                  addr566:
                                                                                                                                                               }
                                                                                                                                                               addr774:
                                                                                                                                                               return;
                                                                                                                                                               addr554:
                                                                                                                                                            }
                                                                                                                                                            var _loc14_:*;
                                                                                                                                                            _loc11_[_loc14_ = _loc7_++] = this.§3@§[_loc8_];
                                                                                                                                                            if(_loc18_ || param2)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc19_)
                                                                                                                                                               {
                                                                                                                                                                  _loc8_++;
                                                                                                                                                                  §§goto(addr566);
                                                                                                                                                               }
                                                                                                                                                               addr518:
                                                                                                                                                               §§push(param3);
                                                                                                                                                               if(_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  addr466:
                                                                                                                                                                  §§push(§§pop() / _loc13_);
                                                                                                                                                                  if(!(_loc19_ && param3))
                                                                                                                                                                  {
                                                                                                                                                                     addr475:
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                  }
                                                                                                                                                                  if(!(_loc19_ && param2))
                                                                                                                                                                  {
                                                                                                                                                                     addr483:
                                                                                                                                                                     _loc13_ = §§pop();
                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc19_ && param2))
                                                                                                                                                                        {
                                                                                                                                                                           if(false)
                                                                                                                                                                           {
                                                                                                                                                                              addr770:
                                                                                                                                                                              if(_loc8_ < this.§'!b§)
                                                                                                                                                                              {
                                                                                                                                                                                 if(this.§][§)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc18_ || param3)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr515:
                                                                                                                                                                                       _loc13_ = Number(this.§3@§[_loc12_ + 3]);
                                                                                                                                                                                       if(!_loc19_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr518);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    addr749:
                                                                                                                                                                                    _loc12_++;
                                                                                                                                                                                    if(_loc18_ || param2)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr767:
                                                                                                                                                                                       _loc8_++;
                                                                                                                                                                                       if(!_loc19_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr770);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr774);
                                                                                                                                                                                 }
                                                                                                                                                                                 _loc11_[_loc14_ = _loc7_++] = this.§3@§[_loc12_++];
                                                                                                                                                                                 if(_loc18_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr695:
                                                                                                                                                                                    var _loc15_:*;
                                                                                                                                                                                    _loc11_[_loc15_ = _loc7_++] = this.§3@§[_loc12_++];
                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr712:
                                                                                                                                                                                       var _loc16_:*;
                                                                                                                                                                                       _loc11_[_loc16_ = _loc7_++] = this.§3@§[_loc12_++];
                                                                                                                                                                                       if(_loc18_ || param2)
                                                                                                                                                                                       {
                                                                                                                                                                                          var _loc17_:*;
                                                                                                                                                                                          _loc11_[_loc17_ = _loc7_++] = param3;
                                                                                                                                                                                          addr743:
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 if(!_loc19_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr749);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr774);
                                                                                                                                                                              addr495:
                                                                                                                                                                           }
                                                                                                                                                                           _loc11_[_loc14_ = _loc7_++] = this.§3@§[_loc12_++] * _loc13_;
                                                                                                                                                                           if(!(_loc19_ && this))
                                                                                                                                                                           {
                                                                                                                                                                              _loc11_[_loc15_ = _loc7_++] = this.§3@§[_loc12_++] * _loc13_;
                                                                                                                                                                              if(!(_loc19_ && param3))
                                                                                                                                                                              {
                                                                                                                                                                                 _loc11_[_loc16_ = _loc7_++] = this.§3@§[_loc12_++] * _loc13_;
                                                                                                                                                                                 if(!(_loc19_ && param3))
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc11_[_loc17_ = _loc7_++] = param3;
                                                                                                                                                                                    if(!_loc19_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc19_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc18_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc19_ && param3))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr669:
                                                                                                                                                                                                if(!(_loc19_ && this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr677:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr749);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr695);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr712);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr743);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr712);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr669);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr547);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr770);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr515);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr475);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr695);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr770);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr767);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr770);
                                                                                                                                                }
                                                                                                                                                §§goto(addr677);
                                                                                                                                             }
                                                                                                                                             addr556:
                                                                                                                                             _loc12_ = 0;
                                                                                                                                             if(!(_loc19_ && param2))
                                                                                                                                             {
                                                                                                                                                §§push(0);
                                                                                                                                                if(_loc18_ || this)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc18_ || param3))
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr556);
                                                                                                                                                   }
                                                                                                                                                   if(_loc18_)
                                                                                                                                                   {
                                                                                                                                                      addr537:
                                                                                                                                                      _loc8_ = §§pop();
                                                                                                                                                      if(!_loc19_)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr495);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr547);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr542);
                                                                                                                                                }
                                                                                                                                                §§goto(addr770);
                                                                                                                                             }
                                                                                                                                             §§goto(addr547);
                                                                                                                                          }
                                                                                                                                          §§goto(addr483);
                                                                                                                                       }
                                                                                                                                       §§goto(addr554);
                                                                                                                                    }
                                                                                                                                    §§goto(addr556);
                                                                                                                                 }
                                                                                                                                 §§goto(addr466);
                                                                                                                              }
                                                                                                                              §§goto(addr429);
                                                                                                                           }
                                                                                                                           §§goto(addr546);
                                                                                                                        }
                                                                                                                        §§goto(addr433);
                                                                                                                     }
                                                                                                                     §§goto(addr556);
                                                                                                                  }
                                                                                                                  §§goto(addr547);
                                                                                                               }
                                                                                                               §§goto(addr466);
                                                                                                            }
                                                                                                            §§goto(addr537);
                                                                                                         }
                                                                                                         §§goto(addr515);
                                                                                                      }
                                                                                                      addr349:
                                                                                                      §§push(param3 == 1);
                                                                                                      if(_loc18_)
                                                                                                      {
                                                                                                         addr354:
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            §§goto(addr355);
                                                                                                         }
                                                                                                         §§goto(addr547);
                                                                                                      }
                                                                                                      §§goto(addr354);
                                                                                                   }
                                                                                                   §§goto(addr355);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr354);
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    _loc10_.position = _loc7_;
                                                                                    §§goto(addr267);
                                                                                    §§goto(addr282);
                                                                                 }
                                                                              }
                                                                              §§goto(addr355);
                                                                           }
                                                                        }
                                                                        §§goto(addr349);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr344);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr349);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr342);
                                                            }
                                                         }
                                                         §§goto(addr326);
                                                      }
                                                      §§goto(addr343);
                                                   }
                                                }
                                                §§goto(addr282);
                                                addr203:
                                             }
                                             §§goto(addr195);
                                          }
                                       }
                                       if(!(_loc19_ && param1))
                                       {
                                          param5.transformVectors(this.§-!E§,this.§]N§);
                                       }
                                       while(true)
                                       {
                                          §§push(0);
                                          if(!_loc18_)
                                          {
                                             break;
                                          }
                                          _loc8_ = §§pop();
                                          if(_loc19_)
                                          {
                                             continue;
                                          }
                                          §§goto(addr48);
                                       }
                                       continue loop4;
                                    }
                                    while(true)
                                    {
                                       §§push(_loc6_);
                                       addr205:
                                       while(true)
                                       {
                                          if(§§pop() < §§pop())
                                          {
                                             _loc9_[_loc14_ = _loc7_++] = this.§-!E§[_loc8_];
                                             while(true)
                                             {
                                                if(_loc18_)
                                                {
                                                   §§goto(addr195);
                                                }
                                             }
                                             addr192:
                                          }
                                          §§goto(addr206);
                                       }
                                    }
                                 }
                                 if(!(_loc18_ || this))
                                 {
                                    continue;
                                 }
                                 if(false)
                                 {
                                    §§goto(addr57);
                                 }
                                 else
                                 {
                                    do
                                    {
                                       §§push(_loc8_);
                                       if(!(_loc19_ && param2))
                                       {
                                          §§push(_loc6_);
                                          if(_loc18_ || param2)
                                          {
                                             if(§§pop() >= §§pop())
                                             {
                                                if(!_loc19_)
                                                {
                                                }
                                                §§goto(addr178);
                                             }
                                             else
                                             {
                                                _loc9_[_loc14_ = _loc7_++] = this.§]N§[_loc8_];
                                                if(_loc18_)
                                                {
                                                   if(_loc18_ || param2)
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr203);
                                                }
                                             }
                                             §§goto(addr192);
                                          }
                                          §§goto(addr205);
                                       }
                                       else
                                       {
                                          §§goto(addr175);
                                       }
                                    }
                                    while(_loc8_++, _loc18_ || param3);
                                    
                                    §§goto(addr195);
                                 }
                              }
                              continue loop3;
                           }
                           continue loop2;
                           addr90:
                        }
                     }
                     else
                     {
                        §§goto(addr116);
                     }
                     §§goto(addr117);
                  }
                  §§goto(addr90);
               }
            }
         }
         §§goto(addr105);
      }
      
      public function append(param1:§?!2§) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:int = this.§+V§.length;
         if(!_loc9_)
         {
            this.§+V§.length += param1.§+V§.length;
         }
         while(true)
         {
            this.§+V§.position = _loc2_;
            loop1:
            while(!_loc9_)
            {
               loop2:
               do
               {
                  this.§+V§.writeBytes(param1.§+V§);
                  while(_loc10_)
                  {
                     this.§3@§.fixed = false;
                     if(!_loc9_)
                     {
                        continue loop2;
                     }
                  }
                  continue loop1;
               }
               while(false);
               
               var _loc3_:Vector.<Number> = param1.§3@§;
               var _loc4_:int = _loc3_.length;
               var _loc5_:int = 0;
               loop4:
               while(true)
               {
                  if(_loc5_ >= _loc4_)
                  {
                     loop5:
                     while(true)
                     {
                        this.§3@§.fixed = true;
                        while(!(_loc9_ && _loc2_))
                        {
                           if(_loc9_ && _loc3_)
                           {
                              _loc5_++;
                           }
                           else
                           {
                              addr138:
                           }
                           this.§-!E§.fixed = false;
                           if(!(_loc9_ && _loc3_))
                           {
                              if(!(_loc9_ && _loc3_))
                              {
                                 break loop5;
                              }
                              continue loop5;
                           }
                        }
                        continue loop4;
                     }
                     if(true)
                     {
                        break;
                     }
                     continue;
                  }
                  this.§3@§.push(_loc3_[_loc5_]);
                  §§goto(addr138);
               }
               var _loc6_:Vector.<Number>;
               var _loc7_:int = (_loc6_ = param1.§-!E§).length;
               var _loc8_:int = 0;
               if(_loc10_)
               {
                  loop7:
                  while(true)
                  {
                     if(_loc8_ >= _loc7_)
                     {
                        loop8:
                        while(true)
                        {
                           this.§-!E§.fixed = true;
                           while(true)
                           {
                              if(_loc10_ || param1)
                              {
                                 this.§'!b§ += param1.§<!§;
                                 if(_loc10_ || _loc3_)
                                 {
                                    if(!(_loc9_ && _loc2_))
                                    {
                                       if(_loc10_)
                                       {
                                          break loop7;
                                       }
                                       break;
                                    }
                                    continue loop8;
                                 }
                                 continue;
                              }
                           }
                           continue loop7;
                        }
                     }
                     else
                     {
                        this.§-!E§.push(_loc6_[_loc8_]);
                     }
                     _loc8_++;
                  }
                  return;
                  addr181:
               }
               while(true)
               {
                  §§goto(addr181);
               }
            }
         }
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         §§push(param1);
         if(_loc9_)
         {
            §§push(int(§§pop() * §#!Q§));
         }
         var _loc5_:* = §§pop();
         var _loc6_:*;
         this.§-!E§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§-!E§[_loc7_ = _loc5_++] = param3;
         if(!_loc8_)
         {
            this.§-!E§[_loc5_] = param4;
         }
      }
      
      public function §!Z§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param1);
         if(!_loc6_)
         {
            §§push(int(§§pop() * §#!Q§));
         }
         var _loc4_:* = §§pop();
         var _loc5_:*;
         this.§-!E§[_loc5_ = _loc4_++] = param2;
         if(!(_loc6_ && param2))
         {
            this.§-!E§[_loc4_] = param3;
         }
      }
      
      public function §?!W§(param1:int, param2:Vector3D) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(!(_loc4_ && param1))
         {
            §§push(int(§§pop() * §#!Q§));
         }
         var _loc3_:* = §§pop();
         if(!_loc4_)
         {
            param2.x = this.§-!E§[_loc3_++];
            while(true)
            {
               param2.y = this.§-!E§[_loc3_++];
               §§goto(addr68);
            }
         }
         addr68:
         while(true)
         {
            param2.z = this.§-!E§[_loc3_];
            if(_loc5_)
            {
               if(!_loc4_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §&5§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_ || param2)
         {
            if(this.§][§)
            {
               addr27:
               §§push(param3);
               if(_loc9_ || param2)
               {
                  §§push(Number(§§pop()));
                  if(_loc8_)
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
            if(!(_loc8_ && this))
            {
               §§push(§§pop() / 255);
               if(!(_loc8_ && param2))
               {
                  §§push(Number(§§pop()));
                  if(_loc9_ || param1)
                  {
                     addr80:
                     _loc4_ = §§pop();
                     §§push(§>!<§.§;!6§(param2) * _loc4_);
                     if(!_loc8_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc5_:* = §§pop();
                  §§push(§>!<§.§4u§(param2) * _loc4_);
                  if(!_loc8_)
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc6_:* = §§pop();
                  §§push(§>!<§.§`5§(param2) * _loc4_);
                  if(_loc9_ || param2)
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc7_:* = §§pop();
                  if(_loc9_)
                  {
                     this.§]n§(param1,1,_loc5_,_loc6_,_loc7_,param3);
                  }
                  return;
               }
            }
            §§goto(addr80);
         }
         §§goto(addr27);
      }
      
      private function §]n§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         §§push(param1);
         if(!_loc14_)
         {
            §§push(int(§§pop() * §1!R§));
         }
         var _loc7_:* = §§pop();
         §§push(param2);
         if(_loc13_ || this)
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
               this.§3@§[_loc9_ = _loc7_++] = param3;
               if(_loc13_ || param2)
               {
                  var _loc10_:*;
                  this.§3@§[_loc10_ = _loc7_++] = param4;
                  if(!(_loc14_ && param1))
                  {
                     var _loc11_:*;
                     this.§3@§[_loc11_ = _loc7_++] = param5;
                     if(_loc13_ || this)
                     {
                        var _loc12_:*;
                        this.§3@§[_loc12_ = _loc7_++] = param6;
                     }
                  }
               }
               if(!(_loc14_ && param3))
               {
                  §§push(_loc8_);
                  if(_loc13_)
                  {
                     §§push(§§pop() - 1);
                     if(_loc14_ && this)
                     {
                        continue;
                     }
                  }
                  _loc8_ = §§pop();
                  if(_loc14_ && this)
                  {
                     break;
                  }
               }
               continue loop0;
            }
            return;
         }
      }
      
      private function §0!U§(param1:int, param2:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         §§push(param1);
         if(_loc7_)
         {
            §§push(int(§§pop() * §1!R§));
         }
         var _loc3_:* = §§pop();
         var _loc4_:*;
         this.§3@§[_loc4_ = _loc3_++] = this.§3@§[_loc4_] * param2;
         var _loc5_:*;
         this.§3@§[_loc5_ = _loc3_++] = this.§3@§[_loc5_] * param2;
         var _loc6_:*;
         this.§3@§[_loc6_ = _loc3_++] = this.§3@§[_loc6_] * param2;
         if(!_loc8_)
         {
            this.§3@§[_loc3_] *= param2;
         }
      }
      
      public function §!z§(param1:int) : uint
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         §§push(param1);
         if(_loc7_ || _loc2_)
         {
            §§push(int(§§pop() * §1!R§));
         }
         var _loc2_:* = §§pop();
         if(!(_loc8_ && this))
         {
            if(this.§][§)
            {
               addr44:
               §§push(Number(this.§3@§[_loc2_ + 3]));
               if(_loc7_ || this)
               {
               }
               addr63:
               §§push(Number(§§pop()));
            }
            else
            {
               §§push(Number(1));
               if(_loc7_)
               {
                  §§goto(addr63);
               }
            }
            var _loc3_:* = §§pop();
            if(!(_loc8_ && _loc3_))
            {
               §§push(_loc3_);
               loop0:
               while(true)
               {
                  if(§§pop() == 0)
                  {
                     addr219:
                     return 0;
                  }
                  else
                  {
                     loop1:
                     while(true)
                     {
                        §§push(255);
                        if(!(_loc7_ || _loc3_))
                        {
                           break;
                        }
                        §§push(§§pop() / _loc3_);
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           addr197:
                           while(true)
                           {
                              _loc3_ = §§pop();
                              addr198:
                              while(_loc7_ || _loc3_)
                              {
                                 §§push(this.§3@§[_loc2_] * _loc3_);
                                 continue loop0;
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
                  return §§pop();
               }
            }
            §§goto(addr219);
         }
         §§goto(addr44);
      }
      
      public function §import§(param1:int, param2:Number) : void
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
                     if(!_loc5_)
                     {
                        §§push(Number(§§pop()));
                     }
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
                  addr116:
               }
               while(true)
               {
                  if(this.§][§)
                  {
                     if(_loc4_ || this)
                     {
                        this.§&5§(param1,this.§!z§(param1),param2);
                        break;
                     }
                     break;
                  }
                  §§push(param1);
                  if(_loc4_)
                  {
                     §§push(§§pop() * §1!R§);
                     if(!(_loc5_ && param1))
                     {
                        continue loop0;
                     }
                     addr72:
                     if(!_loc5_)
                     {
                        §§goto(addr75);
                     }
                     §§goto(addr120);
                  }
                  §§goto(addr75);
               }
               §§goto(addr75);
            }
         }
         addr75:
         _loc3_ = §§pop();
         while(true)
         {
            if(_loc5_ && _loc3_)
            {
               break loop4;
            }
            this.§3@§[_loc3_] = param2;
            if(_loc5_)
            {
               continue;
            }
            if(!_loc5_)
            {
               if(_loc4_)
               {
                  break loop0;
               }
               §§goto(addr116);
            }
            §§goto(addr121);
         }
      }
      
      public function §;L§(param1:int) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(_loc4_ || param1)
         {
            §§push(§§pop() * §1!R§);
            if(_loc4_)
            {
               §§push(§§pop() + 3);
            }
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         return this.§3@§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1);
         if(!(_loc6_ && param1))
         {
            §§push(int(§§pop() * §6?§));
         }
         var _loc4_:* = §§pop();
         if(_loc5_ || this)
         {
            this.§+V§.position = _loc4_ * §-w§;
         }
         do
         {
            this.§+V§.writeFloat(param2);
            do
            {
               this.§+V§.writeFloat(param3);
            }
            while(_loc6_ && this);
            
         }
         while(_loc6_);
         
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(_loc4_)
         {
            §§push(int(§§pop() * §6?§));
         }
         var _loc3_:* = §§pop();
         if(_loc4_ || _loc3_)
         {
            this.§+V§.position = _loc3_ * §-w§;
            do
            {
               param2.x = this.§+V§.readFloat();
               do
               {
                  param2.y = this.§+V§.readFloat();
               }
               while(!(_loc4_ || _loc3_));
               
            }
            while(_loc5_);
            
         }
      }
      
      public function §%5§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         §§push(param1);
         if(!(_loc9_ && param1))
         {
            §§push(int(§§pop() * §#!Q§));
         }
         var _loc5_:* = §§pop();
         var _loc6_:*;
         this.§-!E§[_loc6_ = _loc5_++] = this.§-!E§[_loc6_] + param2;
         var _loc7_:*;
         this.§-!E§[_loc7_ = _loc5_++] = this.§-!E§[_loc7_] + param3;
         if(_loc8_)
         {
            this.§-!E§[_loc5_] += param4;
         }
      }
      
      public function §7!7§(param1:int, param2:Matrix3D) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(!_loc4_)
         {
            §§push(int(§§pop() * §#!Q§));
         }
         var _loc3_:* = §§pop();
         if(!(_loc4_ && param2))
         {
            this.§]N§[0] = this.§-!E§[_loc3_];
            loop0:
            while(true)
            {
               this.§]N§[1] = this.§-!E§[_loc3_ + 1];
               while(true)
               {
                  this.§]N§[2] = this.§-!E§[_loc3_ + 2];
                  loop5:
                  while(!(_loc4_ && param1))
                  {
                     continue loop0;
                     this.§-!E§[_loc3_ + 2] = this.§]N§[2];
                     if(!(_loc5_ || param1))
                     {
                        continue;
                     }
                     addr54:
                     if(!(_loc4_ && _loc3_))
                     {
                        addr61:
                        if(!_loc5_)
                        {
                           while(true)
                           {
                              param2.transformVectors(this.§]N§,this.§]N§);
                              while(true)
                              {
                                 this.§-!E§[_loc3_] = this.§]N§[0];
                                 addr109:
                                 while(_loc5_ || this)
                                 {
                                    this.§-!E§[_loc3_ + 1] = this.§]N§[1];
                                    continue loop5;
                                    §§goto(addr54);
                                 }
                              }
                              §§goto(addr61);
                           }
                           addr136:
                        }
                        return;
                     }
                     §§goto(addr109);
                  }
               }
            }
         }
         §§goto(addr136);
      }
      
      public function §8! §(param1:uint, param2:Number = 1.0) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || param1)
         {
            §§push(param2);
            if(_loc7_)
            {
               if(§§pop() < 0.001)
               {
                  if(!_loc8_)
                  {
                     §§push(0.001);
                     if(!(_loc8_ && _loc3_))
                     {
                        §§push(Number(§§pop()));
                        if(!_loc7_)
                        {
                        }
                        addr89:
                        var _loc3_:* = Number(§§pop());
                        addr88:
                        if(_loc7_ || param2)
                        {
                           §§push(_loc3_);
                           if(_loc7_)
                           {
                              §§push(§§pop() / 255);
                              if(!_loc8_)
                              {
                                 §§push(Number(§§pop()));
                                 if(!_loc8_)
                                 {
                                    _loc3_ = §§pop();
                                    addr108:
                                    §§push(§>!<§.§;!6§(param1) * _loc3_);
                                    if(_loc7_)
                                    {
                                       addr115:
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 §§goto(addr115);
                              }
                              var _loc4_:* = §§pop();
                              §§push(§>!<§.§4u§(param1) * _loc3_);
                              if(_loc7_ || param1)
                              {
                                 §§push(Number(§§pop()));
                              }
                              var _loc5_:* = §§pop();
                              §§push(§>!<§.§`5§(param1) * _loc3_);
                              if(!(_loc8_ && param1))
                              {
                                 §§push(Number(§§pop()));
                              }
                              var _loc6_:* = §§pop();
                              if(_loc7_)
                              {
                                 this.§]n§(0,this.§'!b§,_loc4_,_loc5_,_loc6_,param2);
                              }
                              return;
                           }
                           §§goto(addr115);
                        }
                        §§goto(addr108);
                        addr68:
                     }
                     param2 = §§pop();
                     if(!(_loc8_ && param2))
                     {
                        addr49:
                        if(this.§][§)
                        {
                           addr52:
                           §§push(param2);
                           if(_loc7_ || this)
                           {
                              §§push(Number(§§pop()));
                              if(!(_loc8_ && param1))
                              {
                                 §§goto(addr68);
                              }
                           }
                           §§goto(addr88);
                        }
                        else
                        {
                           §§push(Number(1));
                           if(!(_loc8_ && _loc3_))
                           {
                              §§goto(addr88);
                           }
                        }
                        §§goto(addr89);
                     }
                  }
                  §§goto(addr52);
               }
               §§goto(addr49);
            }
            §§goto(addr89);
         }
         §§goto(addr49);
      }
      
      public function §7!C§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         if(_loc14_ || this)
         {
            §§push(param6);
            if(_loc14_)
            {
               if(§§pop() < 0.001)
               {
                  if(_loc14_)
                  {
                     addr31:
                     §§push(0.001);
                     if(!(_loc13_ && param2))
                     {
                        §§push(Number(§§pop()));
                        if(!_loc13_)
                        {
                           param6 = §§pop();
                        }
                        addr49:
                        var _loc7_:int = §§pop();
                        var _loc8_:int = 0;
                     }
                     §§goto(addr48);
                  }
               }
               §§push(param1);
               if(!_loc13_)
               {
                  addr48:
                  while(_loc8_ < param2)
                  {
                     var _loc9_:*;
                     this.§3@§[_loc9_ = _loc7_++] = param3;
                     if(!_loc13_)
                     {
                        var _loc10_:*;
                        this.§3@§[_loc10_ = _loc7_++] = param4;
                        if(!_loc13_)
                        {
                           var _loc11_:*;
                           this.§3@§[_loc11_ = _loc7_++] = param5;
                           if(!_loc13_)
                           {
                              var _loc12_:*;
                              this.§3@§[_loc12_ = _loc7_++] = param6;
                           }
                        }
                     }
                     if(_loc14_ || param2)
                     {
                        _loc8_++;
                        if(_loc13_)
                        {
                           break;
                        }
                     }
                  }
                  return;
                  §§push(§§pop() * §1!R§);
               }
            }
            §§goto(addr49);
         }
         §§goto(addr31);
      }
      
      public function §<3§(param1:int, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = NaN;
         if(_loc6_ || _loc3_)
         {
            §§push(param2);
            if(!_loc5_)
            {
               if(§§pop() < 0.001)
               {
                  if(!(_loc5_ && this))
                  {
                     §§push(0.001);
                     if(!(_loc5_ && _loc3_))
                     {
                        addr46:
                        §§push(Number(§§pop()));
                        if(_loc6_ || this)
                        {
                           param2 = §§pop();
                           if(_loc6_ || param2)
                           {
                              addr62:
                              §§push(param2);
                              if(!_loc6_)
                              {
                              }
                              addr81:
                              var _loc3_:int = §§pop();
                              addr80:
                              if(!(_loc5_ && param2))
                              {
                                 if(this.§][§)
                                 {
                                    addr240:
                                    §§push(Number(this.§3@§[_loc3_ + 3]));
                                    while(true)
                                    {
                                       _loc4_ = §§pop();
                                       loop1:
                                       while(true)
                                       {
                                          §§push(param2);
                                          if(_loc6_)
                                          {
                                             if(_loc5_)
                                             {
                                                break;
                                             }
                                             §§push(§§pop() / _loc4_);
                                             if(_loc6_)
                                             {
                                                addr224:
                                                §§push(Number(§§pop()));
                                             }
                                             _loc4_ = §§pop();
                                             while(true)
                                             {
                                                this.§3@§[_loc3_] *= _loc4_;
                                                addr213:
                                                while(true)
                                                {
                                                   this.§3@§[_loc3_ + 1] *= _loc4_;
                                                   addr201:
                                                   while(true)
                                                   {
                                                      this.§3@§[_loc3_ + 2] *= _loc4_;
                                                      addr178:
                                                      addr185:
                                                      addr160:
                                                      while(!(_loc6_ || param2))
                                                      {
                                                         continue loop1;
                                                      }
                                                      this.§3@§[_loc3_ + 3] = param2;
                                                      while(_loc5_)
                                                      {
                                                         §§goto(addr178);
                                                         §§goto(addr185);
                                                      }
                                                      §§goto(addr90);
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr224);
                                       }
                                    }
                                 }
                                 else
                                 {
                                    this.§3@§[_loc3_ + 3] *= param2;
                                    if(_loc6_ || param1)
                                    {
                                       if(_loc6_)
                                       {
                                          if(!(_loc5_ && this))
                                          {
                                             if(!(_loc5_ && param1))
                                             {
                                                if(_loc5_ && param2)
                                                {
                                                   §§goto(addr240);
                                                }
                                                addr90:
                                                return;
                                             }
                                             §§goto(addr226);
                                          }
                                          §§goto(addr213);
                                       }
                                       §§goto(addr201);
                                    }
                                 }
                                 §§goto(addr160);
                              }
                              §§goto(addr201);
                           }
                           §§goto(addr74);
                        }
                        if(§§pop() == 1)
                        {
                           if(_loc6_ || param1)
                           {
                              §§goto(addr74);
                           }
                           else
                           {
                              addr75:
                              §§push(param1);
                              if(_loc6_)
                              {
                                 §§goto(addr80);
                                 §§push(§§pop() * §1!R§);
                              }
                              §§goto(addr81);
                           }
                        }
                        §§goto(addr75);
                     }
                     §§goto(addr81);
                  }
                  §§goto(addr75);
               }
               §§goto(addr62);
            }
            §§goto(addr46);
         }
         addr74:
      }
      
      public function §]v§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         if(!(_loc8_ && _loc3_))
         {
            §§push(param1);
            loop0:
            while(§§pop() != this.§][§)
            {
               loop1:
               while(true)
               {
                  §§push(param2);
                  if(_loc9_ || param2)
                  {
                     if(§§pop())
                     {
                        if(_loc9_)
                        {
                           if(!_loc9_)
                           {
                              continue;
                           }
                           §§push(this.§'!b§);
                           if(!_loc8_)
                           {
                              §§push(int(§§pop() * §1!R§));
                           }
                           loop28:
                           while(true)
                           {
                              _loc3_ = §§pop();
                              addr278:
                              while(true)
                              {
                                 §§push(0);
                                 if(!_loc8_)
                                 {
                                    _loc4_ = §§pop();
                                    if(!_loc8_)
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 continue loop28;
                              }
                              if(!(_loc9_ || this))
                              {
                                 break loop0;
                              }
                              loop30:
                              while(true)
                              {
                                 §§push(_loc4_);
                                 if(_loc9_)
                                 {
                                    if(!(_loc8_ && param1))
                                    {
                                       if(§§pop() >= _loc3_)
                                       {
                                          if(!(_loc8_ && param2))
                                          {
                                             if(_loc9_)
                                             {
                                                if(_loc9_)
                                                {
                                                   break loop1;
                                                }
                                                loop18:
                                                while(true)
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      this.§0!U§(_loc4_,_loc7_);
                                                      while(true)
                                                      {
                                                         loop5:
                                                         while(true)
                                                         {
                                                            _loc4_++;
                                                            addr91:
                                                            loop6:
                                                            while(_loc9_ || _loc3_)
                                                            {
                                                               if(!_loc8_)
                                                               {
                                                                  continue loop30;
                                                               }
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  §§push(this.§][§);
                                                                  loop12:
                                                                  while(!§§pop())
                                                                  {
                                                                     addr217:
                                                                     §§push(1);
                                                                     while(true)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        loop8:
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           loop9:
                                                                           while(true)
                                                                           {
                                                                              _loc6_ = §§pop();
                                                                              loop20:
                                                                              while(true)
                                                                              {
                                                                                 §§push(param1);
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    continue loop12;
                                                                                 }
                                                                                 if(§§pop())
                                                                                 {
                                                                                    break loop6;
                                                                                 }
                                                                                 addr181:
                                                                                 §§push(1);
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    if(!(_loc8_ && param1))
                                                                                    {
                                                                                       if(!(_loc9_ || param1))
                                                                                       {
                                                                                          continue loop9;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       addr196:
                                                                                    }
                                                                                    addr197:
                                                                                    loop23:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc7_ = §§pop();
                                                                                       addr198:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             continue loop20;
                                                                                          }
                                                                                          §§push(_loc6_);
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             if(§§pop() == 0)
                                                                                             {
                                                                                                continue loop5;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc7_);
                                                                                                if(!(_loc8_ && param2))
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() / _loc6_);
                                                                                                      if(_loc9_ || param1)
                                                                                                      {
                                                                                                         if(!(_loc9_ || param1))
                                                                                                         {
                                                                                                            continue loop23;
                                                                                                         }
                                                                                                         if(!(_loc8_ && param2))
                                                                                                         {
                                                                                                            if(_loc8_ && param2)
                                                                                                            {
                                                                                                               continue loop8;
                                                                                                            }
                                                                                                            §§push(Number(§§pop()));
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  if(!_loc8_)
                                                                                                                  {
                                                                                                                     _loc7_ = §§pop();
                                                                                                                     continue loop18;
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§goto(addr196);
                                                                                                                  }
                                                                                                                  addr179:
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc8_)
                                                                                                               {
                                                                                                                  §§goto(addr179);
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!(_loc9_ || this))
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr228:
                                                                                                                     }
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        continue loop9;
                                                                                                                     }
                                                                                                                     continue loop8;
                                                                                                                  }
                                                                                                                  addr206:
                                                                                                               }
                                                                                                            }
                                                                                                            addr176:
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc5_ = §§pop();
                                                                                                            continue loop16;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr121:
                                                                                                }
                                                                                                §§goto(addr162);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr121);
                                                                                          continue loop23;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr217);
                                                                     }
                                                                  }
                                                                  addr205:
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr206);
                                                                  }
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr176);
                                                            }
                                                            §§goto(addr197);
                                                         }
                                                      }
                                                      addr106:
                                                   }
                                                   §§goto(addr205);
                                                }
                                             }
                                             §§goto(addr91);
                                          }
                                          while(true)
                                          {
                                             if(_loc9_ || this)
                                             {
                                                if(_loc9_ || this)
                                                {
                                                   if(!(_loc8_ && param2))
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr198);
                                                }
                                                §§goto(addr113);
                                             }
                                             §§goto(addr106);
                                          }
                                          return;
                                          addr67:
                                       }
                                       §§push(this.§;L§(0));
                                       §§goto(addr228);
                                    }
                                    §§goto(addr218);
                                 }
                                 §§goto(addr181);
                              }
                           }
                        }
                        §§goto(addr278);
                     }
                     break;
                  }
                  continue loop0;
               }
               while(true)
               {
                  this.§][§ = param1;
                  §§goto(addr67);
               }
            }
            return;
         }
         §§goto(addr278);
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§][§;
      }
      
      public function get §<!§() : int
      {
         return this.§'!b§;
      }
      
      public function set §<!§(param1:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(_loc5_ || this)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§6?§);
               loop1:
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc5_ || param1)
                  {
                     §§push(§§pop() * §-w§);
                     if(!(_loc6_ && this))
                     {
                        addr524:
                        §§push(§§pop() - this.§+V§.length);
                     }
                     §§push(int(§§pop()));
                     loop2:
                     while(true)
                     {
                        _loc2_ = §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(int(this.§+V§.length));
                           loop4:
                           while(_loc5_)
                           {
                              if(!_loc6_)
                              {
                                 _loc4_ = §§pop();
                                 while(_loc5_ || _loc3_)
                                 {
                                    this.§+V§.length += _loc2_;
                                    loop6:
                                    for(; _loc5_; while(!(_loc6_ && _loc3_))
                                    {
                                       §§goto(addr464);
                                    })
                                    {
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          while(true)
                                          {
                                             §§push(0);
                                             if(_loc6_)
                                             {
                                                break;
                                             }
                                             if(§§pop() > §§pop())
                                             {
                                                if(_loc5_ || this)
                                                {
                                                   this.§+V§.position = _loc4_;
                                                }
                                                continue loop6;
                                             }
                                             loop51:
                                             while(true)
                                             {
                                                loop13:
                                                while(true)
                                                {
                                                   this.§3@§.fixed = false;
                                                   loop14:
                                                   while(true)
                                                   {
                                                      §§push(param1);
                                                      loop15:
                                                      while(true)
                                                      {
                                                         §§push(§1!R§);
                                                         loop16:
                                                         while(!_loc6_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            loop17:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() - this.§3@§.length);
                                                               loop18:
                                                               while(true)
                                                               {
                                                                  §§push(int(§§pop()));
                                                                  loop19:
                                                                  while(true)
                                                                  {
                                                                     _loc2_ = §§pop();
                                                                     loop20:
                                                                     while(true)
                                                                     {
                                                                        §§push(0);
                                                                        loop21:
                                                                        while(true)
                                                                        {
                                                                           _loc3_ = §§pop();
                                                                           loop22:
                                                                           while(true)
                                                                           {
                                                                              loop23:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc3_);
                                                                                 loop24:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc2_);
                                                                                    loop25:
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop() >= §§pop())
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                §§push(_loc2_);
                                                                                                loop27:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(int(§§pop()));
                                                                                                   loop28:
                                                                                                   while(_loc5_)
                                                                                                   {
                                                                                                      _loc3_ = §§pop();
                                                                                                      loop29:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         loop30:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc3_);
                                                                                                            loop31:
                                                                                                            while(!(_loc6_ && _loc2_))
                                                                                                            {
                                                                                                               §§push(0);
                                                                                                               loop32:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop() >= §§pop())
                                                                                                                  {
                                                                                                                     loop33:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        this.§3@§.fixed = true;
                                                                                                                        loop34:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           this.§-!E§.fixed = false;
                                                                                                                           loop35:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc6_ && this)
                                                                                                                              {
                                                                                                                                 continue loop33;
                                                                                                                              }
                                                                                                                              if(!_loc5_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §§push(param1);
                                                                                                                              if(_loc5_)
                                                                                                                              {
                                                                                                                                 if(_loc5_)
                                                                                                                                 {
                                                                                                                                    §§push(§#!Q§);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(!_loc6_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() - this.§-!E§.length);
                                                                                                                                       }
                                                                                                                                       if(!(_loc5_ || param1))
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       continue loop17;
                                                                                                                                       addr76:
                                                                                                                                       if(!(_loc5_ || this))
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       if(!(_loc5_ || this))
                                                                                                                                       {
                                                                                                                                          continue loop16;
                                                                                                                                       }
                                                                                                                                       if(§§pop() >= §§pop())
                                                                                                                                       {
                                                                                                                                          if(!(_loc6_ && param1))
                                                                                                                                          {
                                                                                                                                             continue loop29;
                                                                                                                                          }
                                                                                                                                          addr111:
                                                                                                                                          loop48:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc5_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                addr118:
                                                                                                                                                if(_loc5_ || this)
                                                                                                                                                {
                                                                                                                                                   addr125:
                                                                                                                                                   if(!(_loc5_ || this))
                                                                                                                                                   {
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                loop43:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc6_ && _loc2_)
                                                                                                                                                   {
                                                                                                                                                      addr235:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc3_);
                                                                                                                                                         if(!(_loc6_ && _loc2_))
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc6_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               if(!_loc6_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc2_);
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc5_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc6_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop() < §§pop())
                                                                                                                                                                           {
                                                                                                                                                                              this.§-!E§.push(0);
                                                                                                                                                                           }
                                                                                                                                                                           continue loop43;
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop25;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop32;
                                                                                                                                                                  }
                                                                                                                                                                  addr243:
                                                                                                                                                                  if(_loc6_)
                                                                                                                                                                  {
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  _loc3_++;
                                                                                                                                                                  continue;
                                                                                                                                                                  addr169:
                                                                                                                                                               }
                                                                                                                                                               continue loop21;
                                                                                                                                                            }
                                                                                                                                                            continue loop24;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop34;
                                                                                                                                                      addr150:
                                                                                                                                                   }
                                                                                                                                                   addr196:
                                                                                                                                                   if(!_loc5_)
                                                                                                                                                   {
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   if(_loc5_ || this)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc2_);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      addr411:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc3_);
                                                                                                                                                         break loop28;
                                                                                                                                                         §§goto(addr411);
                                                                                                                                                      }
                                                                                                                                                      addr397:
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc5_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc6_ && _loc3_)
                                                                                                                                                         {
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         continue loop27;
                                                                                                                                                      }
                                                                                                                                                      addr300:
                                                                                                                                                      addr300:
                                                                                                                                                      while(_loc5_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         _loc2_ = §§pop();
                                                                                                                                                         break loop48;
                                                                                                                                                      }
                                                                                                                                                      continue loop31;
                                                                                                                                                   }
                                                                                                                                                   continue loop28;
                                                                                                                                                }
                                                                                                                                                continue loop22;
                                                                                                                                             }
                                                                                                                                             loop49:
                                                                                                                                             while(_loc6_ && param1)
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc3_++;
                                                                                                                                                   continue loop49;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr142:
                                                                                                                                             loop47:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc3_);
                                                                                                                                                if(_loc5_ || param1)
                                                                                                                                                {
                                                                                                                                                   if(_loc5_)
                                                                                                                                                   {
                                                                                                                                                      addr66:
                                                                                                                                                      if(!(_loc6_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         §§push(0);
                                                                                                                                                         if(!_loc6_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr76);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr169);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            _loc3_ = §§pop();
                                                                                                                                                            addr249:
                                                                                                                                                            while(!(_loc6_ && this))
                                                                                                                                                            {
                                                                                                                                                               if(!_loc5_)
                                                                                                                                                               {
                                                                                                                                                                  _loc3_++;
                                                                                                                                                                  break;
                                                                                                                                                                  addr356:
                                                                                                                                                               }
                                                                                                                                                               if(_loc6_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop20;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            continue loop30;
                                                                                                                                                            §§goto(addr66);
                                                                                                                                                         }
                                                                                                                                                         addr248:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr150);
                                                                                                                                                   }
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                addr213:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc3_ = §§pop();
                                                                                                                                                   addr214:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc6_)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc6_ && this))
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc6_ && param1))
                                                                                                                                                            {
                                                                                                                                                               if(!_loc5_)
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               continue loop47;
                                                                                                                                                            }
                                                                                                                                                            addr379:
                                                                                                                                                            _loc3_++;
                                                                                                                                                            continue loop23;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr249);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   continue loop14;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr196);
                                                                                                                                             §§goto(addr243);
                                                                                                                                          }
                                                                                                                                          continue loop35;
                                                                                                                                       }
                                                                                                                                       this.§-!E§.pop();
                                                                                                                                       §§goto(addr149);
                                                                                                                                    }
                                                                                                                                    continue loop18;
                                                                                                                                 }
                                                                                                                                 continue loop15;
                                                                                                                              }
                                                                                                                              §§goto(addr300);
                                                                                                                           }
                                                                                                                           continue loop13;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     this.§3@§.pop();
                                                                                                                  }
                                                                                                                  §§goto(addr356);
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop19;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc2_);
                                                                                                      break loop16;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr419:
                                                                                             _loc3_++;
                                                                                             §§goto(addr411);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          this.§3@§.push(0);
                                                                                       }
                                                                                       §§goto(addr379);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop() >= §§pop() / §-w§)
                                                            {
                                                               continue loop51;
                                                            }
                                                            this.§+V§.writeFloat(0);
                                                            §§goto(addr419);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             addr464:
                                             §§push(0);
                                             if(!(_loc6_ && _loc2_))
                                             {
                                                if(_loc6_ && this)
                                                {
                                                   continue loop4;
                                                }
                                                _loc3_ = §§pop();
                                                if(_loc6_)
                                                {
                                                   §§goto(addr457);
                                                }
                                                §§goto(addr397);
                                                continue loop4;
                                             }
                                          }
                                          continue loop1;
                                       }
                                    }
                                 }
                                 continue loop3;
                              }
                              continue loop0;
                           }
                           continue loop2;
                        }
                     }
                  }
                  §§goto(addr524);
               }
            }
         }
         §§goto(addr476);
      }
      
      public function get §8Y§() : ByteArray
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§+V§.position = 0;
         }
         return this.§+V§;
      }
      
      public function get §!$§() : Vector.<Number>
      {
         return this.§3@§;
      }
      
      public function get §+k§() : Vector.<Number>
      {
         return this.§-!E§;
      }
   }
}
