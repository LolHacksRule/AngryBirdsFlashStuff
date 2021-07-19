package §;! §
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §?!T§
   {
      
      public static const §`2§:int = 4;
      
      public static const §@t§:int = 2;
      
      public static const §!!6§:int = 3;
      
      public static const §?!W§:int = 4;
      
      public static const §94§:int = 0;
      
      public static const §&!E§:int = 0;
      
      public static const §0a§:int = 0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §`2§ = 4;
         }
         while(true)
         {
            §@t§ = 2;
            loop1:
            for(; _loc1_; if(_loc1_ || _loc1_)
            {
               return;
            })
            {
               §!!6§ = 3;
               loop2:
               while(true)
               {
                  §?!W§ = 4;
                  while(true)
                  {
                     §94§ = 0;
                     while(_loc1_)
                     {
                        §&!E§ = 0;
                        while(!_loc2_)
                        {
                           if(_loc1_)
                           {
                              §0a§ = 0;
                              if(!(_loc2_ && _loc2_))
                              {
                                 continue loop1;
                              }
                              continue;
                              continue;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
      }
      
      private var §#s§:ByteArray;
      
      private var §>9§:Vector.<Number>;
      
      private var §71§:Vector.<Number>;
      
      private var §'!P§:Boolean;
      
      private var §&>§:int;
      
      private var §9<§:Vector.<Number>;
      
      public function §?!T§(param1:int, param2:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§9<§ = new Vector.<Number>(12,true);
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  this.§#s§ = new ByteArray();
                  addr46:
                  while(!(_loc5_ && param2))
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            this.§#s§.length = param1 * §@t§ * §?!W§;
            if(!_loc5_)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr32);
            }
            §§goto(addr38);
         }
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= param1 * §@t§)
            {
               loop7:
               while(!_loc5_)
               {
                  this.§>9§ = new Vector.<Number>(param1 * §`2§,true);
                  while(true)
                  {
                     this.§71§ = new Vector.<Number>(param1 * §!!6§,true);
                     loop9:
                     while(!(_loc5_ && this))
                     {
                        this.§'!P§ = param2;
                        while(true)
                        {
                           if(_loc4_ || param2)
                           {
                              if(!_loc4_)
                              {
                                 break;
                              }
                              continue;
                           }
                           continue loop9;
                        }
                        continue loop7;
                     }
                  }
               }
               loop11:
               while(_loc5_ && _loc3_)
               {
                  while(true)
                  {
                     _loc3_++;
                     continue loop11;
                  }
               }
               continue;
            }
            this.§#s§.writeFloat(0);
            §§goto(addr181);
         }
      }
      
      public function clone() : §?!T§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§?!T§ = new §?!T§(0,this.§'!P§);
         if(!(_loc3_ && _loc1_))
         {
            _loc1_.§#s§.length = this.§#s§.length;
         }
         loop0:
         while(true)
         {
            _loc1_.§#s§.writeBytes(this.§#s§);
            while(true)
            {
               _loc1_.§>9§ = this.§>9§.concat();
               loop2:
               while(true)
               {
                  _loc1_.§>9§.fixed = true;
                  loop3:
                  while(true)
                  {
                     _loc1_.§71§ = this.§71§.concat();
                     while(true)
                     {
                        _loc1_.§71§.fixed = true;
                        while(_loc2_)
                        {
                           continue loop3;
                           _loc1_.§&>§ = this.§&>§;
                           if(_loc2_)
                           {
                              continue loop2;
                           }
                        }
                     }
                  }
               }
               if(_loc2_ || _loc1_)
               {
                  continue loop0;
               }
            }
         }
      }
      
      public function copyTo(param1:§?!T§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:* = 0;
         var _loc13_:* = NaN;
         var _loc9_:Vector.<Number> = param1.§71§;
         if(!(_loc18_ && param1))
         {
            §§push(this.§&>§);
            loop0:
            while(true)
            {
               §§push(§!!6§);
               addr112:
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  addr113:
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
                           if(_loc19_)
                           {
                              if(_loc18_ && param1)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           addr107:
                           loop5:
                           while(true)
                           {
                              _loc7_ = §§pop();
                              addr76:
                              §§push(0);
                              if(_loc18_)
                              {
                                 continue;
                              }
                              _loc8_ = §§pop();
                              if(!_loc18_)
                              {
                                 if(_loc19_)
                                 {
                                    addr51:
                                    if(_loc19_ || param3)
                                    {
                                       if(false)
                                       {
                                          loop7:
                                          while(true)
                                          {
                                             if(!param5)
                                             {
                                                §§push(0);
                                                if(!(_loc18_ && this))
                                                {
                                                   addr176:
                                                   _loc8_ = §§pop();
                                                   if(!_loc19_)
                                                   {
                                                   }
                                                   loop10:
                                                   while(true)
                                                   {
                                                      §§push(_loc8_);
                                                      break loop7;
                                                      addr201:
                                                      while(true)
                                                      {
                                                         _loc8_++;
                                                         if(!(_loc18_ && this))
                                                         {
                                                            continue loop10;
                                                         }
                                                         addr212:
                                                         var _loc10_:ByteArray = param1.§#s§;
                                                         if(_loc19_)
                                                         {
                                                            §§push(this.§&>§);
                                                            loop12:
                                                            while(true)
                                                            {
                                                               §§push(§@t§);
                                                               loop13:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!_loc18_)
                                                                  {
                                                                     §§push(§?!W§);
                                                                     if(_loc19_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        loop14:
                                                                        while(true)
                                                                        {
                                                                           §§push(int(§§pop()));
                                                                           while(true)
                                                                           {
                                                                              _loc6_ = §§pop();
                                                                              loop16:
                                                                              while(true)
                                                                              {
                                                                                 §§push(param2);
                                                                                 if(_loc19_ || param3)
                                                                                 {
                                                                                    §§push(§@t§);
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       continue loop13;
                                                                                    }
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc19_ || param2)
                                                                                    {
                                                                                       if(!_loc19_)
                                                                                       {
                                                                                          continue loop14;
                                                                                       }
                                                                                       §§push(§?!W§);
                                                                                       if(_loc19_ || param1)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc19_ || param3)
                                                                                          {
                                                                                          }
                                                                                          addr346:
                                                                                          §§push(§§pop() == 1);
                                                                                          if(_loc19_)
                                                                                          {
                                                                                             §§push(!§§pop());
                                                                                          }
                                                                                          if(§§pop())
                                                                                          {
                                                                                             addr351:
                                                                                             _loc11_ = param1.§>9§;
                                                                                             if(_loc19_ || param3)
                                                                                             {
                                                                                                §§push(this.§&>§);
                                                                                                if(!_loc18_)
                                                                                                {
                                                                                                   §§push(§`2§);
                                                                                                   if(!_loc18_)
                                                                                                   {
                                                                                                      addr446:
                                                                                                      §§push(int(§§pop() * §§pop()));
                                                                                                      if(!_loc18_)
                                                                                                      {
                                                                                                         addr449:
                                                                                                         _loc6_ = §§pop();
                                                                                                         if(!_loc18_)
                                                                                                         {
                                                                                                            addr401:
                                                                                                            §§push(param2);
                                                                                                            if(_loc19_ || param2)
                                                                                                            {
                                                                                                               §§push(§`2§);
                                                                                                               if(_loc19_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(_loc19_ || param3)
                                                                                                                  {
                                                                                                                     if(_loc19_ || param3)
                                                                                                                     {
                                                                                                                        addr429:
                                                                                                                        _loc7_ = int(§§pop());
                                                                                                                        if(!(_loc18_ && param1))
                                                                                                                        {
                                                                                                                           §§push(param3);
                                                                                                                           if(!_loc18_)
                                                                                                                           {
                                                                                                                              if(§§pop() == 1)
                                                                                                                              {
                                                                                                                                 if(!(_loc18_ && param3))
                                                                                                                                 {
                                                                                                                                    §§push(0);
                                                                                                                                    if(_loc19_ || param3)
                                                                                                                                    {
                                                                                                                                       if(!_loc18_)
                                                                                                                                       {
                                                                                                                                          _loc8_ = §§pop();
                                                                                                                                          if(!_loc18_)
                                                                                                                                          {
                                                                                                                                             if(false)
                                                                                                                                             {
                                                                                                                                                §§goto(addr401);
                                                                                                                                             }
                                                                                                                                             addr558:
                                                                                                                                             §§push(_loc8_);
                                                                                                                                             §§push(_loc6_);
                                                                                                                                             if(!(_loc18_ && this))
                                                                                                                                             {
                                                                                                                                                addr567:
                                                                                                                                                if(§§pop() < §§pop())
                                                                                                                                                {
                                                                                                                                                   var _loc14_:*;
                                                                                                                                                   _loc11_[_loc14_ = _loc7_++] = this.§>9§[_loc8_];
                                                                                                                                                   if(!(_loc18_ && this))
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc18_ && param2))
                                                                                                                                                      {
                                                                                                                                                         _loc8_++;
                                                                                                                                                         §§goto(addr558);
                                                                                                                                                         addr582:
                                                                                                                                                      }
                                                                                                                                                      addr504:
                                                                                                                                                      if(_loc8_ < this.§&>§)
                                                                                                                                                      {
                                                                                                                                                         if(this.§'!P§)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc18_ && param2))
                                                                                                                                                            {
                                                                                                                                                               if(_loc19_ || this)
                                                                                                                                                               {
                                                                                                                                                                  addr531:
                                                                                                                                                                  _loc13_ = Number(this.§>9§[_loc12_ + 3]);
                                                                                                                                                                  if(_loc19_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc18_ && param3))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(param3);
                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc18_ && param2))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() / _loc13_);
                                                                                                                                                                              if(!_loc18_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr498:
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                              }
                                                                                                                                                                              _loc13_ = §§pop();
                                                                                                                                                                              if(!_loc18_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(false)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr504);
                                                                                                                                                                                 }
                                                                                                                                                                                 _loc11_[_loc14_ = _loc7_++] = this.§>9§[_loc12_++] * _loc13_;
                                                                                                                                                                                 if(_loc19_)
                                                                                                                                                                                 {
                                                                                                                                                                                    var _loc15_:*;
                                                                                                                                                                                    _loc11_[_loc15_ = _loc7_++] = this.§>9§[_loc12_++] * _loc13_;
                                                                                                                                                                                    if(!(_loc18_ && param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       var _loc16_:*;
                                                                                                                                                                                       _loc11_[_loc16_ = _loc7_++] = this.§>9§[_loc12_++] * _loc13_;
                                                                                                                                                                                       if(!_loc18_)
                                                                                                                                                                                       {
                                                                                                                                                                                          var _loc17_:*;
                                                                                                                                                                                          _loc11_[_loc17_ = _loc7_++] = param3;
                                                                                                                                                                                          if(_loc19_ || param3)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc18_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc18_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc19_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr670:
                                                                                                                                                                                                      if(_loc19_ || param2)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr755:
                                                                                                                                                                                                         _loc12_++;
                                                                                                                                                                                                         if(!(_loc18_ && param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr773:
                                                                                                                                                                                                            _loc8_++;
                                                                                                                                                                                                            if(!_loc18_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr504);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr780);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr780:
                                                                                                                                                                                                         return;
                                                                                                                                                                                                         addr678:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr755);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr747:
                                                                                                                                                                                                   if(!(_loc18_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr755);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr780);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr746:
                                                                                                                                                                                                §§goto(addr747);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr745:
                                                                                                                                                                                             §§goto(addr746);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr744:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr745);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr746);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr670);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr678);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr531);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr498);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr582);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr504);
                                                                                                                                                               }
                                                                                                                                                               addr568:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr780);
                                                                                                                                                         }
                                                                                                                                                         _loc11_[_loc14_ = _loc7_++] = this.§>9§[_loc12_++];
                                                                                                                                                         if(!(_loc18_ && param2))
                                                                                                                                                         {
                                                                                                                                                            _loc11_[_loc15_ = _loc7_++] = this.§>9§[_loc12_++];
                                                                                                                                                            if(!_loc18_)
                                                                                                                                                            {
                                                                                                                                                               _loc11_[_loc16_ = _loc7_++] = this.§>9§[_loc12_++];
                                                                                                                                                               if(_loc19_)
                                                                                                                                                               {
                                                                                                                                                                  _loc11_[_loc17_ = _loc7_++] = param3;
                                                                                                                                                                  §§goto(addr744);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr745);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr746);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr747);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr780);
                                                                                                                                                      addr556:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr670);
                                                                                                                                                }
                                                                                                                                                §§goto(addr568);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr504);
                                                                                                                                       }
                                                                                                                                       §§goto(addr429);
                                                                                                                                    }
                                                                                                                                    §§goto(addr504);
                                                                                                                                 }
                                                                                                                                 §§goto(addr568);
                                                                                                                              }
                                                                                                                              §§push(0);
                                                                                                                              if(!_loc18_)
                                                                                                                              {
                                                                                                                                 addr572:
                                                                                                                                 _loc12_ = §§pop();
                                                                                                                                 if(_loc19_ || param1)
                                                                                                                                 {
                                                                                                                                    §§push(0);
                                                                                                                                    if(_loc19_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc18_ && this))
                                                                                                                                       {
                                                                                                                                          addr553:
                                                                                                                                          _loc8_ = §§pop();
                                                                                                                                          if(_loc19_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr556);
                                                                                                                                          }
                                                                                                                                          §§goto(addr504);
                                                                                                                                       }
                                                                                                                                       §§goto(addr558);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr773);
                                                                                                                              }
                                                                                                                              §§goto(addr504);
                                                                                                                           }
                                                                                                                           §§goto(addr531);
                                                                                                                        }
                                                                                                                        §§goto(addr755);
                                                                                                                     }
                                                                                                                     §§goto(addr446);
                                                                                                                  }
                                                                                                                  §§goto(addr531);
                                                                                                               }
                                                                                                               §§goto(addr504);
                                                                                                            }
                                                                                                            §§goto(addr572);
                                                                                                         }
                                                                                                         §§goto(addr773);
                                                                                                      }
                                                                                                      §§goto(addr553);
                                                                                                   }
                                                                                                   §§goto(addr567);
                                                                                                }
                                                                                                §§goto(addr449);
                                                                                             }
                                                                                             §§goto(addr504);
                                                                                          }
                                                                                          §§goto(addr773);
                                                                                       }
                                                                                       §§goto(addr346);
                                                                                    }
                                                                                    §§push(int(§§pop()));
                                                                                 }
                                                                                 if(_loc18_ && this)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    continue loop12;
                                                                                 }
                                                                                 _loc7_ = §§pop();
                                                                                 loop17:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc10_.length < _loc7_ + _loc6_)
                                                                                    {
                                                                                       addr273:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc10_.length = _loc7_ + _loc6_;
                                                                                          addr278:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc19_)
                                                                                             {
                                                                                                continue loop17;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr273:
                                                                                    }
                                                                                    loop18:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc10_.position = _loc7_;
                                                                                       loop19:
                                                                                       while(true)
                                                                                       {
                                                                                          loop20:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc10_.writeBytes(this.§#s§);
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc18_)
                                                                                                {
                                                                                                   break loop19;
                                                                                                }
                                                                                                §§push(param4);
                                                                                                if(!_loc18_)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   if(!_loc18_)
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         if(!_loc18_)
                                                                                                         {
                                                                                                            addr230:
                                                                                                            §§pop();
                                                                                                            if(_loc19_ || this)
                                                                                                            {
                                                                                                               if(_loc18_ && param1)
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               if(!_loc19_)
                                                                                                               {
                                                                                                                  break loop20;
                                                                                                               }
                                                                                                               if(_loc18_)
                                                                                                               {
                                                                                                                  continue loop18;
                                                                                                               }
                                                                                                               if(!_loc19_)
                                                                                                               {
                                                                                                                  continue loop16;
                                                                                                               }
                                                                                                               if(false)
                                                                                                               {
                                                                                                                  continue loop20;
                                                                                                               }
                                                                                                               §§goto(addr346);
                                                                                                               §§push(param3);
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr346);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr230);
                                                                                             }
                                                                                             §§goto(addr351);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr273);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr346);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr273);
                                                      }
                                                   }
                                                   addr209:
                                                }
                                                break;
                                             }
                                             while(true)
                                             {
                                                param5.transformVectors(this.§71§,this.§9<§);
                                                addr69:
                                                while(true)
                                                {
                                                   if(_loc18_ && param2)
                                                   {
                                                      continue loop4;
                                                   }
                                                   §§goto(addr76);
                                                }
                                                continue loop5;
                                             }
                                             §§goto(addr51);
                                             §§goto(addr176);
                                          }
                                          loop11:
                                          while(true)
                                          {
                                             §§push(_loc6_);
                                             addr211:
                                             while(§§pop() < §§pop())
                                             {
                                                _loc9_[_loc14_ = _loc7_++] = this.§71§[_loc8_];
                                                while(!(_loc18_ && param2))
                                                {
                                                   §§goto(addr201);
                                                }
                                                break loop11;
                                             }
                                             break;
                                             §§goto(addr209);
                                          }
                                          §§goto(addr212);
                                          addr60:
                                       }
                                       while(true)
                                       {
                                          §§push(_loc8_);
                                          if(!(_loc18_ && param2))
                                          {
                                             §§push(_loc6_);
                                             if(!(_loc18_ && param3))
                                             {
                                                if(§§pop() >= §§pop())
                                                {
                                                   if(!_loc19_)
                                                   {
                                                      §§goto(addr201);
                                                   }
                                                }
                                                else
                                                {
                                                   _loc9_[_loc14_ = _loc7_++] = this.§9<§[_loc8_];
                                                   if(!(_loc18_ && param2))
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr193);
                                                }
                                                §§goto(addr212);
                                             }
                                             §§goto(addr211);
                                          }
                                          else
                                          {
                                             §§goto(addr176);
                                          }
                                       }
                                       §§goto(addr176);
                                    }
                                    while(true)
                                    {
                                       §§goto(addr60);
                                    }
                                    addr108:
                                 }
                                 §§goto(addr63);
                              }
                              §§goto(addr69);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr108);
      }
      
      public function append(param1:§?!T§) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:int = this.§#s§.length;
         if(!(_loc10_ && _loc2_))
         {
            this.§#s§.length += param1.§#s§.length;
            loop0:
            while(true)
            {
               this.§#s§.position = _loc2_;
               while(true)
               {
                  addr50:
                  addr41:
                  while(true)
                  {
                     this.§#s§.writeBytes(param1.§#s§);
                     continue loop0;
                  }
                  if(!(_loc9_ || _loc3_))
                  {
                     continue;
                  }
                  while(false)
                  {
                     §§goto(addr50);
                  }
                  var _loc3_:Vector.<Number> = param1.§>9§;
                  var _loc4_:int = _loc3_.length;
                  var _loc5_:int = 0;
                  loop5:
                  while(true)
                  {
                     if(_loc5_ >= _loc4_)
                     {
                        if(_loc9_)
                        {
                           this.§>9§.fixed = true;
                        }
                        while(_loc9_ || _loc3_)
                        {
                           this.§71§.fixed = false;
                           if(_loc9_)
                           {
                              if(true)
                              {
                                 break loop5;
                              }
                              continue loop5;
                           }
                        }
                        loop7:
                        while(!(_loc9_ || param1))
                        {
                           while(true)
                           {
                              _loc5_++;
                              continue loop7;
                           }
                        }
                        continue;
                     }
                     this.§>9§.push(_loc3_[_loc5_]);
                     §§goto(addr147);
                  }
                  var _loc6_:Vector.<Number>;
                  var _loc7_:int = (_loc6_ = param1.§71§).length;
                  var _loc8_:int = 0;
                  if(_loc9_ || _loc2_)
                  {
                     loop9:
                     while(true)
                     {
                        if(_loc8_ >= _loc7_)
                        {
                           if(_loc9_)
                           {
                              this.§71§.fixed = true;
                           }
                           while(_loc9_)
                           {
                              this.§&>§ += param1.§>"§;
                              if(!_loc9_)
                              {
                                 continue;
                              }
                              if(!_loc10_)
                              {
                                 break loop9;
                              }
                              _loc8_++;
                              break;
                              addr217:
                           }
                           continue;
                        }
                        this.§71§.push(_loc6_[_loc8_]);
                        §§goto(addr217);
                     }
                     return;
                     addr183:
                  }
                  while(true)
                  {
                     §§goto(addr183);
                  }
               }
            }
         }
         §§goto(addr48);
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         §§push(param1);
         if(_loc9_)
         {
            §§push(int(§§pop() * §!!6§));
         }
         var _loc5_:* = §§pop();
         var _loc6_:*;
         this.§71§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§71§[_loc7_ = _loc5_++] = param3;
         if(!(_loc8_ && param2))
         {
            this.§71§[_loc5_] = param4;
         }
      }
      
      public function §6#§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(param1);
         if(!(_loc7_ && param2))
         {
            §§push(int(§§pop() * §!!6§));
         }
         var _loc4_:* = §§pop();
         var _loc5_:*;
         this.§71§[_loc5_ = _loc4_++] = param2;
         if(!_loc7_)
         {
            this.§71§[_loc4_] = param3;
         }
      }
      
      public function §@!+§(param1:int, param2:Vector3D) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(_loc5_)
         {
            §§push(int(§§pop() * §!!6§));
         }
         var _loc3_:* = §§pop();
         if(_loc5_ || _loc3_)
         {
            param2.x = this.§71§[_loc3_++];
            do
            {
               param2.y = this.§71§[_loc3_++];
               do
               {
                  param2.z = this.§71§[_loc3_];
               }
               while(!(_loc5_ || this));
               
            }
            while(!_loc5_);
            
         }
      }
      
      public function §,m§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
         {
            if(this.§'!P§)
            {
               addr22:
               §§push(param3);
               if(!(_loc8_ && this))
               {
                  §§push(Number(§§pop()));
                  if(_loc8_ && param1)
                  {
                  }
               }
               addr43:
               §§push(Number(§§pop()));
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
            if(!_loc8_)
            {
               §§push(§§pop() / 255);
               if(_loc9_ || param1)
               {
                  §§push(Number(§§pop()));
                  if(_loc9_)
                  {
                     _loc4_ = §§pop();
                     §§push(§[!'§.§,!6§(param2) * _loc4_);
                     if(!(_loc8_ && param2))
                     {
                        addr83:
                        §§push(Number(§§pop()));
                     }
                     var _loc5_:* = §§pop();
                     §§push(§[!'§.§`^§(param2) * _loc4_);
                     if(_loc9_)
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc6_:* = §§pop();
                     §§push(§[!'§.§5R§(param2) * _loc4_);
                     if(_loc9_)
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc7_:* = §§pop();
                     if(_loc9_ || this)
                     {
                        this.§4n§(param1,1,_loc5_,_loc6_,_loc7_,param3);
                     }
                     return;
                  }
               }
            }
            §§goto(addr83);
         }
         §§goto(addr22);
      }
      
      private function §4n§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         §§push(param1);
         if(!(_loc13_ && param3))
         {
            §§push(int(§§pop() * §`2§));
         }
         var _loc7_:* = §§pop();
         §§push(param2);
         if(_loc14_ || this)
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
                  this.§>9§[_loc9_ = _loc7_++] = param3;
                  if(_loc14_)
                  {
                     var _loc10_:*;
                     this.§>9§[_loc10_ = _loc7_++] = param4;
                     if(_loc14_)
                     {
                        var _loc11_:*;
                        this.§>9§[_loc11_ = _loc7_++] = param5;
                        if(!_loc13_)
                        {
                           var _loc12_:*;
                           this.§>9§[_loc12_ = _loc7_++] = param6;
                        }
                     }
                  }
                  if(_loc13_ && param3)
                  {
                     break;
                  }
                  §§push(_loc8_);
                  if(!(_loc14_ || param3))
                  {
                     continue;
                  }
                  §§push(§§pop() - 1);
                  if(!_loc14_)
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
      
      private function §3"§(param1:int, param2:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(param1);
         if(_loc8_)
         {
            §§push(int(§§pop() * §`2§));
         }
         var _loc3_:* = §§pop();
         var _loc4_:*;
         this.§>9§[_loc4_ = _loc3_++] = this.§>9§[_loc4_] * param2;
         var _loc5_:*;
         this.§>9§[_loc5_ = _loc3_++] = this.§>9§[_loc5_] * param2;
         var _loc6_:*;
         this.§>9§[_loc6_ = _loc3_++] = this.§>9§[_loc6_] * param2;
         if(_loc8_)
         {
            this.§>9§[_loc3_] *= param2;
         }
      }
      
      public function §+;§(param1:int) : uint
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         §§push(param1);
         if(!_loc8_)
         {
            §§push(int(§§pop() * §`2§));
         }
         var _loc2_:* = §§pop();
         if(!(_loc8_ && _loc3_))
         {
            if(this.§'!P§)
            {
               addr39:
               §§push(Number(this.§>9§[_loc2_ + 3]));
               if(_loc7_ || param1)
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
            if(!_loc8_)
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
                        if(!_loc8_)
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
                                 while(_loc7_)
                                 {
                                    while(true)
                                    {
                                       §§push(this.§>9§[_loc2_] * _loc3_);
                                       if(_loc7_)
                                       {
                                          if(!_loc7_)
                                          {
                                             continue loop2;
                                          }
                                          §§push(Number(§§pop()));
                                       }
                                       loop6:
                                       for(; !(_loc8_ && this); while(!(_loc8_ && _loc3_))
                                       {
                                          _loc5_ = §§pop();
                                          §§goto(addr137);
                                       })
                                       {
                                          _loc4_ = §§pop();
                                          loop7:
                                          while(true)
                                          {
                                             §§push(this.§>9§[_loc2_ + 1] * _loc3_);
                                             if(!(_loc8_ && this))
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                             continue loop6;
                                             addr137:
                                             while(true)
                                             {
                                                if(!(_loc8_ && _loc3_))
                                                {
                                                   if(_loc8_ && this)
                                                   {
                                                      break;
                                                   }
                                                   if(_loc7_)
                                                   {
                                                      §§push(this.§>9§[_loc2_ + 2] * _loc3_);
                                                      if(!(_loc8_ && this))
                                                      {
                                                         continue loop0;
                                                      }
                                                      addr106:
                                                      if(!_loc8_)
                                                      {
                                                         _loc6_ = §§pop();
                                                         if(!_loc8_)
                                                         {
                                                            return §[!'§.§,!_§(_loc4_,_loc5_,_loc6_);
                                                         }
                                                         continue;
                                                      }
                                                      continue loop6;
                                                   }
                                                   continue loop1;
                                                }
                                                continue loop7;
                                             }
                                             continue loop4;
                                          }
                                       }
                                       continue loop3;
                                    }
                                 }
                                 addr199:
                                 break loop1;
                              }
                           }
                        }
                        break;
                     }
                     return §§pop();
                  }
                  §§goto(addr199);
               }
            }
            §§goto(addr195);
         }
         §§goto(addr39);
      }
      
      public function §6!Y§(param1:int, param2:Number) : void
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
                  while(true)
                  {
                     §§push(0.001);
                     addr130:
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
                  }
                  addr129:
               }
               while(true)
               {
                  if(this.§'!P§)
                  {
                     if(_loc5_ || _loc3_)
                     {
                        this.§,m§(param1,this.§+;§(param1),param2);
                        break;
                     }
                     break;
                  }
                  §§push(param1);
                  if(_loc5_ || param1)
                  {
                     §§push(§§pop() * §`2§);
                     if(_loc5_)
                     {
                        if(_loc5_ || _loc3_)
                        {
                           addr74:
                           §§push(§§pop() + 3);
                           if(!_loc4_)
                           {
                              if(_loc5_)
                              {
                                 §§goto(addr79);
                              }
                              continue loop0;
                           }
                           §§goto(addr131);
                        }
                        §§goto(addr130);
                     }
                     §§goto(addr74);
                  }
                  §§goto(addr79);
               }
            }
         }
         addr79:
         _loc3_ = §§pop();
         do
         {
            if(_loc4_)
            {
               break loop5;
            }
            if(_loc5_ || _loc3_)
            {
               if(!(_loc4_ && _loc3_))
               {
                  continue;
               }
               §§goto(addr129);
            }
            §§goto(addr132);
         }
         while(this.§>9§[_loc3_] = param2, !_loc5_);
         
      }
      
      public function §>W§(param1:int) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(_loc4_)
         {
            §§push(§§pop() * §`2§);
            if(!_loc3_)
            {
               §§push(§§pop() + 3);
            }
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         return this.§>9§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1);
         if(!_loc5_)
         {
            §§push(int(§§pop() * §@t§));
         }
         var _loc4_:* = §§pop();
         if(!(_loc5_ && param1))
         {
            this.§#s§.position = _loc4_ * §?!W§;
            while(true)
            {
               this.§#s§.writeFloat(param2);
               §§goto(addr76);
            }
         }
         addr76:
         while(true)
         {
            this.§#s§.writeFloat(param3);
            if(_loc6_)
            {
               if(!(_loc5_ && param1))
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
            §§push(int(§§pop() * §@t§));
         }
         var _loc3_:* = §§pop();
         if(_loc4_)
         {
            this.§#s§.position = _loc3_ * §?!W§;
         }
         while(true)
         {
            param2.x = this.§#s§.readFloat();
            while(!_loc5_)
            {
               param2.y = this.§#s§.readFloat();
               if(!_loc5_)
               {
                  return;
               }
            }
         }
      }
      
      public function §^!%§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         §§push(param1);
         if(!_loc9_)
         {
            §§push(int(§§pop() * §!!6§));
         }
         var _loc5_:* = §§pop();
         var _loc6_:*;
         this.§71§[_loc6_ = _loc5_++] = this.§71§[_loc6_] + param2;
         var _loc7_:*;
         this.§71§[_loc7_ = _loc5_++] = this.§71§[_loc7_] + param3;
         if(!_loc9_)
         {
            this.§71§[_loc5_] += param4;
         }
      }
      
      public function §;>§(param1:int, param2:Matrix3D) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(!_loc5_)
         {
            §§push(int(§§pop() * §!!6§));
         }
         var _loc3_:* = §§pop();
         if(!(_loc5_ && this))
         {
            this.§9<§[0] = this.§71§[_loc3_];
            while(true)
            {
               this.§9<§[1] = this.§71§[_loc3_ + 1];
               while(_loc4_)
               {
                  this.§9<§[2] = this.§71§[_loc3_ + 2];
                  loop2:
                  while(!(_loc5_ && _loc3_))
                  {
                     param2.transformVectors(this.§9<§,this.§9<§);
                     while(true)
                     {
                        this.§71§[_loc3_] = this.§9<§[0];
                        while(!_loc5_)
                        {
                           if(_loc4_)
                           {
                              this.§71§[_loc3_ + 1] = this.§9<§[1];
                              while(_loc4_ || _loc3_)
                              {
                                 this.§71§[_loc3_ + 2] = this.§9<§[2];
                                 if(!(_loc5_ && this))
                                 {
                                    return;
                                 }
                              }
                              continue;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr104);
      }
      
      public function §-G§(param1:uint, param2:Number = 1.0) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            §§push(param2);
            if(!(_loc8_ && this))
            {
               if(§§pop() < 0.001)
               {
                  if(_loc7_ || _loc3_)
                  {
                     §§push(0.001);
                     if(!(_loc8_ && this))
                     {
                        §§push(Number(§§pop()));
                        if(!(_loc8_ && param1))
                        {
                           param2 = §§pop();
                           if(_loc7_)
                           {
                              addr54:
                              if(this.§'!P§)
                              {
                                 addr57:
                                 §§push(param2);
                                 if(_loc7_)
                                 {
                                    addr60:
                                    §§push(Number(§§pop()));
                                    if(_loc7_ || _loc3_)
                                    {
                                       addr88:
                                       §§push(Number(§§pop()));
                                       addr68:
                                    }
                                    §§goto(addr88);
                                 }
                                 §§goto(addr68);
                              }
                              else
                              {
                                 §§push(Number(1));
                                 if(_loc7_ || param1)
                                 {
                                    §§goto(addr88);
                                 }
                              }
                              var _loc3_:* = §§pop();
                              if(_loc7_ || param2)
                              {
                                 §§push(_loc3_);
                                 if(!_loc8_)
                                 {
                                    §§push(§§pop() / 255);
                                    if(!_loc8_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(!_loc8_)
                                       {
                                          _loc3_ = §§pop();
                                          addr108:
                                          §§push(§[!'§.§,!6§(param1) * _loc3_);
                                          if(_loc8_)
                                          {
                                          }
                                       }
                                       §§goto(addr116);
                                    }
                                    §§push(Number(§§pop()));
                                 }
                                 addr116:
                                 var _loc4_:* = §§pop();
                                 §§push(§[!'§.§`^§(param1) * _loc3_);
                                 if(_loc7_ || this)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc5_:* = §§pop();
                                 §§push(§[!'§.§5R§(param1) * _loc3_);
                                 if(!(_loc8_ && this))
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc6_:* = §§pop();
                                 if(_loc7_ || param2)
                                 {
                                    this.§4n§(0,this.§&>§,_loc4_,_loc5_,_loc6_,param2);
                                 }
                                 return;
                              }
                              §§goto(addr108);
                           }
                           §§goto(addr57);
                        }
                        §§goto(addr60);
                     }
                     §§goto(addr88);
                  }
                  §§goto(addr57);
               }
               §§goto(addr54);
            }
            §§goto(addr88);
         }
         §§goto(addr57);
      }
      
      public function §[!@§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         if(_loc14_ || param3)
         {
            §§push(param6);
            if(_loc14_ || param3)
            {
               if(§§pop() < 0.001)
               {
                  if(!_loc13_)
                  {
                     §§push(0.001);
                     if(!_loc13_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc14_)
                        {
                           addr42:
                           param6 = §§pop();
                           §§goto(addr43);
                        }
                        §§goto(addr48);
                     }
                  }
                  §§goto(addr43);
               }
               addr43:
               §§push(param1);
               if(_loc14_)
               {
                  addr48:
                  §§push(int(§§pop() * §`2§));
               }
               var _loc7_:* = §§pop();
               var _loc8_:int = 0;
               while(_loc8_ < param2)
               {
                  var _loc9_:*;
                  this.§>9§[_loc9_ = _loc7_++] = param3;
                  if(!_loc13_)
                  {
                     var _loc10_:*;
                     this.§>9§[_loc10_ = _loc7_++] = param4;
                     if(!(_loc13_ && param3))
                     {
                        var _loc11_:*;
                        this.§>9§[_loc11_ = _loc7_++] = param5;
                        if(!(_loc13_ && param1))
                        {
                           var _loc12_:*;
                           this.§>9§[_loc12_ = _loc7_++] = param6;
                        }
                     }
                  }
                  if(!_loc14_)
                  {
                     break;
                  }
                  _loc8_++;
                  if(_loc13_)
                  {
                     break;
                  }
               }
               return;
            }
         }
         §§goto(addr42);
      }
      
      public function §"!E§(param1:int, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = NaN;
         if(!_loc5_)
         {
            §§push(param2);
            if(!(_loc5_ && _loc3_))
            {
               if(§§pop() < 0.001)
               {
                  if(_loc6_ || param2)
                  {
                     §§push(0.001);
                     if(!(_loc5_ && param1))
                     {
                        addr46:
                        §§push(Number(§§pop()));
                        if(_loc6_)
                        {
                           param2 = §§pop();
                           if(!(_loc5_ && _loc3_))
                           {
                              addr57:
                              §§push(param2);
                              if(!_loc5_)
                              {
                                 if(§§pop() == 1)
                                 {
                                    if(!_loc5_)
                                    {
                                       §§goto(addr64);
                                    }
                                 }
                              }
                              addr76:
                              var _loc3_:int = §§pop();
                              addr75:
                              if(!(_loc5_ && param1))
                              {
                                 if(this.§'!P§)
                                 {
                                    while(true)
                                    {
                                       §§push(Number(this.§>9§[_loc3_ + 3]));
                                       loop1:
                                       while(true)
                                       {
                                          _loc4_ = §§pop();
                                          while(true)
                                          {
                                             §§push(param2);
                                             if(_loc6_ || _loc3_)
                                             {
                                                continue loop1;
                                             }
                                             addr230:
                                             _loc4_ = §§pop();
                                             loop3:
                                             while(true)
                                             {
                                                this.§>9§[_loc3_] *= _loc4_;
                                                while(true)
                                                {
                                                   if(_loc5_ && _loc3_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   while(true)
                                                   {
                                                      this.§>9§[_loc3_ + 1] *= _loc4_;
                                                      addr182:
                                                      addr189:
                                                      §§goto(addr155);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 else
                                 {
                                    this.§>9§[_loc3_ + 3] *= param2;
                                    if(_loc6_ || param1)
                                    {
                                       if(_loc5_ && this)
                                       {
                                          addr155:
                                          while(!(_loc6_ || _loc3_))
                                          {
                                             continue loop2;
                                          }
                                          this.§>9§[_loc3_ + 2] *= _loc4_;
                                          while(true)
                                          {
                                             if(_loc6_)
                                             {
                                                if(_loc6_ || param2)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      break;
                                                   }
                                                   continue loop6;
                                                }
                                                continue loop4;
                                             }
                                             §§goto(addr182);
                                             §§goto(addr189);
                                          }
                                       }
                                       §§goto(addr85);
                                    }
                                 }
                                 addr85:
                                 this.§>9§[_loc3_ + 3] = param2;
                                 return;
                              }
                              §§goto(addr208);
                           }
                           §§push(param1);
                           if(_loc6_ || param2)
                           {
                              §§goto(addr75);
                              §§push(§§pop() * §`2§);
                           }
                           §§goto(addr76);
                        }
                     }
                     §§goto(addr76);
                  }
               }
               §§goto(addr57);
            }
            §§goto(addr46);
         }
         addr64:
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:Number = NaN;
         var _loc6_:* = NaN;
         var _loc7_:Number = NaN;
         if(_loc9_ || this)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop() == this.§'!P§)
               {
                  if(_loc9_)
                  {
                     break;
                  }
                  while(true)
                  {
                     addr258:
                     if(!(_loc8_ && _loc3_))
                     {
                        while(true)
                        {
                           §§push(_loc4_);
                           if(_loc9_)
                           {
                              if(!(_loc8_ && param2))
                              {
                                 if(§§pop() >= _loc3_)
                                 {
                                    if(_loc8_)
                                    {
                                       break;
                                    }
                                    if(_loc9_ || _loc3_)
                                    {
                                       if(!(_loc8_ && this))
                                       {
                                          addr68:
                                          this.§'!P§ = param1;
                                          break;
                                       }
                                       while(true)
                                       {
                                          if(!(_loc9_ || this))
                                          {
                                             continue;
                                          }
                                          while(true)
                                          {
                                             _loc4_++;
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       if(!(_loc8_ && param2))
                                       {
                                          if(_loc9_ || this)
                                          {
                                             break;
                                          }
                                          loop9:
                                          while(true)
                                          {
                                             §§push(this.§'!P§);
                                             loop10:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §§push(_loc5_);
                                                      if(!(_loc8_ && _loc3_))
                                                      {
                                                         §§push(Number(§§pop()));
                                                         loop20:
                                                         while(true)
                                                         {
                                                            addr239:
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               continue loop20;
                                                            }
                                                         }
                                                         addr229:
                                                      }
                                                      addr240:
                                                      while(true)
                                                      {
                                                         _loc6_ = §§pop();
                                                         continue loop10;
                                                      }
                                                   }
                                                   addr220:
                                                }
                                                else
                                                {
                                                   §§push(1);
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      addr232:
                                                      while(true)
                                                      {
                                                         if(!(_loc9_ || param2))
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               continue loop9;
                                                            }
                                                            addr248:
                                                         }
                                                      }
                                                   }
                                                   addr231:
                                                }
                                                §§goto(addr239);
                                             }
                                          }
                                       }
                                       §§goto(addr220);
                                       §§goto(addr73);
                                    }
                                    continue;
                                 }
                                 §§push(this.§>W§(0));
                                 §§goto(addr248);
                              }
                              §§goto(addr231);
                           }
                           §§goto(addr201);
                        }
                        return;
                        addr265:
                     }
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
                           §§push(this.§&>§);
                           if(!_loc8_)
                           {
                              §§push(int(§§pop() * §`2§));
                           }
                           loop3:
                           while(true)
                           {
                              _loc3_ = §§pop();
                              addr291:
                              while(true)
                              {
                                 §§push(0);
                                 if(!_loc8_)
                                 {
                                    _loc4_ = §§pop();
                                    if(_loc9_)
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 continue loop3;
                              }
                              §§goto(addr258);
                           }
                        }
                        §§goto(addr291);
                     }
                     break;
                  }
                  continue loop0;
               }
               §§goto(addr68);
            }
            return;
         }
         §§goto(addr265);
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§'!P§;
      }
      
      public function get §>"§() : int
      {
         return this.§&>§;
      }
      
      public function set §>"§(param1:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         var _loc4_:* = 0;
         if(_loc5_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§@t§);
               addr487:
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc6_ && param1))
                  {
                     §§push(§§pop() * §?!W§);
                     if(!_loc6_)
                     {
                        addr509:
                        §§push(§§pop() - this.§#s§.length);
                     }
                     §§push(int(§§pop()));
                     while(true)
                     {
                        _loc2_ = §§pop();
                        addr515:
                        while(true)
                        {
                           §§push(int(this.§#s§.length));
                           addr483:
                           while(true)
                           {
                              _loc4_ = §§pop();
                              addr484:
                              while(true)
                              {
                                 this.§#s§.length += _loc2_;
                                 addr477:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    continue loop0;
                                 }
                              }
                           }
                        }
                     }
                     addr514:
                  }
                  §§goto(addr509);
               }
            }
         }
         §§goto(addr461);
      }
      
      public function get §8!H§() : ByteArray
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§#s§.position = 0;
         }
         return this.§#s§;
      }
      
      public function get §8l§() : Vector.<Number>
      {
         return this.§>9§;
      }
      
      public function get §<!9§() : Vector.<Number>
      {
         return this.§71§;
      }
   }
}
