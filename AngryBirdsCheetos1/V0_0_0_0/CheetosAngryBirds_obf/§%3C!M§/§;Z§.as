package §<!M§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §;Z§
   {
      
      public static const §[3§:int = 4;
      
      public static const §=!1§:int = 2;
      
      public static const §"1§:int = 3;
      
      public static const §!m§:int = 4;
      
      public static const §%E§:int = 0;
      
      public static const §>`§:int = 0;
      
      public static const §`!5§:int = 0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §[3§ = 4;
            while(true)
            {
               §=!1§ = 2;
               loop1:
               while(_loc1_ || _loc2_)
               {
                  §"1§ = 3;
                  loop2:
                  while(true)
                  {
                     §!m§ = 4;
                     while(true)
                     {
                        if(_loc1_)
                        {
                           §%E§ = 0;
                           loop4:
                           while(true)
                           {
                              §>`§ = 0;
                              while(true)
                              {
                                 if(!(_loc2_ && §;Z§))
                                 {
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 continue loop4;
                              }
                              continue loop2;
                           }
                           return;
                           addr41:
                           addr70:
                        }
                        break;
                        if(!(_loc1_ || _loc2_))
                        {
                           continue;
                        }
                        §§goto(addr41);
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr70);
      }
      
      private var §`f§:ByteArray;
      
      private var §"!>§:Vector.<Number>;
      
      private var §7!C§:Vector.<Number>;
      
      private var §<!8§:Boolean;
      
      private var §;k§:int;
      
      private var § J§:Vector.<Number>;
      
      public function §;Z§(param1:int, param2:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            this.§ J§ = new Vector.<Number>(12,true);
            while(true)
            {
               super();
               loop2:
               for(; !(_loc4_ && this); loop4:
               while(_loc5_ || this)
               {
                  if(!_loc4_)
                  {
                     this.§`f§.length = param1 * §=!1§ * §!m§;
                     if(!_loc5_)
                     {
                        continue;
                     }
                     §§goto(addr36);
                  }
                  else
                  {
                     while(true)
                     {
                        this.§`f§ = new ByteArray();
                        break loop4;
                     }
                     addr70:
                  }
               })
               {
                  do
                  {
                     this.§`f§.endian = Endian.LITTLE_ENDIAN;
                     continue loop2;
                  }
                  while(false);
                  
                  var _loc3_:int = 0;
                  loop5:
                  while(true)
                  {
                     if(_loc3_ >= param1 * §=!1§)
                     {
                        loop6:
                        while(true)
                        {
                           this.§"!>§ = new Vector.<Number>(param1 * §[3§,true);
                           while(!(_loc4_ && param2))
                           {
                              this.§7!C§ = new Vector.<Number>(param1 * §"1§,true);
                              loop8:
                              while(!_loc4_)
                              {
                                 this.§<!8§ = param2;
                                 while(_loc5_ || param1)
                                 {
                                    this.§;k§ = param1;
                                    if(!_loc4_)
                                    {
                                       if(_loc5_ || this)
                                       {
                                          return;
                                       }
                                       continue loop8;
                                       continue loop8;
                                    }
                                 }
                                 continue loop6;
                              }
                           }
                           loop10:
                           while(!(_loc5_ || this))
                           {
                              while(true)
                              {
                                 _loc3_++;
                                 continue loop10;
                              }
                           }
                           continue loop5;
                        }
                     }
                     else
                     {
                        this.§`f§.writeFloat(0);
                     }
                     §§goto(addr187);
                  }
               }
            }
         }
         §§goto(addr70);
      }
      
      public function clone() : §;Z§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§;Z§ = new §;Z§(0,this.§<!8§);
         if(!_loc2_)
         {
            _loc1_.§`f§.length = this.§`f§.length;
            while(true)
            {
               _loc1_.§`f§.writeBytes(this.§`f§);
               addr63:
               if(_loc3_ || _loc3_)
               {
                  return _loc1_;
               }
            }
         }
         loop1:
         while(true)
         {
            _loc1_.§"!>§ = this.§"!>§.concat();
            while(true)
            {
               _loc1_.§"!>§.fixed = true;
               while(!_loc2_)
               {
                  _loc1_.§7!C§ = this.§7!C§.concat();
                  loop4:
                  while(true)
                  {
                     _loc1_.§7!C§.fixed = true;
                     while(_loc3_)
                     {
                        _loc1_.§;k§ = this.§;k§;
                        if(_loc3_ || _loc3_)
                        {
                           continue loop4;
                        }
                     }
                     continue loop1;
                  }
                  if(!_loc3_)
                  {
                     continue;
                  }
                  §§goto(addr63);
               }
            }
         }
      }
      
      public function copyTo(param1:§;Z§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:* = 0;
         var _loc13_:* = NaN;
         var _loc9_:Vector.<Number> = param1.§7!C§;
         if(_loc18_ || param1)
         {
            §§push(this.§;k§);
            if(!_loc19_)
            {
               §§push(§"1§);
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  addr92:
                  while(true)
                  {
                     §§push(int(§§pop()));
                  }
               }
               addr91:
            }
            loop2:
            while(true)
            {
               _loc6_ = §§pop();
               loop3:
               while(true)
               {
                  §§push(param2);
                  if(_loc18_ || param3)
                  {
                     §§push(§"1§);
                     if(_loc18_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc19_)
                        {
                           §§push(int(§§pop()));
                           loop4:
                           for(; !_loc19_; §§push(0),if(_loc19_)
                           {
                              continue;
                           },_loc8_ = §§pop(),if(_loc18_)
                           {
                              if(_loc18_)
                              {
                                 §§goto(addr50);
                              }
                              §§goto(addr55);
                           },§§goto(addr63))
                           {
                              _loc7_ = §§pop();
                              loop5:
                              while(true)
                              {
                                 loop6:
                                 while(true)
                                 {
                                    if(!param5)
                                    {
                                       §§push(0);
                                       if(_loc18_)
                                       {
                                          _loc8_ = §§pop();
                                          if(!_loc19_)
                                          {
                                             §§goto(addr183);
                                          }
                                          §§goto(addr175);
                                       }
                                       break;
                                    }
                                    while(true)
                                    {
                                       if(_loc18_)
                                       {
                                          param5.transformVectors(this.§7!C§,this.§ J§);
                                          while(true)
                                          {
                                             if(!_loc19_)
                                             {
                                                continue;
                                             }
                                             continue loop5;
                                          }
                                          continue loop4;
                                          addr63:
                                       }
                                       continue loop3;
                                    }
                                    while(true)
                                    {
                                       if(false)
                                       {
                                          continue loop6;
                                       }
                                       while(true)
                                       {
                                          §§push(_loc8_);
                                          if(!_loc19_)
                                          {
                                             §§push(_loc6_);
                                             if(!(_loc19_ && param2))
                                             {
                                                if(§§pop() >= §§pop())
                                                {
                                                   if(!_loc18_)
                                                   {
                                                      addr183:
                                                      while(true)
                                                      {
                                                         §§push(_loc8_);
                                                         break loop6;
                                                      }
                                                      addr183:
                                                   }
                                                }
                                                else
                                                {
                                                   var _loc14_:*;
                                                   _loc9_[_loc14_ = _loc7_++] = this.§ J§[_loc8_];
                                                   if(_loc18_ || param2)
                                                   {
                                                      if(!(_loc18_ || param3))
                                                      {
                                                         continue;
                                                      }
                                                      _loc8_++;
                                                      if(!(_loc19_ && param2))
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr183);
                                                   }
                                                   while(true)
                                                   {
                                                      if(!(_loc19_ && param3))
                                                      {
                                                         addr175:
                                                         _loc8_++;
                                                         if(_loc18_ || param2)
                                                         {
                                                            §§goto(addr183);
                                                         }
                                                      }
                                                   }
                                                   addr167:
                                                }
                                                addr186:
                                                var _loc10_:ByteArray = param1.§`f§;
                                                if(!_loc19_)
                                                {
                                                   §§push(this.§;k§);
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§push(§=!1§);
                                                      loop12:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         loop13:
                                                         while(true)
                                                         {
                                                            §§push(§!m§);
                                                            if(_loc18_ || param1)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  §§push(int(§§pop()));
                                                                  loop15:
                                                                  while(true)
                                                                  {
                                                                     _loc6_ = §§pop();
                                                                     loop16:
                                                                     while(true)
                                                                     {
                                                                        §§push(param2);
                                                                        if(_loc18_ || param1)
                                                                        {
                                                                           §§push(§=!1§);
                                                                           if(!_loc18_)
                                                                           {
                                                                              continue loop12;
                                                                           }
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!(_loc19_ && param2))
                                                                           {
                                                                              if(_loc19_)
                                                                              {
                                                                                 continue loop13;
                                                                              }
                                                                              §§push(§!m§);
                                                                              if(!_loc19_)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    addr291:
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       addr294:
                                                                                       §§push(int(§§pop()));
                                                                                       if(!_loc19_)
                                                                                       {
                                                                                          if(_loc18_)
                                                                                          {
                                                                                             _loc7_ = §§pop();
                                                                                             if(_loc18_ || param3)
                                                                                             {
                                                                                                if(_loc10_.length < _loc7_ + _loc6_)
                                                                                                {
                                                                                                   loop17:
                                                                                                   while(!(_loc19_ && param1))
                                                                                                   {
                                                                                                      _loc10_.length = _loc7_ + _loc6_;
                                                                                                      loop18:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         addr221:
                                                                                                         if(!(_loc18_ || param3))
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         if(false)
                                                                                                         {
                                                                                                            loop21:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc10_.writeBytes(this.§`f§);
                                                                                                               addr235:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(param4);
                                                                                                                  if(!_loc19_)
                                                                                                                  {
                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                     if(!(_loc19_ && param3))
                                                                                                                     {
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           if(!_loc18_)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§pop();
                                                                                                                     if(_loc18_)
                                                                                                                     {
                                                                                                                        if(_loc19_)
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        addr214:
                                                                                                                        if(_loc19_ && this)
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!_loc19_)
                                                                                                                              {
                                                                                                                                 continue loop21;
                                                                                                                              }
                                                                                                                              continue loop17;
                                                                                                                              §§goto(addr214);
                                                                                                                           }
                                                                                                                           continue loop18;
                                                                                                                           addr240:
                                                                                                                        }
                                                                                                                        §§goto(addr221);
                                                                                                                     }
                                                                                                                     break loop16;
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§goto(addr334);
                                                                                                            }
                                                                                                         }
                                                                                                         §§push(param3 == 1);
                                                                                                         if(_loc18_ || param3)
                                                                                                         {
                                                                                                            §§push(!§§pop());
                                                                                                         }
                                                                                                         addr334:
                                                                                                         §§goto(addr774);
                                                                                                      }
                                                                                                   }
                                                                                                   continue;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc10_.position = _loc7_;
                                                                                                   §§goto(addr240);
                                                                                                   §§goto(addr262);
                                                                                                }
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          continue loop11;
                                                                                       }
                                                                                       continue loop15;
                                                                                    }
                                                                                    continue loop14;
                                                                                 }
                                                                              }
                                                                              §§goto(addr324);
                                                                           }
                                                                           §§goto(addr291);
                                                                        }
                                                                        §§goto(addr294);
                                                                     }
                                                                     _loc11_ = param1.§"!>§;
                                                                     if(_loc18_ || param1)
                                                                     {
                                                                        §§push(this.§;k§);
                                                                        if(!(_loc19_ && param1))
                                                                        {
                                                                           §§push(§[3§);
                                                                           if(!(_loc19_ && param3))
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc18_ || param1)
                                                                              {
                                                                                 §§push(int(§§pop()));
                                                                                 loop23:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc6_ = §§pop();
                                                                                    if(_loc18_)
                                                                                    {
                                                                                       loop24:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(param2);
                                                                                          if(_loc18_)
                                                                                          {
                                                                                             §§push(§[3§);
                                                                                             if(_loc18_)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(!(_loc19_ && param1))
                                                                                                {
                                                                                                   §§push(int(§§pop()));
                                                                                                   if(!(_loc19_ && param1))
                                                                                                   {
                                                                                                      _loc7_ = §§pop();
                                                                                                      if(_loc18_)
                                                                                                      {
                                                                                                         §§push(param3);
                                                                                                         if(!_loc19_)
                                                                                                         {
                                                                                                            if(§§pop() != 1)
                                                                                                            {
                                                                                                               §§push(0);
                                                                                                               if(_loc18_ || this)
                                                                                                               {
                                                                                                                  §§goto(addr559);
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            if(_loc18_)
                                                                                                            {
                                                                                                               §§push(0);
                                                                                                               if(_loc18_ || param1)
                                                                                                               {
                                                                                                                  if(_loc19_)
                                                                                                                  {
                                                                                                                     continue loop23;
                                                                                                                  }
                                                                                                                  _loc8_ = §§pop();
                                                                                                                  if(!(_loc19_ && this))
                                                                                                                  {
                                                                                                                     while(false)
                                                                                                                     {
                                                                                                                        continue loop24;
                                                                                                                     }
                                                                                                                     loop47:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc8_);
                                                                                                                        if(_loc19_ && param3)
                                                                                                                        {
                                                                                                                           addr559:
                                                                                                                           _loc12_ = §§pop();
                                                                                                                           if(_loc18_ || this)
                                                                                                                           {
                                                                                                                              §§goto(addr567);
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §§push(_loc6_);
                                                                                                                        if(!_loc19_)
                                                                                                                        {
                                                                                                                           addr741:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(§§pop() < §§pop())
                                                                                                                              {
                                                                                                                                 _loc11_[_loc14_ = _loc7_++] = this.§"!>§[_loc8_];
                                                                                                                                 if(_loc18_)
                                                                                                                                 {
                                                                                                                                    if(_loc19_)
                                                                                                                                    {
                                                                                                                                       addr567:
                                                                                                                                       §§push(0);
                                                                                                                                       if(_loc18_)
                                                                                                                                       {
                                                                                                                                          _loc8_ = §§pop();
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             addr498:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                addr770:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc8_);
                                                                                                                                                   break loop24;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr534:
                                                                                                                                       }
                                                                                                                                       break loop24;
                                                                                                                                       addr567:
                                                                                                                                    }
                                                                                                                                    _loc8_++;
                                                                                                                                    if(!_loc19_)
                                                                                                                                    {
                                                                                                                                       continue loop47;
                                                                                                                                    }
                                                                                                                                    §§goto(addr662);
                                                                                                                                 }
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              if(!_loc19_)
                                                                                                                              {
                                                                                                                                 addr550:
                                                                                                                                 §§goto(addr774);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr662:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    break loop47;
                                                                                                                                 }
                                                                                                                                 addr662:
                                                                                                                              }
                                                                                                                              §§goto(addr662);
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!(_loc19_ && param1))
                                                                                                                              {
                                                                                                                                 break loop47;
                                                                                                                              }
                                                                                                                              §§goto(addr767);
                                                                                                                           }
                                                                                                                           addr741:
                                                                                                                           addr547:
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop() < §§pop())
                                                                                                                           {
                                                                                                                              if(this.§<!8§)
                                                                                                                              {
                                                                                                                                 if(_loc18_ || param1)
                                                                                                                                 {
                                                                                                                                    if(!_loc19_)
                                                                                                                                    {
                                                                                                                                       break loop23;
                                                                                                                                    }
                                                                                                                                    §§goto(addr534);
                                                                                                                                 }
                                                                                                                                 loop44:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(param3);
                                                                                                                                    if(!(_loc19_ && param3))
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() / _loc13_);
                                                                                                                                          if(!(_loc19_ && param1))
                                                                                                                                          {
                                                                                                                                             addr480:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                continue loop44;
                                                                                                                                             }
                                                                                                                                             addr480:
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!(_loc18_ || param2))
                                                                                                                                             {
                                                                                                                                                addr520:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc13_ = §§pop();
                                                                                                                                                   if(!(_loc19_ && param1))
                                                                                                                                                   {
                                                                                                                                                      continue loop44;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                continue loop44;
                                                                                                                                                addr520:
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc13_ = §§pop();
                                                                                                                                                if(!(_loc19_ && this))
                                                                                                                                                {
                                                                                                                                                   if(false)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr498);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      _loc11_[_loc14_ = _loc7_++] = this.§"!>§[_loc12_++] * _loc13_;
                                                                                                                                                      if(!_loc19_)
                                                                                                                                                      {
                                                                                                                                                         var _loc15_:*;
                                                                                                                                                         _loc11_[_loc15_ = _loc7_++] = this.§"!>§[_loc12_++] * _loc13_;
                                                                                                                                                         if(!_loc19_)
                                                                                                                                                         {
                                                                                                                                                            var _loc16_:*;
                                                                                                                                                            _loc11_[_loc16_ = _loc7_++] = this.§"!>§[_loc12_++] * _loc13_;
                                                                                                                                                            if(_loc18_)
                                                                                                                                                            {
                                                                                                                                                               var _loc17_:*;
                                                                                                                                                               _loc11_[_loc17_ = _loc7_++] = param3;
                                                                                                                                                               if(_loc18_ || this)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc18_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc19_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr656);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr741);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        _loc11_[_loc17_ = _loc7_++] = param3;
                                                                                                                                                                        addr738:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           addr739:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr729:
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr741);
                                                                                                                                                                  }
                                                                                                                                                                  addr740:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr738);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr739);
                                                                                                                                                         }
                                                                                                                                                         addr656:
                                                                                                                                                         if(!_loc19_)
                                                                                                                                                         {
                                                                                                                                                            addr659:
                                                                                                                                                            if(_loc18_)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr662);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr741);
                                                                                                                                                         }
                                                                                                                                                         addr767:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            _loc8_++;
                                                                                                                                                            if(!_loc19_)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr770);
                                                                                                                                                            }
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr774);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr659);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr770);
                                                                                                                                             §§goto(addr480);
                                                                                                                                          }
                                                                                                                                          continue loop44;
                                                                                                                                       }
                                                                                                                                       addr471:
                                                                                                                                    }
                                                                                                                                    §§goto(addr480);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 _loc11_[_loc14_ = _loc7_++] = this.§"!>§[_loc12_++];
                                                                                                                                 if(!(_loc19_ && param3))
                                                                                                                                 {
                                                                                                                                    _loc11_[_loc15_ = _loc7_++] = this.§"!>§[_loc12_++];
                                                                                                                                    if(!(_loc19_ && this))
                                                                                                                                    {
                                                                                                                                       _loc11_[_loc16_ = _loc7_++] = this.§"!>§[_loc12_++];
                                                                                                                                       if(_loc18_ || param1)
                                                                                                                                       {
                                                                                                                                          §§goto(addr729);
                                                                                                                                       }
                                                                                                                                       §§goto(addr739);
                                                                                                                                    }
                                                                                                                                    §§goto(addr740);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr741);
                                                                                                                           }
                                                                                                                           addr774:
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              break loop16;
                                                                                                                           }
                                                                                                                           return;
                                                                                                                        }
                                                                                                                        §§goto(addr567);
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc12_++;
                                                                                                                        if(!(_loc19_ && param3))
                                                                                                                        {
                                                                                                                           §§goto(addr767);
                                                                                                                        }
                                                                                                                        §§goto(addr770);
                                                                                                                     }
                                                                                                                     addr373:
                                                                                                                  }
                                                                                                                  §§goto(addr550);
                                                                                                               }
                                                                                                               §§goto(addr559);
                                                                                                            }
                                                                                                            §§goto(addr662);
                                                                                                            §§goto(addr559);
                                                                                                         }
                                                                                                         §§goto(addr520);
                                                                                                      }
                                                                                                      break loop23;
                                                                                                   }
                                                                                                   §§goto(addr559);
                                                                                                }
                                                                                                §§goto(addr471);
                                                                                             }
                                                                                             §§goto(addr547);
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr773);
                                                                                       }
                                                                                       addr771:
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr520);
                                                                                 }
                                                                              }
                                                                              §§goto(addr488);
                                                                           }
                                                                           §§goto(addr741);
                                                                        }
                                                                        §§goto(addr771);
                                                                     }
                                                                     §§goto(addr373);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr324);
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr235);
                                             }
                                             while(true)
                                             {
                                                if(§§pop() < §§pop())
                                                {
                                                   _loc9_[_loc14_ = _loc7_++] = this.§7!C§[_loc8_];
                                                   §§goto(addr167);
                                                }
                                                §§goto(addr186);
                                             }
                                             addr185:
                                          }
                                          break loop6;
                                       }
                                    }
                                    §§goto(addr175);
                                 }
                                 while(true)
                                 {
                                    §§goto(addr185);
                                    §§goto(addr183);
                                 }
                                 §§goto(addr186);
                              }
                           }
                           continue loop2;
                           addr82:
                        }
                     }
                     else
                     {
                        §§goto(addr91);
                     }
                     §§goto(addr92);
                  }
                  §§goto(addr82);
               }
            }
         }
         §§goto(addr50);
      }
      
      public function append(param1:§;Z§) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:int = this.§`f§.length;
         if(_loc9_ || _loc3_)
         {
            this.§`f§.length += param1.§`f§.length;
            while(true)
            {
               this.§`f§.position = _loc2_;
               addr57:
               loop1:
               while(_loc9_)
               {
                  while(true)
                  {
                     this.§`f§.writeBytes(param1.§`f§);
                     continue loop1;
                  }
               }
            }
         }
         while(true)
         {
            this.§"!>§.fixed = false;
            if(!(_loc9_ || this))
            {
               continue;
            }
            if(!_loc10_)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr57);
            }
            §§goto(addr45);
         }
         var _loc3_:Vector.<Number> = param1.§"!>§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         loop4:
         while(true)
         {
            loop5:
            while(true)
            {
               if(_loc5_ < _loc4_)
               {
                  this.§"!>§.push(_loc3_[_loc5_]);
                  break;
               }
               loop6:
               while(true)
               {
                  this.§"!>§.fixed = true;
                  while(_loc9_ || this)
                  {
                     if(!(_loc9_ || this))
                     {
                        break loop5;
                     }
                     this.§7!C§.fixed = false;
                     if(_loc9_ || _loc3_)
                     {
                        if(_loc9_ || _loc2_)
                        {
                           break loop6;
                        }
                        continue loop6;
                     }
                  }
                  continue loop4;
               }
               if(false)
               {
                  continue;
               }
               var _loc6_:Vector.<Number>;
               var _loc7_:int = (_loc6_ = param1.§7!C§).length;
               var _loc8_:int = 0;
               if(_loc9_ || _loc2_)
               {
                  while(true)
                  {
                     if(_loc8_ >= _loc7_)
                     {
                        if(!_loc10_)
                        {
                           if(!_loc9_)
                           {
                              continue;
                           }
                           if(!(_loc10_ && _loc3_))
                           {
                              this.§7!C§.fixed = true;
                              break;
                           }
                           _loc8_++;
                           continue;
                           addr227:
                        }
                        break;
                     }
                     this.§7!C§.push(_loc6_[_loc8_]);
                     §§goto(addr227);
                  }
                  do
                  {
                     this.§;k§ += param1.§[O§;
                  }
                  while(_loc10_ && param1);
                  
                  return;
                  addr186:
               }
               while(true)
               {
                  §§goto(addr186);
               }
            }
            _loc5_++;
         }
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         §§push(param1);
         if(_loc9_)
         {
            §§push(int(§§pop() * §"1§));
         }
         var _loc5_:* = §§pop();
         var _loc6_:*;
         this.§7!C§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§7!C§[_loc7_ = _loc5_++] = param3;
         if(_loc9_)
         {
            this.§7!C§[_loc5_] = param4;
         }
      }
      
      public function §0!A§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param1);
         if(!(_loc6_ && param3))
         {
            §§push(int(§§pop() * §"1§));
         }
         var _loc4_:* = §§pop();
         var _loc5_:*;
         this.§7!C§[_loc5_ = _loc4_++] = param2;
         if(_loc7_)
         {
            this.§7!C§[_loc4_] = param3;
         }
      }
      
      public function §+0§(param1:int, param2:Vector3D) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(_loc4_)
         {
            §§push(int(§§pop() * §"1§));
         }
         var _loc3_:* = §§pop();
         if(_loc4_)
         {
            param2.x = this.§7!C§[_loc3_++];
            while(true)
            {
               param2.y = this.§7!C§[_loc3_++];
               while(!_loc5_)
               {
                  param2.z = this.§7!C§[_loc3_];
                  if(_loc4_ || param2)
                  {
                     return;
                     addr54:
                  }
               }
            }
         }
         §§goto(addr54);
      }
      
      public function §^W§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_)
         {
            if(this.§<!8§)
            {
               addr22:
               §§push(param3);
               if(!(_loc8_ && param3))
               {
                  §§push(Number(§§pop()));
                  if(!_loc8_)
                  {
                     addr33:
                  }
                  §§goto(addr38);
               }
               §§goto(addr33);
            }
            else
            {
               §§push(Number(1));
               if(!_loc8_)
               {
                  §§goto(addr38);
               }
            }
            addr38:
            var _loc4_:*;
            §§push(_loc4_ = Number(§§pop()));
            if(!_loc8_)
            {
               §§push(§§pop() / 255);
               if(!_loc8_)
               {
                  §§push(Number(§§pop()));
                  if(_loc9_)
                  {
                     §§goto(addr60);
                  }
                  §§goto(addr73);
               }
            }
            addr60:
            _loc4_ = §§pop();
            §§push(§3!Z§.§0#§(param2) * _loc4_);
            if(_loc9_ || param2)
            {
               addr73:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(§3!Z§.§!!P§(param2) * _loc4_);
            if(!_loc8_)
            {
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(§3!Z§.§"!@§(param2) * _loc4_);
            if(!_loc8_)
            {
               §§push(Number(§§pop()));
            }
            var _loc7_:* = §§pop();
            if(_loc9_)
            {
               this.§7S§(param1,1,_loc5_,_loc6_,_loc7_,param3);
            }
            return;
         }
         §§goto(addr22);
      }
      
      private function §7S§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         §§push(param1);
         if(_loc13_)
         {
            §§push(int(§§pop() * §[3§));
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
               this.§"!>§[_loc9_ = _loc7_++] = param3;
               if(_loc13_)
               {
                  var _loc10_:*;
                  this.§"!>§[_loc10_ = _loc7_++] = param4;
                  if(!(_loc14_ && param1))
                  {
                     var _loc11_:*;
                     this.§"!>§[_loc11_ = _loc7_++] = param5;
                     if(_loc13_ || param1)
                     {
                        var _loc12_:*;
                        this.§"!>§[_loc12_ = _loc7_++] = param6;
                     }
                  }
               }
               if(!_loc13_)
               {
                  break;
               }
               §§push(_loc8_);
               if(_loc13_ || param3)
               {
                  §§push(§§pop() - 1);
                  if(!(_loc14_ && param1))
                  {
                     continue loop0;
                  }
                  continue;
               }
               continue loop0;
            }
            addr140:
            return;
         }
      }
      
      private function §@U§(param1:int, param2:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(param1);
         if(_loc8_ || param1)
         {
            §§push(int(§§pop() * §[3§));
         }
         var _loc3_:* = §§pop();
         var _loc4_:*;
         this.§"!>§[_loc4_ = _loc3_++] = this.§"!>§[_loc4_] * param2;
         var _loc5_:*;
         this.§"!>§[_loc5_ = _loc3_++] = this.§"!>§[_loc5_] * param2;
         var _loc6_:*;
         this.§"!>§[_loc6_ = _loc3_++] = this.§"!>§[_loc6_] * param2;
         if(!(_loc7_ && _loc3_))
         {
            this.§"!>§[_loc3_] *= param2;
         }
      }
      
      public function §3!R§(param1:int) : uint
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:Number = NaN;
         §§push(param1);
         if(!_loc7_)
         {
            §§push(int(§§pop() * §[3§));
         }
         var _loc2_:* = §§pop();
         if(_loc8_ || _loc2_)
         {
            if(this.§<!8§)
            {
               addr40:
               §§push(Number(this.§"!>§[_loc2_ + 3]));
               if(_loc8_)
               {
                  addr59:
                  §§push(Number(§§pop()));
               }
            }
            else
            {
               §§push(Number(1));
               if(!(_loc7_ && this))
               {
                  §§goto(addr59);
               }
            }
            var _loc3_:* = §§pop();
            if(!_loc7_)
            {
               §§push(_loc3_);
               while(true)
               {
                  if(§§pop() != 0)
                  {
                     loop1:
                     while(true)
                     {
                        §§push(255);
                        if(!(_loc7_ && this))
                        {
                           §§push(§§pop() / _loc3_);
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              while(true)
                              {
                                 _loc3_ = §§pop();
                                 loop4:
                                 while(!(_loc7_ && _loc2_))
                                 {
                                    §§push(this.§"!>§[_loc2_] * _loc3_);
                                    loop5:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       loop6:
                                       while(true)
                                       {
                                          _loc4_ = §§pop();
                                          addr170:
                                          while(true)
                                          {
                                             §§push(this.§"!>§[_loc2_ + 1] * _loc3_);
                                             while(_loc8_ || _loc3_)
                                             {
                                                §§push(Number(§§pop()));
                                                loop9:
                                                while(true)
                                                {
                                                   _loc5_ = §§pop();
                                                   addr151:
                                                   addr205:
                                                   while(true)
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         if(_loc7_ && param1)
                                                         {
                                                            break;
                                                         }
                                                         §§push(this.§"!>§[_loc2_ + 2] * _loc3_);
                                                         if(!_loc7_)
                                                         {
                                                            continue loop9;
                                                         }
                                                         continue loop5;
                                                      }
                                                      continue loop4;
                                                   }
                                                   break loop1;
                                                }
                                             }
                                             continue loop6;
                                          }
                                       }
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
               }
            }
            §§goto(addr205);
         }
         §§goto(addr40);
      }
      
      public function §5!<§(param1:int, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:int = 0;
         if(_loc4_)
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
                     if(!(_loc5_ && param1))
                     {
                        §§push(Number(§§pop()));
                     }
                     while(true)
                     {
                        param2 = §§pop();
                        addr141:
                        addr52:
                        while(true)
                        {
                        }
                        §§push(§§pop() * §[3§);
                        if(_loc4_ || param1)
                        {
                           §§push(§§pop() + 3);
                        }
                        if(!(_loc5_ && _loc3_))
                        {
                           if(!_loc5_)
                           {
                              §§goto(addr83);
                           }
                           continue loop0;
                        }
                     }
                  }
               }
               while(true)
               {
                  if(!this.§<!8§)
                  {
                     §§push(param1);
                     if(_loc4_ || _loc3_)
                     {
                        §§goto(addr52);
                     }
                     addr83:
                     _loc3_ = §§pop();
                     do
                     {
                        this.§"!>§[_loc3_] = param2;
                     }
                     while(!_loc4_);
                     
                     if(!(_loc4_ || _loc3_))
                     {
                        addr110:
                        if(_loc5_ && _loc3_)
                        {
                           continue loop1;
                        }
                        addr117:
                     }
                     else
                     {
                        addr40:
                     }
                     return;
                  }
                  if(!(_loc5_ && param2))
                  {
                     if(_loc4_ || _loc3_)
                     {
                        this.§^W§(param1,this.§3!R§(param1),param2);
                        §§goto(addr110);
                     }
                     §§goto(addr141);
                  }
                  §§goto(addr110);
               }
               §§goto(addr117);
            }
         }
         §§goto(addr40);
      }
      
      public function §,!B§(param1:int) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         if(_loc3_)
         {
            §§push(§§pop() * §[3§);
            if(!_loc4_)
            {
               §§push(§§pop() + 3);
            }
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         return this.§"!>§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1);
         if(_loc5_ || param1)
         {
            §§push(int(§§pop() * §=!1§));
         }
         var _loc4_:* = §§pop();
         if(_loc5_)
         {
            this.§`f§.position = _loc4_ * §!m§;
            while(true)
            {
               this.§`f§.writeFloat(param2);
               §§goto(addr75);
            }
         }
         addr75:
         while(true)
         {
            this.§`f§.writeFloat(param3);
            if(!(_loc6_ && this))
            {
               if(_loc5_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(!_loc5_)
         {
            §§push(int(§§pop() * §=!1§));
         }
         var _loc3_:* = §§pop();
         if(_loc4_)
         {
            this.§`f§.position = _loc3_ * §!m§;
            do
            {
               param2.x = this.§`f§.readFloat();
               do
               {
                  param2.y = this.§`f§.readFloat();
               }
               while(_loc5_ && param1);
               
            }
            while(!_loc4_);
            
         }
      }
      
      public function §6I§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         §§push(param1);
         if(_loc9_)
         {
            §§push(int(§§pop() * §"1§));
         }
         var _loc5_:* = §§pop();
         var _loc6_:*;
         this.§7!C§[_loc6_ = _loc5_++] = this.§7!C§[_loc6_] + param2;
         var _loc7_:*;
         this.§7!C§[_loc7_ = _loc5_++] = this.§7!C§[_loc7_] + param3;
         if(!(_loc8_ && param1))
         {
            this.§7!C§[_loc5_] += param4;
         }
      }
      
      public function §3!4§(param1:int, param2:Matrix3D) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(!_loc4_)
         {
            §§push(int(§§pop() * §"1§));
         }
         var _loc3_:* = §§pop();
         if(_loc5_)
         {
            this.§ J§[0] = this.§7!C§[_loc3_];
            loop0:
            while(true)
            {
               this.§ J§[1] = this.§7!C§[_loc3_ + 1];
               while(true)
               {
                  this.§ J§[2] = this.§7!C§[_loc3_ + 2];
                  while(_loc5_)
                  {
                     param2.transformVectors(this.§ J§,this.§ J§);
                     loop3:
                     while(true)
                     {
                        this.§7!C§[_loc3_] = this.§ J§[0];
                        addr85:
                        while(true)
                        {
                           if(!_loc4_)
                           {
                              continue loop0;
                           }
                           continue loop3;
                        }
                        continue loop0;
                     }
                     addr63:
                     if(_loc5_)
                     {
                        this.§7!C§[_loc3_ + 2] = this.§ J§[2];
                        addr75:
                        if(!(_loc4_ && param1))
                        {
                           return;
                           addr61:
                        }
                        while(true)
                        {
                           if(_loc5_)
                           {
                              §§goto(addr63);
                           }
                           else
                           {
                              §§goto(addr85);
                           }
                        }
                        addr49:
                     }
                  }
               }
            }
         }
         §§goto(addr49);
      }
      
      public function §-o§(param1:uint, param2:Number = 1.0) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && _loc3_))
         {
            §§push(param2);
            if(_loc7_ || this)
            {
               if(§§pop() < 0.001)
               {
                  if(!_loc8_)
                  {
                     addr35:
                     §§push(0.001);
                     if(_loc7_)
                     {
                        §§push(Number(§§pop()));
                        if(!(_loc8_ && param1))
                        {
                           param2 = §§pop();
                           if(!(_loc8_ && _loc3_))
                           {
                              addr54:
                              if(this.§<!8§)
                              {
                                 addr57:
                                 §§push(param2);
                                 if(_loc7_)
                                 {
                                    addr60:
                                    §§push(Number(§§pop()));
                                    if(!(_loc8_ && param1))
                                    {
                                       addr73:
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 §§goto(addr73);
                              }
                              else
                              {
                                 §§push(Number(1));
                                 if(_loc7_)
                                 {
                                    §§goto(addr73);
                                 }
                              }
                           }
                           §§goto(addr57);
                        }
                        var _loc3_:* = §§pop();
                        if(!(_loc8_ && this))
                        {
                           §§push(_loc3_);
                           if(_loc7_ || this)
                           {
                              §§push(§§pop() / 255);
                              if(_loc7_)
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc7_ || param2)
                                 {
                                    _loc3_ = §§pop();
                                    addr113:
                                    §§push(§3!Z§.§0#§(param1) * _loc3_);
                                    if(!(_loc8_ && param2))
                                    {
                                       addr125:
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 §§goto(addr125);
                              }
                              var _loc4_:* = §§pop();
                              §§push(§3!Z§.§!!P§(param1) * _loc3_);
                              if(_loc7_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              var _loc5_:* = §§pop();
                              §§push(§3!Z§.§"!@§(param1) * _loc3_);
                              if(_loc7_ || param1)
                              {
                                 §§push(Number(§§pop()));
                              }
                              var _loc6_:* = §§pop();
                              if(!_loc8_)
                              {
                                 this.§7S§(0,this.§;k§,_loc4_,_loc5_,_loc6_,param2);
                              }
                              return;
                           }
                           §§goto(addr125);
                        }
                        §§goto(addr113);
                     }
                     §§goto(addr73);
                  }
                  §§goto(addr57);
               }
               §§goto(addr54);
            }
            §§goto(addr60);
         }
         §§goto(addr35);
      }
      
      public function §7w§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         if(!_loc13_)
         {
            §§push(param6);
            if(!_loc13_)
            {
               if(§§pop() < 0.001)
               {
                  if(_loc14_ || param2)
                  {
                     addr31:
                     §§push(0.001);
                     if(_loc14_ || this)
                     {
                        §§push(Number(§§pop()));
                        if(_loc14_ || param1)
                        {
                           §§goto(addr47);
                        }
                        §§goto(addr53);
                     }
                     addr47:
                     param6 = §§pop();
                     §§goto(addr48);
                  }
               }
               addr48:
               §§push(param1);
               if(_loc14_)
               {
                  addr53:
                  §§push(int(§§pop() * §[3§));
               }
               var _loc7_:* = §§pop();
               var _loc8_:int = 0;
               while(_loc8_ < param2)
               {
                  var _loc9_:*;
                  this.§"!>§[_loc9_ = _loc7_++] = param3;
                  if(!(_loc13_ && this))
                  {
                     var _loc10_:*;
                     this.§"!>§[_loc10_ = _loc7_++] = param4;
                     if(_loc14_)
                     {
                        var _loc11_:*;
                        this.§"!>§[_loc11_ = _loc7_++] = param5;
                        if(_loc14_ || param2)
                        {
                           var _loc12_:*;
                           this.§"!>§[_loc12_ = _loc7_++] = param6;
                        }
                     }
                  }
                  if(_loc13_)
                  {
                     break;
                  }
                  _loc8_++;
                  if(!(_loc14_ || param1))
                  {
                     break;
                  }
               }
               return;
            }
            §§goto(addr47);
         }
         §§goto(addr31);
      }
      
      public function §5N§(param1:int, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = NaN;
         if(_loc5_)
         {
            §§push(param2);
            if(!(_loc6_ && param2))
            {
               if(§§pop() < 0.001)
               {
                  if(!_loc6_)
                  {
                     §§push(0.001);
                     if(_loc5_)
                     {
                        §§push(Number(§§pop()));
                        if(!(_loc6_ && this))
                        {
                           addr43:
                           param2 = §§pop();
                           if(_loc5_)
                           {
                              addr46:
                              §§push(param2);
                              if(!_loc5_)
                              {
                              }
                              addr65:
                              var _loc3_:int = §§pop();
                              addr64:
                              if(_loc5_)
                              {
                                 if(this.§<!8§)
                                 {
                                    loop0:
                                    while(true)
                                    {
                                       §§push(Number(this.§"!>§[_loc3_ + 3]));
                                       while(true)
                                       {
                                          _loc4_ = §§pop();
                                          loop2:
                                          while(true)
                                          {
                                             §§push(param2);
                                             if(_loc5_ || _loc3_)
                                             {
                                                §§push(§§pop() / _loc4_);
                                                if(_loc5_ || this)
                                                {
                                                   addr206:
                                                   §§push(Number(§§pop()));
                                                }
                                                if(!(_loc5_ || param2))
                                                {
                                                   break;
                                                }
                                                _loc4_ = §§pop();
                                                loop3:
                                                while(true)
                                                {
                                                   this.§"!>§[_loc3_] *= _loc4_;
                                                   loop4:
                                                   while(!_loc6_)
                                                   {
                                                      this.§"!>§[_loc3_ + 1] *= _loc4_;
                                                      loop5:
                                                      for(; !(_loc6_ && _loc3_); if(!(_loc6_ && param2))
                                                      {
                                                         continue loop3;
                                                      })
                                                      {
                                                         while(true)
                                                         {
                                                            this.§"!>§[_loc3_ + 2] *= _loc4_;
                                                            addr148:
                                                            addr150:
                                                            addr101:
                                                            while(!_loc5_)
                                                            {
                                                               continue loop4;
                                                            }
                                                            this.§"!>§[_loc3_ + 3] = param2;
                                                            addr69:
                                                            while(true)
                                                            {
                                                               if(_loc5_ || _loc3_)
                                                               {
                                                                  continue loop5;
                                                               }
                                                               §§goto(addr148);
                                                               §§goto(addr150);
                                                            }
                                                            §§goto(addr132);
                                                         }
                                                      }
                                                      continue loop2;
                                                   }
                                                   continue loop0;
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      addr132:
                                                   }
                                                   continue;
                                                   return;
                                                }
                                             }
                                             §§goto(addr206);
                                          }
                                       }
                                    }
                                 }
                                 else
                                 {
                                    this.§"!>§[_loc3_ + 3] *= param2;
                                    if(!_loc5_)
                                    {
                                       §§goto(addr101);
                                    }
                                    §§goto(addr69);
                                 }
                                 §§goto(addr101);
                              }
                              §§goto(addr173);
                           }
                           §§goto(addr53);
                        }
                        if(§§pop() == 1)
                        {
                           if(_loc5_)
                           {
                              addr53:
                              return;
                           }
                        }
                        §§push(param1);
                        if(_loc5_ || this)
                        {
                           §§goto(addr64);
                           §§push(§§pop() * §[3§);
                        }
                        §§goto(addr65);
                     }
                     §§goto(addr43);
                  }
               }
            }
            §§goto(addr46);
         }
         §§goto(addr43);
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         if(!(_loc9_ && param2))
         {
            §§push(param1);
            while(true)
            {
               if(§§pop() == this.§<!8§)
               {
                  §§goto(addr272);
               }
               while(true)
               {
                  §§push(param2);
                  if(_loc9_ && _loc3_)
                  {
                     break;
                  }
                  if(§§pop())
                  {
                     if(_loc8_)
                     {
                        if(!_loc8_)
                        {
                           addr272:
                           return;
                        }
                        §§push(this.§;k§);
                        while(true)
                        {
                           §§push(int(§§pop() * §[3§));
                           addr249:
                           while(true)
                           {
                              _loc3_ = §§pop();
                           }
                        }
                        addr246:
                     }
                     loop4:
                     while(!(_loc9_ && param2))
                     {
                        while(true)
                        {
                           §§push(0);
                           if(_loc8_)
                           {
                              if(!_loc9_)
                              {
                                 _loc4_ = §§pop();
                                 if(_loc8_)
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       §§push(_loc4_);
                                       if(_loc8_ || this)
                                       {
                                          if(§§pop() >= _loc3_)
                                          {
                                             if(_loc8_ || param2)
                                             {
                                                if(_loc8_)
                                                {
                                                   if(_loc8_ || _loc3_)
                                                   {
                                                      addr65:
                                                      this.§<!8§ = param1;
                                                      break;
                                                   }
                                                   loop7:
                                                   while(true)
                                                   {
                                                      if(!(_loc9_ && param2))
                                                      {
                                                         if(!(_loc9_ && this))
                                                         {
                                                            loop8:
                                                            while(true)
                                                            {
                                                               _loc4_++;
                                                               addr72:
                                                               while(_loc9_)
                                                               {
                                                                  loop20:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc5_);
                                                                     loop21:
                                                                     while(true)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        loop22:
                                                                        while(true)
                                                                        {
                                                                           loop23:
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              loop24:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc9_ && _loc3_))
                                                                                 {
                                                                                    addr202:
                                                                                    _loc6_ = §§pop();
                                                                                    loop9:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc9_ && _loc3_))
                                                                                       {
                                                                                          §§push(param1);
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                §§push(1);
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      loop13:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         loop14:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc7_ = §§pop();
                                                                                                            loop15:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc6_);
                                                                                                               if(!(_loc9_ && _loc3_))
                                                                                                               {
                                                                                                                  if(_loc9_)
                                                                                                                  {
                                                                                                                     continue loop14;
                                                                                                                  }
                                                                                                                  if(!_loc8_)
                                                                                                                  {
                                                                                                                     continue loop13;
                                                                                                                  }
                                                                                                                  if(!_loc9_)
                                                                                                                  {
                                                                                                                     if(!_loc8_)
                                                                                                                     {
                                                                                                                        continue loop22;
                                                                                                                     }
                                                                                                                     if(§§pop() == 0)
                                                                                                                     {
                                                                                                                        continue loop8;
                                                                                                                     }
                                                                                                                     if(!_loc9_)
                                                                                                                     {
                                                                                                                        §§push(_loc7_);
                                                                                                                        if(_loc8_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() / _loc6_);
                                                                                                                           if(!(_loc9_ && param1))
                                                                                                                           {
                                                                                                                              addr138:
                                                                                                                              if(_loc8_)
                                                                                                                              {
                                                                                                                                 if(_loc9_ && param1)
                                                                                                                                 {
                                                                                                                                    continue loop23;
                                                                                                                                 }
                                                                                                                                 if(!_loc8_)
                                                                                                                                 {
                                                                                                                                    continue loop21;
                                                                                                                                 }
                                                                                                                                 if(_loc8_)
                                                                                                                                 {
                                                                                                                                    addr152:
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    if(!(_loc8_ || param2))
                                                                                                                                    {
                                                                                                                                       continue loop24;
                                                                                                                                    }
                                                                                                                                    _loc7_ = §§pop();
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc8_)
                                                                                                                                       {
                                                                                                                                          continue loop15;
                                                                                                                                       }
                                                                                                                                       addr162:
                                                                                                                                       if(!(_loc9_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       addr175:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc5_);
                                                                                                                                          addr176:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                          }
                                                                                                                                          §§goto(addr162);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    continue loop7;
                                                                                                                                    addr160:
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc5_ = §§pop();
                                                                                                                                       addr219:
                                                                                                                                       loop17:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(this.§<!8§);
                                                                                                                                          addr188:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                continue loop20;
                                                                                                                                             }
                                                                                                                                             addr193:
                                                                                                                                             §§push(1);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                continue loop23;
                                                                                                                                             }
                                                                                                                                             continue loop17;
                                                                                                                                          }
                                                                                                                                          continue loop9;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr218:
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 continue loop13;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr152);
                                                                                                                        }
                                                                                                                        §§goto(addr138);
                                                                                                                     }
                                                                                                                     §§goto(addr160);
                                                                                                                  }
                                                                                                                  §§goto(addr176);
                                                                                                               }
                                                                                                               §§goto(addr138);
                                                                                                            }
                                                                                                            continue loop23;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr193);
                                                                                                }
                                                                                                addr179:
                                                                                             }
                                                                                             §§goto(addr175);
                                                                                          }
                                                                                          §§goto(addr188);
                                                                                       }
                                                                                       §§goto(addr219);
                                                                                    }
                                                                                    addr203:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                    }
                                                                                    addr217:
                                                                                 }
                                                                                 §§goto(addr218);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               continue loop6;
                                                            }
                                                         }
                                                         §§goto(addr203);
                                                      }
                                                      §§goto(addr160);
                                                   }
                                                }
                                                §§goto(addr72);
                                             }
                                             break;
                                          }
                                          §§push(this.§,!B§(0));
                                          §§goto(addr217);
                                       }
                                       §§goto(addr179);
                                    }
                                    return;
                                 }
                                 continue loop4;
                              }
                              §§goto(addr246);
                           }
                           §§goto(addr249);
                        }
                     }
                     continue;
                  }
                  §§goto(addr65);
               }
            }
         }
         §§goto(addr267);
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§<!8§;
      }
      
      public function get §[O§() : int
      {
         return this.§;k§;
      }
      
      public function set §[O§(param1:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(_loc5_)
         {
            §§push(param1);
            if(!_loc6_)
            {
               §§push(§=!1§);
               loop0:
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc5_)
                  {
                     §§push(§§pop() * §!m§);
                     if(!(_loc6_ && param1))
                     {
                        addr504:
                        §§push(§§pop() - this.§`f§.length);
                     }
                     §§push(int(§§pop()));
                     loop1:
                     while(true)
                     {
                        _loc2_ = §§pop();
                        loop2:
                        while(true)
                        {
                           §§push(int(this.§`f§.length));
                           loop3:
                           for(; _loc5_; while(!(_loc6_ && param1))
                           {
                              continue loop0;
                              §§goto(addr458);
                           })
                           {
                              _loc4_ = §§pop();
                              loop4:
                              while(true)
                              {
                                 this.§`f§.length += _loc2_;
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    continue loop3;
                                    addr438:
                                    if(!(_loc6_ && _loc3_))
                                    {
                                       if(_loc5_)
                                       {
                                          if(_loc5_ || _loc2_)
                                          {
                                             this.§`f§.position = _loc4_;
                                             addr458:
                                             while(true)
                                             {
                                                §§push(0);
                                                if(_loc6_ && _loc3_)
                                                {
                                                   break;
                                                }
                                                _loc3_ = §§pop();
                                                if(_loc6_)
                                                {
                                                   continue;
                                                }
                                                addr377:
                                                if(_loc3_ >= _loc2_ / §!m§)
                                                {
                                                   addr384:
                                                   this.§"!>§.fixed = false;
                                                   addr366:
                                                   addr375:
                                                   addr374:
                                                   addr367:
                                                   §§push(param1 * §[3§);
                                                   if(_loc5_)
                                                   {
                                                      §§push(§§pop() - this.§"!>§.length);
                                                   }
                                                   _loc2_ = int(§§pop());
                                                   addr362:
                                                   _loc3_ = 0;
                                                   addr376:
                                                   addr363:
                                                   addr388:
                                                   if(_loc3_ >= _loc2_)
                                                   {
                                                      addr345:
                                                      _loc3_ = int(_loc2_);
                                                      addr346:
                                                      addr343:
                                                      addr344:
                                                      §§push(_loc3_);
                                                      if(!_loc6_)
                                                      {
                                                         addr307:
                                                         §§push(0);
                                                         if(!(_loc6_ && this))
                                                         {
                                                            if(§§pop() >= §§pop())
                                                            {
                                                               addr315:
                                                               this.§"!>§.fixed = true;
                                                               if(_loc5_)
                                                               {
                                                                  this.§7!C§.fixed = false;
                                                                  addr301:
                                                                  §§push(param1);
                                                                  if(_loc5_)
                                                                  {
                                                                     addr270:
                                                                     §§push(§"1§);
                                                                     if(!(_loc6_ && _loc2_))
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§push(§§pop() - this.§7!C§.length);
                                                                        }
                                                                        if(_loc5_ || param1)
                                                                        {
                                                                           addr292:
                                                                           _loc2_ = int(§§pop());
                                                                           addr293:
                                                                           if(_loc5_)
                                                                           {
                                                                              addr259:
                                                                              _loc3_ = 0;
                                                                              if(!_loc6_)
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    addr138:
                                                                                    §§push(_loc3_);
                                                                                    if(!(_loc6_ && param1))
                                                                                    {
                                                                                       addr148:
                                                                                       §§push(_loc2_);
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          if(§§pop() >= §§pop())
                                                                                          {
                                                                                             addr151:
                                                                                             if(_loc5_ || this)
                                                                                             {
                                                                                                if(_loc5_ || param1)
                                                                                                {
                                                                                                   §§push(_loc2_);
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      if(_loc5_ || param1)
                                                                                                      {
                                                                                                         if(!(_loc6_ && _loc2_))
                                                                                                         {
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               addr185:
                                                                                                               §§push(int(§§pop()));
                                                                                                               if(!(_loc6_ && param1))
                                                                                                               {
                                                                                                                  if(_loc5_ || _loc2_)
                                                                                                                  {
                                                                                                                     if(!(_loc6_ && param1))
                                                                                                                     {
                                                                                                                        _loc3_ = §§pop();
                                                                                                                        addr207:
                                                                                                                        if(!(_loc6_ && _loc2_))
                                                                                                                        {
                                                                                                                           addr43:
                                                                                                                           §§push(_loc3_);
                                                                                                                           if(!_loc6_)
                                                                                                                           {
                                                                                                                              if(!(_loc6_ && _loc2_))
                                                                                                                              {
                                                                                                                                 if(!_loc6_)
                                                                                                                                 {
                                                                                                                                    if(_loc5_ || this)
                                                                                                                                    {
                                                                                                                                       §§push(0);
                                                                                                                                       if(!(_loc6_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          if(!_loc6_)
                                                                                                                                          {
                                                                                                                                             if(_loc5_)
                                                                                                                                             {
                                                                                                                                                if(§§pop() >= §§pop())
                                                                                                                                                {
                                                                                                                                                   if(!_loc6_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc5_ || this)
                                                                                                                                                      {
                                                                                                                                                         if(_loc5_ || this)
                                                                                                                                                         {
                                                                                                                                                            if(_loc5_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc6_)
                                                                                                                                                               {
                                                                                                                                                                  this.§7!C§.fixed = true;
                                                                                                                                                                  addr100:
                                                                                                                                                                  if(_loc5_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc5_ || _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        this.§;k§ = param1;
                                                                                                                                                                        if(!(_loc6_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc6_)
                                                                                                                                                                           {
                                                                                                                                                                              addr217:
                                                                                                                                                                              if(_loc5_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr138);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr376);
                                                                                                                                                                           }
                                                                                                                                                                           return;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr100);
                                                                                                                                                                     }
                                                                                                                                                                     addr232:
                                                                                                                                                                     if(_loc5_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc5_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                           _loc3_++;
                                                                                                                                                                           §§goto(addr217);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr315);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr293);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr151);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr346);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr207);
                                                                                                                                                         }
                                                                                                                                                         addr126:
                                                                                                                                                         if(_loc5_ || param1)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc6_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc5_)
                                                                                                                                                               {
                                                                                                                                                                  _loc3_++;
                                                                                                                                                                  addr112:
                                                                                                                                                                  if(_loc5_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr43);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr363);
                                                                                                                                                               }
                                                                                                                                                               addr349:
                                                                                                                                                               if(!_loc6_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr376);
                                                                                                                                                               }
                                                                                                                                                               addr391:
                                                                                                                                                               §§goto(addr377);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr343);
                                                                                                                                                         }
                                                                                                                                                         addr331:
                                                                                                                                                         if(_loc5_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            _loc3_++;
                                                                                                                                                            addr324:
                                                                                                                                                            §§goto(addr346);
                                                                                                                                                         }
                                                                                                                                                         _loc3_++;
                                                                                                                                                         §§goto(addr391);
                                                                                                                                                         addr399:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr112);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr100);
                                                                                                                                                }
                                                                                                                                                this.§7!C§.pop();
                                                                                                                                                §§goto(addr126);
                                                                                                                                             }
                                                                                                                                             §§goto(addr377);
                                                                                                                                          }
                                                                                                                                          §§goto(addr307);
                                                                                                                                       }
                                                                                                                                       §§goto(addr148);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr366);
                                                                                                                              }
                                                                                                                              §§goto(addr138);
                                                                                                                           }
                                                                                                                           §§goto(addr185);
                                                                                                                        }
                                                                                                                        §§goto(addr301);
                                                                                                                     }
                                                                                                                     §§goto(addr346);
                                                                                                                  }
                                                                                                                  §§goto(addr301);
                                                                                                               }
                                                                                                               §§goto(addr259);
                                                                                                            }
                                                                                                            §§goto(addr375);
                                                                                                         }
                                                                                                         §§goto(addr344);
                                                                                                      }
                                                                                                      §§goto(addr292);
                                                                                                   }
                                                                                                   §§goto(addr185);
                                                                                                }
                                                                                                §§goto(addr384);
                                                                                             }
                                                                                             §§goto(addr259);
                                                                                          }
                                                                                          this.§7!C§.push(0);
                                                                                          §§goto(addr232);
                                                                                       }
                                                                                       §§goto(addr270);
                                                                                    }
                                                                                    §§goto(addr377);
                                                                                 }
                                                                                 §§goto(addr388);
                                                                              }
                                                                              _loc3_++;
                                                                              §§goto(addr349);
                                                                              addr359:
                                                                           }
                                                                           §§goto(addr315);
                                                                        }
                                                                        §§goto(addr374);
                                                                     }
                                                                     §§goto(addr384);
                                                                  }
                                                                  §§goto(addr345);
                                                               }
                                                               §§goto(addr324);
                                                            }
                                                            this.§"!>§.pop();
                                                            §§goto(addr331);
                                                         }
                                                         §§goto(addr367);
                                                      }
                                                      §§goto(addr362);
                                                   }
                                                   this.§"!>§.push(0);
                                                   §§goto(addr359);
                                                   addr383:
                                                }
                                                this.§`f§.writeFloat(0);
                                                §§goto(addr399);
                                             }
                                             continue loop3;
                                             addr458:
                                          }
                                          continue loop2;
                                       }
                                       continue loop4;
                                    }
                                 }
                              }
                           }
                           continue loop1;
                        }
                     }
                     addr509:
                  }
                  §§goto(addr504);
                  §§push(0);
                  if(_loc6_ && _loc2_)
                  {
                     continue;
                  }
                  if(§§pop() > §§pop())
                  {
                     if(_loc5_ || param1)
                     {
                        §§goto(addr438);
                     }
                     §§goto(addr458);
                  }
                  §§goto(addr383);
               }
            }
            §§goto(addr509);
         }
         §§goto(addr477);
      }
      
      public function get §3v§() : ByteArray
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§`f§.position = 0;
         }
         return this.§`f§;
      }
      
      public function get §@'§() : Vector.<Number>
      {
         return this.§"!>§;
      }
      
      public function get §;!2§() : Vector.<Number>
      {
         return this.§7!C§;
      }
   }
}
