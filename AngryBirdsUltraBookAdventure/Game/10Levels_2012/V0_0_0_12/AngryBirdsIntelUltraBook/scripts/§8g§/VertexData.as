package §8g§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class VertexData
   {
      
      public static const §`!-§:int = 4;
      
      public static const §1!§:int = 2;
      
      public static const §9;§:int = 3;
      
      public static const §6S§:int = 4;
      
      public static const §=!c§:int = 0;
      
      public static const §0J§:int = 0;
      
      public static const § N§:int = 0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §`!-§ = 4;
            while(true)
            {
               §1!§ = 2;
               loop1:
               while(_loc1_ || _loc1_)
               {
                  §9;§ = 3;
                  loop2:
                  while(true)
                  {
                     §6S§ = 4;
                     do
                     {
                        §=!c§ = 0;
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              if(_loc2_)
                              {
                                 break;
                              }
                              §0J§ = 0;
                              continue;
                           }
                           continue loop2;
                        }
                        continue loop1;
                     }
                     while(_loc2_);
                     
                     §§goto(addr31);
                  }
               }
            }
         }
         addr31:
      }
      
      private var §<!U§:ByteArray;
      
      private var §&p§:Vector.<Number>;
      
      private var §"`§:Vector.<Number>;
      
      private var §1y§:Boolean;
      
      private var §^^§:int;
      
      private var §%!;§:Vector.<Number>;
      
      public function VertexData(param1:int, param2:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || _loc3_)
         {
            this.§%!;§ = new Vector.<Number>(12,true);
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§<!U§ = new ByteArray();
                  while(true)
                  {
                     addr54:
                     addr38:
                     while(true)
                     {
                        this.§<!U§.endian = Endian.LITTLE_ENDIAN;
                        addr61:
                        while(!_loc4_)
                        {
                        }
                        continue loop0;
                     }
                     if(!(_loc4_ && _loc3_))
                     {
                        continue loop1;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§<!U§.length = param1 * §1!§ * §6S§;
            if(_loc5_)
            {
               §§goto(addr38);
            }
            §§goto(addr61);
         }
         §§goto(addr85);
      }
      
      public function clone() : VertexData
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:VertexData = new VertexData(0,this.§1y§);
         if(_loc3_)
         {
            _loc1_.§<!U§.length = this.§<!U§.length;
            loop0:
            while(true)
            {
               _loc1_.§<!U§.writeBytes(this.§<!U§);
               while(true)
               {
                  _loc1_.§&p§ = this.§&p§.concat();
                  addr115:
                  while(true)
                  {
                     _loc1_.§&p§.fixed = true;
                  }
                  addr44:
                  if(_loc3_ || _loc3_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         loop3:
         while(true)
         {
            _loc1_.§"`§ = this.§"`§.concat();
            loop4:
            while(!_loc2_)
            {
               _loc1_.§"`§.fixed = true;
               while(true)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     if(_loc2_)
                     {
                        break;
                     }
                     continue;
                  }
                  continue loop4;
               }
               continue loop3;
            }
            §§goto(addr115);
         }
         §§goto(addr68);
      }
      
      public function copyTo(param1:VertexData, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:* = 0;
         var _loc13_:* = NaN;
         var _loc9_:Vector.<Number> = param1.§"`§;
         if(!(_loc18_ && param2))
         {
            §§push(this.§^^§);
            while(true)
            {
               §§push(§9;§);
               addr109:
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  addr110:
                  while(true)
                  {
                     §§push(int(§§pop()));
                     addr111:
                     while(true)
                     {
                        _loc6_ = §§pop();
                     }
                  }
               }
               loop6:
               while(!(_loc18_ && param1))
               {
                  _loc7_ = §§pop();
                  loop7:
                  while(!_loc18_)
                  {
                     loop8:
                     while(true)
                     {
                        if(!param5)
                        {
                           §§push(0);
                           if(_loc19_ || param1)
                           {
                              §§push(int(§§pop()));
                              if(!(_loc18_ && param3))
                              {
                                 §§goto(addr206);
                              }
                              break;
                           }
                           break;
                        }
                        if(!_loc18_)
                        {
                           if(!_loc19_)
                           {
                              continue loop7;
                           }
                           param5.transformVectors(this.§"`§,this.§%!;§);
                        }
                        while(true)
                        {
                           §§push(0);
                           if(_loc19_)
                           {
                              if(!_loc19_)
                              {
                                 break;
                              }
                              §§push(int(§§pop()));
                           }
                           if(_loc18_)
                           {
                              continue loop6;
                           }
                           _loc8_ = §§pop();
                           if(_loc18_)
                           {
                              continue;
                           }
                           if(false)
                           {
                              continue loop8;
                           }
                           addr260:
                           loop59:
                           while(true)
                           {
                              §§push(_loc8_);
                              if(!(_loc18_ && param2))
                              {
                                 while(true)
                                 {
                                    §§push(_loc6_);
                                    if(!(_loc18_ && param3))
                                    {
                                       if(§§pop() >= §§pop())
                                       {
                                          if(!(_loc19_ || param3))
                                          {
                                             addr259:
                                             while(true)
                                             {
                                                §§push(_loc8_);
                                                break loop59;
                                             }
                                             addr259:
                                          }
                                       }
                                       else
                                       {
                                          var _loc14_:* = _loc7_++;
                                          _loc9_[_loc14_] = this.§%!;§[_loc8_];
                                          if(_loc19_)
                                          {
                                             if(!(_loc18_ && param1))
                                             {
                                                §§push(_loc8_);
                                                if(!_loc18_)
                                                {
                                                   §§push(§§pop() + 1);
                                                   if(!(_loc18_ && param1))
                                                   {
                                                      continue;
                                                   }
                                                   addr248:
                                                   while(true)
                                                   {
                                                      §§push(int(§§pop()));
                                                      if(_loc19_ || param3)
                                                      {
                                                         _loc8_ = §§pop();
                                                         if(!_loc19_)
                                                         {
                                                         }
                                                         addr262:
                                                         var _loc10_:ByteArray = param1.§<!U§;
                                                         if(!(_loc18_ && param3))
                                                         {
                                                            §§push(this.§^^§);
                                                            loop12:
                                                            while(true)
                                                            {
                                                               §§push(§1!§);
                                                               loop13:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!_loc18_)
                                                                  {
                                                                     §§push(§6S§);
                                                                     loop14:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        loop15:
                                                                        while(true)
                                                                        {
                                                                           §§push(int(§§pop()));
                                                                           loop16:
                                                                           while(true)
                                                                           {
                                                                              _loc6_ = §§pop();
                                                                              addr411:
                                                                              while(true)
                                                                              {
                                                                                 §§push(param2);
                                                                                 if(!(_loc19_ || this))
                                                                                 {
                                                                                    continue loop12;
                                                                                 }
                                                                                 if(!_loc19_)
                                                                                 {
                                                                                    continue loop16;
                                                                                 }
                                                                                 §§push(§1!§);
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    continue loop13;
                                                                                 }
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!(_loc19_ || param2))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(!_loc19_)
                                                                                 {
                                                                                    continue loop15;
                                                                                 }
                                                                                 §§push(§6S§);
                                                                                 if(!(_loc18_ && this))
                                                                                 {
                                                                                    continue loop14;
                                                                                 }
                                                                                 addr426:
                                                                                 §§goto(addr414);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  addr413:
                                                                  addr414:
                                                                  §§push(§§pop() == §§pop());
                                                                  if(!(_loc18_ && this))
                                                                  {
                                                                     §§push(!§§pop());
                                                                     if(_loc19_)
                                                                     {
                                                                        addr425:
                                                                        §§push(Boolean(§§pop()));
                                                                     }
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     addr427:
                                                                     _loc11_ = param1.§&p§;
                                                                     if(_loc19_)
                                                                     {
                                                                        §§push(this.§^^§);
                                                                        if(_loc19_)
                                                                        {
                                                                           §§push(§`!-§);
                                                                           if(!(_loc18_ && param2))
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              loop24:
                                                                              while(true)
                                                                              {
                                                                                 §§push(int(§§pop()));
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    _loc6_ = §§pop();
                                                                                    if(!(_loc18_ && param3))
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(param2);
                                                                                          if(!(_loc18_ && param1))
                                                                                          {
                                                                                             §§push(§`!-§);
                                                                                             if(!_loc18_)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc19_ || this)
                                                                                                {
                                                                                                   if(!_loc19_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§push(int(§§pop()));
                                                                                                   if(!(_loc18_ && param2))
                                                                                                   {
                                                                                                      addr516:
                                                                                                      _loc7_ = §§pop();
                                                                                                      loop26:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(param3);
                                                                                                         if(_loc19_ || param2)
                                                                                                         {
                                                                                                            if(§§pop() == 1)
                                                                                                            {
                                                                                                               if(_loc19_)
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               loop36:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  loop37:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc12_);
                                                                                                                     if(_loc19_ || param2)
                                                                                                                     {
                                                                                                                        addr919:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + 1);
                                                                                                                           if(!_loc19_)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           addr940:
                                                                                                                           loop55:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc12_ = §§pop();
                                                                                                                              if(_loc19_ || this)
                                                                                                                              {
                                                                                                                                 loop48:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc8_);
                                                                                                                                    if(!_loc18_)
                                                                                                                                    {
                                                                                                                                       addr951:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + 1);
                                                                                                                                          if(!_loc18_)
                                                                                                                                          {
                                                                                                                                             §§push(int(§§pop()));
                                                                                                                                             if(!_loc18_)
                                                                                                                                             {
                                                                                                                                                _loc8_ = §§pop();
                                                                                                                                                if(!_loc18_)
                                                                                                                                                {
                                                                                                                                                   addr960:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc8_);
                                                                                                                                                   }
                                                                                                                                                   addr960:
                                                                                                                                                }
                                                                                                                                                §§goto(addr964);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr951:
                                                                                                                                    }
                                                                                                                                    addr961:
                                                                                                                                    loop29:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(this.§^^§);
                                                                                                                                       addr963:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(§§pop() < §§pop())
                                                                                                                                          {
                                                                                                                                             if(this.§1y§)
                                                                                                                                             {
                                                                                                                                                if(!(_loc18_ && param2))
                                                                                                                                                {
                                                                                                                                                   addr616:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(this.§&p§[_loc12_ + 3]));
                                                                                                                                                      loop30:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         _loc13_ = §§pop();
                                                                                                                                                         if(_loc19_)
                                                                                                                                                         {
                                                                                                                                                            addr626:
                                                                                                                                                            loop31:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(param3);
                                                                                                                                                               if(_loc19_)
                                                                                                                                                               {
                                                                                                                                                                  break loop26;
                                                                                                                                                               }
                                                                                                                                                               addr589:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     break loop31;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop30;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               _loc13_ = §§pop();
                                                                                                                                                               if(_loc18_ && param1)
                                                                                                                                                               {
                                                                                                                                                                  continue loop48;
                                                                                                                                                               }
                                                                                                                                                               if(!_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  if(true)
                                                                                                                                                                  {
                                                                                                                                                                     _loc14_ = _loc7_++;
                                                                                                                                                                     _loc11_[_loc14_] = this.§&p§[_loc12_++] * _loc13_;
                                                                                                                                                                     if(_loc19_ || param2)
                                                                                                                                                                     {
                                                                                                                                                                        var _loc15_:* = _loc7_++;
                                                                                                                                                                        _loc11_[_loc15_] = this.§&p§[_loc12_++] * _loc13_;
                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           var _loc16_:* = _loc7_++;
                                                                                                                                                                           _loc11_[_loc16_] = this.§&p§[_loc12_++] * _loc13_;
                                                                                                                                                                           if(_loc19_ || param2)
                                                                                                                                                                           {
                                                                                                                                                                              var _loc17_:* = _loc7_++;
                                                                                                                                                                              _loc11_[_loc17_] = param3;
                                                                                                                                                                              if(!(_loc18_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc19_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc18_ && param3))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc18_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc18_ && param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop36;
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop37;
                                                                                                                                                                                       }
                                                                                                                                                                                       addr847:
                                                                                                                                                                                       addr847:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc15_ = _loc7_++;
                                                                                                                                                                                          _loc11_[_loc15_] = this.§&p§[_loc12_++];
                                                                                                                                                                                          if(_loc18_ && param2)
                                                                                                                                                                                          {
                                                                                                                                                                                          }
                                                                                                                                                                                          addr907:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr908:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc19_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop37;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop48;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       addr847:
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc16_ = _loc7_++;
                                                                                                                                                                                       _loc11_[_loc16_] = this.§&p§[_loc12_++];
                                                                                                                                                                                       if(_loc19_ || param1)
                                                                                                                                                                                       {
                                                                                                                                                                                       }
                                                                                                                                                                                       addr906:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr907);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc17_ = _loc7_++;
                                                                                                                                                                                    _loc11_[_loc17_] = param3;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr906);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr907);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr847);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(0);
                                                                                                                                                                     if(!(_loc19_ || this))
                                                                                                                                                                     {
                                                                                                                                                                        break loop29;
                                                                                                                                                                     }
                                                                                                                                                                     §§push(int(§§pop()));
                                                                                                                                                                     if(!(_loc19_ || param1))
                                                                                                                                                                     {
                                                                                                                                                                        continue loop55;
                                                                                                                                                                     }
                                                                                                                                                                     _loc8_ = §§pop();
                                                                                                                                                                     if(_loc18_ && param3)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop36;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr688:
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr960);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr626:
                                                                                                                                                            addr591:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr964);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr616:
                                                                                                                                                }
                                                                                                                                                §§goto(addr626);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                _loc14_ = _loc7_++;
                                                                                                                                                _loc11_[_loc14_] = this.§&p§[_loc12_++];
                                                                                                                                                if(_loc19_ || param2)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr847);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr908);
                                                                                                                                          }
                                                                                                                                          §§goto(addr964);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr951);
                                                                                                                                 }
                                                                                                                                 addr948:
                                                                                                                              }
                                                                                                                              §§goto(addr960);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr919:
                                                                                                                     }
                                                                                                                     addr922:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(int(§§pop()));
                                                                                                                        if(!(_loc18_ && param3))
                                                                                                                        {
                                                                                                                           §§goto(addr940);
                                                                                                                        }
                                                                                                                        §§goto(addr961);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(0);
                                                                                                               if(!_loc18_)
                                                                                                               {
                                                                                                                  break loop24;
                                                                                                               }
                                                                                                               addr687:
                                                                                                               _loc12_ = §§pop();
                                                                                                            }
                                                                                                            §§goto(addr688);
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() / _loc13_);
                                                                                                         if(_loc19_ || param3)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                         §§goto(addr589);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr940);
                                                                                                }
                                                                                                §§goto(addr591);
                                                                                             }
                                                                                             §§goto(addr963);
                                                                                          }
                                                                                          §§goto(addr516);
                                                                                       }
                                                                                       continue;
                                                                                    }
                                                                                    §§goto(addr626);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§push(int(§§pop()));
                                                                              if(!_loc18_)
                                                                              {
                                                                                 §§goto(addr687);
                                                                              }
                                                                              §§goto(addr919);
                                                                           }
                                                                           §§goto(addr665);
                                                                        }
                                                                        §§goto(addr940);
                                                                     }
                                                                     §§goto(addr483);
                                                                  }
                                                                  addr964:
                                                                  return;
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr337);
                                                      }
                                                      break loop59;
                                                   }
                                                }
                                                else
                                                {
                                                   addr206:
                                                   _loc8_ = §§pop();
                                                   if(!_loc19_)
                                                   {
                                                   }
                                                }
                                             }
                                             §§goto(addr259);
                                          }
                                          while(true)
                                          {
                                             if(!(_loc18_ && param1))
                                             {
                                                §§push(_loc8_);
                                                if(_loc19_ || param3)
                                                {
                                                   break loop8;
                                                }
                                                break loop59;
                                             }
                                          }
                                          addr224:
                                       }
                                       §§goto(addr262);
                                    }
                                    break;
                                 }
                                 while(true)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       _loc14_ = _loc7_++;
                                       _loc9_[_loc14_] = this.§"`§[_loc8_];
                                       §§goto(addr224);
                                    }
                                    §§goto(addr262);
                                 }
                                 addr261:
                              }
                              break;
                              _loc8_ = §§pop();
                              if(!(_loc18_ && param2))
                              {
                                 continue;
                              }
                              §§goto(addr259);
                           }
                           while(true)
                           {
                              §§goto(addr261);
                           }
                           §§goto(addr262);
                        }
                        while(!_loc18_)
                        {
                           §§push(§9;§);
                           if(_loc19_ || param1)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc19_ || param1)
                              {
                                 §§push(int(§§pop()));
                                 continue loop6;
                              }
                           }
                           else
                           {
                              §§goto(addr109);
                           }
                           §§goto(addr110);
                        }
                        §§goto(addr111);
                        §§goto(addr206);
                     }
                     while(true)
                     {
                        §§push(§§pop() + 1);
                        if(_loc19_ || param2)
                        {
                           §§goto(addr248);
                        }
                        §§goto(addr260);
                     }
                  }
                  while(true)
                  {
                     §§goto(addr74);
                  }
               }
            }
         }
         §§goto(addr112);
      }
      
      public function append(param1:VertexData) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:int = this.§<!U§.length;
         if(!_loc9_)
         {
            this.§<!U§.length += param1.§<!U§.length;
            while(true)
            {
               this.§<!U§.position = _loc2_;
               addr59:
               loop1:
               while(_loc10_)
               {
                  while(true)
                  {
                     this.§<!U§.writeBytes(param1.§<!U§);
                     continue loop1;
                  }
               }
            }
         }
         while(true)
         {
            this.§&p§.fixed = false;
            if(!(_loc10_ || _loc3_))
            {
               continue;
            }
            if(!(_loc9_ && _loc3_))
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr59);
            }
            §§goto(addr46);
         }
         var _loc3_:Vector.<Number> = param1.§&p§;
         var _loc4_:int = _loc3_.length;
         §§push(0);
         if(!_loc9_)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         while(true)
         {
            §§push(_loc5_);
            if(_loc10_)
            {
               if(_loc10_ || _loc2_)
               {
                  if(§§pop() >= _loc4_)
                  {
                     if(!_loc9_)
                     {
                        this.§&p§.fixed = true;
                     }
                     do
                     {
                        this.§"`§.fixed = false;
                     }
                     while(!_loc10_);
                     
                     if(_loc10_)
                     {
                        if(!(_loc9_ && this))
                        {
                           if(true)
                           {
                              break;
                           }
                           continue;
                        }
                        §§push(_loc5_);
                        if(!(_loc9_ && _loc3_))
                        {
                           addr146:
                           _loc5_ = int(§§pop() + 1);
                        }
                        §§goto(addr146);
                        addr157:
                     }
                     continue;
                  }
                  this.§&p§.push(_loc3_[_loc5_]);
                  §§goto(addr157);
               }
            }
            §§goto(addr146);
         }
         var _loc6_:Vector.<Number> = param1.§"`§;
         var _loc7_:int = _loc6_.length;
         §§push(0);
         if(!(_loc9_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc8_:* = §§pop();
         if(_loc10_)
         {
            loop6:
            while(true)
            {
               §§push(_loc8_);
               if(!_loc9_)
               {
                  if(§§pop() >= _loc7_)
                  {
                     if(!_loc9_)
                     {
                        while(true)
                        {
                           this.§"`§.fixed = true;
                        }
                        addr214:
                     }
                     while(_loc10_)
                     {
                        this.§^^§ += param1.§>!B§;
                        if(_loc9_ && this)
                        {
                           continue;
                        }
                        if(!(_loc9_ && _loc3_))
                        {
                           break loop6;
                        }
                        addr244:
                        §§push(_loc8_);
                        if(_loc10_ || _loc3_)
                        {
                           §§push(§§pop() + 1);
                           if(_loc10_)
                           {
                              §§push(int(§§pop()));
                           }
                        }
                        _loc8_ = §§pop();
                        break;
                        addr255:
                     }
                     continue;
                  }
                  this.§"`§.push(_loc6_[_loc8_]);
                  §§goto(addr255);
               }
               §§goto(addr244);
            }
            return;
         }
         §§goto(addr214);
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         §§push(param1);
         if(_loc9_)
         {
            §§push(int(§§pop() * §9;§));
         }
         var _loc5_:* = §§pop();
         var _loc6_:* = _loc5_++;
         this.§"`§[_loc6_] = param2;
         var _loc7_:* = _loc5_++;
         this.§"`§[_loc7_] = param3;
         if(_loc9_ || this)
         {
            this.§"`§[_loc5_] = param4;
         }
         else if(true)
         {
            return;
         }
      }
      
      public function §<a§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param1);
         if(_loc7_ || param2)
         {
            §§push(int(§§pop() * §9;§));
         }
         var _loc4_:* = §§pop();
         var _loc5_:* = _loc4_++;
         this.§"`§[_loc5_] = param2;
         if(!_loc6_)
         {
            this.§"`§[_loc4_] = param3;
         }
      }
      
      public function §?!#§(param1:int, param2:Vector3D) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(!(_loc4_ && param2))
         {
            §§push(int(§§pop() * §9;§));
         }
         var _loc3_:* = §§pop();
         if(_loc5_)
         {
            param2.x = this.§"`§[_loc3_++];
         }
         while(true)
         {
            param2.y = this.§"`§[_loc3_++];
            while(_loc5_ || this)
            {
               param2.z = this.§"`§[_loc3_];
               if(_loc5_ || param2)
               {
                  return;
               }
            }
         }
      }
      
      public function §-!Z§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!_loc9_)
         {
            if(this.§1y§)
            {
               addr21:
               §§push(param3);
               if(_loc8_ || param1)
               {
                  §§push(Number(§§pop()));
                  if(!_loc8_)
                  {
                  }
                  addr43:
                  var _loc4_:* = §§pop();
                  if(!_loc9_)
                  {
                     §§push(_loc4_);
                     if(_loc8_ || param1)
                     {
                        §§push(§§pop() / 255);
                        if(_loc8_)
                        {
                           addr68:
                           §§push(Number(§§pop()));
                           if(!(_loc9_ && this))
                           {
                              _loc4_ = §§pop();
                              addr77:
                              §§push(§2!E§.§6,§(param2) * _loc4_);
                              if(_loc9_ && param3)
                              {
                              }
                              §§goto(addr91);
                           }
                           §§push(Number(§§pop()));
                        }
                        addr91:
                        var _loc5_:* = §§pop();
                        §§push(§2!E§.§3i§(param2) * _loc4_);
                        if(!(_loc9_ && param2))
                        {
                           §§push(Number(§§pop()));
                        }
                        var _loc6_:* = §§pop();
                        §§push(§2!E§.§7!@§(param2) * _loc4_);
                        if(_loc8_ || param2)
                        {
                           §§push(Number(§§pop()));
                        }
                        var _loc7_:* = §§pop();
                        if(!_loc9_)
                        {
                           this.§-c§(param1,1,_loc5_,_loc6_,_loc7_,param3);
                        }
                        return;
                     }
                     §§goto(addr68);
                  }
                  §§goto(addr77);
               }
               addr42:
               §§push(Number(§§pop()));
            }
            else
            {
               §§push(Number(1));
               if(!(_loc9_ && param1))
               {
                  §§goto(addr42);
               }
            }
            §§goto(addr43);
         }
         §§goto(addr21);
      }
      
      private function §-c§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         §§push(param1);
         if(_loc14_)
         {
            §§push(int(§§pop() * §`!-§));
         }
         var _loc7_:* = §§pop();
         §§push(param2);
         if(!(_loc13_ && param3))
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
               var _loc9_:* = _loc7_++;
               this.§&p§[_loc9_] = param3;
               if(!_loc13_)
               {
                  var _loc10_:* = _loc7_++;
                  this.§&p§[_loc10_] = param4;
                  if(!(_loc13_ && this))
                  {
                     var _loc11_:* = _loc7_++;
                     this.§&p§[_loc11_] = param5;
                     if(_loc14_)
                     {
                        var _loc12_:* = _loc7_++;
                        this.§&p§[_loc12_] = param6;
                     }
                  }
               }
               if(!_loc14_)
               {
                  break;
               }
               §§push(_loc8_);
               if(_loc14_ || param1)
               {
                  §§push(§§pop() - 1);
                  if(!(_loc14_ || this))
                  {
                     continue loop0;
                  }
               }
               §§push(int(§§pop()));
               if(!_loc13_)
               {
                  continue loop0;
               }
            }
            addr150:
            return;
         }
      }
      
      private function §4G§(param1:int, param2:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(param1);
         if(!_loc7_)
         {
            §§push(int(§§pop() * §`!-§));
         }
         var _loc3_:* = §§pop();
         var _loc4_:* = _loc3_++;
         this.§&p§[_loc4_] *= param2;
         var _loc5_:* = _loc3_++;
         this.§&p§[_loc5_] *= param2;
         var _loc6_:* = _loc3_++;
         this.§&p§[_loc6_] *= param2;
         if(_loc8_)
         {
            this.§&p§[_loc3_] *= param2;
         }
         else if(true)
         {
            return;
         }
      }
      
      public function §3<§(param1:int) : uint
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:Number = NaN;
         §§push(param1);
         if(_loc7_ || _loc2_)
         {
            §§push(int(§§pop() * §`!-§));
         }
         var _loc2_:* = §§pop();
         if(_loc7_)
         {
            if(this.§1y§)
            {
               addr40:
               §§push(Number(this.§&p§[_loc2_ + 3]));
               if(!_loc7_)
               {
               }
               addr54:
               §§push(Number(§§pop()));
            }
            else
            {
               §§push(Number(1));
               if(_loc7_)
               {
                  §§goto(addr54);
               }
            }
            var _loc3_:* = §§pop();
            if(_loc7_ || _loc2_)
            {
               §§push(_loc3_);
               loop0:
               while(§§pop() != 0)
               {
                  loop1:
                  while(true)
                  {
                     §§push(255);
                     if(!(_loc7_ || this))
                     {
                        break;
                     }
                     §§push(§§pop() / _loc3_);
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        addr191:
                        while(true)
                        {
                           _loc3_ = §§pop();
                        }
                        addr131:
                        if(!(_loc7_ || _loc2_))
                        {
                           continue;
                        }
                        §§push(Number(§§pop()));
                        loop8:
                        while(true)
                        {
                           _loc5_ = §§pop();
                           addr140:
                           while(true)
                           {
                              if(!(_loc8_ && _loc2_))
                              {
                                 §§push(this.§&p§[_loc2_ + 2] * _loc3_);
                                 if(_loc7_)
                                 {
                                    if(_loc8_ && _loc3_)
                                    {
                                       break;
                                    }
                                    §§push(Number(§§pop()));
                                 }
                                 continue loop8;
                              }
                              addr174:
                              while(true)
                              {
                                 if(_loc8_)
                                 {
                                    continue loop1;
                                 }
                                 if(_loc8_)
                                 {
                                    break loop0;
                                 }
                                 §§push(this.§&p§[_loc2_ + 1] * _loc3_);
                                 if(_loc8_)
                                 {
                                    continue loop8;
                                 }
                                 if(!_loc8_)
                                 {
                                    §§goto(addr131);
                                 }
                                 else
                                 {
                                    §§goto(addr191);
                                 }
                              }
                           }
                           while(true)
                           {
                              if(!(_loc7_ || this))
                              {
                                 continue loop0;
                              }
                              _loc4_ = §§pop();
                              §§goto(addr174);
                           }
                           §§goto(addr179);
                           continue loop0;
                        }
                     }
                  }
                  return §§pop();
               }
               §§goto(addr179);
               §§push(0);
            }
            §§goto(addr192);
         }
         §§goto(addr40);
      }
      
      public function §2X§(param1:int, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = 0;
         if(_loc4_)
         {
            §§push(param2);
            if(!_loc5_)
            {
               if(§§pop() < 0.001)
               {
                  while(true)
                  {
                     §§push(0.001);
                     if(!_loc5_)
                     {
                        addr137:
                        §§push(Number(§§pop()));
                        while(true)
                        {
                           param2 = §§pop();
                           addr138:
                           while(true)
                           {
                           }
                        }
                        addr137:
                     }
                     §§goto(addr137);
                  }
                  addr133:
               }
               for(; !this.§1y§; §§goto(addr138))
               {
                  §§push(param1);
                  if(!(_loc5_ && param1))
                  {
                     §§push(§§pop() * §`!-§);
                     if(!(_loc5_ && param2))
                     {
                        §§push(§§pop() + 3);
                     }
                     if(!(_loc5_ && _loc3_))
                     {
                        §§push(int(§§pop()));
                     }
                     §§goto(addr137);
                  }
                  _loc3_ = §§pop();
                  do
                  {
                     this.§&p§[_loc3_] = param2;
                  }
                  while(!(_loc4_ || param2));
                  
                  if(!(_loc5_ && this))
                  {
                     if(!(_loc4_ || _loc3_))
                     {
                        break;
                     }
                     if(_loc5_ && param2)
                     {
                        continue;
                     }
                     if(_loc4_)
                     {
                        §§goto(addr21);
                     }
                     §§goto(addr133);
                  }
                  addr21:
                  return;
               }
               this.§-!Z§(param1,this.§3<§(param1),param2);
               §§goto(addr127);
            }
            §§goto(addr137);
         }
         §§goto(addr127);
      }
      
      public function §9Z§(param1:int) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         if(!(_loc4_ && param1))
         {
            §§push(§§pop() * §`!-§);
            if(!_loc4_)
            {
               §§push(§§pop() + 3);
            }
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         return this.§&p§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1);
         if(_loc5_)
         {
            §§push(int(§§pop() * §1!§));
         }
         var _loc4_:* = §§pop();
         if(_loc5_ || param1)
         {
            this.§<!U§.position = _loc4_ * §6S§;
         }
         while(true)
         {
            this.§<!U§.writeFloat(param2);
            while(!_loc6_)
            {
               this.§<!U§.writeFloat(param3);
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
         if(_loc4_ || this)
         {
            §§push(int(§§pop() * §1!§));
         }
         var _loc3_:* = §§pop();
         if(_loc4_ || param2)
         {
            this.§<!U§.position = _loc3_ * §6S§;
            while(true)
            {
               param2.x = this.§<!U§.readFloat();
               loop1:
               while(_loc4_)
               {
                  while(true)
                  {
                     param2.y = this.§<!U§.readFloat();
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
         §§goto(addr78);
      }
      
      public function §5!$§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         §§push(param1);
         if(_loc9_)
         {
            §§push(int(§§pop() * §9;§));
         }
         var _loc5_:* = §§pop();
         var _loc6_:* = _loc5_++;
         this.§"`§[_loc6_] += param2;
         var _loc7_:* = _loc5_++;
         this.§"`§[_loc7_] += param3;
         if(!(_loc8_ && this))
         {
            this.§"`§[_loc5_] += param4;
         }
         else if(true)
         {
            return;
         }
      }
      
      public function §`!O§(param1:int, param2:Matrix3D) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(!(_loc5_ && param1))
         {
            §§push(int(§§pop() * §9;§));
         }
         var _loc3_:* = §§pop();
         if(!(_loc5_ && param1))
         {
            this.§%!;§[0] = this.§"`§[_loc3_];
            loop0:
            while(true)
            {
               this.§%!;§[1] = this.§"`§[_loc3_ + 1];
               while(true)
               {
                  this.§%!;§[2] = this.§"`§[_loc3_ + 2];
                  loop2:
                  for(; _loc4_ || _loc3_; if(!(_loc5_ && _loc3_))
                  {
                     if(_loc5_)
                     {
                        continue loop0;
                     }
                     addr68:
                  },continue,return)
                  {
                     param2.transformVectors(this.§%!;§,this.§%!;§);
                     loop3:
                     while(true)
                     {
                        this.§"`§[_loc3_] = this.§%!;§[0];
                        addr109:
                        loop4:
                        while(true)
                        {
                           this.§"`§[_loc3_ + 1] = this.§%!;§[1];
                           while(true)
                           {
                              if(_loc4_)
                              {
                                 continue loop3;
                              }
                              continue loop4;
                              addr99:
                              this.§"`§[_loc3_ + 2] = this.§%!;§[2];
                              if(_loc4_ || param1)
                              {
                                 continue loop2;
                              }
                           }
                           continue loop3;
                        }
                        §§goto(addr68);
                     }
                  }
               }
            }
         }
         §§goto(addr109);
      }
      
      public function §2!]§(param1:uint, param2:Number = 1.0) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            §§push(param2);
            if(_loc7_)
            {
               if(§§pop() < 0.001)
               {
                  if(_loc7_)
                  {
                     §§push(0.001);
                     if(_loc7_ || _loc3_)
                     {
                        §§push(Number(§§pop()));
                        if(!(_loc8_ && this))
                        {
                           addr41:
                           param2 = §§pop();
                           if(_loc7_ || this)
                           {
                              §§goto(addr49);
                           }
                           §§goto(addr52);
                        }
                        §§goto(addr78);
                     }
                     §§goto(addr41);
                  }
                  §§goto(addr52);
               }
               addr49:
               if(this.§1y§)
               {
                  addr52:
                  §§push(param2);
                  if(!(_loc8_ && param1))
                  {
                     §§push(Number(§§pop()));
                     if(_loc7_)
                     {
                        addr78:
                        §§push(Number(§§pop()));
                        addr63:
                     }
                  }
                  §§goto(addr78);
               }
               else
               {
                  §§push(Number(1));
                  if(_loc7_)
                  {
                     §§goto(addr78);
                  }
               }
               var _loc3_:* = §§pop();
               if(!_loc8_)
               {
                  §§push(_loc3_);
                  if(_loc7_)
                  {
                     §§push(§§pop() / 255);
                     if(!_loc8_)
                     {
                        addr89:
                        §§push(Number(§§pop()));
                        if(!_loc8_)
                        {
                           _loc3_ = §§pop();
                           §§goto(addr93);
                        }
                     }
                     §§goto(addr106);
                  }
                  §§goto(addr89);
               }
               addr93:
               §§push(§2!E§.§6,§(param1) * _loc3_);
               if(!(_loc8_ && param1))
               {
                  addr106:
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               §§push(§2!E§.§3i§(param1) * _loc3_);
               if(_loc7_ || param1)
               {
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               §§push(§2!E§.§7!@§(param1) * _loc3_);
               if(_loc7_ || this)
               {
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               if(!_loc8_)
               {
                  this.§-c§(0,this.§^^§,_loc4_,_loc5_,_loc6_,param2);
               }
               return;
            }
            §§goto(addr63);
         }
         §§goto(addr52);
      }
      
      public function §if§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         if(_loc13_ || param2)
         {
            §§push(param6);
            if(_loc13_ || param3)
            {
               if(§§pop() < 0.001)
               {
                  if(!_loc14_)
                  {
                     addr35:
                     §§push(0.001);
                     if(_loc13_)
                     {
                        addr38:
                        §§push(Number(§§pop()));
                        if(_loc13_ || param3)
                        {
                           addr46:
                           param6 = §§pop();
                           §§push(param1);
                           if(_loc13_ || param3)
                           {
                              addr58:
                              §§push(int(§§pop() * §`!-§));
                           }
                           var _loc7_:* = §§pop();
                           §§push(0);
                           if(_loc13_)
                           {
                              §§push(int(§§pop()));
                           }
                           var _loc8_:* = §§pop();
                           while(true)
                           {
                              §§push(_loc8_);
                              while(true)
                              {
                                 if(§§pop() < param2)
                                 {
                                    var _loc9_:* = _loc7_++;
                                    this.§&p§[_loc9_] = param3;
                                    if(_loc13_)
                                    {
                                       var _loc10_:* = _loc7_++;
                                       this.§&p§[_loc10_] = param4;
                                       if(!(_loc14_ && param2))
                                       {
                                          var _loc11_:* = _loc7_++;
                                          this.§&p§[_loc11_] = param5;
                                          if(!(_loc14_ && param2))
                                          {
                                             var _loc12_:* = _loc7_++;
                                             this.§&p§[_loc12_] = param6;
                                          }
                                       }
                                    }
                                    if(_loc14_ && param3)
                                    {
                                       break;
                                    }
                                    §§push(_loc8_);
                                    if(!(_loc13_ || param2))
                                    {
                                       continue;
                                    }
                                    §§push(§§pop() + 1);
                                    if(_loc13_)
                                    {
                                       §§push(int(§§pop()));
                                       if(_loc14_)
                                       {
                                          continue;
                                       }
                                    }
                                    _loc8_ = §§pop();
                                    if(!(_loc14_ && this))
                                    {
                                       break;
                                    }
                                 }
                                 return;
                              }
                           }
                        }
                        §§goto(addr58);
                     }
                     §§goto(addr46);
                  }
               }
               §§goto(addr46);
            }
            §§goto(addr38);
         }
         §§goto(addr35);
      }
      
      public function §2J§(param1:int, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = NaN;
         if(_loc5_)
         {
            §§push(param2);
            if(_loc5_ || this)
            {
               if(§§pop() < 0.001)
               {
                  if(!_loc6_)
                  {
                     §§push(0.001);
                     if(_loc5_ || _loc3_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc5_ || param2)
                        {
                        }
                        addr76:
                        var _loc3_:int = §§pop();
                        addr75:
                        if(!_loc6_)
                        {
                           if(!this.§1y§)
                           {
                              this.§&p§[_loc3_ + 3] *= param2;
                              if(_loc5_)
                              {
                                 if(!_loc6_)
                                 {
                                    if(_loc6_ && param1)
                                    {
                                       loop0:
                                       while(true)
                                       {
                                          if(!(_loc6_ && _loc3_))
                                          {
                                             this.§&p§[_loc3_] *= _loc4_;
                                             while(true)
                                             {
                                                this.§&p§[_loc3_ + 1] *= _loc4_;
                                                while(true)
                                                {
                                                   this.§&p§[_loc3_ + 2] *= _loc4_;
                                                   loop3:
                                                   while(!_loc6_)
                                                   {
                                                      this.§&p§[_loc3_ + 3] = param2;
                                                      while(true)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            continue loop3;
                                                         }
                                                         if(!(_loc6_ && param1))
                                                         {
                                                            break;
                                                         }
                                                         addr220:
                                                         while(true)
                                                         {
                                                            §§push(Number(this.§&p§[_loc3_ + 3]));
                                                            while(true)
                                                            {
                                                               _loc4_ = §§pop();
                                                               addr228:
                                                               while(true)
                                                               {
                                                                  §§push(param2);
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push(§§pop() / _loc4_);
                                                                     if(_loc5_)
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           continue loop0;
                                                                        }
                                                                        continue;
                                                                     }
                                                                  }
                                                                  continue loop0;
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             addr186:
                                          }
                                          §§goto(addr228);
                                       }
                                    }
                                    return;
                                 }
                                 §§goto(addr186);
                              }
                              §§goto(addr131);
                           }
                           §§goto(addr220);
                        }
                        §§goto(addr228);
                     }
                     param2 = §§pop();
                     if(!(_loc6_ && param1))
                     {
                        addr56:
                        §§push(param2);
                        if(!(_loc6_ && _loc3_))
                        {
                           if(§§pop() == 1)
                           {
                              if(_loc6_)
                              {
                                 addr69:
                                 §§push(param1);
                                 if(!_loc6_)
                                 {
                                    §§goto(addr75);
                                    §§push(§§pop() * §`!-§);
                                 }
                                 §§goto(addr76);
                              }
                           }
                           §§goto(addr69);
                        }
                        §§goto(addr76);
                     }
                     return;
                  }
                  §§goto(addr69);
               }
               §§goto(addr56);
            }
            §§goto(addr76);
         }
         §§goto(addr56);
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         if(_loc8_)
         {
            §§push(param1);
            loop0:
            while(§§pop() != this.§1y§)
            {
               loop1:
               while(true)
               {
                  §§push(param2);
                  if(!(_loc8_ || _loc3_))
                  {
                     break;
                  }
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§push(this.§^^§);
                        loop3:
                        while(true)
                        {
                           §§push(int(§§pop() * §`!-§));
                           loop4:
                           while(true)
                           {
                              _loc3_ = §§pop();
                              while(true)
                              {
                                 §§push(0);
                                 if(!(_loc9_ && this))
                                 {
                                    if(_loc9_)
                                    {
                                       break;
                                    }
                                    §§push(int(§§pop()));
                                 }
                                 if(!(_loc8_ || this))
                                 {
                                    continue loop4;
                                 }
                                 _loc4_ = §§pop();
                                 if(!(_loc8_ || _loc3_))
                                 {
                                    continue;
                                 }
                                 if(!_loc8_)
                                 {
                                    continue loop2;
                                 }
                                 if(!_loc9_)
                                 {
                                    if(_loc9_ && param2)
                                    {
                                       break loop0;
                                    }
                                    addr33:
                                    §§push(_loc4_);
                                    if(_loc8_ || _loc3_)
                                    {
                                       if(§§pop() >= _loc3_)
                                       {
                                          if(_loc8_)
                                          {
                                             addr46:
                                             this.§1y§ = param1;
                                          }
                                          if(_loc8_)
                                          {
                                             if(!(_loc9_ && param2))
                                             {
                                                if(!_loc9_)
                                                {
                                                   if(!(_loc8_ || param2))
                                                   {
                                                      addr183:
                                                      §§push(_loc5_);
                                                      if(!_loc9_)
                                                      {
                                                         if(!_loc9_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(!(_loc9_ && _loc3_))
                                                            {
                                                               if(!_loc9_)
                                                               {
                                                                  addr210:
                                                                  §§push(Number(§§pop()));
                                                                  if(_loc8_)
                                                                  {
                                                                     _loc7_ = §§pop();
                                                                     addr214:
                                                                     if(!_loc9_)
                                                                     {
                                                                        if(!(_loc9_ && _loc3_))
                                                                        {
                                                                           §§push(_loc6_);
                                                                           if(_loc8_ || param1)
                                                                           {
                                                                              if(§§pop() != 0)
                                                                              {
                                                                                 addr125:
                                                                                 §§push(_loc7_);
                                                                                 if(!(_loc9_ && param2))
                                                                                 {
                                                                                    if(!(_loc9_ && _loc3_))
                                                                                    {
                                                                                       if(_loc8_ || _loc3_)
                                                                                       {
                                                                                          §§push(§§pop() / _loc6_);
                                                                                          if(!(_loc9_ && param1))
                                                                                          {
                                                                                             addr166:
                                                                                             if(_loc8_ || _loc3_)
                                                                                             {
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   addr176:
                                                                                                   _loc7_ = Number(§§pop());
                                                                                                   this.§4G§(_loc4_,_loc7_);
                                                                                                   addr177:
                                                                                                   if(!(_loc9_ && this))
                                                                                                   {
                                                                                                      addr69:
                                                                                                      §§push(_loc4_);
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            §§push(§§pop() + 1);
                                                                                                            if(!(_loc9_ && _loc3_))
                                                                                                            {
                                                                                                               addr84:
                                                                                                               _loc4_ = int(§§pop());
                                                                                                               if(_loc8_ || param1)
                                                                                                               {
                                                                                                                  if(_loc8_ || this)
                                                                                                                  {
                                                                                                                     §§goto(addr33);
                                                                                                                  }
                                                                                                                  addr235:
                                                                                                                  §§push(param1);
                                                                                                                  if(!_loc9_)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        §§goto(addr183);
                                                                                                                     }
                                                                                                                     addr200:
                                                                                                                     §§push(1);
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        addr203:
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        if(_loc8_ || this)
                                                                                                                        {
                                                                                                                           §§goto(addr210);
                                                                                                                        }
                                                                                                                        _loc6_ = §§pop();
                                                                                                                        addr233:
                                                                                                                        §§goto(addr235);
                                                                                                                     }
                                                                                                                     addr232:
                                                                                                                     §§goto(addr233);
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                  }
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     addr230:
                                                                                                                     §§goto(addr233);
                                                                                                                     §§push(Number(_loc5_));
                                                                                                                  }
                                                                                                                  §§goto(addr232);
                                                                                                                  §§push(1);
                                                                                                               }
                                                                                                               §§goto(addr177);
                                                                                                               addr83:
                                                                                                            }
                                                                                                            §§goto(addr84);
                                                                                                         }
                                                                                                         §§goto(addr200);
                                                                                                      }
                                                                                                      §§goto(addr83);
                                                                                                   }
                                                                                                   §§goto(addr214);
                                                                                                }
                                                                                                addr243:
                                                                                                _loc5_ = §§pop();
                                                                                                §§goto(addr235);
                                                                                                §§push(this.§1y§);
                                                                                                addr244:
                                                                                                addr242:
                                                                                             }
                                                                                             §§goto(addr210);
                                                                                          }
                                                                                          §§goto(addr176);
                                                                                       }
                                                                                       §§goto(addr230);
                                                                                    }
                                                                                    §§goto(addr203);
                                                                                 }
                                                                                 §§goto(addr166);
                                                                              }
                                                                              §§goto(addr69);
                                                                           }
                                                                           §§goto(addr176);
                                                                        }
                                                                        §§goto(addr244);
                                                                     }
                                                                  }
                                                                  §§goto(addr230);
                                                               }
                                                               §§goto(addr243);
                                                            }
                                                            §§goto(addr210);
                                                         }
                                                      }
                                                      §§goto(addr203);
                                                   }
                                                   return;
                                                }
                                                §§goto(addr125);
                                             }
                                             §§goto(addr176);
                                          }
                                          §§goto(addr84);
                                       }
                                       §§goto(addr242);
                                       §§push(this.§9Z§(0));
                                    }
                                    §§goto(addr84);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       continue loop1;
                                    }
                                    addr317:
                                 }
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
                  §§goto(addr46);
               }
            }
            return;
         }
         §§goto(addr317);
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§1y§;
      }
      
      public function get §>!B§() : int
      {
         return this.§^^§;
      }
      
      public function set §>!B§(param1:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(!_loc5_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§1!§);
               loop1:
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc6_ || this)
                  {
                     §§push(§§pop() * §6S§);
                     if(_loc6_ || param1)
                     {
                        addr594:
                        §§push(§§pop() - this.§<!U§.length);
                     }
                     §§push(int(§§pop()));
                     loop2:
                     while(true)
                     {
                        _loc2_ = §§pop();
                        addr600:
                        loop3:
                        while(true)
                        {
                           §§push(int(this.§<!U§.length));
                           while(true)
                           {
                              _loc4_ = §§pop();
                              loop5:
                              while(true)
                              {
                                 this.§<!U§.length += _loc2_;
                                 loop6:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    loop7:
                                    while(true)
                                    {
                                       if(_loc5_)
                                       {
                                          continue loop0;
                                       }
                                       §§push(0);
                                       if(_loc5_ && _loc3_)
                                       {
                                          break;
                                       }
                                       if(§§pop() > §§pop())
                                       {
                                          if(_loc6_ || _loc3_)
                                          {
                                             if(!_loc6_)
                                             {
                                                continue loop3;
                                             }
                                             this.§<!U§.position = _loc4_;
                                          }
                                          while(!_loc5_)
                                          {
                                             if(_loc6_)
                                             {
                                                §§push(0);
                                                if(!_loc5_)
                                                {
                                                   continue loop7;
                                                }
                                                addr504:
                                                if(!_loc5_)
                                                {
                                                   _loc3_ = §§pop();
                                                   if(!(_loc6_ || this))
                                                   {
                                                      continue;
                                                   }
                                                   addr464:
                                                   if(_loc3_ >= _loc2_ / §6S§)
                                                   {
                                                      addr470:
                                                      this.§&p§.fixed = false;
                                                      addr460:
                                                      §§push(param1);
                                                      if(!_loc5_)
                                                      {
                                                         addr454:
                                                         §§push(int(§§pop() * §`!-§ - this.§&p§.length));
                                                      }
                                                      _loc2_ = §§pop();
                                                      addr446:
                                                      _loc3_ = int(0);
                                                      addr447:
                                                      addr474:
                                                      addr461:
                                                      addr445:
                                                      §§push(_loc3_);
                                                      if(_loc6_)
                                                      {
                                                         if(_loc6_ || _loc2_)
                                                         {
                                                            addr410:
                                                            if(§§pop() >= _loc2_)
                                                            {
                                                               addr412:
                                                               §§push(int(_loc2_));
                                                               if(_loc6_)
                                                               {
                                                                  _loc3_ = §§pop();
                                                                  addr416:
                                                                  if(_loc6_ || param1)
                                                                  {
                                                                     addr345:
                                                                     §§push(_loc3_);
                                                                     if(_loc6_ || this)
                                                                     {
                                                                        if(_loc6_ || _loc2_)
                                                                        {
                                                                           addr362:
                                                                           §§push(0);
                                                                           if(!(_loc5_ && param1))
                                                                           {
                                                                              if(§§pop() >= §§pop())
                                                                              {
                                                                                 addr370:
                                                                                 if(!(_loc5_ && this))
                                                                                 {
                                                                                    this.§&p§.fixed = true;
                                                                                    this.§"`§.fixed = false;
                                                                                    addr381:
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       addr307:
                                                                                       §§push(param1);
                                                                                       §§push(§9;§);
                                                                                       if(!(_loc5_ && _loc2_))
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                addr325:
                                                                                                §§push(§§pop() - this.§"`§.length);
                                                                                                if(!(_loc5_ && _loc3_))
                                                                                                {
                                                                                                   addr333:
                                                                                                   _loc2_ = int(§§pop());
                                                                                                   addr334:
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      addr274:
                                                                                                      §§push(0);
                                                                                                      if(_loc6_ || param1)
                                                                                                      {
                                                                                                         addr292:
                                                                                                         §§push(int(§§pop()));
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               _loc3_ = §§pop();
                                                                                                               addr297:
                                                                                                               if(_loc6_ || _loc2_)
                                                                                                               {
                                                                                                                  addr165:
                                                                                                                  §§push(_loc3_);
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     if(!(_loc5_ && _loc3_))
                                                                                                                     {
                                                                                                                        addr177:
                                                                                                                        §§push(_loc2_);
                                                                                                                        if(_loc6_)
                                                                                                                        {
                                                                                                                           if(_loc6_ || _loc3_)
                                                                                                                           {
                                                                                                                              if(!(_loc5_ && this))
                                                                                                                              {
                                                                                                                                 if(§§pop() >= §§pop())
                                                                                                                                 {
                                                                                                                                    addr194:
                                                                                                                                    §§push(_loc2_);
                                                                                                                                    if(_loc6_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       §§push(int(§§pop()));
                                                                                                                                    }
                                                                                                                                    if(_loc6_ || param1)
                                                                                                                                    {
                                                                                                                                       _loc3_ = §§pop();
                                                                                                                                       addr211:
                                                                                                                                       if(_loc6_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          if(!(_loc5_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             addr56:
                                                                                                                                             §§push(_loc3_);
                                                                                                                                             if(_loc6_)
                                                                                                                                             {
                                                                                                                                                if(!_loc5_)
                                                                                                                                                {
                                                                                                                                                   if(_loc6_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc5_)
                                                                                                                                                      {
                                                                                                                                                         §§push(0);
                                                                                                                                                         if(_loc6_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop() >= §§pop())
                                                                                                                                                            {
                                                                                                                                                               addr75:
                                                                                                                                                               this.§"`§.fixed = true;
                                                                                                                                                               if(!_loc5_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc6_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc6_ || _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc5_)
                                                                                                                                                                        {
                                                                                                                                                                           this.§^^§ = param1;
                                                                                                                                                                           if(!(_loc5_ && this))
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc6_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc5_ && _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr194);
                                                                                                                                                                                 }
                                                                                                                                                                                 return;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr75);
                                                                                                                                                                        }
                                                                                                                                                                        addr384:
                                                                                                                                                                        §§push(_loc3_);
                                                                                                                                                                        if(_loc6_)
                                                                                                                                                                        {
                                                                                                                                                                           addr388:
                                                                                                                                                                           _loc3_ = int(§§pop() + 1);
                                                                                                                                                                           §§goto(addr345);
                                                                                                                                                                           addr387:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr446);
                                                                                                                                                                        addr397:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr297);
                                                                                                                                                                  }
                                                                                                                                                                  addr155:
                                                                                                                                                                  if(!(_loc5_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc5_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc3_);
                                                                                                                                                                        if(_loc6_ || _loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc5_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc6_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc6_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr114:
                                                                                                                                                                                    §§push(§§pop() + 1);
                                                                                                                                                                                    if(!(_loc5_ && param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr122:
                                                                                                                                                                                       §§push(int(§§pop()));
                                                                                                                                                                                       if(_loc6_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc6_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc6_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc3_ = §§pop();
                                                                                                                                                                                                addr134:
                                                                                                                                                                                                if(!_loc5_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc6_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc6_ || this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc6_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr56);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr447);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr440:
                                                                                                                                                                                                      if(_loc6_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr427:
                                                                                                                                                                                                         §§push(int(_loc3_ + 1));
                                                                                                                                                                                                         if(_loc6_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc3_ = §§pop();
                                                                                                                                                                                                            addr431:
                                                                                                                                                                                                            §§goto(addr446);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr464);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr480:
                                                                                                                                                                                                      §§goto(addr464);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr381);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr211);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr478:
                                                                                                                                                                                             §§push(int(§§pop()));
                                                                                                                                                                                          }
                                                                                                                                                                                          _loc3_ = §§pop();
                                                                                                                                                                                          §§goto(addr480);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr228:
                                                                                                                                                                                       if(_loc6_ || _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc5_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr238:
                                                                                                                                                                                             §§push(§§pop() + 1);
                                                                                                                                                                                             if(!(_loc5_ && param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr246:
                                                                                                                                                                                                §§push(int(§§pop()));
                                                                                                                                                                                                if(_loc6_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc3_ = §§pop();
                                                                                                                                                                                                   addr249:
                                                                                                                                                                                                   if(_loc6_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr165);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(!_loc5_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc6_ || param1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc5_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr228);
                                                                                                                                                                                                            §§push(_loc3_);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr416);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr370);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr334);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr274);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr388);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr307);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr333);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr194);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr292);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr238);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr165);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr114);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr381);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr249);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr134);
                                                                                                                                                            }
                                                                                                                                                            this.§"`§.pop();
                                                                                                                                                            §§goto(addr155);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr177);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr427);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr412);
                                                                                                                                                }
                                                                                                                                                §§goto(addr114);
                                                                                                                                             }
                                                                                                                                             §§goto(addr122);
                                                                                                                                          }
                                                                                                                                          §§goto(addr474);
                                                                                                                                       }
                                                                                                                                       §§goto(addr431);
                                                                                                                                    }
                                                                                                                                    §§goto(addr387);
                                                                                                                                 }
                                                                                                                                 this.§"`§.push(0);
                                                                                                                                 §§goto(addr249);
                                                                                                                              }
                                                                                                                              §§goto(addr454);
                                                                                                                           }
                                                                                                                           §§goto(addr410);
                                                                                                                        }
                                                                                                                        §§goto(addr307);
                                                                                                                     }
                                                                                                                     §§goto(addr384);
                                                                                                                  }
                                                                                                                  §§goto(addr246);
                                                                                                               }
                                                                                                               §§goto(addr470);
                                                                                                            }
                                                                                                            addr477:
                                                                                                            §§goto(addr478);
                                                                                                            §§push(§§pop() + 1);
                                                                                                         }
                                                                                                         §§goto(addr345);
                                                                                                      }
                                                                                                      §§goto(addr460);
                                                                                                   }
                                                                                                   §§goto(addr477);
                                                                                                   §§push(_loc3_);
                                                                                                   addr489:
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr454);
                                                                                          }
                                                                                          §§goto(addr325);
                                                                                       }
                                                                                       §§goto(addr362);
                                                                                    }
                                                                                    §§goto(addr412);
                                                                                 }
                                                                                 §§goto(addr388);
                                                                              }
                                                                              this.§&p§.pop();
                                                                              §§goto(addr397);
                                                                           }
                                                                           §§goto(addr464);
                                                                        }
                                                                        §§goto(addr470);
                                                                     }
                                                                     §§goto(addr412);
                                                                  }
                                                                  §§goto(addr461);
                                                               }
                                                               §§goto(addr445);
                                                            }
                                                            this.§&p§.push(0);
                                                            §§goto(addr440);
                                                         }
                                                      }
                                                      §§goto(addr427);
                                                      addr469:
                                                   }
                                                   this.§<!U§.writeFloat(0);
                                                   §§goto(addr489);
                                                   continue;
                                                }
                                                continue loop2;
                                             }
                                             continue loop5;
                                          }
                                          continue loop6;
                                       }
                                       §§goto(addr469);
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr594);
               }
            }
         }
         §§goto(addr600);
      }
      
      public function get §7k§() : ByteArray
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§<!U§.position = 0;
         }
         return this.§<!U§;
      }
      
      public function get §2!+§() : Vector.<Number>
      {
         return this.§&p§;
      }
      
      public function get §@#§() : Vector.<Number>
      {
         return this.§"`§;
      }
   }
}
