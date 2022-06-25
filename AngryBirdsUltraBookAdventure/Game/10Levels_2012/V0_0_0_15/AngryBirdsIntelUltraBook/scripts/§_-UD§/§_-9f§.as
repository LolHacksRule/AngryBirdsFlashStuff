package §_-UD§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §_-9f§
   {
      
      public static const §_-vj§:int = 4;
      
      public static const §_-u7§:int = 2;
      
      public static const §_-3x§:int = 3;
      
      public static const §_-5V§:int = 4;
      
      public static const §_-gg§:int = 0;
      
      public static const §_-0CW§:int = 0;
      
      public static const §_-AV§:int = 0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §_-vj§ = 4;
            loop0:
            while(true)
            {
               §_-u7§ = 2;
               while(true)
               {
                  §_-3x§ = 3;
                  loop2:
                  for(; _loc1_ || _loc2_; if(!(_loc2_ && §_-9f§))
                  {
                     addr56:
                     return;
                  })
                  {
                     §_-5V§ = 4;
                     loop3:
                     while(true)
                     {
                        §_-gg§ = 0;
                        addr82:
                        loop4:
                        while(true)
                        {
                           §_-0CW§ = 0;
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 if(!_loc1_)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              continue loop4;
                              addr77:
                              §_-AV§ = 0;
                              if(!(_loc2_ && _loc1_))
                              {
                                 continue loop2;
                              }
                           }
                           continue loop3;
                        }
                        §§goto(addr56);
                     }
                  }
               }
            }
         }
         §§goto(addr82);
      }
      
      private var §_-hm§:ByteArray;
      
      private var §_-lk§:Vector.<Number>;
      
      private var §_-09J§:Vector.<Number>;
      
      private var §_-XA§:Boolean;
      
      private var §_-fz§:int;
      
      private var §_-if§:Vector.<Number>;
      
      public function §_-9f§(param1:int, param2:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && _loc3_))
         {
            this.§_-if§ = new Vector.<Number>(12,true);
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§_-hm§ = new ByteArray();
                  addr58:
                  while(_loc4_)
                  {
                     while(true)
                     {
                        this.§_-hm§.endian = Endian.LITTLE_ENDIAN;
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§_-hm§.length = param1 * §_-u7§ * §_-5V§;
            if(!_loc5_)
            {
               if(_loc4_)
               {
                  if(true)
                  {
                     break;
                  }
                  §§goto(addr39);
               }
               §§goto(addr58);
            }
            §§goto(addr45);
         }
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= param1 * §_-u7§)
            {
               if(!(_loc5_ && param1))
               {
                  if(!(_loc4_ || _loc3_))
                  {
                     continue;
                  }
                  if(!(_loc5_ && param2))
                  {
                     this.§_-lk§ = new Vector.<Number>(param1 * §_-vj§,true);
                     break;
                  }
                  _loc3_++;
                  continue;
                  addr181:
               }
               break;
            }
            this.§_-hm§.writeFloat(0);
            §§goto(addr181);
         }
         loop7:
         while(true)
         {
            this.§_-09J§ = new Vector.<Number>(param1 * §_-3x§,true);
            do
            {
               if(_loc4_)
               {
                  continue;
               }
               continue loop7;
            }
            while(this.§_-XA§ = param2, do
            {
               this.§_-fz§ = param1;
            }
            while(!(_loc4_ || param1));
            , !_loc4_);
            
            return;
         }
      }
      
      public function clone() : §_-9f§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§_-9f§ = new §_-9f§(0,this.§_-XA§);
         if(!(_loc2_ && this))
         {
            _loc1_.§_-hm§.length = this.§_-hm§.length;
            loop0:
            while(true)
            {
               _loc1_.§_-hm§.writeBytes(this.§_-hm§);
               while(true)
               {
                  _loc1_.§_-lk§ = this.§_-lk§.concat();
                  addr113:
                  while(!_loc2_)
                  {
                  }
                  continue loop0;
                  addr83:
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.§_-09J§.fixed = true;
                     do
                     {
                        _loc1_.§_-fz§ = this.§_-fz§;
                     }
                     while(_loc2_ && this);
                     
                     addr100:
                     if(!(_loc3_ || _loc1_))
                     {
                        loop5:
                        while(true)
                        {
                           if(_loc3_)
                           {
                              if(!_loc3_)
                              {
                                 break;
                              }
                              §§goto(addr83);
                           }
                           addr106:
                           while(true)
                           {
                              _loc1_.§_-09J§ = this.§_-09J§.concat();
                              continue loop5;
                           }
                        }
                        §§goto(addr113);
                     }
                     return _loc1_;
                  }
               }
            }
         }
         while(true)
         {
            _loc1_.§_-lk§.fixed = true;
            §§goto(addr106);
         }
      }
      
      public function copyTo(param1:§_-9f§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:* = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§_-09J§;
         if(_loc19_ || param2)
         {
            §§push(this.§_-fz§);
            while(true)
            {
               §§push(§_-3x§);
               addr112:
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  addr113:
                  while(true)
                  {
                     §§push(int(§§pop()));
                     addr114:
                     while(true)
                     {
                        _loc6_ = §§pop();
                     }
                  }
               }
               addr91:
               if(_loc18_ && param2)
               {
                  continue;
               }
               §§push(§_-3x§);
               if(_loc19_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc19_)
                  {
                     §§push(int(§§pop()));
                     while(true)
                     {
                        if(!_loc18_)
                        {
                           _loc7_ = §§pop();
                           loop6:
                           while(true)
                           {
                              addr61:
                              addr201:
                              while(true)
                              {
                                 if(!param5)
                                 {
                                    §§push(0);
                                    if(_loc19_)
                                    {
                                       addr171:
                                       _loc8_ = §§pop();
                                       addr202:
                                       if(_loc19_)
                                       {
                                          addr199:
                                          §§push(_loc8_);
                                          break;
                                          addr174:
                                       }
                                       var _loc10_:ByteArray = param1.§_-hm§;
                                       if(!(_loc18_ && param2))
                                       {
                                          §§push(this.§_-fz§);
                                          if(!_loc18_)
                                          {
                                             addr340:
                                             §§push(§§pop() * §_-u7§);
                                             §§push(§_-5V§);
                                             if(!_loc18_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc19_)
                                                {
                                                   addr347:
                                                   _loc6_ = int(§§pop());
                                                   addr348:
                                                   §§push(param2);
                                                   if(!(_loc18_ && param1))
                                                   {
                                                      §§push(§_-u7§);
                                                      if(_loc19_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc19_ || param2)
                                                         {
                                                            if(_loc19_)
                                                            {
                                                               §§push(§_-5V§);
                                                               if(!(_loc18_ && param1))
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!(_loc18_ && param2))
                                                                  {
                                                                     addr329:
                                                                     §§push(int(§§pop()));
                                                                     if(_loc19_)
                                                                     {
                                                                        _loc7_ = §§pop();
                                                                        if(_loc10_.length < _loc7_ + _loc6_)
                                                                        {
                                                                           addr278:
                                                                           _loc10_.length = _loc7_ + _loc6_;
                                                                           addr283:
                                                                           if(_loc18_ && param3)
                                                                           {
                                                                           }
                                                                           §§goto(addr348);
                                                                        }
                                                                        _loc10_.position = _loc7_;
                                                                        addr263:
                                                                        if(_loc19_ || this)
                                                                        {
                                                                           addr237:
                                                                           _loc10_.writeBytes(this.§_-hm§);
                                                                           if(!(_loc18_ && this))
                                                                           {
                                                                              if(_loc19_ || param3)
                                                                              {
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    §§push(param4);
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                       if(_loc19_ || this)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             if(_loc19_)
                                                                                             {
                                                                                                §§pop();
                                                                                                if(!_loc18_)
                                                                                                {
                                                                                                   if(_loc19_)
                                                                                                   {
                                                                                                      if(false)
                                                                                                      {
                                                                                                         §§goto(addr237);
                                                                                                      }
                                                                                                      addr350:
                                                                                                      §§push(param3 == 1);
                                                                                                      if(_loc19_)
                                                                                                      {
                                                                                                         addr355:
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            addr356:
                                                                                                            _loc11_ = param1.§_-lk§;
                                                                                                            if(_loc19_)
                                                                                                            {
                                                                                                               §§push(this.§_-fz§);
                                                                                                               if(!_loc18_)
                                                                                                               {
                                                                                                                  addr450:
                                                                                                                  §§push(§§pop() * §_-vj§);
                                                                                                                  if(!(_loc18_ && param2))
                                                                                                                  {
                                                                                                                     §§push(int(§§pop()));
                                                                                                                     if(!_loc18_)
                                                                                                                     {
                                                                                                                        addr461:
                                                                                                                        _loc6_ = §§pop();
                                                                                                                        addr415:
                                                                                                                        addr462:
                                                                                                                        §§push(param2);
                                                                                                                        §§push(§_-vj§);
                                                                                                                        if(_loc19_ || param2)
                                                                                                                        {
                                                                                                                           if(!_loc18_)
                                                                                                                           {
                                                                                                                              addr428:
                                                                                                                              §§push(int(§§pop() * §§pop()));
                                                                                                                              if(_loc19_ || param3)
                                                                                                                              {
                                                                                                                                 _loc7_ = §§pop();
                                                                                                                                 addr437:
                                                                                                                                 if(!(_loc18_ && param3))
                                                                                                                                 {
                                                                                                                                    §§push(param3);
                                                                                                                                    if(_loc19_)
                                                                                                                                    {
                                                                                                                                       if(!_loc18_)
                                                                                                                                       {
                                                                                                                                          if(§§pop() == 1)
                                                                                                                                          {
                                                                                                                                             if(!(_loc18_ && param2))
                                                                                                                                             {
                                                                                                                                                if(!(_loc18_ && param3))
                                                                                                                                                {
                                                                                                                                                   §§push(0);
                                                                                                                                                   if(!(_loc18_ && param1))
                                                                                                                                                   {
                                                                                                                                                      if(!_loc18_)
                                                                                                                                                      {
                                                                                                                                                         _loc8_ = §§pop();
                                                                                                                                                         if(_loc19_ || param3)
                                                                                                                                                         {
                                                                                                                                                            if(false)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr415);
                                                                                                                                                            }
                                                                                                                                                            addr559:
                                                                                                                                                            §§push(_loc8_);
                                                                                                                                                            if(!(_loc18_ && param2))
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc6_);
                                                                                                                                                               if(!_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  addr570:
                                                                                                                                                                  if(§§pop() >= §§pop())
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc18_ && param2)
                                                                                                                                                                     {
                                                                                                                                                                        addr785:
                                                                                                                                                                        _loc12_++;
                                                                                                                                                                        if(_loc19_)
                                                                                                                                                                        {
                                                                                                                                                                           addr788:
                                                                                                                                                                           _loc8_++;
                                                                                                                                                                           if(_loc18_ && param2)
                                                                                                                                                                           {
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr800);
                                                                                                                                                                        }
                                                                                                                                                                        addr796:
                                                                                                                                                                        if(_loc8_ < this.§_-fz§)
                                                                                                                                                                        {
                                                                                                                                                                           if(this.§_-XA§)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc18_ && param2))
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr536);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr788);
                                                                                                                                                                           }
                                                                                                                                                                           var _loc14_:*;
                                                                                                                                                                           _loc11_[_loc14_ = _loc7_++] = this.§_-lk§[_loc12_++];
                                                                                                                                                                           if(_loc19_)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr721);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr782);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr788);
                                                                                                                                                                  }
                                                                                                                                                                  _loc11_[_loc14_ = _loc7_++] = this.§_-lk§[_loc8_];
                                                                                                                                                                  if(_loc19_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc18_ && param2))
                                                                                                                                                                     {
                                                                                                                                                                        _loc8_++;
                                                                                                                                                                        §§goto(addr597);
                                                                                                                                                                        addr487:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr703);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr782);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr785);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr544);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr415);
                                                                                                                                                   }
                                                                                                                                                   addr554:
                                                                                                                                                   _loc8_ = §§pop();
                                                                                                                                                   §§goto(addr555);
                                                                                                                                                }
                                                                                                                                                §§goto(addr437);
                                                                                                                                             }
                                                                                                                                             addr536:
                                                                                                                                             _loc13_ = this.§_-lk§[_loc12_ + 3];
                                                                                                                                             if(!(_loc18_ && param3))
                                                                                                                                             {
                                                                                                                                                §§push(param3);
                                                                                                                                                if(!_loc18_)
                                                                                                                                                {
                                                                                                                                                   addr492:
                                                                                                                                                   §§push(§§pop() / _loc13_);
                                                                                                                                                   if(_loc19_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc18_ && param3))
                                                                                                                                                      {
                                                                                                                                                         addr504:
                                                                                                                                                         _loc13_ = §§pop();
                                                                                                                                                         if(_loc19_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc19_ || param3)
                                                                                                                                                            {
                                                                                                                                                               if(false)
                                                                                                                                                               {
                                                                                                                                                                  addr516:
                                                                                                                                                                  §§goto(addr796);
                                                                                                                                                               }
                                                                                                                                                               _loc11_[_loc14_ = _loc7_++] = this.§_-lk§[_loc12_++] * _loc13_;
                                                                                                                                                               if(!(_loc18_ && this))
                                                                                                                                                               {
                                                                                                                                                                  var _loc15_:*;
                                                                                                                                                                  _loc11_[_loc15_ = _loc7_++] = this.§_-lk§[_loc12_++] * _loc13_;
                                                                                                                                                                  if(_loc19_ || param3)
                                                                                                                                                                  {
                                                                                                                                                                     var _loc16_:*;
                                                                                                                                                                     _loc11_[_loc16_ = _loc7_++] = this.§_-lk§[_loc12_++] * _loc13_;
                                                                                                                                                                     if(!_loc18_)
                                                                                                                                                                     {
                                                                                                                                                                        var _loc17_:*;
                                                                                                                                                                        _loc11_[_loc17_ = _loc7_++] = param3;
                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc19_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc19_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc19_ || param2)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr700:
                                                                                                                                                                                    if(_loc19_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr703:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr785);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr721:
                                                                                                                                                                                 _loc11_[_loc15_ = _loc7_++] = this.§_-lk§[_loc12_++];
                                                                                                                                                                                 if(!(_loc18_ && param3))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr743:
                                                                                                                                                                                    _loc11_[_loc16_ = _loc7_++] = this.§_-lk§[_loc12_++];
                                                                                                                                                                                    if(_loc19_)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc11_[_loc17_ = _loc7_++] = param3;
                                                                                                                                                                                       addr780:
                                                                                                                                                                                       addr779:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr780);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr782:
                                                                                                                                                                              if(!_loc18_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr785);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr800);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr780);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr779);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr780);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr743);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr700);
                                                                                                                                                            }
                                                                                                                                                            addr555:
                                                                                                                                                            if(_loc19_)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr516);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr559);
                                                                                                                                                            addr597:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr785);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr536);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr504);
                                                                                                                                                addr544:
                                                                                                                                             }
                                                                                                                                             addr800:
                                                                                                                                             return;
                                                                                                                                          }
                                                                                                                                          §§push(0);
                                                                                                                                          if(!(_loc18_ && this))
                                                                                                                                          {
                                                                                                                                             _loc12_ = §§pop();
                                                                                                                                             if(_loc19_ || param1)
                                                                                                                                             {
                                                                                                                                                §§push(0);
                                                                                                                                                if(!(_loc18_ && param1))
                                                                                                                                                {
                                                                                                                                                   §§goto(addr554);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr785);
                                                                                                                                       }
                                                                                                                                       §§goto(addr428);
                                                                                                                                    }
                                                                                                                                    §§goto(addr492);
                                                                                                                                 }
                                                                                                                                 §§goto(addr462);
                                                                                                                              }
                                                                                                                              §§goto(addr554);
                                                                                                                           }
                                                                                                                           §§goto(addr450);
                                                                                                                        }
                                                                                                                        §§goto(addr570);
                                                                                                                     }
                                                                                                                     §§goto(addr785);
                                                                                                                  }
                                                                                                                  §§goto(addr504);
                                                                                                               }
                                                                                                               §§goto(addr461);
                                                                                                            }
                                                                                                            §§goto(addr487);
                                                                                                         }
                                                                                                         §§goto(addr788);
                                                                                                      }
                                                                                                      §§goto(addr355);
                                                                                                   }
                                                                                                   §§goto(addr283);
                                                                                                }
                                                                                                §§goto(addr356);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr355);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr355);
                                                                                 }
                                                                                 §§goto(addr278);
                                                                              }
                                                                              §§goto(addr263);
                                                                           }
                                                                           §§goto(addr356);
                                                                        }
                                                                        addr333:
                                                                        §§goto(addr333);
                                                                     }
                                                                     §§goto(addr347);
                                                                  }
                                                               }
                                                               §§goto(addr350);
                                                            }
                                                            §§goto(addr340);
                                                         }
                                                         §§goto(addr329);
                                                      }
                                                      §§goto(addr340);
                                                   }
                                                   §§goto(addr329);
                                                }
                                             }
                                             §§goto(addr350);
                                          }
                                       }
                                       §§goto(addr347);
                                    }
                                 }
                                 if(!(_loc18_ && this))
                                 {
                                    param5.transformVectors(this.§_-09J§,this.§_-if§);
                                 }
                                 continue loop6;
                              }
                              if(§§pop() < _loc6_)
                              {
                                 _loc9_[_loc14_ = _loc7_++] = this.§_-09J§[_loc8_];
                                 addr188:
                                 if(!_loc18_)
                                 {
                                    _loc8_++;
                                    if(!(_loc18_ && this))
                                    {
                                       §§goto(addr199);
                                    }
                                 }
                              }
                              §§goto(addr202);
                           }
                        }
                        break;
                        if(_loc18_ && param1)
                        {
                           continue;
                        }
                        §§goto(addr51);
                     }
                     §§goto(addr114);
                  }
                  §§goto(addr113);
               }
               §§goto(addr112);
            }
         }
         §§goto(addr115);
      }
      
      public function append(param1:§_-9f§) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:int = this.§_-hm§.length;
         if(!_loc10_)
         {
            this.§_-hm§.length += param1.§_-hm§.length;
            while(true)
            {
               this.§_-hm§.position = _loc2_;
            }
            addr60:
         }
         while(true)
         {
            while(true)
            {
               this.§_-hm§.writeBytes(param1.§_-hm§);
               do
               {
                  this.§_-lk§.fixed = false;
               }
               while(_loc10_);
               
               if(_loc10_)
               {
                  break;
               }
               if(_loc9_)
               {
                  if(false)
                  {
                     continue;
                  }
                  var _loc3_:Vector.<Number> = param1.§_-lk§;
                  var _loc4_:int = _loc3_.length;
                  var _loc5_:int = 0;
                  loop4:
                  while(true)
                  {
                     if(_loc5_ >= _loc4_)
                     {
                        while(true)
                        {
                           if(_loc9_ || _loc3_)
                           {
                              this.§_-lk§.fixed = true;
                              do
                              {
                                 this.§_-09J§.fixed = false;
                              }
                              while(!_loc9_);
                              
                              if(!(_loc10_ && _loc2_))
                              {
                                 if(!(_loc9_ || _loc2_))
                                 {
                                    break;
                                 }
                                 if(true)
                                 {
                                    break loop4;
                                 }
                                 continue loop4;
                              }
                              continue;
                           }
                        }
                        addr123:
                        continue;
                     }
                     this.§_-lk§.push(_loc3_[_loc5_]);
                     _loc5_++;
                     §§goto(addr123);
                  }
                  var _loc6_:Vector.<Number>;
                  var _loc7_:int = (_loc6_ = param1.§_-09J§).length;
                  var _loc8_:int = 0;
                  if(_loc9_)
                  {
                     loop7:
                     while(true)
                     {
                        if(_loc8_ >= _loc7_)
                        {
                           do
                           {
                              this.§_-09J§.fixed = true;
                              do
                              {
                                 this.§_-fz§ += param1.§_-Tz§;
                              }
                              while(!(_loc9_ || param1));
                              
                           }
                           while(!_loc9_);
                           
                           if(!(_loc10_ && this))
                           {
                              break;
                           }
                        }
                        else
                        {
                           this.§_-09J§.push(_loc6_[_loc8_]);
                           while(true)
                           {
                              _loc8_++;
                           }
                           addr207:
                        }
                        while(_loc10_)
                        {
                           §§goto(addr207);
                        }
                        addr198:
                        while(true)
                        {
                           continue loop7;
                        }
                     }
                     return;
                  }
                  §§goto(addr198);
               }
               else
               {
                  §§goto(addr60);
               }
            }
         }
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         §§push(param1);
         if(!(_loc9_ && param2))
         {
            §§push(int(§§pop() * §_-3x§));
         }
         var _loc5_:* = §§pop();
         var _loc6_:*;
         this.§_-09J§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§_-09J§[_loc7_ = _loc5_++] = param3;
         if(!(_loc9_ && param2))
         {
            this.§_-09J§[_loc5_] = param4;
         }
      }
      
      public function §_-0AQ§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param1);
         if(!_loc6_)
         {
            §§push(int(§§pop() * §_-3x§));
         }
         var _loc4_:* = §§pop();
         var _loc5_:*;
         this.§_-09J§[_loc5_ = _loc4_++] = param2;
         if(_loc7_ || param1)
         {
            this.§_-09J§[_loc4_] = param3;
         }
      }
      
      public function §_-03l§(param1:int, param2:Vector3D) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(!(_loc5_ && param1))
         {
            §§push(int(§§pop() * §_-3x§));
         }
         var _loc3_:* = §§pop();
         if(_loc4_)
         {
            param2.x = this.§_-09J§[_loc3_++];
         }
         do
         {
            param2.y = this.§_-09J§[_loc3_++];
            do
            {
               param2.z = this.§_-09J§[_loc3_];
            }
            while(_loc5_);
            
         }
         while(_loc5_ && _loc3_);
         
      }
      
      public function §_-fh§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_)
         {
            if(this.§_-XA§)
            {
               addr21:
               §§push(param3);
               if(_loc8_ || this)
               {
                  §§push(Number(§§pop()));
                  if(_loc9_ && this)
                  {
                  }
                  addr42:
                  §§push(Number(§§pop()));
               }
            }
            else
            {
               §§push(Number(1));
               if(_loc8_)
               {
                  §§goto(addr42);
               }
            }
            var _loc4_:*;
            §§push(_loc4_ = §§pop());
            if(_loc8_)
            {
               §§push(§§pop() / 255);
               if(_loc8_)
               {
                  §§push(Number(§§pop()));
                  if(!_loc9_)
                  {
                     §§goto(addr64);
                  }
               }
               §§goto(addr72);
            }
            addr64:
            _loc4_ = §§pop();
            §§push(§_-Jy§.§throw§(param2) * _loc4_);
            if(_loc8_)
            {
               addr72:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(§_-Jy§.§_-OU§(param2) * _loc4_);
            if(_loc8_ || param1)
            {
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(§_-Jy§.§_-Gv§(param2) * _loc4_);
            if(_loc8_ || param1)
            {
               §§push(Number(§§pop()));
            }
            var _loc7_:* = §§pop();
            if(!(_loc9_ && this))
            {
               this.§_-01e§(param1,1,_loc5_,_loc6_,_loc7_,param3);
            }
            return;
         }
         §§goto(addr21);
      }
      
      private function §_-01e§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         §§push(param1);
         if(_loc13_ || this)
         {
            §§push(int(§§pop() * §_-vj§));
         }
         var _loc7_:* = §§pop();
         §§push(param2);
         if(_loc13_ || param3)
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
               this.§_-lk§[_loc9_ = _loc7_++] = param3;
               if(_loc13_)
               {
                  var _loc10_:*;
                  this.§_-lk§[_loc10_ = _loc7_++] = param4;
                  if(_loc13_ || this)
                  {
                     var _loc11_:*;
                     this.§_-lk§[_loc11_ = _loc7_++] = param5;
                     if(_loc13_ || this)
                     {
                        var _loc12_:*;
                        this.§_-lk§[_loc12_ = _loc7_++] = param6;
                     }
                  }
               }
               if(!_loc13_)
               {
                  break;
               }
               §§push(_loc8_);
               if(!(_loc14_ && param2))
               {
                  §§push(§§pop() - 1);
                  if(!(_loc14_ && this))
                  {
                     continue loop0;
                  }
                  continue;
               }
               continue loop0;
            }
            addr150:
            return;
         }
      }
      
      private function §_-Ig§(param1:int, param2:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         §§push(param1);
         if(_loc7_)
         {
            §§push(int(§§pop() * §_-vj§));
         }
         var _loc3_:* = §§pop();
         var _loc4_:*;
         this.§_-lk§[_loc4_ = _loc3_++] = this.§_-lk§[_loc4_] * param2;
         var _loc5_:*;
         this.§_-lk§[_loc5_ = _loc3_++] = this.§_-lk§[_loc5_] * param2;
         var _loc6_:*;
         this.§_-lk§[_loc6_ = _loc3_++] = this.§_-lk§[_loc6_] * param2;
         if(_loc7_)
         {
            this.§_-lk§[_loc3_] *= param2;
         }
      }
      
      public function §_-01U§(param1:int) : uint
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         §§push(param1);
         if(_loc7_ || param1)
         {
            §§push(int(§§pop() * §_-vj§));
         }
         var _loc2_:* = §§pop();
         if(_loc7_ || _loc3_)
         {
            if(this.§_-XA§)
            {
               addr44:
               §§push(Number(this.§_-lk§[_loc2_ + 3]));
               if(!_loc7_)
               {
               }
               addr58:
               §§push(Number(§§pop()));
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
               loop0:
               while(§§pop() != 0)
               {
                  loop1:
                  while(true)
                  {
                     §§push(255);
                     if(!_loc8_)
                     {
                        §§push(§§pop() / _loc3_);
                        if(!_loc8_)
                        {
                           §§push(Number(§§pop()));
                        }
                        while(true)
                        {
                           _loc3_ = §§pop();
                           loop3:
                           while(true)
                           {
                              §§push(this.§_-lk§[_loc2_] * _loc3_);
                              if(_loc7_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              loop4:
                              while(true)
                              {
                                 _loc4_ = §§pop();
                                 loop5:
                                 while(_loc7_)
                                 {
                                    while(true)
                                    {
                                       §§push(this.§_-lk§[_loc2_ + 1] * _loc3_);
                                       if(!_loc8_)
                                       {
                                          continue loop4;
                                       }
                                       addr143:
                                       loop7:
                                       while(true)
                                       {
                                          _loc5_ = §§pop();
                                          addr144:
                                          while(!_loc8_)
                                          {
                                             if(_loc7_ || _loc2_)
                                             {
                                                if(_loc8_ && _loc3_)
                                                {
                                                   break loop0;
                                                }
                                                §§push(this.§_-lk§[_loc2_ + 2] * _loc3_);
                                                if(!(_loc8_ && this))
                                                {
                                                   continue loop7;
                                                }
                                                if(_loc7_ || param1)
                                                {
                                                   _loc6_ = §§pop();
                                                   if(_loc8_)
                                                   {
                                                      §§goto(addr144);
                                                   }
                                                   return §_-Jy§.§_-Ub§(_loc4_,_loc5_,_loc6_);
                                                }
                                                continue loop0;
                                                continue loop0;
                                             }
                                             continue loop3;
                                          }
                                          continue loop5;
                                       }
                                    }
                                 }
                                 continue loop1;
                              }
                           }
                           if(_loc8_ && _loc2_)
                           {
                              continue;
                           }
                           §§goto(addr143);
                           return Number(§§pop());
                        }
                     }
                     break;
                  }
                  return §§pop();
               }
               §§goto(addr200);
               §§push(0);
            }
            §§goto(addr184);
         }
         §§goto(addr44);
      }
      
      public function §_-it§(param1:int, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = 0;
         if(_loc5_ || this)
         {
            §§push(param2);
            if(_loc5_)
            {
               if(§§pop() < 0.001)
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(0.001);
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        addr131:
                        while(true)
                        {
                           param2 = §§pop();
                        }
                     }
                     addr130:
                  }
                  while(true)
                  {
                  }
                  addr132:
               }
               loop2:
               while(true)
               {
                  if(!this.§_-XA§)
                  {
                     §§push(param1);
                     if(!_loc4_)
                     {
                        §§push(§§pop() * §_-vj§);
                        if(_loc5_ || _loc3_)
                        {
                           if(_loc5_ || param1)
                           {
                              §§push(§§pop() + 3);
                           }
                           §§goto(addr131);
                        }
                        if(_loc5_)
                        {
                           §§push(int(§§pop()));
                        }
                        else
                        {
                           §§goto(addr130);
                        }
                     }
                     _loc3_ = §§pop();
                     loop3:
                     for(; _loc5_ || param2; this.§_-lk§[_loc3_] = param2,if(_loc5_ || _loc3_)
                     {
                        §§goto(addr27);
                     })
                     {
                        if(_loc5_)
                        {
                           continue;
                        }
                        addr107:
                        addr107:
                        while(true)
                        {
                           this.§_-fh§(param1,this.§_-01U§(param1),param2);
                           break loop3;
                        }
                     }
                     while(true)
                     {
                        if(_loc5_)
                        {
                           break loop2;
                        }
                        continue loop2;
                     }
                     §§goto(addr27);
                  }
                  §§goto(addr107);
               }
               addr27:
               return;
            }
            §§goto(addr131);
         }
         §§goto(addr107);
      }
      
      public function §_-nB§(param1:int) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(_loc4_ || _loc2_)
         {
            §§push(§§pop() * §_-vj§);
            if(_loc4_)
            {
               §§push(§§pop() + 3);
            }
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         return this.§_-lk§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1);
         if(_loc5_ || param1)
         {
            §§push(int(§§pop() * §_-u7§));
         }
         var _loc4_:* = §§pop();
         if(!_loc6_)
         {
            this.§_-hm§.position = _loc4_ * §_-5V§;
            while(true)
            {
               this.§_-hm§.writeFloat(param2);
               while(!(_loc6_ && param2))
               {
                  this.§_-hm§.writeFloat(param3);
                  if(_loc6_ && this)
                  {
                     continue;
                  }
                  return;
                  addr67:
               }
            }
         }
         §§goto(addr67);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(_loc5_ || _loc3_)
         {
            §§push(int(§§pop() * §_-u7§));
         }
         var _loc3_:* = §§pop();
         if(_loc5_ || param1)
         {
            this.§_-hm§.position = _loc3_ * §_-5V§;
            do
            {
               param2.x = this.§_-hm§.readFloat();
               do
               {
                  param2.y = this.§_-hm§.readFloat();
               }
               while(!(_loc5_ || param2));
               
            }
            while(!(_loc5_ || _loc3_));
            
         }
      }
      
      public function §_-ZN§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         §§push(param1);
         if(_loc8_)
         {
            §§push(int(§§pop() * §_-3x§));
         }
         var _loc5_:* = §§pop();
         var _loc6_:*;
         this.§_-09J§[_loc6_ = _loc5_++] = this.§_-09J§[_loc6_] + param2;
         var _loc7_:*;
         this.§_-09J§[_loc7_ = _loc5_++] = this.§_-09J§[_loc7_] + param3;
         if(_loc8_)
         {
            this.§_-09J§[_loc5_] += param4;
         }
      }
      
      public function §_-0B0§(param1:int, param2:Matrix3D) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(_loc5_ || this)
         {
            §§push(int(§§pop() * §_-3x§));
         }
         var _loc3_:* = §§pop();
         if(_loc5_ || param1)
         {
            this.§_-if§[0] = this.§_-09J§[_loc3_];
            loop0:
            while(true)
            {
               this.§_-if§[1] = this.§_-09J§[_loc3_ + 1];
               loop1:
               while(true)
               {
                  this.§_-if§[2] = this.§_-09J§[_loc3_ + 2];
                  while(true)
                  {
                     param2.transformVectors(this.§_-if§,this.§_-if§);
                     while(_loc5_)
                     {
                        if(!_loc4_)
                        {
                           this.§_-09J§[_loc3_] = this.§_-if§[0];
                           while(_loc5_)
                           {
                              continue loop1;
                           }
                           continue;
                           addr93:
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr83);
      }
      
      public function §_-I9§(param1:uint, param2:Number = 1.0) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            §§push(param2);
            if(!(_loc8_ && _loc3_))
            {
               if(§§pop() < 0.001)
               {
                  if(_loc7_)
                  {
                     §§push(0.001);
                     if(!_loc8_)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc8_)
                        {
                           param2 = §§pop();
                           if(_loc7_ || param2)
                           {
                              addr44:
                              if(this.§_-XA§)
                              {
                                 addr47:
                                 §§push(param2);
                                 if(_loc7_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(!_loc8_)
                                    {
                                       addr53:
                                    }
                                 }
                                 §§goto(addr53);
                              }
                              else
                              {
                                 §§push(Number(1));
                                 if(_loc7_ || _loc3_)
                                 {
                                 }
                                 addr74:
                                 var _loc3_:* = §§pop();
                                 if(_loc7_)
                                 {
                                    §§push(_loc3_);
                                    if(_loc7_)
                                    {
                                       §§push(§§pop() / 255);
                                       if(_loc7_ || this)
                                       {
                                          §§goto(addr89);
                                       }
                                       §§goto(addr92);
                                    }
                                    addr89:
                                    §§push(Number(§§pop()));
                                    if(_loc7_)
                                    {
                                       addr92:
                                       _loc3_ = §§pop();
                                       §§push(§_-Jy§.§throw§(param1) * _loc3_);
                                       if(!(_loc8_ && param2))
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    var _loc4_:* = §§pop();
                                    §§push(§_-Jy§.§_-OU§(param1) * _loc3_);
                                    if(!(_loc8_ && this))
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc5_:* = §§pop();
                                    §§push(§_-Jy§.§_-Gv§(param1) * _loc3_);
                                    if(_loc7_ || _loc3_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc6_:* = §§pop();
                                    if(!_loc8_)
                                    {
                                       this.§_-01e§(0,this.§_-fz§,_loc4_,_loc5_,_loc6_,param2);
                                    }
                                    return;
                                 }
                                 §§goto(addr92);
                              }
                           }
                           §§goto(addr47);
                        }
                        §§goto(addr74);
                        §§push(Number(§§pop()));
                     }
                     §§goto(addr53);
                  }
               }
               §§goto(addr44);
            }
            §§goto(addr74);
         }
         §§goto(addr47);
      }
      
      public function §_-di§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         if(_loc13_ || param1)
         {
            §§push(param6);
            if(_loc13_ || param3)
            {
               if(§§pop() < 0.001)
               {
                  if(_loc13_)
                  {
                     §§push(0.001);
                     if(!(_loc14_ && this))
                     {
                        §§push(Number(§§pop()));
                        if(_loc13_ || this)
                        {
                           addr51:
                           param6 = §§pop();
                           §§goto(addr52);
                        }
                     }
                     §§goto(addr57);
                  }
                  §§goto(addr52);
               }
               addr52:
               §§push(param1);
               if(!_loc14_)
               {
                  addr57:
                  §§push(int(§§pop() * §_-vj§));
               }
               var _loc7_:* = §§pop();
               var _loc8_:int = 0;
               while(_loc8_ < param2)
               {
                  var _loc9_:*;
                  this.§_-lk§[_loc9_ = _loc7_++] = param3;
                  if(!(_loc14_ && this))
                  {
                     var _loc10_:*;
                     this.§_-lk§[_loc10_ = _loc7_++] = param4;
                     if(!(_loc14_ && param2))
                     {
                        var _loc11_:*;
                        this.§_-lk§[_loc11_ = _loc7_++] = param5;
                        if(_loc13_)
                        {
                           var _loc12_:*;
                           this.§_-lk§[_loc12_ = _loc7_++] = param6;
                        }
                     }
                  }
                  if(_loc14_ && this)
                  {
                     break;
                  }
                  _loc8_++;
                  if(_loc14_ && param2)
                  {
                     break;
                  }
               }
               return;
            }
         }
         §§goto(addr51);
      }
      
      public function §_-0Be§(param1:int, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = NaN;
         if(_loc5_ || param1)
         {
            §§push(param2);
            if(!_loc6_)
            {
               if(§§pop() < 0.001)
               {
                  if(!(_loc6_ && param1))
                  {
                     addr37:
                     §§push(0.001);
                     if(_loc5_ || param2)
                     {
                        §§push(Number(§§pop()));
                        if(_loc5_)
                        {
                           param2 = §§pop();
                           if(_loc5_ || param2)
                           {
                              addr56:
                              §§push(param2);
                              if(!(_loc6_ && this))
                              {
                                 addr64:
                                 if(§§pop() == 1)
                                 {
                                    if(_loc5_)
                                    {
                                       return;
                                    }
                                    addr69:
                                    §§push(param1);
                                    if(!(_loc6_ && param1))
                                    {
                                       addr79:
                                       §§push(int(§§pop() * §_-vj§));
                                    }
                                    var _loc3_:* = §§pop();
                                    if(_loc5_ || param2)
                                    {
                                       if(!this.§_-XA§)
                                       {
                                          this.§_-lk§[_loc3_ + 3] *= param2;
                                          if(!(_loc6_ && param1))
                                          {
                                             if(!_loc6_)
                                             {
                                                if(_loc6_ && param1)
                                                {
                                                   loop0:
                                                   while(true)
                                                   {
                                                      §§push(param2);
                                                      if(_loc5_)
                                                      {
                                                         §§push(§§pop() / _loc4_);
                                                         if(_loc5_)
                                                         {
                                                            addr231:
                                                            §§push(Number(§§pop()));
                                                         }
                                                         if(!(_loc5_ || _loc3_))
                                                         {
                                                            continue;
                                                         }
                                                         _loc4_ = §§pop();
                                                         while(true)
                                                         {
                                                            this.§_-lk§[_loc3_] *= _loc4_;
                                                            loop2:
                                                            while(true)
                                                            {
                                                               this.§_-lk§[_loc3_ + 1] *= _loc4_;
                                                               addr193:
                                                               addr244:
                                                               while(_loc5_ || param2)
                                                               {
                                                                  this.§_-lk§[_loc3_ + 2] *= _loc4_;
                                                                  continue loop2;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(Number(this.§_-lk§[_loc3_ + 3]));
                                                                  continue loop0;
                                                               }
                                                            }
                                                            if(_loc5_ || param2)
                                                            {
                                                               this.§_-lk§[_loc3_ + 3] = param2;
                                                               while(!_loc5_)
                                                               {
                                                                  §§goto(addr193);
                                                               }
                                                               addr89:
                                                               return;
                                                               addr145:
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr231);
                                                   }
                                                }
                                                §§goto(addr89);
                                             }
                                             §§goto(addr163);
                                          }
                                          §§goto(addr145);
                                       }
                                    }
                                    §§goto(addr244);
                                 }
                                 §§goto(addr69);
                              }
                           }
                           §§goto(addr69);
                        }
                        §§goto(addr79);
                     }
                     §§goto(addr64);
                  }
                  §§goto(addr69);
               }
               §§goto(addr56);
            }
            §§goto(addr64);
         }
         §§goto(addr37);
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(_loc9_)
         {
            §§push(param1);
            while(true)
            {
               if(§§pop() == this.§_-XA§)
               {
                  if(_loc9_ || param2)
                  {
                     break;
                  }
                  while(true)
                  {
                  }
                  addr284:
               }
               while(true)
               {
                  §§push(param2);
                  if(!_loc9_)
                  {
                     break;
                  }
                  if(§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        §§push(this.§_-fz§);
                        loop4:
                        while(true)
                        {
                           §§push(int(§§pop() * §_-vj§));
                           while(true)
                           {
                              _loc3_ = §§pop();
                              while(true)
                              {
                                 if(_loc9_)
                                 {
                                    §§push(0);
                                    if(!_loc9_)
                                    {
                                       break;
                                    }
                                    if(_loc9_ || param1)
                                    {
                                       _loc4_ = §§pop();
                                       if(_loc9_)
                                       {
                                          continue loop3;
                                       }
                                       continue;
                                    }
                                    continue loop4;
                                 }
                                 §§goto(addr284);
                              }
                           }
                        }
                     }
                     addr263:
                  }
                  §§goto(addr63);
               }
            }
            return;
         }
         §§goto(addr263);
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§_-XA§;
      }
      
      public function get §_-Tz§() : int
      {
         return this.§_-fz§;
      }
      
      public function set §_-Tz§(param1:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(_loc5_ || _loc3_)
         {
            §§push(param1);
            if(_loc5_ || _loc2_)
            {
               §§push(§_-u7§);
               loop0:
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc5_)
                  {
                     §§push(§§pop() * §_-5V§);
                     if(!(_loc6_ && this))
                     {
                        addr504:
                        §§push(§§pop() - this.§_-hm§.length);
                     }
                     §§push(int(§§pop()));
                     loop1:
                     while(true)
                     {
                        _loc2_ = §§pop();
                        loop2:
                        while(true)
                        {
                           §§push(int(this.§_-hm§.length));
                           loop3:
                           for(; !_loc6_; while(true)
                           {
                              if(!(_loc5_ || param1))
                              {
                                 continue loop3;
                              }
                              §§push(0);
                              if(_loc6_)
                              {
                                 continue loop0;
                              }
                              if(§§pop() <= §§pop())
                              {
                                 break;
                              }
                              if(!_loc5_)
                              {
                                 continue;
                              }
                              §§goto(addr428);
                           },§§goto(addr383))
                           {
                              _loc4_ = §§pop();
                              loop4:
                              while(true)
                              {
                                 this.§_-hm§.length += _loc2_;
                                 while(true)
                                 {
                                    if(!(_loc6_ && _loc2_))
                                    {
                                       if(_loc6_ && this)
                                       {
                                          break;
                                       }
                                       §§push(_loc2_);
                                       continue loop3;
                                    }
                                    continue loop4;
                                    addr428:
                                    if(!(_loc5_ || _loc3_))
                                    {
                                       continue;
                                    }
                                    this.§_-hm§.position = _loc4_;
                                    do
                                    {
                                       §§push(0);
                                       if(!_loc6_)
                                       {
                                          continue;
                                       }
                                       continue loop3;
                                    }
                                    while(_loc3_ = §§pop(), _loc6_ && param1);
                                    
                                    loop8:
                                    while(true)
                                    {
                                       §§push(_loc3_);
                                       loop9:
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          loop10:
                                          while(true)
                                          {
                                             if(§§pop() >= §§pop() / §_-5V§)
                                             {
                                                addr383:
                                                loop11:
                                                while(true)
                                                {
                                                   this.§_-lk§.fixed = false;
                                                   loop12:
                                                   while(true)
                                                   {
                                                      §§push(param1);
                                                      if(!(_loc6_ && _loc3_))
                                                      {
                                                         §§push(§_-vj§);
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            addr370:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() - this.§_-lk§.length);
                                                               addr374:
                                                               while(true)
                                                               {
                                                                  §§push(int(§§pop()));
                                                               }
                                                            }
                                                         }
                                                         addr369:
                                                      }
                                                      loop16:
                                                      while(true)
                                                      {
                                                         _loc2_ = §§pop();
                                                         loop17:
                                                         while(true)
                                                         {
                                                            §§push(0);
                                                            loop18:
                                                            while(true)
                                                            {
                                                               _loc3_ = §§pop();
                                                               loop19:
                                                               while(true)
                                                               {
                                                                  loop20:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     loop21:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_);
                                                                        loop22:
                                                                        while(true)
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              if(§§pop() < §§pop())
                                                                              {
                                                                                 this.§_-lk§.push(0);
                                                                                 break;
                                                                              }
                                                                              while(!_loc6_)
                                                                              {
                                                                                 §§push(_loc2_);
                                                                                 loop24:
                                                                                 while(!_loc6_)
                                                                                 {
                                                                                    §§push(int(§§pop()));
                                                                                    loop25:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc3_ = §§pop();
                                                                                       loop26:
                                                                                       while(true)
                                                                                       {
                                                                                          loop27:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc3_);
                                                                                             loop28:
                                                                                             while(_loc5_)
                                                                                             {
                                                                                                §§push(0);
                                                                                                loop29:
                                                                                                while(!(_loc6_ && _loc3_))
                                                                                                {
                                                                                                   if(§§pop() >= §§pop())
                                                                                                   {
                                                                                                      loop30:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         this.§_-lk§.fixed = true;
                                                                                                         loop31:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            this.§_-09J§.fixed = false;
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(param1);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     continue loop25;
                                                                                                                  }
                                                                                                                  continue loop28;
                                                                                                                  loop37:
                                                                                                                  while(!(_loc6_ && _loc2_))
                                                                                                                  {
                                                                                                                     _loc3_ = §§pop();
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           if(_loc6_ && param1)
                                                                                                                           {
                                                                                                                              addr344:
                                                                                                                              break;
                                                                                                                              addr318:
                                                                                                                           }
                                                                                                                           loop39:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc3_);
                                                                                                                              addr134:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc2_);
                                                                                                                                 addr135:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc5_)
                                                                                                                                    {
                                                                                                                                       if(§§pop() < §§pop())
                                                                                                                                       {
                                                                                                                                          this.§_-09J§.push(0);
                                                                                                                                          break;
                                                                                                                                          addr138:
                                                                                                                                       }
                                                                                                                                       while(!_loc6_)
                                                                                                                                       {
                                                                                                                                          if(!(_loc6_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             addr163:
                                                                                                                                             §§push(_loc2_);
                                                                                                                                             if(_loc5_ || param1)
                                                                                                                                             {
                                                                                                                                                if(!(_loc5_ || _loc3_))
                                                                                                                                                {
                                                                                                                                                   continue loop21;
                                                                                                                                                }
                                                                                                                                                §§push(int(§§pop()));
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc5_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   continue loop18;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             continue loop18;
                                                                                                                                             addr163:
                                                                                                                                          }
                                                                                                                                          continue loop12;
                                                                                                                                       }
                                                                                                                                       continue loop27;
                                                                                                                                    }
                                                                                                                                    addr252:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc5_)
                                                                                                                                       {
                                                                                                                                          continue loop22;
                                                                                                                                       }
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(_loc5_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          if(_loc5_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             addr273:
                                                                                                                                             §§push(§§pop() - this.§_-09J§.length);
                                                                                                                                             if(_loc6_ && _loc2_)
                                                                                                                                             {
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             §§push(int(§§pop()));
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc2_ = §§pop();
                                                                                                                                                addr282:
                                                                                                                                                while(!_loc6_)
                                                                                                                                                {
                                                                                                                                                   §§push(0);
                                                                                                                                                   addr54:
                                                                                                                                                   if(_loc6_ && this)
                                                                                                                                                   {
                                                                                                                                                      continue loop37;
                                                                                                                                                   }
                                                                                                                                                   §§push(0);
                                                                                                                                                   if(_loc5_ || this)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc5_)
                                                                                                                                                      {
                                                                                                                                                         continue loop29;
                                                                                                                                                      }
                                                                                                                                                      if(§§pop() >= §§pop())
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc6_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            if(!_loc6_)
                                                                                                                                                            {
                                                                                                                                                               this.§_-09J§.fixed = true;
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc5_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc5_)
                                                                                                                                                                     {
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     continue;
                                                                                                                                                                  }
                                                                                                                                                                  loop47:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc5_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc6_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc5_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc6_ && _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 addr115:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc3_);
                                                                                                                                                                                    if(_loc5_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc6_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr54);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr134);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr163);
                                                                                                                                                                                    §§goto(addr115);
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop29;
                                                                                                                                                                                 addr48:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr207);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr190);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr138);
                                                                                                                                                                     }
                                                                                                                                                                     addr122:
                                                                                                                                                                     while(_loc5_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc6_ && this)
                                                                                                                                                                        {
                                                                                                                                                                           _loc3_++;
                                                                                                                                                                           break loop47;
                                                                                                                                                                        }
                                                                                                                                                                        addr399:
                                                                                                                                                                        addr399:
                                                                                                                                                                        continue loop47;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr218);
                                                                                                                                                                  }
                                                                                                                                                                  continue loop8;
                                                                                                                                                               }
                                                                                                                                                               continue loop31;
                                                                                                                                                               addr85:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr282);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr85);
                                                                                                                                                      }
                                                                                                                                                      this.§_-09J§.pop();
                                                                                                                                                      §§goto(addr122);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr135);
                                                                                                                                                   continue loop37;
                                                                                                                                                }
                                                                                                                                                continue loop26;
                                                                                                                                                §§goto(addr163);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr374);
                                                                                                                                       }
                                                                                                                                       §§goto(addr273);
                                                                                                                                    }
                                                                                                                                    §§goto(addr370);
                                                                                                                                    §§goto(addr281);
                                                                                                                                 }
                                                                                                                                 addr207:
                                                                                                                                 addr190:
                                                                                                                                 _loc3_++;
                                                                                                                                 if(_loc6_ && param1)
                                                                                                                                 {
                                                                                                                                    break loop39;
                                                                                                                                 }
                                                                                                                                 if(_loc5_)
                                                                                                                                 {
                                                                                                                                    continue loop39;
                                                                                                                                 }
                                                                                                                                 continue loop19;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           if(_loc5_ || param1)
                                                                                                                           {
                                                                                                                              if(!_loc5_)
                                                                                                                              {
                                                                                                                                 break loop22;
                                                                                                                              }
                                                                                                                              _loc3_++;
                                                                                                                              continue loop27;
                                                                                                                           }
                                                                                                                           if(!_loc6_)
                                                                                                                           {
                                                                                                                              continue loop20;
                                                                                                                           }
                                                                                                                           continue loop8;
                                                                                                                        }
                                                                                                                        continue loop30;
                                                                                                                     }
                                                                                                                     continue loop17;
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop9;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      this.§_-lk§.pop();
                                                                                                      §§goto(addr318);
                                                                                                   }
                                                                                                }
                                                                                                continue loop10;
                                                                                             }
                                                                                             continue loop24;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 continue loop16;
                                                                                 if(!(_loc5_ || _loc2_))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §§goto(addr48);
                                                                              }
                                                                              continue loop11;
                                                                           }
                                                                           §§goto(addr369);
                                                                           §§goto(addr370);
                                                                        }
                                                                        _loc3_++;
                                                                        §§goto(addr344);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                this.§_-hm§.writeFloat(0);
                                             }
                                             §§goto(addr399);
                                          }
                                       }
                                    }
                                 }
                                 continue loop2;
                              }
                           }
                           continue loop1;
                        }
                     }
                     addr509:
                  }
                  §§goto(addr504);
               }
            }
            §§goto(addr509);
         }
         §§goto(addr412);
      }
      
      public function get §_-ho§() : ByteArray
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§_-hm§.position = 0;
         }
         return this.§_-hm§;
      }
      
      public function get §_-ge§() : Vector.<Number>
      {
         return this.§_-lk§;
      }
      
      public function get §_-y2§() : Vector.<Number>
      {
         return this.§_-09J§;
      }
   }
}
