package §3W§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §>!-§
   {
      
      public static const §6!S§:int = 4;
      
      public static const §@d§:int = 2;
      
      public static const §[e§:int = 3;
      
      public static const §>g§:int = 4;
      
      public static const §[+§:int = 0;
      
      public static const §!!^§:int = 0;
      
      public static const §8A§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §6!S§ = 4;
            loop0:
            while(true)
            {
               §@d§ = 2;
               loop1:
               while(true)
               {
                  §[e§ = 3;
                  while(true)
                  {
                     §>g§ = 4;
                     loop3:
                     while(true)
                     {
                        §[+§ = 0;
                        addr71:
                        while(!_loc1_)
                        {
                           if(!_loc1_)
                           {
                              §!!^§ = 0;
                              continue loop3;
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                     if(!(_loc2_ || §>!-§))
                     {
                        continue;
                     }
                     §§goto(addr54);
                  }
               }
            }
         }
         §§goto(addr66);
      }
      
      private var §,V§:ByteArray;
      
      private var §@!"§:Vector.<Number>;
      
      private var §["&§:Vector.<Number>;
      
      private var §,";§:Boolean;
      
      private var §[!>§:int;
      
      private var §-" §:Vector.<Number>;
      
      public function §>!-§(param1:int, param2:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§-" § = new Vector.<Number>(12,true);
            while(true)
            {
               super();
               addr59:
               while(true)
               {
                  this.§,V§ = new ByteArray();
               }
            }
            addr68:
         }
         loop2:
         while(true)
         {
            while(true)
            {
               this.§,V§.endian = Endian.LITTLE_ENDIAN;
               do
               {
                  this.§,V§.length = param1 * §@d§ * §>g§;
               }
               while(!_loc4_);
               
               if(!(_loc5_ && this))
               {
                  if(_loc4_)
                  {
                     if(!_loc5_)
                     {
                        if(false)
                        {
                           continue;
                        }
                        var _loc3_:int = 0;
                        while(true)
                        {
                           if(_loc3_ >= param1 * §@d§)
                           {
                              if(_loc4_)
                              {
                                 if(_loc5_)
                                 {
                                    continue;
                                 }
                                 if(_loc4_ || _loc3_)
                                 {
                                    this.§@!"§ = new Vector.<Number>(param1 * §6!S§,true);
                                    break;
                                 }
                                 _loc3_++;
                                 continue;
                                 addr171:
                              }
                              break;
                           }
                           this.§,V§.writeFloat(0);
                           §§goto(addr171);
                        }
                        loop6:
                        while(true)
                        {
                           this.§["&§ = new Vector.<Number>(param1 * §[e§,true);
                           while(true)
                           {
                              if(_loc4_ || this)
                              {
                                 this.§,";§ = param2;
                                 continue;
                              }
                              continue loop6;
                           }
                        }
                     }
                     else
                     {
                        §§goto(addr68);
                     }
                  }
                  break;
               }
               continue loop2;
            }
            §§goto(addr59);
         }
      }
      
      public function clone() : §>!-§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§>!-§ = new §>!-§(0,this.§,";§);
         if(_loc2_)
         {
            _loc1_.§,V§.length = this.§,V§.length;
            loop0:
            while(true)
            {
               _loc1_.§,V§.writeBytes(this.§,V§);
               while(true)
               {
                  _loc1_.§@!"§ = this.§@!"§.concat();
                  addr92:
                  while(!(_loc3_ && _loc1_))
                  {
                     _loc1_.§@!"§.fixed = true;
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr85);
      }
      
      public function copyTo(param1:§>!-§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:* = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§["&§;
         if(!(_loc19_ && param3))
         {
            §§push(this.§[!>§);
            while(true)
            {
               §§push(§[e§);
               addr106:
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  addr107:
                  while(true)
                  {
                     §§push(int(§§pop()));
                     addr108:
                     while(true)
                     {
                        _loc6_ = §§pop();
                     }
                  }
               }
            }
            addr105:
         }
         loop4:
         while(true)
         {
            §§push(param2);
            if(_loc18_ || param3)
            {
               if(!_loc19_)
               {
                  §§push(§[e§);
                  if(_loc18_ || param3)
                  {
                     §§push(§§pop() * §§pop());
                     if(!_loc19_)
                     {
                        §§push(int(§§pop()));
                        loop5:
                        while(true)
                        {
                           _loc7_ = §§pop();
                           loop6:
                           while(true)
                           {
                              while(true)
                              {
                                 if(!param5)
                                 {
                                    §§push(0);
                                    if(!_loc19_)
                                    {
                                       addr155:
                                       _loc8_ = §§pop();
                                       if(_loc18_ || param1)
                                       {
                                          §§goto(addr163);
                                       }
                                       §§goto(addr185);
                                    }
                                    break;
                                 }
                                 while(true)
                                 {
                                    param5.transformVectors(this.§["&§,this.§-" §);
                                    addr75:
                                    while(!_loc19_)
                                    {
                                       continue loop5;
                                    }
                                    continue loop6;
                                 }
                                 if(!_loc18_)
                                 {
                                    continue loop4;
                                 }
                                 if(false)
                                 {
                                    continue;
                                 }
                                 addr137:
                                 §§push(_loc8_);
                                 if(_loc18_)
                                 {
                                    §§push(_loc6_);
                                    if(!_loc19_)
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          var _loc14_:*;
                                          _loc9_[_loc14_ = _loc7_++] = this.§-" §[_loc8_];
                                          addr177:
                                          if(_loc18_)
                                          {
                                             if(_loc18_)
                                             {
                                                _loc8_++;
                                                if(!(_loc19_ && param3))
                                                {
                                                   §§goto(addr137);
                                                }
                                                addr196:
                                                var _loc10_:ByteArray = param1.§,V§;
                                                if(!(_loc19_ && this))
                                                {
                                                   addr331:
                                                   §§push(this.§[!>§);
                                                   if(_loc18_)
                                                   {
                                                      addr328:
                                                      §§push(int(§§pop() * §@d§ * §>g§));
                                                   }
                                                   _loc6_ = §§pop();
                                                   addr332:
                                                   §§push(param2);
                                                   if(!_loc19_)
                                                   {
                                                      if(!(_loc19_ && this))
                                                      {
                                                         §§push(§@d§);
                                                         if(_loc18_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc18_)
                                                            {
                                                               §§push(§>g§);
                                                               if(_loc18_)
                                                               {
                                                                  if(!_loc19_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc18_ || param1)
                                                                     {
                                                                        addr315:
                                                                        if(_loc18_)
                                                                        {
                                                                           if(!_loc19_)
                                                                           {
                                                                              addr320:
                                                                              _loc7_ = int(§§pop());
                                                                              addr321:
                                                                              if(_loc10_.length < _loc7_ + _loc6_)
                                                                              {
                                                                                 if(!(_loc19_ && this))
                                                                                 {
                                                                                    if(!(_loc19_ && param1))
                                                                                    {
                                                                                       _loc10_.length = _loc7_ + _loc6_;
                                                                                       addr282:
                                                                                       if(!_loc19_)
                                                                                       {
                                                                                          addr242:
                                                                                          _loc10_.position = _loc7_;
                                                                                          if(!(_loc19_ && param3))
                                                                                          {
                                                                                             if(_loc19_)
                                                                                             {
                                                                                                §§goto(addr282);
                                                                                             }
                                                                                             addr236:
                                                                                             _loc10_.writeBytes(this.§,V§);
                                                                                             addr241:
                                                                                             §§push(param4);
                                                                                             if(_loc18_ || param1)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                if(_loc18_)
                                                                                                {
                                                                                                   addr220:
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      if(_loc18_ || param3)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         if(_loc18_)
                                                                                                         {
                                                                                                            if(_loc18_)
                                                                                                            {
                                                                                                               if(false)
                                                                                                               {
                                                                                                                  §§goto(addr236);
                                                                                                               }
                                                                                                               addr334:
                                                                                                               §§push(param3 == 1);
                                                                                                               if(!_loc19_)
                                                                                                               {
                                                                                                                  addr338:
                                                                                                                  §§push(!§§pop());
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr241);
                                                                                                         }
                                                                                                         addr340:
                                                                                                         _loc11_ = param1.§@!"§;
                                                                                                         if(!_loc19_)
                                                                                                         {
                                                                                                            §§push(this.§[!>§);
                                                                                                            if(!(_loc19_ && param3))
                                                                                                            {
                                                                                                               §§push(§6!S§);
                                                                                                               if(_loc18_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(!_loc19_)
                                                                                                                  {
                                                                                                                     §§push(int(§§pop()));
                                                                                                                     if(!(_loc19_ && this))
                                                                                                                     {
                                                                                                                        _loc6_ = §§pop();
                                                                                                                        if(!(_loc19_ && param1))
                                                                                                                        {
                                                                                                                           addr375:
                                                                                                                           §§push(param2);
                                                                                                                           if(_loc18_ || this)
                                                                                                                           {
                                                                                                                              §§push(§6!S§);
                                                                                                                              if(_loc18_)
                                                                                                                              {
                                                                                                                                 addr398:
                                                                                                                                 §§push(int(§§pop() * §§pop()));
                                                                                                                                 if(!_loc19_)
                                                                                                                                 {
                                                                                                                                    _loc7_ = §§pop();
                                                                                                                                    if(!(_loc19_ && param3))
                                                                                                                                    {
                                                                                                                                       §§push(param3);
                                                                                                                                       if(!_loc19_)
                                                                                                                                       {
                                                                                                                                          if(_loc18_)
                                                                                                                                          {
                                                                                                                                             if(§§pop() == 1)
                                                                                                                                             {
                                                                                                                                                if(_loc18_ || param3)
                                                                                                                                                {
                                                                                                                                                   §§push(0);
                                                                                                                                                   if(!_loc19_)
                                                                                                                                                   {
                                                                                                                                                      _loc8_ = §§pop();
                                                                                                                                                      if(_loc18_ || this)
                                                                                                                                                      {
                                                                                                                                                         if(false)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr375);
                                                                                                                                                         }
                                                                                                                                                         addr553:
                                                                                                                                                         §§push(_loc8_);
                                                                                                                                                         §§push(_loc6_);
                                                                                                                                                         if(_loc18_)
                                                                                                                                                         {
                                                                                                                                                            addr556:
                                                                                                                                                            if(§§pop() >= §§pop())
                                                                                                                                                            {
                                                                                                                                                               if(_loc19_)
                                                                                                                                                               {
                                                                                                                                                                  addr562:
                                                                                                                                                                  §§push(0);
                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc18_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           addr542:
                                                                                                                                                                           _loc8_ = §§pop();
                                                                                                                                                                           addr543:
                                                                                                                                                                           if(!(_loc19_ && param2))
                                                                                                                                                                           {
                                                                                                                                                                              addr503:
                                                                                                                                                                              if(_loc8_ < this.§[!>§)
                                                                                                                                                                              {
                                                                                                                                                                                 if(this.§,";§)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc19_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc19_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr520:
                                                                                                                                                                                          _loc13_ = this.§@!"§[_loc12_ + 3];
                                                                                                                                                                                          if(_loc18_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(param3);
                                                                                                                                                                                             if(_loc18_ || param2)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr481:
                                                                                                                                                                                                §§push(§§pop() / _loc13_);
                                                                                                                                                                                                if(_loc18_ || this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr490:
                                                                                                                                                                                                   if(_loc18_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr493:
                                                                                                                                                                                                      _loc13_ = §§pop();
                                                                                                                                                                                                      if(_loc18_ || this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(false)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr503);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         _loc11_[_loc14_ = _loc7_++] = this.§@!"§[_loc12_++] * _loc13_;
                                                                                                                                                                                                         if(_loc18_ || param3)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            var _loc15_:*;
                                                                                                                                                                                                            _loc11_[_loc15_ = _loc7_++] = this.§@!"§[_loc12_++] * _loc13_;
                                                                                                                                                                                                            if(!_loc19_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               var _loc16_:*;
                                                                                                                                                                                                               _loc11_[_loc16_ = _loc7_++] = this.§@!"§[_loc12_++] * _loc13_;
                                                                                                                                                                                                               if(_loc18_ || param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  var _loc17_:*;
                                                                                                                                                                                                                  _loc11_[_loc17_ = _loc7_++] = param3;
                                                                                                                                                                                                                  if(!(_loc19_ && param1))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc19_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc18_ || param2)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc19_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr664:
                                                                                                                                                                                                                              if(_loc18_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr739:
                                                                                                                                                                                                                                 _loc12_++;
                                                                                                                                                                                                                                 if(!(_loc19_ && this))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr747:
                                                                                                                                                                                                                                    _loc8_++;
                                                                                                                                                                                                                                    if(_loc18_ || param3)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr503);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr769);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr685:
                                                                                                                                                                                                                           _loc11_[_loc15_ = _loc7_++] = this.§@!"§[_loc12_++];
                                                                                                                                                                                                                           if(_loc18_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr702:
                                                                                                                                                                                                                              _loc11_[_loc16_ = _loc7_++] = this.§@!"§[_loc12_++];
                                                                                                                                                                                                                              if(_loc18_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 _loc11_[_loc17_ = _loc7_++] = param3;
                                                                                                                                                                                                                                 addr729:
                                                                                                                                                                                                                                 addr728:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr729);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr731);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr729);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr728);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr729);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr702);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr685);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr503);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr520);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr493);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr490);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr503);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr543);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr747);
                                                                                                                                                                                 }
                                                                                                                                                                                 _loc11_[_loc14_ = _loc7_++] = this.§@!"§[_loc12_++];
                                                                                                                                                                                 if(_loc18_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr685);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr731:
                                                                                                                                                                                 if(!(_loc19_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr739);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr769:
                                                                                                                                                                                 return;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr747);
                                                                                                                                                                              addr550:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr562);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr553);
                                                                                                                                                                     }
                                                                                                                                                                     addr561:
                                                                                                                                                                     _loc12_ = §§pop();
                                                                                                                                                                     §§goto(addr562);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr503);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr747);
                                                                                                                                                            }
                                                                                                                                                            _loc11_[_loc14_ = _loc7_++] = this.§@!"§[_loc8_];
                                                                                                                                                            if(!(_loc19_ && this))
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc19_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  _loc8_++;
                                                                                                                                                                  addr471:
                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr553);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr739);
                                                                                                                                                                  addr471:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr503);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr664);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr503);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr520);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr542);
                                                                                                                                                }
                                                                                                                                                §§goto(addr471);
                                                                                                                                             }
                                                                                                                                             §§goto(addr561);
                                                                                                                                             §§push(0);
                                                                                                                                          }
                                                                                                                                          §§goto(addr398);
                                                                                                                                       }
                                                                                                                                       §§goto(addr493);
                                                                                                                                    }
                                                                                                                                    §§goto(addr550);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr503);
                                                                                                                        }
                                                                                                                        §§goto(addr747);
                                                                                                                     }
                                                                                                                     §§goto(addr561);
                                                                                                                  }
                                                                                                                  §§goto(addr481);
                                                                                                               }
                                                                                                               §§goto(addr556);
                                                                                                            }
                                                                                                            §§goto(addr542);
                                                                                                         }
                                                                                                         §§goto(addr471);
                                                                                                      }
                                                                                                      §§goto(addr338);
                                                                                                   }
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      §§goto(addr340);
                                                                                                   }
                                                                                                   §§goto(addr747);
                                                                                                }
                                                                                                §§goto(addr338);
                                                                                             }
                                                                                             §§goto(addr220);
                                                                                          }
                                                                                          §§goto(addr340);
                                                                                       }
                                                                                       §§goto(addr332);
                                                                                    }
                                                                                    §§goto(addr321);
                                                                                 }
                                                                                 §§goto(addr340);
                                                                              }
                                                                              §§goto(addr242);
                                                                           }
                                                                        }
                                                                        §§goto(addr328);
                                                                     }
                                                                     §§goto(addr334);
                                                                  }
                                                                  §§goto(addr328);
                                                               }
                                                               §§goto(addr334);
                                                            }
                                                            §§goto(addr315);
                                                         }
                                                         §§goto(addr328);
                                                      }
                                                      §§goto(addr331);
                                                   }
                                                   §§goto(addr320);
                                                }
                                                §§goto(addr236);
                                             }
                                             addr193:
                                             §§push(_loc8_);
                                             break;
                                             addr163:
                                          }
                                          if(!(_loc19_ && param3))
                                          {
                                             addr185:
                                             _loc8_++;
                                             if(!(_loc19_ && param1))
                                             {
                                                §§goto(addr193);
                                             }
                                             §§goto(addr196);
                                          }
                                          §§goto(addr193);
                                       }
                                       if(!(_loc18_ || this))
                                       {
                                          §§goto(addr185);
                                       }
                                       §§goto(addr196);
                                    }
                                    addr195:
                                    if(§§pop() < §§pop())
                                    {
                                       _loc9_[_loc14_ = _loc7_++] = this.§["&§[_loc8_];
                                       §§goto(addr177);
                                    }
                                    §§goto(addr196);
                                 }
                                 §§goto(addr155);
                              }
                              §§goto(addr195);
                           }
                        }
                        addr101:
                     }
                     else
                     {
                        §§goto(addr107);
                     }
                     §§goto(addr108);
                  }
                  else
                  {
                     §§goto(addr106);
                  }
               }
               else
               {
                  §§goto(addr105);
               }
               §§goto(addr106);
            }
            §§goto(addr101);
         }
      }
      
      public function append(param1:§>!-§) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:int = this.§,V§.length;
         if(_loc10_)
         {
            this.§,V§.length += param1.§,V§.length;
            loop0:
            while(true)
            {
               this.§,V§.position = _loc2_;
               while(true)
               {
                  addr46:
                  addr37:
                  while(true)
                  {
                     this.§,V§.writeBytes(param1.§,V§);
                     addr52:
                     while(_loc10_)
                     {
                     }
                     continue loop0;
                  }
                  if(!(_loc9_ && this))
                  {
                     if(false)
                     {
                        §§goto(addr46);
                     }
                     §§goto(addr72);
                  }
               }
            }
         }
         while(true)
         {
            this.§@!"§.fixed = false;
            if(_loc10_ || _loc2_)
            {
               §§goto(addr37);
            }
            §§goto(addr52);
         }
         addr72:
         var _loc3_:Vector.<Number> = param1.§@!"§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         loop5:
         while(true)
         {
            if(_loc5_ >= _loc4_)
            {
               if(!(_loc9_ && _loc2_))
               {
                  if(_loc10_)
                  {
                     this.§@!"§.fixed = true;
                     while(_loc10_ || param1)
                     {
                        this.§["&§.fixed = false;
                        if(_loc10_ || _loc3_)
                        {
                           if(true)
                           {
                              break loop5;
                           }
                           continue loop5;
                        }
                     }
                     addr124:
                  }
                  else
                  {
                     _loc5_++;
                     addr143:
                  }
                  continue;
               }
               §§goto(addr124);
            }
            else
            {
               this.§@!"§.push(_loc3_[_loc5_]);
            }
            §§goto(addr143);
         }
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§["&§).length;
         var _loc8_:int = 0;
         if(_loc10_ || _loc3_)
         {
            loop7:
            while(true)
            {
               if(_loc8_ >= _loc7_)
               {
                  loop8:
                  while(true)
                  {
                     this.§["&§.fixed = true;
                     while(true)
                     {
                        if(_loc10_)
                        {
                           this.§[!>§ += param1.§!>§;
                           if(_loc10_ || this)
                           {
                              if(_loc10_)
                              {
                                 if(!_loc9_)
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
                  this.§["&§.push(_loc6_[_loc8_]);
               }
               _loc8_++;
            }
         }
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         §§push(param1);
         if(!(_loc8_ && param2))
         {
            §§push(int(§§pop() * §[e§));
         }
         var _loc5_:* = §§pop();
         var _loc6_:*;
         this.§["&§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§["&§[_loc7_ = _loc5_++] = param3;
         if(_loc9_)
         {
            this.§["&§[_loc5_] = param4;
         }
      }
      
      public function §9!q§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param1);
         if(_loc7_ || param1)
         {
            §§push(int(§§pop() * §[e§));
         }
         var _loc4_:* = §§pop();
         var _loc5_:*;
         this.§["&§[_loc5_ = _loc4_++] = param2;
         if(!_loc6_)
         {
            this.§["&§[_loc4_] = param3;
         }
      }
      
      public function §9!l§(param1:int, param2:Vector3D) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(!(_loc5_ && param1))
         {
            §§push(int(§§pop() * §[e§));
         }
         var _loc3_:* = §§pop();
         if(!(_loc5_ && _loc3_))
         {
            param2.x = this.§["&§[_loc3_++];
            do
            {
               param2.y = this.§["&§[_loc3_++];
               do
               {
                  param2.z = this.§["&§[_loc3_];
               }
               while(_loc5_);
               
            }
            while(!(_loc4_ || param2));
            
         }
      }
      
      public function § "9§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
         {
            if(this.§,";§)
            {
               addr22:
               §§push(param3);
               if(_loc9_)
               {
                  §§push(Number(§§pop()));
                  if(_loc8_)
                  {
                  }
                  addr34:
                  var _loc4_:*;
                  §§push(_loc4_ = §§pop());
                  if(_loc9_)
                  {
                     §§push(§§pop() / 255);
                     if(_loc9_)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc8_)
                        {
                           addr45:
                           _loc4_ = §§pop();
                           §§push(§`!h§.§2!,§(param2) * _loc4_);
                           if(_loc9_ || param2)
                           {
                              addr68:
                              §§push(Number(§§pop()));
                           }
                        }
                        var _loc5_:* = §§pop();
                        §§push(§`!h§.§`"<§(param2) * _loc4_);
                        if(!_loc8_)
                        {
                           §§push(Number(§§pop()));
                        }
                        var _loc6_:* = §§pop();
                        §§push(§`!h§.§]&§(param2) * _loc4_);
                        if(_loc9_)
                        {
                           §§push(Number(§§pop()));
                        }
                        var _loc7_:* = §§pop();
                        if(!(_loc8_ && param2))
                        {
                           this.§^!o§(param1,1,_loc5_,_loc6_,_loc7_,param3);
                        }
                        return;
                     }
                     §§goto(addr68);
                  }
                  §§goto(addr45);
               }
               addr33:
               §§push(Number(§§pop()));
            }
            else
            {
               §§push(Number(1));
               if(!_loc8_)
               {
                  §§goto(addr33);
               }
            }
            §§goto(addr34);
         }
         §§goto(addr22);
      }
      
      private function §^!o§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         §§push(param1);
         if(!_loc14_)
         {
            §§push(int(§§pop() * §6!S§));
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
               this.§@!"§[_loc9_ = _loc7_++] = param3;
               if(!_loc14_)
               {
                  var _loc10_:*;
                  this.§@!"§[_loc10_ = _loc7_++] = param4;
                  if(!_loc14_)
                  {
                     var _loc11_:*;
                     this.§@!"§[_loc11_ = _loc7_++] = param5;
                     if(!_loc14_)
                     {
                        var _loc12_:*;
                        this.§@!"§[_loc12_ = _loc7_++] = param6;
                     }
                  }
               }
               if(!(_loc13_ || param2))
               {
                  break;
               }
               §§push(_loc8_);
               if(!(_loc14_ && param3))
               {
                  §§push(§§pop() - 1);
                  if(!(_loc14_ && param2))
                  {
                     continue loop0;
                  }
                  continue;
               }
               continue loop0;
            }
            addr135:
            return;
         }
      }
      
      private function §9!5§(param1:int, param2:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(param1);
         if(!_loc7_)
         {
            §§push(int(§§pop() * §6!S§));
         }
         var _loc3_:* = §§pop();
         var _loc4_:*;
         this.§@!"§[_loc4_ = _loc3_++] = this.§@!"§[_loc4_] * param2;
         var _loc5_:*;
         this.§@!"§[_loc5_ = _loc3_++] = this.§@!"§[_loc5_] * param2;
         var _loc6_:*;
         this.§@!"§[_loc6_ = _loc3_++] = this.§@!"§[_loc6_] * param2;
         if(!(_loc7_ && param1))
         {
            this.§@!"§[_loc3_] *= param2;
         }
      }
      
      public function §2" §(param1:int) : uint
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:Number = NaN;
         §§push(param1);
         if(!_loc8_)
         {
            §§push(int(§§pop() * §6!S§));
         }
         var _loc2_:* = §§pop();
         if(!(_loc8_ && _loc3_))
         {
            if(this.§,";§)
            {
               addr39:
               §§push(Number(this.§@!"§[_loc2_ + 3]));
               if(_loc8_)
               {
               }
               addr53:
               §§push(Number(§§pop()));
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
            if(!_loc8_)
            {
               §§push(_loc3_);
               loop0:
               while(true)
               {
                  if(§§pop() != 0)
                  {
                     while(true)
                     {
                        §§push(255);
                        if(_loc7_)
                        {
                           §§push(§§pop() / _loc3_);
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              while(true)
                              {
                                 _loc3_ = §§pop();
                                 addr185:
                                 while(true)
                                 {
                                    §§push(this.§@!"§[_loc2_] * _loc3_);
                                    loop5:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       loop6:
                                       while(true)
                                       {
                                          _loc4_ = §§pop();
                                          loop7:
                                          while(true)
                                          {
                                             if(_loc8_ && _loc2_)
                                             {
                                                §§push(0);
                                             }
                                             else
                                             {
                                                addr189:
                                             }
                                             §§push(this.§@!"§[_loc2_ + 1] * _loc3_);
                                             if(!_loc7_)
                                             {
                                                loop8:
                                                while(!(_loc8_ && _loc2_))
                                                {
                                                   _loc5_ = §§pop();
                                                   while(true)
                                                   {
                                                      if(_loc7_ || this)
                                                      {
                                                         §§push(this.§@!"§[_loc2_ + 2] * _loc3_);
                                                         if(_loc7_)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               continue;
                                                            }
                                                            continue loop8;
                                                         }
                                                         continue;
                                                      }
                                                      continue loop7;
                                                   }
                                                   continue loop0;
                                                }
                                                continue loop6;
                                             }
                                             addr134:
                                             continue loop5;
                                          }
                                          continue loop5;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        break;
                     }
                     return §§pop();
                     addr167:
                  }
                  §§goto(addr189);
               }
            }
            §§goto(addr110);
         }
         §§goto(addr39);
      }
      
      public function §]!G§(param1:int, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = 0;
         if(_loc5_ || param2)
         {
            §§push(param2);
            loop0:
            while(true)
            {
               if(§§pop() < 0.001)
               {
                  if(!(_loc4_ && param1))
                  {
                     §§push(0.001);
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        addr131:
                        while(true)
                        {
                           param2 = §§pop();
                           addr132:
                           while(true)
                           {
                           }
                        }
                     }
                     addr130:
                  }
                  §§goto(addr132);
               }
               while(true)
               {
                  if(this.§,";§)
                  {
                     if(_loc5_)
                     {
                        this.§ "9§(param1,this.§2" §(param1),param2);
                     }
                  }
                  else
                  {
                     §§push(param1);
                     if(!(_loc4_ && param1))
                     {
                        §§push(§§pop() * §6!S§);
                        if(!(_loc4_ && param2))
                        {
                           if(_loc5_)
                           {
                              continue loop0;
                           }
                           §§goto(addr130);
                        }
                        else
                        {
                           addr81:
                           if(!(_loc4_ && param2))
                           {
                              §§goto(addr89);
                           }
                           §§goto(addr132);
                        }
                     }
                     §§goto(addr89);
                  }
                  §§goto(addr106);
               }
               addr89:
               _loc3_ = §§pop();
               do
               {
                  if(_loc5_)
                  {
                     continue;
                  }
                  addr106:
                  if(_loc5_)
                  {
                     break loop3;
                  }
                  §§goto(addr132);
               }
               while(this.§@!"§[_loc3_] = param2, _loc4_);
               
               return;
            }
         }
         §§goto(addr132);
      }
      
      public function §&!-§(param1:int) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         if(_loc3_ || param1)
         {
            §§push(§§pop() * §6!S§);
            if(!(_loc4_ && _loc2_))
            {
               §§push(§§pop() + 3);
            }
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         return this.§@!"§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1);
         if(!(_loc5_ && param1))
         {
            §§push(int(§§pop() * §@d§));
         }
         var _loc4_:* = §§pop();
         if(!_loc5_)
         {
            this.§,V§.position = _loc4_ * §>g§;
            while(true)
            {
               this.§,V§.writeFloat(param2);
               while(_loc6_)
               {
                  this.§,V§.writeFloat(param3);
                  if(!_loc6_)
                  {
                     continue;
                  }
                  return;
                  addr53:
               }
            }
         }
         §§goto(addr53);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(!_loc4_)
         {
            §§push(int(§§pop() * §@d§));
         }
         var _loc3_:* = §§pop();
         if(_loc5_ || param1)
         {
            this.§,V§.position = _loc3_ * §>g§;
            do
            {
               param2.x = this.§,V§.readFloat();
               do
               {
                  param2.y = this.§,V§.readFloat();
               }
               while(_loc4_ && param1);
               
            }
            while(_loc4_ && param1);
            
         }
      }
      
      public function §"e§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         §§push(param1);
         if(!(_loc8_ && this))
         {
            §§push(int(§§pop() * §[e§));
         }
         var _loc5_:* = §§pop();
         var _loc6_:*;
         this.§["&§[_loc6_ = _loc5_++] = this.§["&§[_loc6_] + param2;
         var _loc7_:*;
         this.§["&§[_loc7_ = _loc5_++] = this.§["&§[_loc7_] + param3;
         if(_loc9_ || param2)
         {
            this.§["&§[_loc5_] += param4;
         }
      }
      
      public function §31§(param1:int, param2:Matrix3D) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(_loc5_)
         {
            §§push(int(§§pop() * §[e§));
         }
         var _loc3_:* = §§pop();
         if(!(_loc4_ && this))
         {
            this.§-" §[0] = this.§["&§[_loc3_];
            while(true)
            {
               this.§-" §[1] = this.§["&§[_loc3_ + 1];
               loop1:
               for(; !_loc4_; while(!(_loc4_ && param1))
               {
                  this.§["&§[_loc3_ + 2] = this.§-" §[2];
                  if(!_loc5_)
                  {
                     continue;
                  }
                  if(_loc5_)
                  {
                     §§goto(addr51);
                  }
                  §§goto(addr97);
               })
               {
                  this.§-" §[2] = this.§["&§[_loc3_ + 2];
                  loop2:
                  while(true)
                  {
                     param2.transformVectors(this.§-" §,this.§-" §);
                     do
                     {
                        this.§["&§[_loc3_] = this.§-" §[0];
                        while(!_loc4_)
                        {
                           this.§["&§[_loc3_ + 1] = this.§-" §[1];
                           continue loop1;
                        }
                        continue loop2;
                     }
                     while(_loc4_ && param2);
                     
                  }
               }
            }
         }
      }
      
      public function §[_§(param1:uint, param2:Number = 1.0) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            §§push(param2);
            if(!(_loc8_ && param1))
            {
               if(§§pop() < 0.001)
               {
                  if(_loc7_ || _loc3_)
                  {
                     §§push(0.001);
                     if(_loc7_ || _loc3_)
                     {
                        §§push(Number(§§pop()));
                        if(!(_loc8_ && _loc3_))
                        {
                           param2 = §§pop();
                           if(!(_loc8_ && this))
                           {
                              addr59:
                              if(this.§,";§)
                              {
                                 addr62:
                                 §§push(param2);
                                 if(!(_loc8_ && param2))
                                 {
                                    §§push(Number(§§pop()));
                                    if(!_loc8_)
                                    {
                                       addr93:
                                       §§push(Number(§§pop()));
                                       addr73:
                                    }
                                 }
                                 §§goto(addr73);
                              }
                              else
                              {
                                 §§push(Number(1));
                                 if(!(_loc8_ && this))
                                 {
                                    §§goto(addr93);
                                 }
                              }
                              var _loc3_:* = §§pop();
                              if(_loc7_ || _loc3_)
                              {
                                 §§push(_loc3_);
                                 if(!_loc8_)
                                 {
                                    §§push(§§pop() / 255);
                                    if(!_loc8_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc7_ || param2)
                                       {
                                          _loc3_ = §§pop();
                                          addr118:
                                          §§push(§`!h§.§2!,§(param1) * _loc3_);
                                          if(_loc7_ || this)
                                          {
                                             addr130:
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                    }
                                    var _loc4_:* = §§pop();
                                    §§push(§`!h§.§`"<§(param1) * _loc3_);
                                    if(_loc7_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc5_:* = §§pop();
                                    §§push(§`!h§.§]&§(param1) * _loc3_);
                                    if(!(_loc8_ && _loc3_))
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc6_:* = §§pop();
                                    if(!(_loc8_ && param1))
                                    {
                                       this.§^!o§(0,this.§[!>§,_loc4_,_loc5_,_loc6_,param2);
                                    }
                                    return;
                                 }
                                 §§goto(addr130);
                              }
                              §§goto(addr118);
                           }
                           §§goto(addr62);
                        }
                     }
                     §§goto(addr93);
                  }
               }
               §§goto(addr59);
            }
            §§goto(addr93);
         }
         §§goto(addr62);
      }
      
      public function §!d§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         if(_loc14_ || param1)
         {
            §§push(param6);
            if(_loc14_)
            {
               if(§§pop() < 0.001)
               {
                  if(_loc14_ || param2)
                  {
                     addr36:
                     §§push(0.001);
                     if(!(_loc13_ && param3))
                     {
                        addr44:
                        §§push(Number(§§pop()));
                        if(_loc14_ || param2)
                        {
                           §§goto(addr52);
                        }
                        §§goto(addr58);
                     }
                     addr52:
                     param6 = §§pop();
                     §§goto(addr53);
                  }
               }
               addr53:
               §§push(param1);
               if(!_loc13_)
               {
                  addr58:
                  §§push(int(§§pop() * §6!S§));
               }
               var _loc7_:* = §§pop();
               var _loc8_:int = 0;
               while(_loc8_ < param2)
               {
                  var _loc9_:*;
                  this.§@!"§[_loc9_ = _loc7_++] = param3;
                  if(_loc14_ || param1)
                  {
                     var _loc10_:*;
                     this.§@!"§[_loc10_ = _loc7_++] = param4;
                     if(_loc14_)
                     {
                        var _loc11_:*;
                        this.§@!"§[_loc11_ = _loc7_++] = param5;
                        if(_loc14_)
                        {
                           var _loc12_:*;
                           this.§@!"§[_loc12_ = _loc7_++] = param6;
                        }
                     }
                  }
                  if(_loc13_ && this)
                  {
                     break;
                  }
                  _loc8_++;
                  if(!(_loc14_ || this))
                  {
                     break;
                  }
               }
               return;
            }
            §§goto(addr44);
         }
         §§goto(addr36);
      }
      
      public function §>&§(param1:int, param2:Number) : void
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
                  if(_loc5_)
                  {
                     addr32:
                     §§push(0.001);
                     if(!(_loc6_ && param2))
                     {
                        §§push(Number(§§pop()));
                        if(!_loc6_)
                        {
                           param2 = §§pop();
                           if(!_loc6_)
                           {
                              addr46:
                              §§push(param2);
                              if(_loc6_)
                              {
                              }
                              addr60:
                              var _loc3_:int = §§pop();
                              addr59:
                              if(!(_loc6_ && param1))
                              {
                                 if(this.§,";§)
                                 {
                                    loop4:
                                    while(true)
                                    {
                                       §§push(Number(this.§@!"§[_loc3_ + 3]));
                                       loop5:
                                       while(true)
                                       {
                                          _loc4_ = §§pop();
                                          addr212:
                                          loop7:
                                          while(true)
                                          {
                                             §§push(param2);
                                             if(!_loc5_)
                                             {
                                                continue loop5;
                                             }
                                             §§push(§§pop() / _loc4_);
                                             if(!_loc6_)
                                             {
                                                continue loop5;
                                             }
                                             addr190:
                                             addr189:
                                             addr189:
                                             _loc4_ = §§pop();
                                             while(true)
                                             {
                                                this.§@!"§[_loc3_] *= _loc4_;
                                                while(true)
                                                {
                                                   this.§@!"§[_loc3_ + 1] *= _loc4_;
                                                   loop2:
                                                   while(!(_loc6_ && param1))
                                                   {
                                                      this.§@!"§[_loc3_ + 2] *= _loc4_;
                                                      while(true)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            this.§@!"§[_loc3_ + 3] = param2;
                                                            while(true)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop4;
                                                               }
                                                               continue loop2;
                                                            }
                                                            addr69:
                                                            return;
                                                            addr115:
                                                         }
                                                         continue loop7;
                                                      }
                                                   }
                                                }
                                                §§goto(addr189);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 else
                                 {
                                    this.§@!"§[_loc3_ + 3] *= param2;
                                    if(!_loc6_)
                                    {
                                       if(_loc5_)
                                       {
                                          if(_loc6_)
                                          {
                                             §§goto(addr190);
                                          }
                                          §§goto(addr69);
                                       }
                                       §§goto(addr135);
                                    }
                                 }
                                 §§goto(addr115);
                              }
                              §§goto(addr212);
                           }
                           addr54:
                           §§push(param1);
                           if(!_loc6_)
                           {
                              §§goto(addr59);
                              §§push(§§pop() * §6!S§);
                           }
                        }
                        §§goto(addr60);
                     }
                     if(§§pop() == 1)
                     {
                        if(!_loc6_)
                        {
                           return;
                        }
                     }
                  }
                  §§goto(addr54);
               }
            }
            §§goto(addr46);
         }
         §§goto(addr32);
      }
      
      public function §&B§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:Number = NaN;
         var _loc6_:* = NaN;
         var _loc7_:Number = NaN;
         if(!(_loc9_ && param1))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop() != this.§,";§)
               {
                  loop1:
                  while(true)
                  {
                     §§push(param2);
                     if(_loc8_)
                     {
                        if(§§pop())
                        {
                           if(_loc8_)
                           {
                              §§push(this.§[!>§);
                              if(_loc8_ || this)
                              {
                                 §§push(int(§§pop() * §6!S§));
                              }
                              while(true)
                              {
                                 _loc3_ = §§pop();
                                 addr282:
                                 §§push(0);
                                 if(!(_loc9_ && this))
                                 {
                                    _loc4_ = §§pop();
                                    if(_loc9_)
                                    {
                                       while(true)
                                       {
                                          if(!_loc8_)
                                          {
                                             continue loop1;
                                          }
                                          if(_loc9_)
                                          {
                                             §§goto(addr287);
                                          }
                                          §§goto(addr282);
                                       }
                                       addr268:
                                    }
                                    while(true)
                                    {
                                       §§push(_loc4_);
                                       if(_loc8_ || param1)
                                       {
                                          if(!_loc9_)
                                          {
                                             if(§§pop() >= _loc3_)
                                             {
                                                if(_loc8_)
                                                {
                                                   break loop1;
                                                }
                                                addr57:
                                                if(!(_loc9_ && param2))
                                                {
                                                   if(!(_loc9_ && param1))
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         break;
                                                      }
                                                      loop5:
                                                      while(true)
                                                      {
                                                         §§push(this.§,";§);
                                                         loop6:
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(_loc9_ && this)
                                                               {
                                                                  continue;
                                                               }
                                                               §§push(_loc5_);
                                                               while(true)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  addr213:
                                                                  while(true)
                                                                  {
                                                                  }
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(1);
                                                               while(true)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  addr216:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc8_ || param2))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           continue loop5;
                                                                        }
                                                                        addr232:
                                                                     }
                                                                  }
                                                               }
                                                               addr215:
                                                            }
                                                            addr223:
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               addr224:
                                                               while(true)
                                                               {
                                                                  _loc6_ = §§pop();
                                                                  continue loop6;
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr199);
                                                }
                                                §§goto(addr76);
                                             }
                                             else
                                             {
                                                §§push(this.§&!-§(0));
                                             }
                                             §§goto(addr232);
                                          }
                                          §§goto(addr215);
                                       }
                                       §§goto(addr187);
                                    }
                                    return;
                                    addr247:
                                 }
                              }
                           }
                           §§goto(addr268);
                        }
                        break;
                     }
                     continue loop0;
                  }
                  this.§,";§ = param1;
                  §§goto(addr57);
               }
               addr287:
               return;
            }
         }
         §§goto(addr247);
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§,";§;
      }
      
      public function get §!>§() : int
      {
         return this.§[!>§;
      }
      
      public function set §!>§(param1:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         var _loc4_:* = 0;
         if(_loc6_ || this)
         {
            §§push(param1);
            if(!(_loc5_ && _loc2_))
            {
               §§push(§@d§);
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc6_)
                  {
                     §§push(§§pop() * §>g§);
                     if(_loc6_ || _loc3_)
                     {
                        §§push(§§pop() - this.§,V§.length);
                     }
                  }
                  §§push(int(§§pop()));
               }
               addr498:
            }
            loop1:
            while(true)
            {
               _loc2_ = §§pop();
               loop2:
               while(true)
               {
                  §§push(int(this.§,V§.length));
                  loop3:
                  for(; !_loc5_; loop6:
                  for(; _loc6_ || _loc2_; §§goto(addr469))
                  {
                     §§push(0);
                     if(!_loc5_)
                     {
                        if(§§pop() > §§pop())
                        {
                           if(_loc6_)
                           {
                              if(!_loc5_)
                              {
                                 §§goto(addr451);
                              }
                              while(true)
                              {
                                 continue loop6;
                              }
                              addr479:
                           }
                           §§goto(addr462);
                        }
                        else
                        {
                           §§goto(addr399);
                        }
                     }
                     else
                     {
                        §§goto(addr498);
                     }
                  })
                  {
                     _loc4_ = §§pop();
                     while(true)
                     {
                        this.§,V§.length += _loc2_;
                        addr451:
                        if(!(_loc5_ && _loc3_))
                        {
                           this.§,V§.position = _loc4_;
                           while(true)
                           {
                              if(!(_loc5_ && this))
                              {
                                 §§push(0);
                                 if(_loc5_ && this)
                                 {
                                    break;
                                 }
                                 continue;
                                 addr469:
                              }
                              continue loop2;
                           }
                           continue loop3;
                           addr462:
                        }
                     }
                  }
                  continue loop1;
               }
            }
         }
         §§goto(addr479);
      }
      
      public function get §7L§() : ByteArray
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§,V§.position = 0;
         }
         return this.§,V§;
      }
      
      public function get §[I§() : Vector.<Number>
      {
         return this.§@!"§;
      }
      
      public function get §0!E§() : Vector.<Number>
      {
         return this.§["&§;
      }
   }
}
