package §4v§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §40§
   {
      
      public static const §;!^§:int = 4;
      
      public static const §9!+§:int = 2;
      
      public static const §%!;§:int = 3;
      
      public static const §<!e§:int = 4;
      
      public static const §]a§:int = 0;
      
      public static const §[W§:int = 0;
      
      public static const §9!i§:int = 0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §;!^§ = 4;
            loop0:
            while(true)
            {
               §9!+§ = 2;
               loop1:
               while(true)
               {
                  §%!;§ = 3;
                  while(true)
                  {
                     §<!e§ = 4;
                     loop3:
                     for(; _loc1_ || §40§; while(_loc1_ || _loc2_)
                     {
                        §[W§ = 0;
                        continue loop1;
                     })
                     {
                        while(true)
                        {
                           §]a§ = 0;
                           continue loop3;
                        }
                     }
                  }
                  while(!(_loc2_ && _loc1_))
                  {
                     if(!_loc2_)
                     {
                        §9!i§ = 0;
                        if(_loc2_ && §40§)
                        {
                           continue;
                        }
                        if(_loc1_)
                        {
                           return;
                        }
                        §§goto(addr65);
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr84);
      }
      
      private var §"!Y§:ByteArray;
      
      private var §'!O§:Vector.<Number>;
      
      private var §^c§:Vector.<Number>;
      
      private var §@!,§:Boolean;
      
      private var §1!M§:int;
      
      private var §9A§:Vector.<Number>;
      
      public function §40§(param1:int, param2:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            this.§9A§ = new Vector.<Number>(12,true);
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  this.§"!Y§ = new ByteArray();
                  loop2:
                  while(_loc4_ || param2)
                  {
                     continue loop0;
                     addr43:
                     while(true)
                     {
                        if(!(_loc5_ && param1))
                        {
                           this.§"!Y§.length = param1 * §9!+§ * §<!e§;
                           if(!_loc5_)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop2;
                     }
                     while(false)
                     {
                        while(true)
                        {
                           this.§"!Y§.endian = Endian.LITTLE_ENDIAN;
                           §§goto(addr43);
                        }
                     }
                     var _loc3_:int = 0;
                     loop6:
                     while(true)
                     {
                        if(_loc3_ >= param1 * §9!+§)
                        {
                           loop7:
                           while(true)
                           {
                              this.§'!O§ = new Vector.<Number>(param1 * §;!^§,true);
                              loop8:
                              while(true)
                              {
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    this.§^c§ = new Vector.<Number>(param1 * §%!;§,true);
                                    while(true)
                                    {
                                       this.§@!,§ = param2;
                                       while(_loc4_ || _loc3_)
                                       {
                                          this.§1!M§ = param1;
                                          if(!(_loc5_ && param1))
                                          {
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                if(_loc4_)
                                                {
                                                   if(_loc4_ || this)
                                                   {
                                                      return;
                                                   }
                                                   break loop8;
                                                }
                                                continue loop7;
                                             }
                                             continue loop8;
                                          }
                                       }
                                    }
                                 }
                              }
                              continue loop6;
                           }
                        }
                        else
                        {
                           this.§"!Y§.writeFloat(0);
                        }
                        _loc3_++;
                     }
                  }
               }
            }
         }
         §§goto(addr35);
      }
      
      public function clone() : §40§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§40§ = new §40§(0,this.§@!,§);
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.§"!Y§.length = this.§"!Y§.length;
            loop0:
            do
            {
               _loc1_.§"!Y§.writeBytes(this.§"!Y§);
               while(true)
               {
                  _loc1_.§'!O§ = this.§'!O§.concat();
                  loop2:
                  while(!_loc3_)
                  {
                     _loc1_.§'!O§.fixed = true;
                     do
                     {
                        _loc1_.§^c§ = this.§^c§.concat();
                        loop4:
                        do
                        {
                           _loc1_.§^c§.fixed = true;
                           while(_loc2_)
                           {
                              _loc1_.§1!M§ = this.§1!M§;
                              if(_loc2_ || this)
                              {
                                 continue loop4;
                              }
                           }
                           continue loop2;
                        }
                        while(_loc3_ && _loc2_);
                        
                     }
                     while(_loc3_);
                     
                     continue loop0;
                  }
               }
            }
            while(_loc3_);
            
         }
         return _loc1_;
      }
      
      public function copyTo(param1:§40§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:* = 0;
         var _loc13_:* = NaN;
         var _loc9_:Vector.<Number> = param1.§^c§;
         if(_loc18_ || param3)
         {
            §§push(this.§1!M§);
            while(true)
            {
               §§push(§%!;§);
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
                        while(true)
                        {
                           §§push(param2);
                           if(!_loc19_)
                           {
                              §§push(§%!;§);
                              if(!(_loc18_ || param1))
                              {
                                 break;
                              }
                              §§push(§§pop() * §§pop());
                              if(!(_loc18_ || param2))
                              {
                                 continue loop2;
                              }
                              §§push(int(§§pop()));
                           }
                           loop5:
                           while(true)
                           {
                              _loc7_ = §§pop();
                              addr107:
                              while(true)
                              {
                                 addr73:
                                 loop7:
                                 while(true)
                                 {
                                    if(!param5)
                                    {
                                       §§push(0);
                                       if(_loc18_ || param2)
                                       {
                                          addr170:
                                          _loc8_ = §§pop();
                                          if(_loc18_ || param2)
                                          {
                                          }
                                          while(true)
                                          {
                                             break loop7;
                                          }
                                          addr206:
                                          var _loc10_:ByteArray = param1.§"!Y§;
                                          if(!_loc19_)
                                          {
                                             §§push(this.§1!M§);
                                             if(_loc18_ || param2)
                                             {
                                                §§push(§9!+§);
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!_loc19_)
                                                   {
                                                      §§push(§<!e§);
                                                      if(!(_loc19_ && this))
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         loop13:
                                                         while(true)
                                                         {
                                                            §§push(int(§§pop()));
                                                            addr356:
                                                            loop14:
                                                            while(true)
                                                            {
                                                               _loc6_ = §§pop();
                                                               while(true)
                                                               {
                                                                  §§push(param2);
                                                                  if(!(_loc19_ && param3))
                                                                  {
                                                                     §§push(§9!+§);
                                                                     if(!_loc18_)
                                                                     {
                                                                        continue loop12;
                                                                     }
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!_loc19_)
                                                                     {
                                                                        if(!(_loc19_ && this))
                                                                        {
                                                                           §§push(§<!e§);
                                                                           if(!(_loc19_ && param2))
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc18_ || param1)
                                                                              {
                                                                                 addr326:
                                                                                 §§push(int(§§pop()));
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    _loc7_ = §§pop();
                                                                                    while(_loc18_)
                                                                                    {
                                                                                       if(_loc10_.length < _loc7_ + _loc6_)
                                                                                       {
                                                                                          while(!_loc19_)
                                                                                          {
                                                                                             _loc10_.length = _loc7_ + _loc6_;
                                                                                             while(true)
                                                                                             {
                                                                                             }
                                                                                             addr249:
                                                                                             if(_loc18_ || param3)
                                                                                             {
                                                                                                if(false)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc10_.writeBytes(this.§"!Y§);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc19_)
                                                                                                         {
                                                                                                            §§push(param4);
                                                                                                            if(!(_loc19_ && param3))
                                                                                                            {
                                                                                                               §§push(Boolean(§§pop()));
                                                                                                               if(_loc18_)
                                                                                                               {
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     if(_loc18_ || param2)
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        if(_loc18_ || param3)
                                                                                                                        {
                                                                                                                           if(!(_loc18_ || param2))
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           §§goto(addr249);
                                                                                                                        }
                                                                                                                        addr370:
                                                                                                                        _loc11_ = param1.§'!O§;
                                                                                                                        if(!(_loc19_ && param2))
                                                                                                                        {
                                                                                                                           §§push(this.§1!M§);
                                                                                                                           loop22:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§;!^§);
                                                                                                                              loop23:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(!_loc19_)
                                                                                                                                 {
                                                                                                                                    §§push(int(§§pop()));
                                                                                                                                    loop24:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc6_ = §§pop();
                                                                                                                                       loop25:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(param2);
                                                                                                                                             if(_loc18_ || param2)
                                                                                                                                             {
                                                                                                                                                if(!_loc18_)
                                                                                                                                                {
                                                                                                                                                   continue loop22;
                                                                                                                                                }
                                                                                                                                                §§push(§;!^§);
                                                                                                                                                if(_loc18_ || param2)
                                                                                                                                                {
                                                                                                                                                   if(!_loc18_)
                                                                                                                                                   {
                                                                                                                                                      continue loop23;
                                                                                                                                                   }
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(!(_loc19_ && param3))
                                                                                                                                                   {
                                                                                                                                                      §§push(int(§§pop()));
                                                                                                                                                      if(_loc18_ || param1)
                                                                                                                                                      {
                                                                                                                                                         _loc7_ = §§pop();
                                                                                                                                                         if(_loc18_ || this)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc18_ || param1))
                                                                                                                                                            {
                                                                                                                                                               continue loop25;
                                                                                                                                                            }
                                                                                                                                                            §§push(param3);
                                                                                                                                                            if(!_loc19_)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop() == 1)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc18_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(0);
                                                                                                                                                                     if(!(_loc19_ && param2))
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop24;
                                                                                                                                                                        }
                                                                                                                                                                        _loc8_ = §§pop();
                                                                                                                                                                        if(_loc18_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           if(false)
                                                                                                                                                                           {
                                                                                                                                                                              continue;
                                                                                                                                                                           }
                                                                                                                                                                           addr583:
                                                                                                                                                                           §§push(_loc8_);
                                                                                                                                                                           if(!(_loc19_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              addr591:
                                                                                                                                                                              §§push(_loc6_);
                                                                                                                                                                              if(_loc18_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(§§pop() >= §§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr787:
                                                                                                                                                                                       _loc8_++;
                                                                                                                                                                                       if(!(_loc19_ && param3))
                                                                                                                                                                                       {
                                                                                                                                                                                          loop27:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc8_);
                                                                                                                                                                                             addr806:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(this.§1!M§);
                                                                                                                                                                                                addr808:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(§§pop() < §§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(this.§@!,§)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc18_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(Number(this.§'!O§[_loc12_ + 3]));
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc13_ = §§pop();
                                                                                                                                                                                                               addr520:
                                                                                                                                                                                                               if(_loc18_ || param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr528:
                                                                                                                                                                                                                  _loc13_ = Number(§§pop());
                                                                                                                                                                                                                  if(!_loc19_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc18_ || param3))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        while(!(_loc19_ && param3))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(param3);
                                                                                                                                                                                                                           if(_loc18_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr511:
                                                                                                                                                                                                                              §§push(§§pop() / _loc13_);
                                                                                                                                                                                                                              if(!(_loc19_ && param3))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr520);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr528);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr547:
                                                                                                                                                                                                                        continue loop27;
                                                                                                                                                                                                                        addr563:
                                                                                                                                                                                                                        addr581:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(_loc18_ || param3)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(false)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr547);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           var _loc14_:*;
                                                                                                                                                                                                                           _loc11_[_loc14_ = _loc7_++] = this.§'!O§[_loc12_++] * _loc13_;
                                                                                                                                                                                                                           if(!_loc19_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              var _loc15_:*;
                                                                                                                                                                                                                              _loc11_[_loc15_ = _loc7_++] = this.§'!O§[_loc12_++] * _loc13_;
                                                                                                                                                                                                                              if(_loc18_ || this)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 var _loc16_:*;
                                                                                                                                                                                                                                 _loc11_[_loc16_ = _loc7_++] = this.§'!O§[_loc12_++] * _loc13_;
                                                                                                                                                                                                                                 if(_loc18_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    var _loc17_:*;
                                                                                                                                                                                                                                    _loc11_[_loc17_ = _loc7_++] = param3;
                                                                                                                                                                                                                                    if(!_loc19_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc18_ || param2)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc19_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc18_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr699:
                                                                                                                                                                                                                                                if(_loc19_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr771:
                                                                                                                                                                                                                                                if(_loc19_ && param1)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop27;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             _loc12_++;
                                                                                                                                                                                                                                             if(!(_loc18_ || this))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop27;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr787);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr770:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr771);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr759:
                                                                                                                                                                                                                                          _loc11_[_loc17_ = _loc7_++] = param3;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr770);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr769:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr725:
                                                                                                                                                                                                                              _loc11_[_loc15_ = _loc7_++] = this.§'!O§[_loc12_++];
                                                                                                                                                                                                                              if(_loc18_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 _loc11_[_loc16_ = _loc7_++] = this.§'!O§[_loc12_++];
                                                                                                                                                                                                                                 if(_loc18_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr759);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr769);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr770);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr583);
                                                                                                                                                                                                                           addr506:
                                                                                                                                                                                                                           _loc8_++;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr787);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr699);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr809);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr563);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc11_[_loc14_ = _loc7_++] = this.§'!O§[_loc12_++];
                                                                                                                                                                                                         if(_loc18_ || param3)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr725);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr771);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr809);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          addr805:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr809);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr597);
                                                                                                                                                                                 }
                                                                                                                                                                                 _loc11_[_loc14_ = _loc7_++] = this.§'!O§[_loc8_];
                                                                                                                                                                                 if(!_loc19_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc19_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr506);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr609:
                                                                                                                                                                                    §§push(0);
                                                                                                                                                                                    if(_loc18_ || this)
                                                                                                                                                                                    {
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr806);
                                                                                                                                                                                    addr609:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr699);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr808);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr806);
                                                                                                                                                                        }
                                                                                                                                                                        addr597:
                                                                                                                                                                        §§goto(addr809);
                                                                                                                                                                     }
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr809);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§push(0);
                                                                                                                                                                  if(!(_loc19_ && param2))
                                                                                                                                                                  {
                                                                                                                                                                     _loc12_ = §§pop();
                                                                                                                                                                     if(!_loc19_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr609);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr787);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr806);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr528);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr609);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr591);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr511);
                                                                                                                                                }
                                                                                                                                                §§goto(addr808);
                                                                                                                                             }
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          _loc8_ = §§pop();
                                                                                                                                          §§goto(addr581);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr528);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr805);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr369);
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         §§goto(addr287);
                                                                                                         §§goto(addr370);
                                                                                                      }
                                                                                                      §§goto(addr368);
                                                                                                   }
                                                                                                   addr258:
                                                                                                }
                                                                                                addr359:
                                                                                                §§push(param3);
                                                                                                break loop12;
                                                                                             }
                                                                                          }
                                                                                          continue;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          _loc10_.position = _loc7_;
                                                                                          if(!_loc19_)
                                                                                          {
                                                                                             §§goto(addr258);
                                                                                          }
                                                                                          break;
                                                                                          §§goto(addr287);
                                                                                       }
                                                                                       §§goto(addr370);
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                                 continue loop14;
                                                                              }
                                                                              §§goto(addr359);
                                                                           }
                                                                           break loop12;
                                                                        }
                                                                        break;
                                                                     }
                                                                  }
                                                                  §§goto(addr326);
                                                               }
                                                               continue loop13;
                                                            }
                                                         }
                                                         addr355:
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr355);
                                                }
                                                §§push(§§pop() == §§pop());
                                                if(_loc18_ || param1)
                                                {
                                                   addr368:
                                                   §§goto(addr369);
                                                }
                                                addr369:
                                                if(§§pop())
                                                {
                                                   §§goto(addr370);
                                                }
                                                addr809:
                                                return;
                                             }
                                             §§goto(addr356);
                                          }
                                          §§goto(addr370);
                                          addr203:
                                       }
                                    }
                                    if(!_loc19_)
                                    {
                                       param5.transformVectors(this.§^c§,this.§9A§);
                                    }
                                    continue loop5;
                                 }
                                 addr205:
                                 §§push(_loc6_);
                                 while(true)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       _loc9_[_loc14_ = _loc7_++] = this.§^c§[_loc8_];
                                       while(true)
                                       {
                                          if(_loc18_ || param3)
                                          {
                                             _loc8_++;
                                             if(!_loc19_)
                                             {
                                                §§goto(addr203);
                                             }
                                             else
                                             {
                                                §§goto(addr206);
                                             }
                                          }
                                          §§goto(addr206);
                                       }
                                       addr192:
                                    }
                                    §§goto(addr206);
                                 }
                              }
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr71);
      }
      
      public function append(param1:§40§) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:int = this.§"!Y§.length;
         if(_loc10_ || _loc3_)
         {
            this.§"!Y§.length += param1.§"!Y§.length;
            while(true)
            {
               this.§"!Y§.position = _loc2_;
               addr58:
               loop1:
               while(!_loc9_)
               {
                  while(true)
                  {
                     this.§"!Y§.writeBytes(param1.§"!Y§);
                     continue loop1;
                  }
               }
            }
         }
         while(true)
         {
            this.§'!O§.fixed = false;
            if(!(_loc10_ || param1))
            {
               continue;
            }
            if(_loc10_)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr58);
            }
            §§goto(addr46);
         }
         var _loc3_:Vector.<Number> = param1.§'!O§;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(true)
         {
            if(_loc5_ >= _loc4_)
            {
               do
               {
                  this.§'!O§.fixed = true;
                  do
                  {
                     this.§^c§.fixed = false;
                  }
                  while(_loc9_);
                  
               }
               while(!_loc10_);
               
               if(_loc10_ || _loc2_)
               {
                  if(_loc10_ || _loc2_)
                  {
                     if(true)
                     {
                        break;
                     }
                     continue;
                  }
                  _loc5_++;
                  addr138:
               }
               continue;
            }
            this.§'!O§.push(_loc3_[_loc5_]);
            §§goto(addr138);
         }
         var _loc6_:Vector.<Number>;
         var _loc7_:int = (_loc6_ = param1.§^c§).length;
         var _loc8_:int = 0;
         if(!(_loc9_ && param1))
         {
            while(true)
            {
               if(_loc8_ >= _loc7_)
               {
                  if(_loc10_)
                  {
                     if(!_loc10_)
                     {
                        continue;
                     }
                     this.§^c§.fixed = true;
                  }
                  do
                  {
                     this.§1!M§ += param1.§-Z§;
                  }
                  while(_loc9_ && this);
                  
                  if(!(_loc9_ && param1))
                  {
                     break;
                  }
               }
               else
               {
                  this.§^c§.push(_loc6_[_loc8_]);
               }
            }
            return;
         }
         while(true)
         {
            _loc8_++;
            §§goto(addr199);
         }
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         §§push(param1);
         if(!_loc9_)
         {
            §§push(int(§§pop() * §%!;§));
         }
         var _loc5_:* = §§pop();
         var _loc6_:*;
         this.§^c§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§^c§[_loc7_ = _loc5_++] = param3;
         if(_loc8_)
         {
            this.§^c§[_loc5_] = param4;
         }
      }
      
      public function §5!E§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(param1);
         if(_loc6_ || this)
         {
            §§push(int(§§pop() * §%!;§));
         }
         var _loc4_:* = §§pop();
         var _loc5_:*;
         this.§^c§[_loc5_ = _loc4_++] = param2;
         if(!(_loc7_ && param1))
         {
            this.§^c§[_loc4_] = param3;
         }
      }
      
      public function §2q§(param1:int, param2:Vector3D) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(_loc4_)
         {
            §§push(int(§§pop() * §%!;§));
         }
         var _loc3_:* = §§pop();
         if(!_loc5_)
         {
            param2.x = this.§^c§[_loc3_++];
         }
         while(true)
         {
            param2.y = this.§^c§[_loc3_++];
            while(_loc4_)
            {
               param2.z = this.§^c§[_loc3_];
               if(_loc4_ || param2)
               {
                  return;
               }
            }
         }
      }
      
      public function § !d§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!(_loc9_ && this))
         {
            if(this.§@!,§)
            {
               addr26:
               §§push(param3);
               if(_loc8_ || param3)
               {
                  §§push(Number(§§pop()));
                  if(_loc9_ && param1)
                  {
                  }
                  addr47:
                  §§push(Number(§§pop()));
               }
            }
            else
            {
               §§push(Number(1));
               if(!_loc9_)
               {
                  §§goto(addr47);
               }
            }
            var _loc4_:*;
            §§push(_loc4_ = §§pop());
            if(!_loc9_)
            {
               §§push(§§pop() / 255);
               if(_loc8_ || param3)
               {
                  §§push(Number(§§pop()));
                  if(!(_loc9_ && param1))
                  {
                     addr79:
                     _loc4_ = §§pop();
                     §§push(§@A§.§2!O§(param2) * _loc4_);
                     if(!_loc9_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
               }
               var _loc5_:* = §§pop();
               §§push(§@A§.§>!Q§(param2) * _loc4_);
               if(!_loc9_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               §§push(§@A§.§9Z§(param2) * _loc4_);
               if(!_loc9_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc7_:* = §§pop();
               if(!_loc9_)
               {
                  this.§^!L§(param1,1,_loc5_,_loc6_,_loc7_,param3);
               }
               return;
            }
            §§goto(addr79);
         }
         §§goto(addr26);
      }
      
      private function §^!L§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         §§push(param1);
         if(!(_loc14_ && this))
         {
            §§push(int(§§pop() * §;!^§));
         }
         var _loc7_:* = §§pop();
         §§push(param2);
         if(_loc13_ || param1)
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
               this.§'!O§[_loc9_ = _loc7_++] = param3;
               if(_loc13_ || param3)
               {
                  var _loc10_:*;
                  this.§'!O§[_loc10_ = _loc7_++] = param4;
                  if(!_loc14_)
                  {
                     var _loc11_:*;
                     this.§'!O§[_loc11_ = _loc7_++] = param5;
                     if(!_loc14_)
                     {
                        var _loc12_:*;
                        this.§'!O§[_loc12_ = _loc7_++] = param6;
                     }
                  }
               }
               if(_loc14_)
               {
                  break;
               }
               §§push(_loc8_);
               if(!_loc14_)
               {
                  §§push(§§pop() - 1);
                  if(!_loc14_)
                  {
                     _loc8_ = §§pop();
                     if(_loc14_)
                     {
                        break;
                     }
                     continue loop0;
                  }
               }
            }
            return;
         }
      }
      
      private function §]O§(param1:int, param2:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(param1);
         if(_loc8_)
         {
            §§push(int(§§pop() * §;!^§));
         }
         var _loc3_:* = §§pop();
         var _loc4_:*;
         this.§'!O§[_loc4_ = _loc3_++] = this.§'!O§[_loc4_] * param2;
         var _loc5_:*;
         this.§'!O§[_loc5_ = _loc3_++] = this.§'!O§[_loc5_] * param2;
         var _loc6_:*;
         this.§'!O§[_loc6_ = _loc3_++] = this.§'!O§[_loc6_] * param2;
         if(!_loc7_)
         {
            this.§'!O§[_loc3_] *= param2;
         }
      }
      
      public function §'x§(param1:int) : uint
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         §§push(param1);
         if(!(_loc7_ && param1))
         {
            §§push(int(§§pop() * §;!^§));
         }
         var _loc2_:* = §§pop();
         if(!_loc7_)
         {
            if(this.§@!,§)
            {
               addr40:
               §§push(Number(this.§'!O§[_loc2_ + 3]));
               if(!_loc8_)
               {
               }
               addr59:
               §§push(Number(§§pop()));
            }
            else
            {
               §§push(Number(1));
               if(_loc8_ || this)
               {
                  §§goto(addr59);
               }
            }
            var _loc3_:* = §§pop();
            if(_loc8_ || _loc3_)
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
                        if(_loc8_)
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
                                 while(!(_loc7_ && this))
                                 {
                                    if(!(_loc8_ || param1))
                                    {
                                       addr205:
                                       break loop1;
                                    }
                                    §§push(this.§'!O§[_loc2_] * _loc3_);
                                    loop5:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       while(_loc8_)
                                       {
                                          _loc4_ = §§pop();
                                          loop7:
                                          while(!_loc7_)
                                          {
                                             while(true)
                                             {
                                                §§push(this.§'!O§[_loc2_ + 1] * _loc3_);
                                                if(_loc8_ || _loc3_)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      continue loop5;
                                                   }
                                                   §§push(Number(§§pop()));
                                                }
                                                loop9:
                                                while(true)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      _loc5_ = §§pop();
                                                      while(true)
                                                      {
                                                         §§push(this.§'!O§[_loc2_ + 2] * _loc3_);
                                                         if(!(_loc7_ && _loc2_))
                                                         {
                                                            continue loop9;
                                                         }
                                                         addr114:
                                                         if(_loc7_)
                                                         {
                                                            break;
                                                         }
                                                         _loc6_ = §§pop();
                                                         if(!(_loc7_ && this))
                                                         {
                                                            if(_loc7_ && param1)
                                                            {
                                                               continue loop7;
                                                            }
                                                            §§goto(addr131);
                                                            continue loop7;
                                                         }
                                                      }
                                                      continue loop2;
                                                   }
                                                   continue loop0;
                                                }
                                                continue loop1;
                                             }
                                             return §@A§.§"x§(_loc4_,_loc5_,_loc6_);
                                          }
                                          continue loop4;
                                       }
                                       continue loop3;
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
                  §§goto(addr205);
               }
            }
            §§goto(addr168);
         }
         §§goto(addr40);
      }
      
      public function §"!c§(param1:int, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = 0;
         if(_loc5_)
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
                     if(_loc5_ || this)
                     {
                        §§push(Number(§§pop()));
                     }
                     addr126:
                     while(true)
                     {
                        param2 = §§pop();
                        addr127:
                        while(true)
                        {
                        }
                     }
                  }
                  addr107:
               }
               while(true)
               {
                  if(!this.§@!,§)
                  {
                     §§push(param1);
                     if(_loc5_ || param1)
                     {
                        §§push(§§pop() * §;!^§);
                        if(_loc4_)
                        {
                           continue loop0;
                        }
                        if(!_loc4_)
                        {
                           §§push(§§pop() + 3);
                           continue loop0;
                        }
                        §§goto(addr126);
                     }
                     else
                     {
                        addr79:
                        _loc3_ = §§pop();
                        while(true)
                        {
                           if(!_loc4_)
                           {
                              continue;
                           }
                           addr87:
                           if(!(_loc4_ && _loc3_))
                           {
                              if(!_loc4_)
                              {
                                 this.§ !d§(param1,this.§'x§(param1),param2);
                                 break;
                              }
                              §§goto(addr107);
                           }
                        }
                        §§goto(addr22);
                     }
                  }
                  §§goto(addr87);
               }
            }
         }
         §§goto(addr41);
      }
      
      public function §@%§(param1:int) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(!_loc3_)
         {
            §§push(§§pop() * §;!^§);
            if(!_loc3_)
            {
               §§push(§§pop() + 3);
            }
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         return this.§'!O§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1);
         if(_loc6_)
         {
            §§push(int(§§pop() * §9!+§));
         }
         var _loc4_:* = §§pop();
         if(_loc6_ || param1)
         {
            this.§"!Y§.position = _loc4_ * §<!e§;
         }
         do
         {
            this.§"!Y§.writeFloat(param2);
            do
            {
               this.§"!Y§.writeFloat(param3);
            }
            while(_loc5_);
            
         }
         while(!_loc6_);
         
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(_loc5_ || this)
         {
            §§push(int(§§pop() * §9!+§));
         }
         var _loc3_:* = §§pop();
         if(_loc5_)
         {
            this.§"!Y§.position = _loc3_ * §<!e§;
            while(true)
            {
               param2.x = this.§"!Y§.readFloat();
               §§goto(addr78);
            }
         }
         addr78:
         while(true)
         {
            param2.y = this.§"!Y§.readFloat();
            if(!(_loc4_ && this))
            {
               if(_loc5_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §4!T§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         §§push(param1);
         if(_loc9_)
         {
            §§push(int(§§pop() * §%!;§));
         }
         var _loc5_:* = §§pop();
         var _loc6_:*;
         this.§^c§[_loc6_ = _loc5_++] = this.§^c§[_loc6_] + param2;
         var _loc7_:*;
         this.§^c§[_loc7_ = _loc5_++] = this.§^c§[_loc7_] + param3;
         if(_loc9_)
         {
            this.§^c§[_loc5_] += param4;
         }
      }
      
      public function §4q§(param1:int, param2:Matrix3D) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(_loc4_)
         {
            §§push(int(§§pop() * §%!;§));
         }
         var _loc3_:* = §§pop();
         if(_loc4_)
         {
            this.§9A§[0] = this.§^c§[_loc3_];
            loop0:
            while(true)
            {
               this.§9A§[1] = this.§^c§[_loc3_ + 1];
               loop1:
               while(true)
               {
                  this.§9A§[2] = this.§^c§[_loc3_ + 2];
                  loop2:
                  while(true)
                  {
                     param2.transformVectors(this.§9A§,this.§9A§);
                     loop3:
                     while(true)
                     {
                        this.§^c§[_loc3_] = this.§9A§[0];
                        while(_loc4_)
                        {
                           this.§^c§[_loc3_ + 1] = this.§9A§[1];
                           while(!_loc5_)
                           {
                              if(!_loc5_)
                              {
                                 continue loop2;
                              }
                              continue loop3;
                              this.§^c§[_loc3_ + 2] = this.§9A§[2];
                              if(_loc4_)
                              {
                                 if(_loc4_)
                                 {
                                    return;
                                    addr45:
                                 }
                                 continue loop1;
                              }
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr45);
      }
      
      public function §9i§(param1:uint, param2:Number = 1.0) : void
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
                     addr30:
                     §§push(0.001);
                     if(!_loc8_)
                     {
                        addr33:
                        §§push(Number(§§pop()));
                        if(_loc7_)
                        {
                           addr36:
                           param2 = §§pop();
                           if(_loc7_ || this)
                           {
                              addr44:
                              if(this.§@!,§)
                              {
                                 addr47:
                                 §§push(param2);
                                 if(_loc7_)
                                 {
                                    addr50:
                                    §§push(Number(§§pop()));
                                    if(!_loc8_)
                                    {
                                       addr63:
                                       §§push(Number(§§pop()));
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(Number(1));
                                 if(!(_loc8_ && param1))
                                 {
                                    §§goto(addr63);
                                 }
                              }
                              var _loc3_:* = §§pop();
                              if(!_loc8_)
                              {
                                 §§push(_loc3_);
                                 if(_loc7_)
                                 {
                                    §§push(§§pop() / 255);
                                    if(_loc7_ || _loc3_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc7_ || param1)
                                       {
                                          _loc3_ = §§pop();
                                          addr98:
                                          §§push(§@A§.§2!O§(param1) * _loc3_);
                                          if(_loc7_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                    }
                                 }
                                 var _loc4_:* = §§pop();
                                 §§push(§@A§.§>!Q§(param1) * _loc3_);
                                 if(!_loc8_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc5_:* = §§pop();
                                 §§push(§@A§.§9Z§(param1) * _loc3_);
                                 if(!_loc8_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc6_:* = §§pop();
                                 if(!(_loc8_ && param1))
                                 {
                                    this.§^!L§(0,this.§1!M§,_loc4_,_loc5_,_loc6_,param2);
                                 }
                                 return;
                              }
                              §§goto(addr98);
                           }
                           §§goto(addr47);
                        }
                        §§goto(addr50);
                     }
                     §§goto(addr36);
                  }
                  §§goto(addr47);
               }
               §§goto(addr44);
            }
            §§goto(addr33);
         }
         §§goto(addr30);
      }
      
      public function §!X§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         if(_loc13_)
         {
            §§push(param6);
            if(!(_loc14_ && param3))
            {
               if(§§pop() < 0.001)
               {
                  if(_loc13_)
                  {
                     §§push(0.001);
                     if(!_loc14_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc13_)
                        {
                           addr36:
                           param6 = §§pop();
                           §§goto(addr37);
                        }
                     }
                     §§goto(addr47);
                  }
                  §§goto(addr37);
               }
               addr37:
               §§push(param1);
               if(_loc13_ || param2)
               {
                  addr47:
                  §§push(int(§§pop() * §;!^§));
               }
               var _loc7_:* = §§pop();
               var _loc8_:int = 0;
               while(_loc8_ < param2)
               {
                  var _loc9_:*;
                  this.§'!O§[_loc9_ = _loc7_++] = param3;
                  if(!(_loc14_ && this))
                  {
                     var _loc10_:*;
                     this.§'!O§[_loc10_ = _loc7_++] = param4;
                     if(_loc13_ || param1)
                     {
                        var _loc11_:*;
                        this.§'!O§[_loc11_ = _loc7_++] = param5;
                        if(_loc13_ || param3)
                        {
                           var _loc12_:*;
                           this.§'!O§[_loc12_ = _loc7_++] = param6;
                        }
                     }
                  }
                  if(!_loc13_)
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
         }
         §§goto(addr36);
      }
      
      public function §=$§(param1:int, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = NaN;
         if(!_loc5_)
         {
            §§push(param2);
            if(!(_loc5_ && this))
            {
               if(§§pop() < 0.001)
               {
                  if(!_loc5_)
                  {
                     §§push(0.001);
                     if(_loc6_)
                     {
                        §§push(Number(§§pop()));
                        if(!(_loc5_ && this))
                        {
                           param2 = §§pop();
                           if(!(_loc5_ && param2))
                           {
                              addr52:
                              §§push(param2);
                              if(_loc5_ && _loc3_)
                              {
                              }
                              addr76:
                              var _loc3_:int = §§pop();
                              addr75:
                              if(!_loc5_)
                              {
                                 if(this.§@!,§)
                                 {
                                    addr235:
                                    §§push(Number(this.§'!O§[_loc3_ + 3]));
                                    loop0:
                                    while(true)
                                    {
                                       _loc4_ = §§pop();
                                       addr243:
                                       while(true)
                                       {
                                          §§push(param2);
                                          if(!(_loc6_ || this))
                                          {
                                             break;
                                          }
                                          continue loop0;
                                       }
                                       addr220:
                                       _loc4_ = §§pop();
                                       loop2:
                                       while(true)
                                       {
                                          this.§'!O§[_loc3_] *= _loc4_;
                                          addr198:
                                          while(true)
                                          {
                                             this.§'!O§[_loc3_ + 1] *= _loc4_;
                                             continue loop2;
                                          }
                                       }
                                    }
                                 }
                                 else
                                 {
                                    this.§'!O§[_loc3_ + 3] *= param2;
                                    if(_loc6_)
                                    {
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          if(_loc6_)
                                          {
                                             if(!_loc5_)
                                             {
                                                if(!(_loc5_ && param1))
                                                {
                                                   if(!(_loc6_ || this))
                                                   {
                                                      §§goto(addr235);
                                                   }
                                                   §§goto(addr80);
                                                }
                                                §§goto(addr243);
                                             }
                                             §§goto(addr198);
                                          }
                                          §§goto(addr179);
                                       }
                                       §§goto(addr163);
                                    }
                                 }
                                 addr80:
                                 return;
                              }
                              §§goto(addr179);
                           }
                           addr70:
                           §§push(param1);
                           if(!_loc5_)
                           {
                              §§goto(addr75);
                              §§push(§§pop() * §;!^§);
                           }
                           §§goto(addr76);
                        }
                        if(§§pop() == 1)
                        {
                           if(!(_loc5_ && param1))
                           {
                              §§goto(addr69);
                           }
                        }
                     }
                     §§goto(addr76);
                  }
                  §§goto(addr70);
               }
            }
            §§goto(addr52);
         }
         addr69:
      }
      
      public function §@!g§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:Number = NaN;
         if(_loc8_)
         {
            §§push(param1);
            loop0:
            while(§§pop() != this.§@!,§)
            {
               loop1:
               while(true)
               {
                  §§push(param2);
                  if(!_loc9_)
                  {
                     if(§§pop())
                     {
                        if(!_loc9_)
                        {
                           if(_loc9_ && param2)
                           {
                              continue;
                           }
                           §§push(this.§1!M§);
                           if(!(_loc9_ && param2))
                           {
                              §§push(int(§§pop() * §;!^§));
                           }
                           while(true)
                           {
                              _loc3_ = §§pop();
                           }
                           addr266:
                        }
                        while(true)
                        {
                           §§push(0);
                           if(!_loc9_)
                           {
                              _loc4_ = §§pop();
                              if(!_loc9_)
                              {
                                 break;
                              }
                              continue;
                           }
                           §§goto(addr266);
                        }
                        if(!(_loc9_ && param1))
                        {
                           loop3:
                           while(true)
                           {
                              §§push(_loc4_);
                              if(!_loc9_)
                              {
                                 if(_loc8_)
                                 {
                                    if(§§pop() >= _loc3_)
                                    {
                                       if(!_loc9_)
                                       {
                                          if(!(_loc8_ || this))
                                          {
                                             continue;
                                          }
                                          if(_loc8_)
                                          {
                                             if(!(_loc9_ && this))
                                             {
                                                break loop1;
                                             }
                                             loop4:
                                             while(true)
                                             {
                                                §§push(this.§@!,§);
                                                loop5:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(_loc5_);
                                                         addr199:
                                                         while(true)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            addr200:
                                                            while(true)
                                                            {
                                                            }
                                                         }
                                                      }
                                                      addr198:
                                                   }
                                                   else
                                                   {
                                                      §§push(1);
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                      addr202:
                                                   }
                                                   addr203:
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      addr204:
                                                      while(true)
                                                      {
                                                         _loc6_ = §§pop();
                                                         continue loop5;
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   _loc5_ = §§pop();
                                                   continue loop4;
                                                }
                                             }
                                          }
                                          §§goto(addr79);
                                       }
                                       while(true)
                                       {
                                          if(!(_loc9_ && this))
                                          {
                                             break loop3;
                                          }
                                          §§goto(addr171);
                                       }
                                       addr63:
                                    }
                                    else
                                    {
                                       §§push(this.§@%§(0));
                                    }
                                    §§goto(addr212);
                                 }
                                 §§goto(addr202);
                              }
                              §§goto(addr183);
                           }
                           return;
                        }
                        break loop0;
                     }
                     break;
                  }
                  continue loop0;
               }
               while(true)
               {
                  this.§@!,§ = param1;
                  §§goto(addr63);
               }
            }
            return;
         }
         §§goto(addr244);
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§@!,§;
      }
      
      public function get §-Z§() : int
      {
         return this.§1!M§;
      }
      
      public function set §-Z§(param1:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(!(_loc5_ && _loc3_))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§9!+§);
               loop1:
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc6_ || param1)
                  {
                     §§push(§§pop() * §<!e§);
                     if(!_loc5_)
                     {
                        §§push(§§pop() - this.§"!Y§.length);
                     }
                  }
                  §§push(int(§§pop()));
                  loop2:
                  while(true)
                  {
                     _loc2_ = §§pop();
                     loop3:
                     while(true)
                     {
                        §§push(int(this.§"!Y§.length));
                        while(!_loc5_)
                        {
                           _loc4_ = §§pop();
                           while(true)
                           {
                              this.§"!Y§.length += _loc2_;
                           }
                           loop7:
                           for(; _loc6_ || _loc3_; §§push(0),if(_loc5_ && _loc2_)
                           {
                              continue;
                           },_loc3_ = §§pop(),if(!_loc5_)
                           {
                              §§goto(addr388);
                           },§§goto(addr417))
                           {
                              if(!_loc6_)
                              {
                                 continue loop0;
                              }
                              §§push(0);
                              if(!_loc6_)
                              {
                                 continue loop1;
                              }
                              if(§§pop() > §§pop())
                              {
                                 while(true)
                                 {
                                    this.§"!Y§.position = _loc4_;
                                    addr417:
                                    while(true)
                                    {
                                       if(!_loc5_)
                                       {
                                          if(!_loc6_)
                                          {
                                             break;
                                          }
                                          continue loop7;
                                       }
                                       addr431:
                                       while(true)
                                       {
                                          continue loop7;
                                       }
                                    }
                                    §§goto(addr440);
                                    addr388:
                                    if(_loc5_ && _loc3_)
                                    {
                                       continue;
                                    }
                                    if(!_loc6_)
                                    {
                                       continue loop3;
                                    }
                                    addr351:
                                    if(_loc3_ >= _loc2_ / §<!e§)
                                    {
                                       addr358:
                                       this.§'!O§.fixed = false;
                                       addr362:
                                       if(_loc6_)
                                       {
                                          addr338:
                                          §§push(param1);
                                          §§push(§;!^§);
                                          if(_loc6_)
                                          {
                                             addr349:
                                             addr348:
                                             §§push(§§pop() * §§pop());
                                             if(_loc6_)
                                             {
                                                §§push(§§pop() - this.§'!O§.length);
                                             }
                                             _loc2_ = int(§§pop());
                                             addr334:
                                             _loc3_ = 0;
                                             addr304:
                                             addr335:
                                             addr350:
                                             §§push(_loc3_);
                                             if(_loc6_)
                                             {
                                                addr309:
                                                §§push(_loc2_);
                                                if(_loc6_ || this)
                                                {
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      addr319:
                                                      _loc3_ = int(_loc2_);
                                                      addr274:
                                                      addr320:
                                                      addr318:
                                                      addr317:
                                                      if(_loc3_ >= 0)
                                                      {
                                                         addr278:
                                                         this.§'!O§.fixed = true;
                                                         addr282:
                                                         if(_loc6_ || this)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               this.§^c§.fixed = false;
                                                               addr264:
                                                               if(_loc6_ || param1)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     addr219:
                                                                     §§push(param1);
                                                                     §§push(§%!;§);
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc6_ || _loc3_)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              addr246:
                                                                              §§push(int(§§pop() - this.§^c§.length));
                                                                              if(_loc6_)
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    _loc2_ = §§pop();
                                                                                    addr251:
                                                                                    if(!(_loc5_ && _loc2_))
                                                                                    {
                                                                                       addr196:
                                                                                       §§push(0);
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             _loc3_ = §§pop();
                                                                                             addr201:
                                                                                             if(!(_loc5_ && _loc2_))
                                                                                             {
                                                                                                if(_loc6_ || param1)
                                                                                                {
                                                                                                   addr126:
                                                                                                   §§push(_loc3_);
                                                                                                   if(!(_loc5_ && _loc2_))
                                                                                                   {
                                                                                                      if(_loc6_ || this)
                                                                                                      {
                                                                                                         if(_loc6_ || this)
                                                                                                         {
                                                                                                            addr150:
                                                                                                            if(§§pop() >= _loc2_)
                                                                                                            {
                                                                                                               addr151:
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  if(_loc6_ || this)
                                                                                                                  {
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        §§push(_loc2_);
                                                                                                                        if(!_loc5_)
                                                                                                                        {
                                                                                                                           addr166:
                                                                                                                           §§push(int(§§pop()));
                                                                                                                           if(_loc6_)
                                                                                                                           {
                                                                                                                              if(_loc6_)
                                                                                                                              {
                                                                                                                                 _loc3_ = §§pop();
                                                                                                                                 addr171:
                                                                                                                                 if(!(_loc5_ && this))
                                                                                                                                 {
                                                                                                                                    addr67:
                                                                                                                                    §§push(_loc3_);
                                                                                                                                    if(!_loc5_)
                                                                                                                                    {
                                                                                                                                       if(_loc6_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          if(!_loc5_)
                                                                                                                                          {
                                                                                                                                             §§push(0);
                                                                                                                                             if(!(_loc5_ && param1))
                                                                                                                                             {
                                                                                                                                                if(_loc6_)
                                                                                                                                                {
                                                                                                                                                   if(_loc6_)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop() >= §§pop())
                                                                                                                                                      {
                                                                                                                                                         addr93:
                                                                                                                                                         if(_loc6_)
                                                                                                                                                         {
                                                                                                                                                            this.§^c§.fixed = true;
                                                                                                                                                            addr99:
                                                                                                                                                            if(!(_loc5_ && param1))
                                                                                                                                                            {
                                                                                                                                                               if(_loc6_ || _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  this.§1!M§ = param1;
                                                                                                                                                                  if(!_loc5_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc6_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc5_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc6_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc5_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc5_)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc3_++;
                                                                                                                                                                                    addr367:
                                                                                                                                                                                    §§goto(addr351);
                                                                                                                                                                                    addr375:
                                                                                                                                                                                 }
                                                                                                                                                                                 return;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr264);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr171);
                                                                                                                                                                        }
                                                                                                                                                                        addr116:
                                                                                                                                                                        if(!_loc5_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr67);
                                                                                                                                                                        }
                                                                                                                                                                        addr181:
                                                                                                                                                                        if(_loc6_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc5_)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr126);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr362);
                                                                                                                                                                        }
                                                                                                                                                                        addr301:
                                                                                                                                                                        if(!_loc5_)
                                                                                                                                                                        {
                                                                                                                                                                           _loc3_++;
                                                                                                                                                                           addr294:
                                                                                                                                                                           §§goto(addr274);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr304);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr93);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr99);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr251);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr151);
                                                                                                                                                         }
                                                                                                                                                         _loc3_++;
                                                                                                                                                         §§goto(addr116);
                                                                                                                                                         addr125:
                                                                                                                                                      }
                                                                                                                                                      this.§^c§.pop();
                                                                                                                                                      §§goto(addr125);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr274);
                                                                                                                                                }
                                                                                                                                                §§goto(addr219);
                                                                                                                                             }
                                                                                                                                             §§goto(addr150);
                                                                                                                                          }
                                                                                                                                          §§goto(addr219);
                                                                                                                                       }
                                                                                                                                       §§goto(addr196);
                                                                                                                                    }
                                                                                                                                    §§goto(addr166);
                                                                                                                                 }
                                                                                                                                 §§goto(addr320);
                                                                                                                              }
                                                                                                                              §§goto(addr304);
                                                                                                                           }
                                                                                                                           §§goto(addr318);
                                                                                                                        }
                                                                                                                        §§goto(addr166);
                                                                                                                     }
                                                                                                                     §§goto(addr294);
                                                                                                                  }
                                                                                                                  §§goto(addr201);
                                                                                                               }
                                                                                                               _loc3_++;
                                                                                                               §§goto(addr181);
                                                                                                               addr193:
                                                                                                            }
                                                                                                            this.§^c§.push(0);
                                                                                                            §§goto(addr193);
                                                                                                         }
                                                                                                         §§goto(addr351);
                                                                                                      }
                                                                                                      §§goto(addr338);
                                                                                                   }
                                                                                                   §§goto(addr166);
                                                                                                }
                                                                                                §§goto(addr317);
                                                                                             }
                                                                                             §§goto(addr282);
                                                                                          }
                                                                                          §§goto(addr319);
                                                                                       }
                                                                                       §§goto(addr246);
                                                                                    }
                                                                                    _loc3_++;
                                                                                    §§goto(addr116);
                                                                                    addr331:
                                                                                 }
                                                                                 §§goto(addr349);
                                                                              }
                                                                              §§goto(addr319);
                                                                           }
                                                                           §§goto(addr348);
                                                                        }
                                                                        §§goto(addr246);
                                                                     }
                                                                     §§goto(addr309);
                                                                  }
                                                                  §§goto(addr335);
                                                               }
                                                               §§goto(addr278);
                                                            }
                                                            §§goto(addr358);
                                                         }
                                                         §§goto(addr350);
                                                      }
                                                      this.§'!O§.pop();
                                                      §§goto(addr301);
                                                   }
                                                   this.§'!O§.push(0);
                                                   §§goto(addr331);
                                                }
                                                §§goto(addr338);
                                             }
                                             §§goto(addr334);
                                          }
                                          §§goto(addr351);
                                       }
                                       §§goto(addr367);
                                       addr357:
                                    }
                                    this.§"!Y§.writeFloat(0);
                                    §§goto(addr375);
                                 }
                              }
                              else
                              {
                                 §§goto(addr357);
                              }
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr431);
      }
      
      public function get §!2§() : ByteArray
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§"!Y§.position = 0;
         }
         return this.§"!Y§;
      }
      
      public function get §[K§() : Vector.<Number>
      {
         return this.§'!O§;
      }
      
      public function get §]!"§() : Vector.<Number>
      {
         return this.§^c§;
      }
   }
}
