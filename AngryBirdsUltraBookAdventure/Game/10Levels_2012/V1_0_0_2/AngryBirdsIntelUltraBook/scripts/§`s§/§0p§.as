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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §0!Q§ = 4;
            loop0:
            while(true)
            {
               §1!0§ = 2;
               while(true)
               {
                  §<h§ = 3;
                  while(_loc2_ || _loc1_)
                  {
                     if(!_loc1_)
                     {
                        §?c§ = 4;
                        loop3:
                        while(!(_loc1_ && §0p§))
                        {
                           §[!w§ = 0;
                           loop4:
                           while(true)
                           {
                              §"!<§ = 0;
                              loop5:
                              while(!_loc1_)
                              {
                                 while(true)
                                 {
                                    §;Z§ = 0;
                                    if(!(_loc1_ && _loc2_))
                                    {
                                       continue loop4;
                                    }
                                    continue loop5;
                                 }
                                 return;
                              }
                              continue loop3;
                           }
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr59);
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
         if(!_loc5_)
         {
            this.§"!y§ = new Vector.<Number>(12,true);
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§+!F§ = new ByteArray();
                  loop2:
                  while(!_loc5_)
                  {
                     while(true)
                     {
                        this.§+!F§.endian = Endian.LITTLE_ENDIAN;
                        while(_loc4_ || param1)
                        {
                           this.§+!F§.length = param1 * §1!0§ * §?c§;
                           if(_loc5_ && param1)
                           {
                              continue;
                           }
                           if(!_loc4_)
                           {
                              continue loop1;
                           }
                        }
                        continue loop2;
                     }
                     continue loop1;
                  }
                  continue loop0;
               }
            }
         }
         while(false)
         {
            §§goto(addr39);
         }
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= param1 * §1!0§)
            {
               if(!(_loc5_ && param1))
               {
                  this.§=!2§ = new Vector.<Number>(param1 * §0!Q§,true);
               }
               for(; _loc4_; while(_loc4_ || _loc3_)
               {
                  this.§<!h§ = param2;
                  do
                  {
                     this.§ !l§ = param1;
                  }
                  while(_loc5_ && this);
                  
                  if(!(_loc5_ && this))
                  {
                     return;
                  }
               })
               {
                  if(!(_loc5_ && this))
                  {
                     this.§ !U§ = new Vector.<Number>(param1 * §<h§,true);
                     continue;
                  }
               }
               continue;
            }
            this.§+!F§.writeFloat(0);
            _loc3_++;
         }
      }
      
      public function clone() : §0p§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§0p§ = new §0p§(0,this.§<!h§);
         if(!_loc3_)
         {
            _loc1_.§+!F§.length = this.§+!F§.length;
            loop0:
            while(true)
            {
               _loc1_.§+!F§.writeBytes(this.§+!F§);
               loop1:
               while(true)
               {
                  _loc1_.§=!2§ = this.§=!2§.concat();
                  while(true)
                  {
                     _loc1_.§=!2§.fixed = true;
                     loop4:
                     while(_loc2_ || this)
                     {
                        continue loop0;
                        while(true)
                        {
                           if(_loc2_ || this)
                           {
                              addr66:
                              if(_loc3_ && _loc1_)
                              {
                                 break;
                              }
                              continue loop1;
                           }
                           continue loop4;
                           addr80:
                           _loc1_.§ !l§ = this.§ !l§;
                           if(_loc2_ || _loc3_)
                           {
                              return _loc1_;
                           }
                        }
                        while(true)
                        {
                           _loc1_.§ !U§ = this.§ !U§.concat();
                           continue loop4;
                           §§goto(addr66);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr117);
      }
      
      public function copyTo(param1:§0p§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:* = 0;
         var _loc13_:* = NaN;
         var _loc9_:Vector.<Number> = param1.§ !U§;
         if(!_loc19_)
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
                           loop5:
                           while(!(_loc19_ && param2))
                           {
                              §§push(§<h§);
                              if(_loc18_ || param1)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc18_ || param3)
                                 {
                                    §§push(int(§§pop()));
                                    while(_loc18_)
                                    {
                                       _loc7_ = §§pop();
                                       §§push(0);
                                       if(!(_loc19_ && param3))
                                       {
                                          if(_loc19_ && param3)
                                          {
                                             continue loop5;
                                          }
                                          addr52:
                                          _loc8_ = §§pop();
                                          if(_loc18_ || this)
                                          {
                                             if(_loc18_ || param2)
                                             {
                                                addr67:
                                                if(false)
                                                {
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
                                                            if(_loc18_)
                                                            {
                                                               addr188:
                                                               while(true)
                                                               {
                                                                  §§push(_loc8_);
                                                                  break loop8;
                                                               }
                                                               loop12:
                                                               while(true)
                                                               {
                                                                  _loc8_++;
                                                                  if(!_loc19_)
                                                                  {
                                                                     §§goto(addr188);
                                                                  }
                                                                  addr177:
                                                                  while(true)
                                                                  {
                                                                     if(_loc18_ || param2)
                                                                     {
                                                                        continue loop12;
                                                                     }
                                                                     §§goto(addr188);
                                                                  }
                                                               }
                                                               addr188:
                                                               addr185:
                                                            }
                                                            var _loc10_:ByteArray = param1.§+!F§;
                                                            if(!(_loc19_ && param2))
                                                            {
                                                               §§push(this.§ !l§);
                                                               if(!_loc19_)
                                                               {
                                                                  §§push(§1!0§);
                                                                  loop14:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     loop15:
                                                                     while(true)
                                                                     {
                                                                        §§push(§?c§);
                                                                        if(_loc18_)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           while(true)
                                                                           {
                                                                              §§push(int(§§pop()));
                                                                              addr351:
                                                                              loop17:
                                                                              while(true)
                                                                              {
                                                                                 _loc6_ = §§pop();
                                                                                 addr352:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(param2);
                                                                                    if(_loc18_)
                                                                                    {
                                                                                       continue loop14;
                                                                                    }
                                                                                    addr324:
                                                                                    if(_loc19_ && param3)
                                                                                    {
                                                                                       continue loop17;
                                                                                    }
                                                                                    _loc7_ = §§pop();
                                                                                    if(_loc18_ || this)
                                                                                    {
                                                                                       if(_loc10_.length < _loc7_ + _loc6_)
                                                                                       {
                                                                                          while(_loc18_ || param3)
                                                                                          {
                                                                                             _loc10_.length = _loc7_ + _loc6_;
                                                                                             while(true)
                                                                                             {
                                                                                             }
                                                                                          }
                                                                                          continue;
                                                                                          addr270:
                                                                                       }
                                                                                       loop21:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc10_.position = _loc7_;
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc18_)
                                                                                             {
                                                                                                loop23:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc10_.writeBytes(this.§+!F§);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc18_)
                                                                                                      {
                                                                                                         §§push(param4);
                                                                                                         if(!_loc19_)
                                                                                                         {
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                            if(!(_loc19_ && param1))
                                                                                                            {
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  if(_loc19_ && param3)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§pop();
                                                                                                                  if(_loc18_ || param2)
                                                                                                                  {
                                                                                                                     if(!(_loc19_ && param1))
                                                                                                                     {
                                                                                                                        continue loop23;
                                                                                                                     }
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  addr365:
                                                                                                                  addr365:
                                                                                                                  _loc11_ = param1.§=!2§;
                                                                                                                  if(!(_loc19_ && this))
                                                                                                                  {
                                                                                                                     §§push(this.§ !l§);
                                                                                                                     if(!_loc19_)
                                                                                                                     {
                                                                                                                        addr468:
                                                                                                                        _loc6_ = int(§§pop() * §0!Q§);
                                                                                                                        if(!_loc19_)
                                                                                                                        {
                                                                                                                           addr415:
                                                                                                                           §§push(param2);
                                                                                                                           if(_loc18_ || this)
                                                                                                                           {
                                                                                                                              §§push(§0!Q§);
                                                                                                                              if(!_loc19_)
                                                                                                                              {
                                                                                                                                 if(_loc18_ || param2)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    if(_loc18_ || param3)
                                                                                                                                    {
                                                                                                                                       if(_loc18_)
                                                                                                                                       {
                                                                                                                                          §§push(int(§§pop()));
                                                                                                                                          if(_loc18_ || this)
                                                                                                                                          {
                                                                                                                                             addr452:
                                                                                                                                             _loc7_ = §§pop();
                                                                                                                                             if(!(_loc19_ && this))
                                                                                                                                             {
                                                                                                                                                §§push(param3);
                                                                                                                                                if(_loc18_)
                                                                                                                                                {
                                                                                                                                                   if(§§pop() == 1)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc19_)
                                                                                                                                                      {
                                                                                                                                                         §§push(0);
                                                                                                                                                         if(_loc18_)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc19_ && param3))
                                                                                                                                                            {
                                                                                                                                                               _loc8_ = §§pop();
                                                                                                                                                               if(_loc18_ || param2)
                                                                                                                                                               {
                                                                                                                                                                  if(false)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr415);
                                                                                                                                                                  }
                                                                                                                                                                  addr561:
                                                                                                                                                                  §§push(_loc8_);
                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     addr564:
                                                                                                                                                                     §§push(_loc6_);
                                                                                                                                                                     if(!_loc19_)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop() < §§pop())
                                                                                                                                                                        {
                                                                                                                                                                           var _loc14_:*;
                                                                                                                                                                           _loc11_[_loc14_ = _loc7_++] = this.§=!2§[_loc8_];
                                                                                                                                                                           if(!_loc19_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc18_ || param2)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc8_++;
                                                                                                                                                                                 if(!_loc19_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr561);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr775:
                                                                                                                                                                                 if(_loc8_ < this.§ !l§)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(this.§<!h§)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc18_ || param2)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr550:
                                                                                                                                                                                          _loc13_ = Number(this.§=!2§[_loc12_ + 3]);
                                                                                                                                                                                          if(_loc18_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(param3);
                                                                                                                                                                                             if(!(_loc19_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr506:
                                                                                                                                                                                                §§push(§§pop() / _loc13_);
                                                                                                                                                                                                if(_loc19_)
                                                                                                                                                                                                {
                                                                                                                                                                                                }
                                                                                                                                                                                                addr518:
                                                                                                                                                                                                _loc13_ = §§pop();
                                                                                                                                                                                                if(!_loc19_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc18_ || this)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr528:
                                                                                                                                                                                                      if(false)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr530:
                                                                                                                                                                                                         §§goto(addr775);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      _loc11_[_loc14_ = _loc7_++] = this.§=!2§[_loc12_++] * _loc13_;
                                                                                                                                                                                                      if(_loc18_ || param2)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         var _loc15_:*;
                                                                                                                                                                                                         _loc11_[_loc15_ = _loc7_++] = this.§=!2§[_loc12_++] * _loc13_;
                                                                                                                                                                                                         if(_loc18_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            var _loc16_:*;
                                                                                                                                                                                                            _loc11_[_loc16_ = _loc7_++] = this.§=!2§[_loc12_++] * _loc13_;
                                                                                                                                                                                                            if(_loc18_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               var _loc17_:*;
                                                                                                                                                                                                               _loc11_[_loc17_ = _loc7_++] = param3;
                                                                                                                                                                                                               if(!_loc19_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc18_ || this)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc19_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc18_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr679:
                                                                                                                                                                                                                           if(!_loc19_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr764:
                                                                                                                                                                                                                              _loc12_++;
                                                                                                                                                                                                                              if(_loc18_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr767:
                                                                                                                                                                                                                                 _loc8_++;
                                                                                                                                                                                                                                 if(_loc18_ || this)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr775);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr779);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr779:
                                                                                                                                                                                                                              return;
                                                                                                                                                                                                                              addr682:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr767);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr761:
                                                                                                                                                                                                                        if(_loc18_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr764);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr767);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr717:
                                                                                                                                                                                                                     _loc11_[_loc16_ = _loc7_++] = this.§=!2§[_loc12_++];
                                                                                                                                                                                                                     if(!(_loc19_ && this))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        _loc11_[_loc17_ = _loc7_++] = param3;
                                                                                                                                                                                                                        addr739:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr761);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr739);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr717);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr679);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr559:
                                                                                                                                                                                                   §§goto(addr530);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr682);
                                                                                                                                                                                             }
                                                                                                                                                                                             if(!(_loc19_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr518);
                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr550);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr764);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr767);
                                                                                                                                                                                    }
                                                                                                                                                                                    _loc11_[_loc14_ = _loc7_++] = this.§=!2§[_loc12_++];
                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr700:
                                                                                                                                                                                       _loc11_[_loc15_ = _loc7_++] = this.§=!2§[_loc12_++];
                                                                                                                                                                                       if(!_loc18_)
                                                                                                                                                                                       {
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr717);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr761);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr767);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr775);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr700);
                                                                                                                                                                        }
                                                                                                                                                                        if(!(_loc19_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           addr575:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr767);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr775);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr468);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr775);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr528);
                                                                                                                                                   }
                                                                                                                                                   §§push(0);
                                                                                                                                                   if(!_loc19_)
                                                                                                                                                   {
                                                                                                                                                      _loc12_ = §§pop();
                                                                                                                                                      if(!(_loc19_ && param1))
                                                                                                                                                      {
                                                                                                                                                         §§push(0);
                                                                                                                                                         if(_loc18_)
                                                                                                                                                         {
                                                                                                                                                            _loc8_ = §§pop();
                                                                                                                                                            §§goto(addr559);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr775);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr767);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr775);
                                                                                                                                                }
                                                                                                                                                §§goto(addr506);
                                                                                                                                             }
                                                                                                                                             §§goto(addr764);
                                                                                                                                          }
                                                                                                                                          §§goto(addr564);
                                                                                                                                       }
                                                                                                                                       §§goto(addr468);
                                                                                                                                    }
                                                                                                                                    §§goto(addr506);
                                                                                                                                 }
                                                                                                                                 §§goto(addr468);
                                                                                                                              }
                                                                                                                              §§goto(addr775);
                                                                                                                           }
                                                                                                                           §§goto(addr452);
                                                                                                                        }
                                                                                                                        §§goto(addr550);
                                                                                                                     }
                                                                                                                     §§goto(addr564);
                                                                                                                  }
                                                                                                                  §§goto(addr575);
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            addr363:
                                                                                                            §§push(!§§pop());
                                                                                                            break;
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      continue loop21;
                                                                                                   }
                                                                                                   addr364:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      §§goto(addr365);
                                                                                                   }
                                                                                                   §§goto(addr767);
                                                                                                }
                                                                                                continue;
                                                                                                addr248:
                                                                                             }
                                                                                             §§goto(addr270);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr365);
                                                                                 }
                                                                              }
                                                                              addr309:
                                                                              if(!(_loc18_ || param2))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(_loc19_ && this)
                                                                              {
                                                                                 continue loop15;
                                                                              }
                                                                              §§goto(addr324);
                                                                              §§push(int(§§pop()));
                                                                           }
                                                                        }
                                                                        break;
                                                                     }
                                                                     addr355:
                                                                     §§push(§§pop() == §§pop());
                                                                     if(_loc18_ || param2)
                                                                     {
                                                                        §§goto(addr363);
                                                                     }
                                                                     §§goto(addr364);
                                                                  }
                                                               }
                                                               §§goto(addr351);
                                                            }
                                                            §§goto(addr352);
                                                         }
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         if(!_loc19_)
                                                         {
                                                            param5.transformVectors(this.§ !U§,this.§"!y§);
                                                            while(!_loc19_)
                                                            {
                                                               §§goto(addr82);
                                                               §§goto(addr52);
                                                            }
                                                            continue loop4;
                                                            addr80:
                                                         }
                                                         addr112:
                                                         while(true)
                                                         {
                                                            continue loop8;
                                                         }
                                                      }
                                                      §§goto(addr67);
                                                      §§goto(addr160);
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(_loc6_);
                                                      addr190:
                                                      while(true)
                                                      {
                                                         if(§§pop() < §§pop())
                                                         {
                                                            _loc9_[_loc14_ = _loc7_++] = this.§ !U§[_loc8_];
                                                            §§goto(addr177);
                                                         }
                                                         §§goto(addr160);
                                                      }
                                                   }
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
                                                            if(!_loc19_)
                                                            {
                                                               break;
                                                            }
                                                            §§goto(addr188);
                                                         }
                                                         else
                                                         {
                                                            _loc9_[_loc14_ = _loc7_++] = this.§"!y§[_loc8_];
                                                            if(!_loc19_)
                                                            {
                                                               if(!_loc19_)
                                                               {
                                                                  _loc8_++;
                                                                  if(_loc18_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§goto(addr188);
                                                               }
                                                               §§goto(addr185);
                                                            }
                                                         }
                                                         §§goto(addr177);
                                                      }
                                                      §§goto(addr190);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr160);
                                                   }
                                                }
                                                §§goto(addr160);
                                             }
                                             §§goto(addr72);
                                          }
                                          §§goto(addr80);
                                          continue loop5;
                                       }
                                    }
                                    continue loop0;
                                 }
                                 continue loop2;
                              }
                              continue loop1;
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr112);
      }
      
      public function append(param1:§0p§) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:int = this.§+!F§.length;
         if(_loc10_ || this)
         {
            this.§+!F§.length += param1.§+!F§.length;
         }
         while(true)
         {
            this.§+!F§.position = _loc2_;
            loop1:
            while(true)
            {
               addr44:
               addr77:
               while(true)
               {
                  this.§+!F§.writeBytes(param1.§+!F§);
                  continue loop1;
               }
               var _loc3_:Vector.<Number> = param1.§=!2§;
               addr140:
               var _loc4_:int = _loc3_.length;
               var _loc5_:int = 0;
               addr119:
               if(_loc5_ >= _loc4_)
               {
                  if(_loc10_)
                  {
                     if(!(_loc9_ && _loc3_))
                     {
                        this.§=!2§.fixed = true;
                        this.§ !U§.fixed = false;
                        addr136:
                        if(!(_loc9_ && _loc2_))
                        {
                           if(_loc10_ || this)
                           {
                              if(false)
                              {
                                 §§goto(addr119);
                              }
                              var _loc6_:Vector.<Number>;
                              var _loc7_:int = (_loc6_ = param1.§ !U§).length;
                              var _loc8_:int = 0;
                              if(_loc10_)
                              {
                                 addr199:
                                 if(_loc8_ >= _loc7_)
                                 {
                                    addr203:
                                    if(_loc10_ || _loc2_)
                                    {
                                       this.§ !U§.fixed = true;
                                       addr214:
                                       if(!_loc9_)
                                       {
                                          this.§ !l§ += param1.§<`§;
                                          if(_loc10_ || _loc3_)
                                          {
                                             if(!(_loc10_ || param1))
                                             {
                                                §§goto(addr203);
                                             }
                                             return;
                                             addr198:
                                          }
                                          §§goto(addr214);
                                       }
                                       addr219:
                                       §§goto(addr199);
                                    }
                                    _loc8_++;
                                    §§goto(addr219);
                                    addr228:
                                 }
                                 this.§ !U§.push(_loc6_[_loc8_]);
                                 §§goto(addr228);
                              }
                              §§goto(addr198);
                           }
                           addr139:
                           §§goto(addr119);
                        }
                        addr136:
                        §§goto(addr136);
                     }
                     _loc5_++;
                     §§goto(addr139);
                     addr148:
                  }
                  §§goto(addr136);
               }
               this.§=!2§.push(_loc3_[_loc5_]);
               §§goto(addr148);
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
            §§push(int(§§pop() * §<h§));
         }
         var _loc5_:* = §§pop();
         var _loc6_:*;
         this.§ !U§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§ !U§[_loc7_ = _loc5_++] = param3;
         if(_loc9_ || param1)
         {
            this.§ !U§[_loc5_] = param4;
         }
      }
      
      public function §^L§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(param1);
         if(_loc6_)
         {
            §§push(int(§§pop() * §<h§));
         }
         var _loc4_:* = §§pop();
         var _loc5_:*;
         this.§ !U§[_loc5_ = _loc4_++] = param2;
         if(!(_loc7_ && param3))
         {
            this.§ !U§[_loc4_] = param3;
         }
      }
      
      public function §"!S§(param1:int, param2:Vector3D) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(!_loc4_)
         {
            §§push(int(§§pop() * §<h§));
         }
         var _loc3_:* = §§pop();
         if(!_loc4_)
         {
            param2.x = this.§ !U§[_loc3_++];
            do
            {
               param2.y = this.§ !U§[_loc3_++];
               do
               {
                  param2.z = this.§ !U§[_loc3_];
               }
               while(!(_loc5_ || _loc3_));
               
            }
            while(_loc4_);
            
         }
      }
      
      public function §1f§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!(_loc9_ && param1))
         {
            if(this.§<!h§)
            {
               addr26:
               §§push(param3);
               if(_loc8_ || param3)
               {
                  §§push(Number(§§pop()));
                  if(_loc9_)
                  {
                  }
                  addr48:
                  var _loc4_:*;
                  §§push(_loc4_ = §§pop());
                  if(_loc8_)
                  {
                     §§push(§§pop() / 255);
                     if(_loc8_ || param2)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc9_)
                        {
                           addr74:
                           _loc4_ = §§pop();
                           §§push(§ z§.§6!q§(param2) * _loc4_);
                           if(_loc9_)
                           {
                           }
                           §§goto(addr83);
                        }
                        §§push(Number(§§pop()));
                     }
                     addr83:
                     var _loc5_:* = §§pop();
                     §§push(§ z§.§"5§(param2) * _loc4_);
                     if(!(_loc9_ && param3))
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc6_:* = §§pop();
                     §§push(§ z§.§9!,§(param2) * _loc4_);
                     if(_loc8_)
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc7_:* = §§pop();
                     if(!_loc9_)
                     {
                        this.§<!$§(param1,1,_loc5_,_loc6_,_loc7_,param3);
                     }
                     return;
                  }
                  §§goto(addr74);
               }
               addr47:
               §§push(Number(§§pop()));
            }
            else
            {
               §§push(Number(1));
               if(_loc8_ || this)
               {
                  §§goto(addr47);
               }
            }
            §§goto(addr48);
         }
         §§goto(addr26);
      }
      
      private function §<!$§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         §§push(param1);
         if(!_loc13_)
         {
            §§push(int(§§pop() * §0!Q§));
         }
         var _loc7_:* = §§pop();
         §§push(param2);
         if(!(_loc13_ && param3))
         {
            §§push(int(§§pop() - 1));
         }
         var _loc8_:* = §§pop();
         while(true)
         {
            §§push(_loc8_);
            while(true)
            {
               if(§§pop() >= 0)
               {
                  var _loc9_:*;
                  this.§=!2§[_loc9_ = _loc7_++] = param3;
                  if(!(_loc13_ && param1))
                  {
                     var _loc10_:*;
                     this.§=!2§[_loc10_ = _loc7_++] = param4;
                     if(_loc14_ || param2)
                     {
                        var _loc11_:*;
                        this.§=!2§[_loc11_ = _loc7_++] = param5;
                        if(_loc14_ || param1)
                        {
                           var _loc12_:*;
                           this.§=!2§[_loc12_ = _loc7_++] = param6;
                        }
                     }
                  }
                  if(_loc13_)
                  {
                     break;
                  }
                  §§push(_loc8_);
                  if(_loc13_)
                  {
                     continue;
                  }
                  §§push(§§pop() - 1);
                  if(!(_loc14_ || param2))
                  {
                     continue;
                  }
                  _loc8_ = §§pop();
                  if(!_loc13_)
                  {
                     break;
                  }
               }
               return;
            }
         }
      }
      
      private function §+<§(param1:int, param2:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(param1);
         if(_loc8_)
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
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         §§push(param1);
         if(_loc7_ || _loc3_)
         {
            §§push(int(§§pop() * §0!Q§));
         }
         var _loc2_:* = §§pop();
         if(!(_loc8_ && _loc2_))
         {
            if(this.§<!h§)
            {
               addr44:
               §§push(Number(this.§=!2§[_loc2_ + 3]));
               if(_loc7_ || _loc2_)
               {
               }
               addr68:
               §§push(Number(§§pop()));
            }
            else
            {
               §§push(Number(1));
               if(_loc7_ || _loc3_)
               {
                  §§goto(addr68);
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
                     if(_loc7_ || _loc3_)
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
                              while(true)
                              {
                                 §§push(this.§=!2§[_loc2_] * _loc3_);
                                 loop5:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    loop6:
                                    while(true)
                                    {
                                       _loc4_ = §§pop();
                                       loop7:
                                       while(!(_loc8_ && _loc2_))
                                       {
                                          loop8:
                                          while(true)
                                          {
                                             §§push(this.§=!2§[_loc2_ + 1] * _loc3_);
                                             if(!(_loc8_ && param1))
                                             {
                                                if(_loc8_ && _loc3_)
                                                {
                                                   continue loop0;
                                                }
                                                §§goto(addr162);
                                                §§push(Number(§§pop()));
                                                continue loop0;
                                             }
                                             addr162:
                                             loop9:
                                             while(!_loc8_)
                                             {
                                                _loc5_ = §§pop();
                                                while(_loc7_ || _loc3_)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      break loop0;
                                                   }
                                                   continue loop9;
                                                   _loc6_ = §§pop();
                                                   §§push(this.§=!2§[_loc2_ + 2] * _loc3_);
                                                   if(!(_loc8_ && param1))
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                   if(_loc8_)
                                                   {
                                                      continue loop9;
                                                   }
                                                   if(_loc8_)
                                                   {
                                                      continue loop5;
                                                   }
                                                   if(_loc8_ && param1)
                                                   {
                                                      continue loop3;
                                                   }
                                                   if(_loc8_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   §§goto(addr122);
                                                   if(!(_loc8_ && param1))
                                                   {
                                                      if(_loc7_ || param1)
                                                      {
                                                         break loop8;
                                                      }
                                                      continue loop4;
                                                   }
                                                }
                                                continue loop7;
                                             }
                                             continue loop6;
                                          }
                                          return § z§.§0d§(_loc4_,_loc5_,_loc6_);
                                       }
                                       continue loop1;
                                    }
                                 }
                              }
                           }
                        }
                     }
                     break;
                  }
                  return §§pop();
               }
               §§goto(addr220);
               §§push(0);
            }
            §§goto(addr201);
         }
         §§goto(addr44);
      }
      
      public function §]f§(param1:int, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = 0;
         if(_loc5_)
         {
            §§push(param2);
            if(!_loc4_)
            {
               if(§§pop() < 0.001)
               {
                  if(_loc5_)
                  {
                     addr115:
                     §§push(0.001);
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        addr116:
                        while(true)
                        {
                           param2 = §§pop();
                        }
                     }
                     addr115:
                  }
                  while(true)
                  {
                  }
                  addr117:
               }
               loop1:
               while(true)
               {
                  if(!this.§<!h§)
                  {
                     §§push(param1);
                     if(!_loc4_)
                     {
                        §§push(§§pop() * §0!Q§);
                        if(!_loc4_)
                        {
                           if(!_loc4_)
                           {
                              addr66:
                              §§push(§§pop() + 3);
                              if(!_loc4_)
                              {
                                 addr69:
                                 _loc3_ = §§pop();
                                 while(true)
                                 {
                                    if(!(_loc4_ && this))
                                    {
                                       continue;
                                    }
                                    addr92:
                                    if(_loc5_ || _loc3_)
                                    {
                                       break loop1;
                                    }
                                    continue loop1;
                                 }
                                 §§goto(addr22);
                                 addr106:
                              }
                              else
                              {
                                 §§goto(addr115);
                              }
                           }
                           §§goto(addr116);
                        }
                        §§goto(addr66);
                     }
                     §§goto(addr69);
                  }
                  §§goto(addr92);
               }
               this.§1f§(param1,this.§6!b§(param1),param2);
               §§goto(addr106);
            }
            §§goto(addr115);
         }
         §§goto(addr77);
      }
      
      public function §<^§(param1:int) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         if(_loc3_)
         {
            §§push(§§pop() * §0!Q§);
            if(_loc3_ || _loc2_)
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
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1);
         if(!(_loc5_ && param2))
         {
            §§push(int(§§pop() * §1!0§));
         }
         var _loc4_:* = §§pop();
         if(_loc6_)
         {
            this.§+!F§.position = _loc4_ * §?c§;
            while(true)
            {
               this.§+!F§.writeFloat(param2);
               loop1:
               while(_loc6_ || param2)
               {
                  while(true)
                  {
                     this.§+!F§.writeFloat(param3);
                     if(_loc6_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr76);
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(!_loc5_)
         {
            §§push(int(§§pop() * §1!0§));
         }
         var _loc3_:* = §§pop();
         if(!_loc5_)
         {
            this.§+!F§.position = _loc3_ * §?c§;
         }
         do
         {
            param2.x = this.§+!F§.readFloat();
            do
            {
               param2.y = this.§+!F§.readFloat();
            }
            while(_loc5_ && _loc3_);
            
         }
         while(_loc5_ && param2);
         
      }
      
      public function §=c§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         §§push(param1);
         if(!(_loc8_ && param1))
         {
            §§push(int(§§pop() * §<h§));
         }
         var _loc5_:* = §§pop();
         var _loc6_:*;
         this.§ !U§[_loc6_ = _loc5_++] = this.§ !U§[_loc6_] + param2;
         var _loc7_:*;
         this.§ !U§[_loc7_ = _loc5_++] = this.§ !U§[_loc7_] + param3;
         if(_loc9_ || this)
         {
            this.§ !U§[_loc5_] += param4;
         }
      }
      
      public function §-!N§(param1:int, param2:Matrix3D) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(_loc5_ || param1)
         {
            §§push(int(§§pop() * §<h§));
         }
         var _loc3_:* = §§pop();
         if(!_loc4_)
         {
            this.§"!y§[0] = this.§ !U§[_loc3_];
            while(true)
            {
               this.§"!y§[1] = this.§ !U§[_loc3_ + 1];
            }
            addr147:
         }
         loop1:
         while(true)
         {
            this.§"!y§[2] = this.§ !U§[_loc3_ + 2];
            while(true)
            {
               param2.transformVectors(this.§"!y§,this.§"!y§);
               loop3:
               while(!_loc4_)
               {
                  this.§ !U§[_loc3_] = this.§"!y§[0];
                  while(true)
                  {
                     if(_loc5_ || this)
                     {
                        if(_loc4_)
                        {
                           break;
                        }
                        this.§ !U§[_loc3_ + 1] = this.§"!y§[1];
                        for(; _loc5_; this.§ !U§[_loc3_ + 2] = this.§"!y§[2],if(!_loc4_)
                        {
                           return;
                        })
                        {
                           if(!_loc4_)
                           {
                              continue;
                           }
                           §§goto(addr147);
                        }
                        continue;
                     }
                     continue loop3;
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §4!^§(param1:uint, param2:Number = 1.0) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || this)
         {
            §§push(param2);
            if(!_loc8_)
            {
               if(§§pop() < 0.001)
               {
                  if(_loc7_ || this)
                  {
                     addr35:
                     §§push(0.001);
                     if(!(_loc8_ && this))
                     {
                        §§push(Number(§§pop()));
                        if(!_loc8_)
                        {
                           addr46:
                           param2 = §§pop();
                           if(!_loc8_)
                           {
                              addr49:
                              if(this.§<!h§)
                              {
                                 addr52:
                                 §§push(param2);
                                 if(_loc7_ || param2)
                                 {
                                    §§push(Number(§§pop()));
                                    if(!_loc8_)
                                    {
                                       addr83:
                                       §§push(Number(§§pop()));
                                       addr63:
                                    }
                                    §§goto(addr83);
                                 }
                              }
                              else
                              {
                                 §§push(Number(1));
                                 if(!(_loc8_ && _loc3_))
                                 {
                                    §§goto(addr83);
                                 }
                              }
                              var _loc3_:* = §§pop();
                              if(!(_loc8_ && this))
                              {
                                 §§push(_loc3_);
                                 if(!_loc8_)
                                 {
                                    §§push(§§pop() / 255);
                                    if(!(_loc8_ && this))
                                    {
                                       §§push(Number(§§pop()));
                                       if(!(_loc8_ && param2))
                                       {
                                          _loc3_ = §§pop();
                                          addr113:
                                          §§push(§ z§.§6!q§(param1) * _loc3_);
                                          if(_loc7_ || param2)
                                          {
                                          }
                                       }
                                       §§goto(addr126);
                                    }
                                    §§push(Number(§§pop()));
                                 }
                                 addr126:
                                 var _loc4_:* = §§pop();
                                 §§push(§ z§.§"5§(param1) * _loc3_);
                                 if(!_loc8_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc5_:* = §§pop();
                                 §§push(§ z§.§9!,§(param1) * _loc3_);
                                 if(_loc7_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc6_:* = §§pop();
                                 if(!_loc8_)
                                 {
                                    this.§<!$§(0,this.§ !l§,_loc4_,_loc5_,_loc6_,param2);
                                 }
                                 return;
                              }
                              §§goto(addr113);
                           }
                           §§goto(addr52);
                        }
                        §§goto(addr83);
                     }
                     §§goto(addr63);
                  }
               }
               §§goto(addr49);
            }
            §§goto(addr46);
         }
         §§goto(addr35);
      }
      
      public function §5c§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         if(!(_loc13_ && param2))
         {
            §§push(param6);
            if(!_loc13_)
            {
               if(§§pop() < 0.001)
               {
                  if(_loc14_)
                  {
                     §§push(0.001);
                     if(!_loc13_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc14_ || this)
                        {
                        }
                        addr49:
                        var _loc7_:int = §§pop();
                        var _loc8_:int = 0;
                        §§goto(addr48);
                     }
                     param6 = §§pop();
                     addr43:
                     §§push(param1);
                     if(!_loc13_)
                     {
                        addr48:
                        while(_loc8_ < param2)
                        {
                           var _loc9_:*;
                           this.§=!2§[_loc9_ = _loc7_++] = param3;
                           if(!(_loc13_ && param3))
                           {
                              var _loc10_:*;
                              this.§=!2§[_loc10_ = _loc7_++] = param4;
                              if(!_loc13_)
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
                           if(_loc14_)
                           {
                              _loc8_++;
                              if(!_loc14_)
                              {
                                 break;
                              }
                           }
                        }
                        return;
                        §§push(§§pop() * §0!Q§);
                     }
                     §§goto(addr49);
                  }
               }
               §§goto(addr43);
            }
            §§goto(addr49);
         }
         §§goto(addr43);
      }
      
      public function §;Q§(param1:int, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = NaN;
         if(_loc5_)
         {
            §§push(param2);
            if(_loc5_)
            {
               if(§§pop() < 0.001)
               {
                  if(!(_loc6_ && this))
                  {
                     §§push(0.001);
                     if(_loc5_ || param2)
                     {
                        addr40:
                        §§push(Number(§§pop()));
                        if(!(_loc6_ && param1))
                        {
                           param2 = §§pop();
                           if(_loc5_)
                           {
                              addr51:
                              §§push(param2);
                              if(!_loc6_)
                              {
                                 if(§§pop() == 1)
                                 {
                                    if(_loc5_)
                                    {
                                       return;
                                    }
                                    addr59:
                                    §§push(param1);
                                    if(!(_loc6_ && this))
                                    {
                                       addr69:
                                       §§push(int(§§pop() * §0!Q§));
                                    }
                                    var _loc3_:* = §§pop();
                                    if(_loc5_)
                                    {
                                       if(!this.§<!h§)
                                       {
                                          this.§=!2§[_loc3_ + 3] *= param2;
                                          if(!(_loc5_ || param2))
                                          {
                                             loop0:
                                             while(true)
                                             {
                                                if(!_loc6_)
                                                {
                                                   if(!(_loc6_ && _loc3_))
                                                   {
                                                      break;
                                                   }
                                                   loop1:
                                                   while(true)
                                                   {
                                                      if(!(_loc6_ && _loc3_))
                                                      {
                                                         this.§=!2§[_loc3_] *= _loc4_;
                                                         loop2:
                                                         while(true)
                                                         {
                                                            this.§=!2§[_loc3_ + 1] *= _loc4_;
                                                            loop3:
                                                            while(true)
                                                            {
                                                               if(!(_loc6_ && this))
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     break;
                                                                     addr146:
                                                                  }
                                                                  this.§=!2§[_loc3_ + 2] *= _loc4_;
                                                                  while(_loc6_)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  continue loop0;
                                                               }
                                                               continue loop2;
                                                            }
                                                            loop4:
                                                            while(true)
                                                            {
                                                               §§push(param2);
                                                               if(_loc6_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(§§pop() / _loc4_);
                                                               if(_loc6_)
                                                               {
                                                                  break;
                                                               }
                                                               if(_loc5_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  break;
                                                               }
                                                               addr226:
                                                               while(true)
                                                               {
                                                                  _loc4_ = §§pop();
                                                                  continue loop4;
                                                               }
                                                            }
                                                            continue loop1;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                         }
                                                         addr219:
                                                      }
                                                      §§goto(addr226);
                                                   }
                                                }
                                                §§goto(addr146);
                                             }
                                          }
                                          return;
                                       }
                                    }
                                    §§goto(addr219);
                                 }
                                 §§goto(addr59);
                              }
                           }
                           §§goto(addr59);
                        }
                     }
                     §§goto(addr69);
                  }
                  §§goto(addr59);
               }
               §§goto(addr51);
            }
            §§goto(addr40);
         }
         §§goto(addr59);
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         if(_loc9_)
         {
            §§push(param1);
            loop0:
            while(§§pop() != this.§<!h§)
            {
               loop1:
               while(true)
               {
                  §§push(param2);
                  if(!_loc8_)
                  {
                     if(§§pop())
                     {
                        if(_loc9_ || _loc3_)
                        {
                           §§push(this.§ !l§);
                           if(!_loc8_)
                           {
                              §§push(int(§§pop() * §0!Q§));
                           }
                           loop2:
                           while(true)
                           {
                              _loc3_ = §§pop();
                              addr268:
                              while(true)
                              {
                                 §§push(0);
                                 if(_loc9_)
                                 {
                                    _loc4_ = §§pop();
                                    if(!(_loc8_ && param2))
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 continue loop2;
                              }
                              if(_loc9_)
                              {
                                 if(!(_loc8_ && param1))
                                 {
                                    while(true)
                                    {
                                       §§push(_loc4_);
                                       if(_loc9_)
                                       {
                                          if(_loc9_)
                                          {
                                             if(§§pop() >= _loc3_)
                                             {
                                                if(_loc9_ || param1)
                                                {
                                                   if(_loc9_ || param2)
                                                   {
                                                      break loop1;
                                                   }
                                                   while(true)
                                                   {
                                                      if(!(_loc8_ && param2))
                                                      {
                                                         if(_loc9_ || this)
                                                         {
                                                            break;
                                                         }
                                                         loop6:
                                                         while(true)
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               §§push(_loc6_);
                                                               if(!(_loc8_ && _loc3_))
                                                               {
                                                                  if(_loc9_)
                                                                  {
                                                                     if(§§pop() == 0)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(!_loc8_)
                                                                     {
                                                                        §§push(_loc7_);
                                                                        if(!(_loc8_ && this))
                                                                        {
                                                                           addr118:
                                                                           if(_loc9_ || param2)
                                                                           {
                                                                              §§push(§§pop() / _loc6_);
                                                                              if(!_loc8_)
                                                                              {
                                                                                 addr139:
                                                                                 if(_loc9_ || param1)
                                                                                 {
                                                                                    addr147:
                                                                                    §§push(Number(§§pop()));
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          _loc7_ = §§pop();
                                                                                          addr152:
                                                                                          while(true)
                                                                                          {
                                                                                             this.§+<§(_loc4_,_loc7_);
                                                                                             addr92:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   break loop6;
                                                                                                }
                                                                                                loop20:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§<!h§);
                                                                                                   loop11:
                                                                                                   while(!§§pop())
                                                                                                   {
                                                                                                      §§push(1);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         loop13:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc8_ && param1))
                                                                                                            {
                                                                                                               loop9:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  addr205:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc6_ = §§pop();
                                                                                                                     addr206:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(param1);
                                                                                                                        if(_loc8_)
                                                                                                                        {
                                                                                                                           continue loop11;
                                                                                                                        }
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!_loc9_)
                                                                                                                              {
                                                                                                                                 break loop11;
                                                                                                                              }
                                                                                                                              §§push(_loc5_);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 if(!_loc8_)
                                                                                                                                 {
                                                                                                                                    if(!(_loc8_ && param1))
                                                                                                                                    {
                                                                                                                                       addr174:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          addr175:
                                                                                                                                          while(!(_loc9_ || this))
                                                                                                                                          {
                                                                                                                                             continue loop13;
                                                                                                                                          }
                                                                                                                                          continue loop6;
                                                                                                                                       }
                                                                                                                                       addr174:
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc9_)
                                                                                                                                          {
                                                                                                                                             continue loop9;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr192:
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr174);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr158:
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§push(1);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§goto(addr174);
                                                                                                                           }
                                                                                                                           addr173:
                                                                                                                        }
                                                                                                                        §§goto(addr174);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr213:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                               addr213:
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc5_ = §§pop();
                                                                                                               continue loop20;
                                                                                                               §§goto(addr213);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr190:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc5_);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr152:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr192);
                                                                                          §§goto(addr190);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr175);
                                                                                 }
                                                                                 §§goto(addr161);
                                                                              }
                                                                              §§goto(addr147);
                                                                           }
                                                                           §§goto(addr174);
                                                                        }
                                                                        §§goto(addr139);
                                                                     }
                                                                     §§goto(addr152);
                                                                  }
                                                                  §§goto(addr205);
                                                               }
                                                               §§goto(addr118);
                                                            }
                                                            §§goto(addr206);
                                                         }
                                                         continue;
                                                      }
                                                      §§goto(addr92);
                                                   }
                                                   continue;
                                                }
                                                addr60:
                                                if(!(_loc8_ && _loc3_))
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr158);
                                                }
                                                §§goto(addr152);
                                             }
                                             else
                                             {
                                                §§push(this.§<^§(0));
                                             }
                                             §§goto(addr213);
                                          }
                                          §§goto(addr196);
                                       }
                                       §§goto(addr173);
                                    }
                                    return;
                                    addr247:
                                 }
                                 break loop0;
                              }
                              continue loop1;
                           }
                        }
                        §§goto(addr268);
                     }
                     break;
                  }
                  continue loop0;
               }
               this.§<!h§ = param1;
               §§goto(addr60);
            }
            return;
         }
         §§goto(addr247);
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
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         var _loc4_:* = 0;
         if(_loc6_)
         {
            §§push(param1);
            while(true)
            {
               §§push(§1!0§);
               loop1:
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc6_)
                  {
                     §§push(§§pop() * §?c§);
                     if(_loc6_ || this)
                     {
                        addr520:
                        §§push(§§pop() - this.§+!F§.length);
                     }
                     §§push(int(§§pop()));
                     while(true)
                     {
                        _loc2_ = §§pop();
                        while(true)
                        {
                           §§push(int(this.§+!F§.length));
                           loop4:
                           while(true)
                           {
                              _loc4_ = §§pop();
                              addr505:
                              while(true)
                              {
                                 this.§+!F§.length += _loc2_;
                                 addr498:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    continue loop4;
                                 }
                              }
                           }
                        }
                        if(_loc5_ && _loc2_)
                        {
                           continue;
                        }
                        §§push(0);
                        if(!(_loc6_ || _loc2_))
                        {
                           continue loop1;
                        }
                        if(§§pop() > §§pop())
                        {
                           if(_loc6_)
                           {
                              this.§+!F§.position = _loc4_;
                           }
                           §§goto(addr469);
                        }
                        §§goto(addr397);
                     }
                  }
                  §§goto(addr520);
               }
            }
         }
         §§goto(addr505);
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
